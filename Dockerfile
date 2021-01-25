FROM python
USER root
RUN mkdir /srv/test
COPY ./test.py /srv/test
RUN chmod +x /srv/test/test.py && chmod 755 /srv/test/test.py
CMD ["python", "/srv/test/test.py"]
