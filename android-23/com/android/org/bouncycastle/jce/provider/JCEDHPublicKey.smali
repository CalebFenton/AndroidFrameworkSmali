.class public Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;
.super Ljava/lang/Object;
.source "JCEDHPublicKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field static final serialVersionUID:J = -0x301d7d6f0dc1b04L


# instance fields
.field private dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 10
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@5
    .line 70
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 77
    .local v0, "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@e
    move-result-object v6

    #@f
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    #@11
    .line 79
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

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
    .line 80
    .local v5, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24
    move-result-object v2

    #@25
    .line 83
    .local v2, "id":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v6

    #@2b
    if-nez v6, :cond_0

    #@2d
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->isPKCSParam(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_2

    #@33
    .line 85
    :cond_0
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@36
    move-result-object v3

    #@37
    .line 87
    .local v3, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@3a
    move-result-object v6

    #@3b
    if-eqz v6, :cond_1

    #@3d
    .line 89
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
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@54
    .line 63
    .end local v3    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :goto_0
    return-void

    #@55
    .line 73
    .end local v0    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v2    # "id":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v1

    #@56
    .line 74
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@58
    const-string/jumbo v7, "invalid info structure in DH public key"

    #@5b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v6

    #@5f
    .line 93
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
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@6e
    goto :goto_0

    #@6f
    .line 96
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
    .line 98
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    #@7a
    move-result-object v4

    #@7b
    .line 100
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
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@92
    goto :goto_0

    #@93
    .line 104
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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    #@9
    .line 51
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@28
    .line 48
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 0
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "dhSpec"    # Ljavax/crypto/spec/DHParameterSpec;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    #@5
    .line 59
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@7
    .line 56
    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 1
    .param p1, "key"    # Ljavax/crypto/interfaces/DHPublicKey;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    #@9
    .line 44
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@f
    .line 41
    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 3
    .param p1, "spec"    # Ljavax/crypto/spec/DHPublicKeySpec;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    #@9
    .line 37
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@18
    .line 34
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
    .line 140
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v2

    #@7
    if-ne v2, v4, :cond_0

    #@9
    .line 142
    return v7

    #@a
    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@d
    move-result v2

    #@e
    const/4 v3, 0x3

    #@f
    if-le v2, v3, :cond_1

    #@11
    .line 147
    return v6

    #@12
    .line 150
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@15
    move-result-object v2

    #@16
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@19
    move-result-object v0

    #@1a
    .line 151
    .local v0, "l":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@21
    move-result-object v1

    #@22
    .line 153
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
    .line 155
    return v6

    #@3a
    .line 158
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
    .line 165
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/math/BigInteger;

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    #@8
    .line 166
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
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1f
    .line 163
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
    .line 173
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->getY()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@7
    .line 174
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@9
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@10
    .line 175
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@12
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@19
    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1b
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@1e
    move-result v0

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@22
    .line 171
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 110
    const-string/jumbo v0, "DH"

    #@3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 125
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@11
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@13
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@16
    move-result-object v3

    #@17
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@19
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@1c
    move-result-object v4

    #@1d
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@1f
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@22
    move-result v5

    #@23
    invoke-direct {v2, v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@26
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@29
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    #@2d
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@30
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 115
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@2
    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
