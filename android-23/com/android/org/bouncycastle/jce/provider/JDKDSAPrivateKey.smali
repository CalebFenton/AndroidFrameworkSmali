.class public Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;
.super Ljava/lang/Object;
.source "JDKDSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/DSAPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field private static final serialVersionUID:J = -0x40e8f6c6dac25246L


# instance fields
.field private attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field dsaSpec:Ljava/security/interfaces/DSAParams;

.field x:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    .line 35
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    .line 57
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@15
    move-result-object v1

    #@16
    .line 58
    .local v1, "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1d
    move-result-object v0

    #@1e
    .line 60
    .local v0, "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->x:Ljava/math/BigInteger;

    #@24
    .line 61
    new-instance v2, Ljava/security/spec/DSAParameterSpec;

    #@26
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    #@31
    move-result-object v5

    #@32
    invoke-direct {v2, v3, v4, v5}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@35
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@37
    .line 55
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;)V
    .locals 4
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    .line 67
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->x:Ljava/math/BigInteger;

    #@10
    .line 68
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    #@12
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@2f
    .line 65
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/DSAPrivateKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/DSAPrivateKey;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    .line 42
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->x:Ljava/math/BigInteger;

    #@10
    .line 43
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@16
    .line 40
    return-void
.end method

.method constructor <init>(Ljava/security/spec/DSAPrivateKeySpec;)V
    .locals 4
    .param p1, "spec"    # Ljava/security/spec/DSAPrivateKeySpec;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    .line 49
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getX()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->x:Ljava/math/BigInteger;

    #@10
    .line 50
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    #@12
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getP()Ljava/math/BigInteger;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getQ()Ljava/math/BigInteger;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getG()Ljava/math/BigInteger;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@21
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@23
    .line 47
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
    .line 160
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/math/BigInteger;

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->x:Ljava/math/BigInteger;

    #@8
    .line 161
    new-instance v3, Ljava/security/spec/DSAParameterSpec;

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
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/math/BigInteger;

    #@1c
    invoke-direct {v3, v0, v1, v2}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1f
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@21
    .line 162
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@23
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@28
    .line 164
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@2a
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    #@2d
    .line 158
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
    .line 171
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->x:Ljava/math/BigInteger;

    #@2
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@5
    .line 172
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@7
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@e
    .line 173
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@10
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@17
    .line 174
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@19
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@20
    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@22
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    #@25
    .line 169
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
    .line 119
    instance-of v2, p1, Ljava/security/interfaces/DSAPrivateKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 121
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 124
    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    #@9
    .line 126
    .local v0, "other":Ljava/security/interfaces/DSAPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->getX()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 127
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@22
    move-result-object v3

    #@23
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    .line 126
    if-eqz v2, :cond_1

    #@2d
    .line 128
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@30
    move-result-object v2

    #@31
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@34
    move-result-object v2

    #@35
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    .line 126
    if-eqz v2, :cond_1

    #@43
    .line 129
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@46
    move-result-object v1

    #@47
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@4a
    move-result-object v1

    #@4b
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@4e
    move-result-object v2

    #@4f
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v1

    #@57
    .line 126
    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    const-string/jumbo v0, "DSA"

    #@3
    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

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
    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncoded()[B
    .locals 8

    #@0
    .prologue
    .line 96
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@2
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@4
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@8
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@a
    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@d
    move-result-object v5

    #@e
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@10
    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@13
    move-result-object v6

    #@14
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@16
    invoke-interface {v7}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@19
    move-result-object v7

    #@1a
    invoke-direct {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1d
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->getX()Ljava/math/BigInteger;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@29
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c
    .line 98
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const-string/jumbo v2, "DER"

    #@2f
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    move-result-object v2

    #@33
    return-object v2

    #@34
    .line 101
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v0

    #@35
    .line 102
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    #@36
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 83
    const-string/jumbo v0, "PKCS#8"

    #@3
    return-object v0
.end method

.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@2
    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->x:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->getX()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@13
    move-result v1

    #@14
    xor-int/2addr v0, v1

    #@15
    .line 135
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@18
    move-result-object v1

    #@19
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@20
    move-result v1

    #@21
    .line 134
    xor-int/2addr v0, v1

    #@22
    .line 135
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@25
    move-result-object v1

    #@26
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@2d
    move-result v1

    #@2e
    .line 134
    xor-int/2addr v0, v1

    #@2f
    return v0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5
    .line 140
    return-void
.end method
