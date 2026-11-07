.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DHParameter.java"


# instance fields
.field blacklist g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist l:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 61
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 62
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 64
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 66
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_2d

    .line 70
    :cond_2a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 72
    :goto_2d
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 7
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "l"    # I

    .line 26
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 30
    if-eqz p3, :cond_1c

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_1f

    .line 36
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 38
    :goto_1f
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 43
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;

    if-eqz v0, :cond_8

    .line 45
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;

    return-object v0

    .line 48
    :cond_8
    if-eqz p0, :cond_14

    .line 50
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 53
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getG()Ljava/math/BigInteger;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getL()Ljava/math/BigInteger;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_6

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 96
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 98
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 103
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_1b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
