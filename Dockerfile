FROM jenkinsci/jnlp-slave

CMD java -jar agent.jar -jnlpUrl http://jcr3:30003/computer/jenkins-slave-ops-f6zxz/slave-agent.jnlp -secret e5fb9e7b8d24957f4ac7796c7b7f2f0c4df82279b691f03d99218b796ce5abbe -workDir "/home/jenkins"
