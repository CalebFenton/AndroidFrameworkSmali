.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;
.super Ljava/lang/Object;
.source "BCDHPrivateKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field static final serialVersionUID:J = 0x4511a58411962b4L


# instance fields
.field private transient attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private transient dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private transient info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

.field private x:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    .line 63
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

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
    .line 64
    .local v4, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1c
    .line 65
    .local v0, "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23
    move-result-object v1

    #@24
    .line 67
    .local v1, "id":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@26
    .line 68
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@29
    move-result-object v5

    #@2a
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    #@2c
    .line 70
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e
    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    .line 72
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@37
    move-result-object v2

    #@38
    .line 74
    .local v2, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@3b
    move-result-object v5

    #@3c
    if-eqz v5, :cond_0

    #@3e
    .line 76
    new-instance v5, Ljavax/crypto/spec/DHParameterSpec;

    #@40
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    #@4f
    move-result v8

    #@50
    invoke-direct {v5, v6, v7, v8}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@53
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@55
    .line 61
    .end local v2    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :goto_0
    return-void

    #@56
    .line 80
    .restart local v2    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_0
    new-instance v5, Ljavax/crypto/spec/DHParameterSpec;

    #@58
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@5f
    move-result-object v7

    #@60
    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@63
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@65
    goto :goto_0

    #@66
    .line 83
    .end local v2    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_1
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@68
    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v5

    #@6c
    if-eqz v5, :cond_2

    #@6e
    .line 85
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    #@71
    move-result-object v3

    #@72
    .line 87
    .local v3, "params":Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    new-instance v5, Ljavax/crypto/spec/DHParameterSpec;

    #@74
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getP()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getG()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@83
    move-result-object v7

    #@84
    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@87
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@89
    goto :goto_0

    #@8a
    .line 91
    .end local v3    # "params":Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@8c
    new-instance v6, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v7, "unknown algorithm type: "

    #@94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v6

    #@98
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v5
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;)V
    .locals 4
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    .line 98
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    #@10
    .line 99
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@2f
    .line 96
    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 1
    .param p1, "key"    # Ljavax/crypto/interfaces/DHPrivateKey;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    .line 48
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    #@10
    .line 49
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@16
    .line 46
    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 3
    .param p1, "spec"    # Ljavax/crypto/spec/DHPrivateKeySpec;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    .line 55
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    #@10
    .line 56
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1f
    .line 53
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
    .line 196
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 198
    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    #@5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/math/BigInteger;

    #@b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/math/BigInteger;

    #@11
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@14
    move-result v3

    #@15
    invoke-direct {v2, v0, v1, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@18
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1a
    .line 199
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@1d
    .line 200
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@1f
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@24
    .line 194
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
    .line 207
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 209
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@5
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@c
    .line 210
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@e
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@15
    .line 211
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@17
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@1a
    move-result v0

    #@1b
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@1e
    .line 205
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 155
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 157
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 160
    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    #@9
    .line 162
    .local v0, "other":Ljavax/crypto/interfaces/DHPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 163
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    .line 162
    if-eqz v2, :cond_1

    #@2d
    .line 164
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@34
    move-result-object v2

    #@35
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    .line 162
    if-eqz v2, :cond_1

    #@43
    .line 165
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@4a
    move-result v2

    #@4b
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@52
    move-result v3

    #@53
    if-ne v2, v3, :cond_1

    #@55
    const/4 v1, 0x1

    #@56
    .line 162
    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "DH"

    #@3
    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

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
    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 129
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@7
    const-string/jumbo v3, "DER"

    #@a
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 132
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@11
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@13
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@17
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@19
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@1c
    move-result-object v5

    #@1d
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1f
    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@22
    move-result-object v6

    #@23
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@25
    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@28
    move-result v7

    #@29
    invoke-direct {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@2c
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@33
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@35
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    #@38
    move-result-object v4

    #@39
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@3c
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3f
    .line 134
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const-string/jumbo v2, "DER"

    #@42
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    move-result-object v2

    #@46
    return-object v2

    #@47
    .line 137
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v0

    #@48
    .line 138
    .local v0, "e":Ljava/lang/Exception;
    return-object v8
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 114
    const-string/jumbo v0, "PKCS#8"

    #@3
    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@2
    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@13
    move-result v1

    #@14
    xor-int/2addr v0, v1

    #@15
    .line 171
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@20
    move-result v1

    #@21
    .line 170
    xor-int/2addr v0, v1

    #@22
    .line 171
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@29
    move-result v1

    #@2a
    .line 170
    xor-int/2addr v0, v1

    #@2b
    return v0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5
    .line 176
    return-void
.end method
