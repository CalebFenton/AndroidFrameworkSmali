.class public Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CRLNumber.java"


# instance fields
.field private blacklist number:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_e

    .line 30
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    return-void

    .line 28
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid CRL number : not in (0..MAX)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getCRLNumber()Ljava/math/BigInteger;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRLNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->getCRLNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
