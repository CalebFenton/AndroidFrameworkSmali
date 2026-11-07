.class public Lcom/android/internal/org/bouncycastle/asn1/DERVideotexString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1VideotexString;
.source "DERVideotexString.java"


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "octets"    # [B

    .line 12
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERVideotexString;-><init>([BZ)V

    .line 13
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1VideotexString;-><init>([BZ)V

    .line 18
    return-void
.end method
