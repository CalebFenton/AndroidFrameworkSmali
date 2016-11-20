.class public Lcom/android/org/bouncycastle/asn1/DERInteger;
.super Lcom/android/org/bouncycastle/asn1/ASN1Integer;
.source "DERInteger.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@3
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@3
    .line 21
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 18
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    #@4
    .line 16
    return-void
.end method
