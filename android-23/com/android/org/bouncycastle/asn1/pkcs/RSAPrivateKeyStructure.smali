.class public Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RSAPrivateKeyStructure.java"


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

.field private version:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 29
    const/4 v2, 0x0

    #@4
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    .line 77
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    .line 79
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
    .line 80
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
    .line 82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v3, "wrong version for RSA private key"

    #@26
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 85
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@2d
    move-result v2

    #@2e
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->version:I

    #@30
    .line 86
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@36
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@39
    move-result-object v2

    #@3a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->modulus:Ljava/math/BigInteger;

    #@3c
    .line 87
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@42
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@45
    move-result-object v2

    #@46
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->publicExponent:Ljava/math/BigInteger;

    #@48
    .line 88
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@4b
    move-result-object v2

    #@4c
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@51
    move-result-object v2

    #@52
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->privateExponent:Ljava/math/BigInteger;

    #@54
    .line 89
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@57
    move-result-object v2

    #@58
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@5d
    move-result-object v2

    #@5e
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime1:Ljava/math/BigInteger;

    #@60
    .line 90
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@63
    move-result-object v2

    #@64
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@66
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@69
    move-result-object v2

    #@6a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime2:Ljava/math/BigInteger;

    #@6c
    .line 91
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@6f
    move-result-object v2

    #@70
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@72
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@75
    move-result-object v2

    #@76
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent1:Ljava/math/BigInteger;

    #@78
    .line 92
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@7b
    move-result-object v2

    #@7c
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@81
    move-result-object v2

    #@82
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent2:Ljava/math/BigInteger;

    #@84
    .line 93
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@87
    move-result-object v2

    #@88
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@8d
    move-result-object v2

    #@8e
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->coefficient:Ljava/math/BigInteger;

    #@90
    .line 95
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@93
    move-result v2

    #@94
    if-eqz v2, :cond_1

    #@96
    .line 97
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@99
    move-result-object v2

    #@9a
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@9c
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@9e
    .line 75
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
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
    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 29
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    .line 63
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->version:I

    #@9
    .line 64
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->modulus:Ljava/math/BigInteger;

    #@b
    .line 65
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->publicExponent:Ljava/math/BigInteger;

    #@d
    .line 66
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->privateExponent:Ljava/math/BigInteger;

    #@f
    .line 67
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime1:Ljava/math/BigInteger;

    #@11
    .line 68
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime2:Ljava/math/BigInteger;

    #@13
    .line 69
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent1:Ljava/math/BigInteger;

    #@15
    .line 70
    iput-object p7, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent2:Ljava/math/BigInteger;

    #@17
    .line 71
    iput-object p8, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->coefficient:Ljava/math/BigInteger;

    #@19
    .line 61
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 41
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 43
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    #@6
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@7
    .line 45
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    #@d
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@12
    return-object v0

    #@13
    .line 50
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "unknown object in factory: "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method


# virtual methods
.method public getCoefficient()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->coefficient:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getExponent1()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent1:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getExponent2()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent2:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->modulus:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrime1()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime1:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrime2()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime2:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->privateExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 103
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->version:I

    #@2
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 170
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 172
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->version:I

    #@9
    int-to-long v2, v2

    #@a
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@10
    .line 173
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getModulus()Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@19
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1c
    .line 174
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@28
    .line 175
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrivateExponent()Ljava/math/BigInteger;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@31
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@34
    .line 176
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@36
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrime1()Ljava/math/BigInteger;

    #@39
    move-result-object v2

    #@3a
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@3d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@40
    .line 177
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@42
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrime2()Ljava/math/BigInteger;

    #@45
    move-result-object v2

    #@46
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@49
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4c
    .line 178
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getExponent1()Ljava/math/BigInteger;

    #@51
    move-result-object v2

    #@52
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@55
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@58
    .line 179
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getExponent2()Ljava/math/BigInteger;

    #@5d
    move-result-object v2

    #@5e
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@61
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@64
    .line 180
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@66
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getCoefficient()Ljava/math/BigInteger;

    #@69
    move-result-object v2

    #@6a
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@6d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@70
    .line 182
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@72
    if-eqz v1, :cond_0

    #@74
    .line 184
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@76
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@79
    .line 187
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@7b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@7e
    return-object v1
.end method
