.class public Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DHParameter.java"


# instance fields
.field blacklist g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field blacklist l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field blacklist p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 62
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 64
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 66
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void

    :cond_2a
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 5

    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 28
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz p3, :cond_1c

    .line 32
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void

    :cond_1c
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    .registers 2

    .line 43
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    if-eqz v0, :cond_7

    .line 45
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getG()Ljava/math/BigInteger;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getL()Ljava/math/BigInteger;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 96
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 98
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 103
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_1b
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
