# Use the base image
FROM modenaf360/gotty:latest
 
# Expose the desired port
EXPOSE 8080
 
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git python
RUN git clone https://github.com/hellovokzal/Hikka
WORKDIR /Hikka
RUN bash install.sh -y
RUN pip install -r requirements.txt

CMD ["python3", "-m", "hikka"]
