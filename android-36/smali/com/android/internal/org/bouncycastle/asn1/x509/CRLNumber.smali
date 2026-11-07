.class public Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CRLNumber.java"


# instance fields
.field private blacklist number:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "number"    # Ljava/math/BigInteger;

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_e

    .line 30
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    .line 31
    return-void

    .line 28
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid CRL number : not in (0..MAX)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;

    if-eqz v0, :cond_8

    .line 52
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;

    return-object v0

    .line 54
    :cond_8
    if-eqz p0, :cond_18

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 59
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCRLNumber()Ljava/math/BigInteger;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 45
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRLNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;->getCRLNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
