/nix

FROM nixpacks/nix

COPY run.sh /

RUN chmod +x /run.sh

CMD ["/run.sh"]
