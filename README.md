# 📊 Log Parser

A simple Bash script that analyzes an nginx access log and extracts the top:

- 🧑 IP addresses by request count
- 🛣️ Requested paths
- 🧾 Response status codes
- 🧠 User agents

---

## 🧪 Sample Output

Top 5 IP addresses with the most requests:
45.76.135.253 - 1000 requests
...

Top 5 most requested paths:
/api/v1/users - 1000 requests
...

Top 5 response status codes:
200 - 1000 requests
...

Top 5 user agents:
Mozilla/5.0... - 1000 requests

---

## 🚀 How to Run

```bash
git clone https://github.com/abdulahnaved/log-parser.git
cd log-parser
chmod +x log-parser.sh
./log-parser.sh nginx-access.log

---

## PROJECT LINK

🔗 https://roadmap.sh/projects/nginx-log-analyser
