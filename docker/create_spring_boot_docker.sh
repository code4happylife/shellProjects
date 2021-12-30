for i in {1..10}
do
        docker run -e "JAVA_TOOL_OPTIONS=-agentlib:jdwp=transport=dt_socket,address=5005,server=y,suspend=n" -p 808$i:808$i -p 500$i:500$i -t springio/gs-spring-boot-docker &

done
