.class public Lcom/android/internal/org/bouncycastle/asn1/DEREnumerated;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
.source "DEREnumerated.java"


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    .line 30
    return-void
.end method

.method constructor blacklist <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 20
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    .line 21
    return-void
.end method
