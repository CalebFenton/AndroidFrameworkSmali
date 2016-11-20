.class public Lcom/android/org/bouncycastle/asn1/DEREnumerated;
.super Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
.source "DEREnumerated.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    #@3
    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    #@3
    .line 24
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    #@3
    .line 15
    return-void
.end method
