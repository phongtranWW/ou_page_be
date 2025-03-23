# Run

```
docker compose up -d
```

## a. API Document

- Go to: http://localhost:3000/docs

## b. MinIO (File manager)

- Go to: http://localhost:9001
  - Username: ou_admin
  - Password: ou_admin_2025

## c. Load image

- Image's Url is: **http://localhost:9000/ou-page/ + imageUrl**
- Example:
  - **imageUrl**: 'faculties/IT/presidents/1742702901979-KXHH_LÃÂ_011_VU_HUU_DUC.jpg'
  - **Image's Url** is: 'http://localhost:9000/ou-page/faculties/IT/presidents/1742702901979-KXHH_L%C3%83%C2%84%C3%82%C2%90_011_VU_HUU_DUC.jpg'

# Stop

```
docker compose stop
```

# Start

```
docker compose start
```

# Restart

```
docker compose restart
```

# Remove

```
docker compose down -v
```
