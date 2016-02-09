.class public Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CRLNumber.java"


# instance fields
.field private number:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "number"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    #@5
    .line 21
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 43
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 45
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 47
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    #@17
    return-object v0

    #@18
    .line 52
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCRLNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CRLNumber: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->getCRLNumber()Ljava/math/BigInteger;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method
