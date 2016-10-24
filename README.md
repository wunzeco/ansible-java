Java
====

Ansible role to install and configure Java (openjdk/oracle).

## Example

Install Java on Ubuntu

```
  vars:
    java_package: openjdk-8-jdk     # OR oracle-java8-installer (for oracle java)

  roles:
    - wunzeco.java
```

Install OpenJDK Java on CentOS

```
  vars:
    java_package: java-1.8.0-openjdk

  roles:
    - wunzeco.java
```

For Oracle Java JDK installation on CentOS, specify `java\_oracle\_rpm\_download\_url`
instead.

```
  vars:
	java_oracle_rpm_download_url: "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.rpm"

  roles:
    - wunzeco.java
```



## Testing

Run `kitchen test` command to test this repo


## Dependencies

none
