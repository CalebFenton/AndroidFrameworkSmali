.class public Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;
.super Ljava/lang/Object;
.source "JDKDSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/DSAPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1851f637e242c807L


# instance fields
.field private dsaSpec:Ljava/security/interfaces/DSAParams;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 74
    .local v0, "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@c
    move-result-object v3

    #@d
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->y:Ljava/math/BigInteger;

    #@f
    .line 76
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@16
    move-result-object v3

    #@17
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->isNotNull(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 78
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@24
    move-result-object v3

    #@25
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@28
    move-result-object v2

    #@29
    .line 80
    .local v2, "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v3, Ljava/security/spec/DSAParameterSpec;

    #@2b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    #@36
    move-result-object v6

    #@37
    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@3a
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@3c
    .line 60
    .end local v2    # "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    :cond_0
    return-void

    #@3d
    .line 70
    .end local v0    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :catch_0
    move-exception v1

    #@3e
    .line 71
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@40
    const-string/jumbo v4, "invalid info structure in DSA public key"

    #@43
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v3
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;)V
    .locals 4
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->y:Ljava/math/BigInteger;

    #@9
    .line 48
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    #@b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@26
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@28
    .line 45
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/security/spec/DSAParameterSpec;)V
    .locals 0
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "dsaSpec"    # Ljava/security/spec/DSAParameterSpec;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->y:Ljava/math/BigInteger;

    #@5
    .line 56
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@7
    .line 53
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/DSAPublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/DSAPublicKey;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->y:Ljava/math/BigInteger;

    #@9
    .line 41
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@f
    .line 38
    return-void
.end method

.method constructor <init>(Ljava/security/spec/DSAPublicKeySpec;)V
    .locals 4
    .param p1, "spec"    # Ljava/security/spec/DSAPublicKeySpec;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getY()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->y:Ljava/math/BigInteger;

    #@9
    .line 34
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    #@b
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getP()Ljava/math/BigInteger;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getQ()Ljava/math/BigInteger;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getG()Ljava/math/BigInteger;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@1c
    .line 31
    return-void
.end method

.method private isNotNull(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Z
    .locals 2
    .param p1, "parameters"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 86
    if-eqz p1, :cond_0

    #@3
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@5
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/asn1/DERNull;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x1

    #@d
    goto :goto_0
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
    .line 163
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/math/BigInteger;

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->y:Ljava/math/BigInteger;

    #@8
    .line 164
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
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@21
    .line 161
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
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->y:Ljava/math/BigInteger;

    #@2
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@5
    .line 172
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@7
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@e
    .line 173
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@10
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@17
    .line 174
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@19
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@20
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
    .line 146
    instance-of v2, p1, Ljava/security/interfaces/DSAPublicKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 148
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 151
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    #@9
    .line 153
    .local v0, "other":Ljava/security/interfaces/DSAPublicKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->getY()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 154
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

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
    .line 153
    if-eqz v2, :cond_1

    #@2d
    .line 155
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@30
    move-result-object v2

    #@31
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@34
    move-result-object v2

    #@35
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

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
    .line 153
    if-eqz v2, :cond_1

    #@43
    .line 156
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@46
    move-result-object v1

    #@47
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@4a
    move-result-object v1

    #@4b
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

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
    .line 153
    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "DSA"

    #@3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 105
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@7
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@e
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@10
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->y:Ljava/math/BigInteger;

    #@12
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@15
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    const-string/jumbo v2, "DER"

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 108
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@22
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@24
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@28
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@2a
    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@2d
    move-result-object v5

    #@2e
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@30
    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@33
    move-result-object v6

    #@34
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@36
    invoke-interface {v7}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@39
    move-result-object v7

    #@3a
    invoke-direct {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@3d
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@40
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@42
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->y:Ljava/math/BigInteger;

    #@44
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@47
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4a
    const-string/jumbo v2, "DER"

    #@4d
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    move-result-object v1

    #@51
    return-object v1

    #@52
    .line 111
    :catch_0
    move-exception v0

    #@53
    .line 112
    .local v0, "e":Ljava/io/IOException;
    return-object v8
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    #@2
    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->y:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->getY()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

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
    .line 140
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

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
    .line 139
    xor-int/2addr v0, v1

    #@22
    .line 140
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

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
    .line 139
    xor-int/2addr v0, v1

    #@2f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 129
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "line.separator"

    #@8
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 131
    .local v1, "nl":Ljava/lang/String;
    const-string/jumbo v2, "DSA Public Key"

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 132
    const-string/jumbo v2, "            y: "

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;->getY()Ljava/math/BigInteger;

    #@20
    move-result-object v3

    #@21
    const/16 v4, 0x10

    #@23
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    return-object v2
.end method
