%dw 2.0
output application/json
---
[
  { "paymentId": "P001", "status": "SUCCESS", "amount": 250.5 },
  { "paymentId": "P002", "status": "FAILED", "amount": 40 },
  { "paymentId": "P003", "status": "SUCCESS", "amount": 100 }
]