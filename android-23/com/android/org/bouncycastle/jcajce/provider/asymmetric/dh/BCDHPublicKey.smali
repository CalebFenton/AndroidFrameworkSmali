.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;
.super Ljava/lang/Object;
.source "BCDHPublicKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field static final serialVersionUID:J = -0x301d7d6f0dc1b04L


# instance fields
.field private transient dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private transient info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 10
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@5
    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 78
    .local v0, "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@e
    move-result-object v6

    #@f
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    #@11
    .line 80
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@18
    move-result-object v6

    #@19
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@1c
    move-result-object v5

    #@1d
    .line 81
    .local v5, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24
    move-result-object v2

    #@25
    .line 84
    .local v2, "id":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v6

    #@2b
    if-nez v6, :cond_0

    #@2d
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->isPKCSParam(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_2

    #@33
    .line 86
    :cond_0
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@36
    move-result-object v3

    #@37
    .line 88
    .local v3, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@3a
    move-result-object v6

    #@3b
    if-eqz v6, :cond_1

    #@3d
    .line 90
    new-instance v6, Ljavax/crypto/spec/DHParameterSpec;

    #@3f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    #@4e
    move-result v9

    #@4f
    invoke-direct {v6, v7, v8, v9}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@52
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@54
    .line 64
    .end local v3    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :goto_0
    return-void

    #@55
    .line 74
    .end local v0    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v2    # "id":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v1

    #@56
    .line 75
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@58
    const-string/jumbo v7, "invalid info structure in DH public key"

    #@5b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v6

    #@5f
    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .restart local v2    # "id":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v3    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    .restart local v5    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1
    new-instance v6, Ljavax/crypto/spec/DHParameterSpec;

    #@61
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@68
    move-result-object v8

    #@69
    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@6c
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@6e
    goto :goto_0

    #@6f
    .line 97
    .end local v3    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_2
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@71
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v6

    #@75
    if-eqz v6, :cond_3

    #@77
    .line 99
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    #@7a
    move-result-object v4

    #@7b
    .line 101
    .local v4, "params":Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    new-instance v6, Ljavax/crypto/spec/DHParameterSpec;

    #@7d
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getP()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@80
    move-result-object v7

    #@81
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getG()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@8c
    move-result-object v8

    #@8d
    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@90
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@92
    goto :goto_0

    #@93
    .line 105
    .end local v4    # "params":Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@95
    new-instance v7, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v8, "unknown algorithm type: "

    #@9d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v7

    #@a1
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v7

    #@a5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v7

    #@a9
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v6
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;)V
    .locals 4
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    #@9
    .line 52
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    #@b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    #@22
    move-result v3

    #@23
    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@26
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@28
    .line 49
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 0
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "dhSpec"    # Ljavax/crypto/spec/DHParameterSpec;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    #@5
    .line 60
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@7
    .line 57
    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 1
    .param p1, "key"    # Ljavax/crypto/interfaces/DHPublicKey;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    #@9
    .line 45
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@f
    .line 42
    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 3
    .param p1, "spec"    # Ljavax/crypto/spec/DHPublicKeySpec;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    #@9
    .line 38
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    #@b
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@18
    .line 35
    return-void
.end method

.method private isPKCSParam(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z
    .locals 8
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 141
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v2

    #@7
    if-ne v2, v4, :cond_0

    #@9
    .line 143
    return v7

    #@a
    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@d
    move-result v2

    #@e
    const/4 v3, 0x3

    #@f
    if-le v2, v3, :cond_1

    #@11
    .line 148
    return v6

    #@12
    .line 151
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@15
    move-result-object v2

    #@16
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@19
    move-result-object v0

    #@1a
    .line 152
    .local v0, "l":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@21
    move-result-object v1

    #@22
    .line 154
    .local v1, "p":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    #@2d
    move-result v3

    #@2e
    int-to-long v4, v3

    #@2f
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@36
    move-result v2

    #@37
    if-lez v2, :cond_2

    #@39
    .line 156
    return v6

    #@3a
    .line 159
    :cond_2
    return v7
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
    .line 188
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 190
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
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1a
    .line 191
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@1d
    .line 186
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
    .line 198
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 200
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@5
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@c
    .line 201
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@e
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@15
    .line 202
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@17
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@1a
    move-result v0

    #@1b
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@1e
    .line 196
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
    .line 171
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPublicKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 173
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 176
    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    #@9
    .line 178
    .local v0, "other":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getY()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 179
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

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
    .line 178
    if-eqz v2, :cond_1

    #@2d
    .line 180
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@34
    move-result-object v2

    #@35
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

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
    .line 178
    if-eqz v2, :cond_1

    #@43
    .line 181
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@4a
    move-result v2

    #@4b
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

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
    .line 178
    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    const-string/jumbo v0, "DH"

    #@3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 126
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@11
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@13
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@16
    move-result-object v3

    #@17
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@19
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@1c
    move-result-object v4

    #@1d
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1f
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@22
    move-result v5

    #@23
    invoke-direct {v2, v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@26
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2d
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2f
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    #@31
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@34
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@2
    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getY()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

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
    .line 165
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

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
    .line 164
    xor-int/2addr v0, v1

    #@22
    .line 165
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@29
    move-result v1

    #@2a
    .line 164
    xor-int/2addr v0, v1

    #@2b
    return v0
.end method
