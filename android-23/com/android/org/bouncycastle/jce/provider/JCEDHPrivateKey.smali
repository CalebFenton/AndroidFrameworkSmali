.class public Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;
.super Ljava/lang/Object;
.source "JCEDHPrivateKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field static final serialVersionUID:J = 0x4511a58411962b4L


# instance fields
.field private attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

.field x:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@a
    .line 40
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@a
    .line 62
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v5

    #@12
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@15
    move-result-object v4

    #@16
    .line 63
    .local v4, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v5

    #@1a
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1d
    move-result-object v0

    #@1e
    .line 64
    .local v0, "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@25
    move-result-object v1

    #@26
    .line 66
    .local v1, "id":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@28
    .line 67
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@2b
    move-result-object v5

    #@2c
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    #@2e
    .line 69
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30
    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_1

    #@36
    .line 71
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@39
    move-result-object v2

    #@3a
    .line 73
    .local v2, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@3d
    move-result-object v5

    #@3e
    if-eqz v5, :cond_0

    #@40
    .line 75
    new-instance v5, Ljavax/crypto/spec/DHParameterSpec;

    #@42
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    #@51
    move-result v8

    #@52
    invoke-direct {v5, v6, v7, v8}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@55
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@57
    .line 60
    .end local v2    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :goto_0
    return-void

    #@58
    .line 79
    .restart local v2    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_0
    new-instance v5, Ljavax/crypto/spec/DHParameterSpec;

    #@5a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@61
    move-result-object v7

    #@62
    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@65
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@67
    goto :goto_0

    #@68
    .line 82
    .end local v2    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_1
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_2

    #@70
    .line 84
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    #@73
    move-result-object v3

    #@74
    .line 86
    .local v3, "params":Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    new-instance v5, Ljavax/crypto/spec/DHParameterSpec;

    #@76
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getP()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getG()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@85
    move-result-object v7

    #@86
    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@89
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@8b
    goto :goto_0

    #@8c
    .line 90
    .end local v3    # "params":Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@8e
    new-instance v6, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v7, "unknown algorithm type: "

    #@96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v6

    #@9e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v6

    #@a2
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v5
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;)V
    .locals 4
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@a
    .line 97
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    #@10
    .line 98
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    #@12
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    #@29
    move-result v3

    #@2a
    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@2d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@2f
    .line 95
    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 1
    .param p1, "key"    # Ljavax/crypto/interfaces/DHPrivateKey;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@a
    .line 47
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    #@10
    .line 48
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@16
    .line 45
    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 3
    .param p1, "spec"    # Ljavax/crypto/spec/DHPrivateKeySpec;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@a
    .line 54
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    #@10
    .line 55
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    #@12
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1f
    .line 52
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/math/BigInteger;

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    #@8
    .line 157
    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    #@a
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/math/BigInteger;

    #@10
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/math/BigInteger;

    #@16
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@19
    move-result v3

    #@1a
    invoke-direct {v2, v0, v1, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@1d
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1f
    .line 153
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->getX()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@7
    .line 165
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@9
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@10
    .line 166
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@12
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@19
    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1b
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@1e
    move-result v0

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@22
    .line 162
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, "DH"

    #@3
    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 128
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@7
    const-string/jumbo v3, "DER"

    #@a
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 131
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@11
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@13
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@17
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@19
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@1c
    move-result-object v5

    #@1d
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1f
    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@22
    move-result-object v6

    #@23
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@25
    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@28
    move-result v7

    #@29
    invoke-direct {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@2c
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@31
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->getX()Ljava/math/BigInteger;

    #@34
    move-result-object v4

    #@35
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@38
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3b
    .line 133
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const-string/jumbo v2, "DER"

    #@3e
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    move-result-object v2

    #@42
    return-object v2

    #@43
    .line 136
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v0

    #@44
    .line 137
    .local v0, "e":Ljava/io/IOException;
    return-object v8
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 113
    const-string/jumbo v0, "PKCS#8"

    #@3
    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@2
    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5
    .line 172
    return-void
.end method
