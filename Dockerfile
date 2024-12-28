FROM ubuntu
WORKDIR /app
COPY ./resourses_view.sh .
RUN chmod +x ./resourses_view.sh
ENTRYPOINT [ "/bin/bash" ]
CMD ["/app/resourses_view.sh"]