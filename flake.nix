{
  description = "The Fieldmouse Works organization profile";

  inputs.burrow.url = "git+https://github.com/FieldmouseWorks/burrow";

  # `nix develop` for the tools, `nix flake check` for the gate (see burrow's
  # lib/project.nix). The repo is Markdown and images, so the gate is its own:
  # every link, image and #fragment the profile points at inside this repo is
  # found.
  outputs =
    { self, burrow }:
    burrow.lib.project {
      inherit self;
      packages = pkgs: [ pkgs.lychee ];
      checks = pkgs: {
        # lychee, offline, over every Markdown file. The profile loads its
        # banners from raw.githubusercontent.com (GitHub's org page doesn't
        # resolve relative image paths), so those URLs are remapped onto this
        # checkout: a renamed or deleted asset fails here instead of on the
        # live org page. Other external links aren't checked, but lychee
        # won't start without CA certificates.
        links = pkgs.runCommand "links" { nativeBuildInputs = [ pkgs.lychee ]; } ''
          export SSL_CERT_FILE=${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt
          cd ${self}
          lychee --offline --no-progress --include-fragments \
            --remap "https://raw\.githubusercontent\.com/FieldmouseWorks/\.github/main/(.*) file://$PWD/\$1" \
            --root-dir "$PWD" \
            ./*.md profile/*.md
          touch $out
        '';
      };
    };
}
