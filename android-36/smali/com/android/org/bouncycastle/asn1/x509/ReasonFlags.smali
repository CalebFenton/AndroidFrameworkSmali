.class public Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;
.super Lcom/android/org/bouncycastle/asn1/DERBitString;
.source "ReasonFlags.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1BitString;)V
    .registers 3

    .line 86
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method
