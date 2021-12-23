FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
RUN apt-get update -y

RUN apt-get install --yes \
    tzdata \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    dvipng \
    texlive-latex-recommended \
    texlive-base \
    texlive-pictures \
    texlive-lang-cyrillic \
    texlive-science \
    cm-super 

COPY CV/ /
ENTRYPOINT ["pdflatex", "-interaction=nonstopmode", "main.tex"]
CMD ["bash"]