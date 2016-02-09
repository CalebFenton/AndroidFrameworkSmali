.class public Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DSAParameter.java"


# instance fields
.field g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 55
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x3

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Bad sequence size: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@2b
    move-result-object v0

    #@2c
    .line 62
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@36
    .line 63
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3d
    move-result-object v1

    #@3e
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@40
    .line 64
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4a
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@a
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@13
    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@18
    .line 45
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 31
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 39
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

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
    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 86
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 87
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 88
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 90
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@16
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@19
    return-object v1
.end method
