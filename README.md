# Config-Server — Centralized Configuration

Spring Cloud Config Server for the **Money Minder MS** system. It serves
configuration to the other services from a native (classpath) location, so
shared settings live in one place.

## Tech stack

Java · Spring Boot · Spring Cloud Config Server · Eureka client

## Run

```bash
mvn spring-boot:run
```

- Port: `8099`
- Profile: `native` (configuration served from `classpath:/config`)
- Registers with Eureka at `http://localhost:8761/eureka`

Services import this configuration with
`spring.config.import=optional:configserver:http://localhost:8099`.

## Part of Money Minder MS

See the [API-Gateway README](https://github.com/Money-Minder-MS/API-Gateway)
for the full architecture. Start order: **EurekaServer → Config-Server → business services → API-Gateway**.
