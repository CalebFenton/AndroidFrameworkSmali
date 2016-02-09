.class public Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RSAPrivateKey.java"


# instance fields
.field private coefficient:Ljava/math/BigInteger;

.field private exponent1:Ljava/math/BigInteger;

.field private exponent2:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;

.field private otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private prime1:Ljava/math/BigInteger;

.field private prime2:Ljava/math/BigInteger;

.field private privateExponent:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;

.field private version:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 26
    const/4 v2, 0x0

    #@4
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    .line 75
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    .line 77
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@10
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@13
    move-result-object v1

    #@14
    .line 78
    .local v1, "v":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@1d
    move-result v2

    #@1e
    const/4 v3, 0x1

    #@1f
    if-eq v2, v3, :cond_0

    #@21
    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v3, "wrong version for RSA private key"

    #@26
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 83
    :cond_0
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    #@2c
    .line 84
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@32
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@35
    move-result-object v2

    #@36
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@38
    .line 85
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@41
    move-result-object v2

    #@42
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    #@44
    .line 86
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@47
    move-result-object v2

    #@48
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@4d
    move-result-object v2

    #@4e
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@50
    .line 87
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@53
    move-result-object v2

    #@54
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@56
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@59
    move-result-object v2

    #@5a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    #@5c
    .line 88
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@62
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@65
    move-result-object v2

    #@66
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    #@68
    .line 89
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@6b
    move-result-object v2

    #@6c
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@71
    move-result-object v2

    #@72
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    #@74
    .line 90
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@77
    move-result-object v2

    #@78
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@7d
    move-result-object v2

    #@7e
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    #@80
    .line 91
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@83
    move-result-object v2

    #@84
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@86
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@89
    move-result-object v2

    #@8a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    #@8c
    .line 93
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8f
    move-result v2

    #@90
    if-eqz v2, :cond_1

    #@92
    .line 95
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@95
    move-result-object v2

    #@96
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@98
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@9a
    .line 73
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "prime1"    # Ljava/math/BigInteger;
    .param p5, "prime2"    # Ljava/math/BigInteger;
    .param p6, "exponent1"    # Ljava/math/BigInteger;
    .param p7, "exponent2"    # Ljava/math/BigInteger;
    .param p8, "coefficient"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 26
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    .line 61
    const-wide/16 v0, 0x0

    #@8
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    #@e
    .line 62
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@10
    .line 63
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    #@12
    .line 64
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@14
    .line 65
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    #@16
    .line 66
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    #@18
    .line 67
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    #@1a
    .line 68
    iput-object p7, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    #@1c
    .line 69
    iput-object p8, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    #@1e
    .line 59
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 38
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 40
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 43
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 48
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCoefficient()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getExponent1()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getExponent2()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrime1()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrime2()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 168
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 170
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    #@9
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 171
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1b
    .line 172
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@24
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@27
    .line 173
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@30
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@33
    .line 174
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@35
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    #@38
    move-result-object v2

    #@39
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@3c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3f
    .line 175
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@41
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    #@44
    move-result-object v2

    #@45
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@48
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4b
    .line 176
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    #@50
    move-result-object v2

    #@51
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@54
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@57
    .line 177
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@59
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    #@5c
    move-result-object v2

    #@5d
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@60
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@63
    .line 178
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@65
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    #@68
    move-result-object v2

    #@69
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@6c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@6f
    .line 180
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@71
    if-eqz v1, :cond_0

    #@73
    .line 182
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@75
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@78
    .line 185
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@7a
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@7d
    return-object v1
.end method
