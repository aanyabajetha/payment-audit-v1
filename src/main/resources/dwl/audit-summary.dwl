%dw 2.0
output application/json
---
{
    totalPayments: sizeOf(payload),
    successful: sizeOf(payload filter ((p) -> p.status == "SUCCESS")),
    failed: sizeOf(payload filter ((p) -> p.status == "FAILED")),
    totalAmountProcessed: (payload filter ((p) -> p.status == "SUCCESS")).amount reduce ((item, acc=0) -> acc + item)
}