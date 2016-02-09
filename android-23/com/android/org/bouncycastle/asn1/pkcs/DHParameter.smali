.class public Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DHParameter.java"


# instance fields
.field g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 55
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    .line 57
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    .line 58
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1b
    .line 60
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 62
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@27
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@29
    .line 53
    :goto_0
    return-void

    #@2a
    .line 66
    :cond_0
    const/4 v1, 0x0

    #@2b
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 4
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "l"    # I

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@a
    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    .line 26
    if-eqz p3, :cond_0

    #@13
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@15
    int-to-long v2, p3

    #@16
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1b
    .line 21
    :goto_0
    return-void

    #@1c
    .line 32
    :cond_0
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1f
    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 39
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 41
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 44
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 49
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getL()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 84
    return-object v1

    #@6
    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 94
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 95
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 97
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@12
    move-result-object v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1a
    .line 102
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@1c
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1f
    return-object v1
.end method
