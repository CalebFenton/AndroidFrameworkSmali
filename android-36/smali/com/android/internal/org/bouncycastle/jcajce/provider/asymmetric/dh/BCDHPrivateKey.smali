.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;
.super Ljava/lang/Object;
.source "BCDHPrivateKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field static final whitelist serialVersionUID:J = 0x4511a58411962b4L


# instance fields
.field private transient blacklist attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private transient blacklist dhPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field private transient blacklist dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private transient blacklist info:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

.field private blacklist x:Ljava/math/BigInteger;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 14
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 81
    .local v0, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 82
    .local v1, "derX":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 84
    .local v2, "id":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 85
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    .line 87
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 89
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object v3

    .line 91
    .local v3, "params":Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v4

    if-eqz v4, :cond_75

    .line 93
    new-instance v4, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 94
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 95
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v10, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    goto :goto_9a

    .line 99
    :cond_75
    new-instance v4, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 100
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 101
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 103
    .end local v3    # "params":Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;
    :goto_9a
    goto :goto_df

    .line 104
    :cond_9b
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 106
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;

    move-result-object v3

    .line 108
    .local v3, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 109
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 110
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 111
    .end local v3    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;
    nop

    .line 118
    :goto_df
    return-void

    .line 114
    :cond_e0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown algorithm type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;)V
    .registers 4
    .param p1, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 123
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    .line 124
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 125
    return-void
.end method

.method constructor blacklist <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .registers 3
    .param p1, "key"    # Ljavax/crypto/interfaces/DHPrivateKey;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 58
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    .line 59
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 60
    return-void
.end method

.method constructor blacklist <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .registers 5
    .param p1, "spec"    # Ljavax/crypto/spec/DHPrivateKeySpec;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 65
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    .line 66
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHExtendedPrivateKeySpec;

    if-eqz v0, :cond_1e

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHExtendedPrivateKeySpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHExtendedPrivateKeySpec;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_2d

    .line 72
    :cond_1e
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 74
    :goto_2d
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 256
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 258
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 259
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 267
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 270
    return-void
.end method


# virtual methods
.method blacklist engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .registers 8

    .line 198
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_7

    .line 200
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    return-object v0

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    if-eqz v0, :cond_1d

    .line 205
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v0

    .line 207
    :cond_1d
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 213
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 215
    return v1

    .line 218
    :cond_6
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 220
    .local v0, "other":Ljavax/crypto/interfaces/DHPrivateKey;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v2

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v3

    if-ne v2, v3, :cond_57

    const/4 v1, 0x1

    goto :goto_58

    :cond_57
    nop

    .line 220
    :goto_58
    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 129
    const-string v0, "DH"

    return-object v0
.end method

.method public blacklist getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 242
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 13

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_a2

    const-string v1, "DER"

    if-eqz v0, :cond_d

    .line 154
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 158
    :cond_d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 160
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    .line 161
    .local v0, "params":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getValidationParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    move-result-object v2

    .line 162
    .local v2, "validationParameters":Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    const/4 v3, 0x0

    .line 163
    .local v3, "vParams":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    if-eqz v2, :cond_3c

    .line 165
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->getSeed()[B

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->getCounter()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;-><init>([BI)V

    move-object v3, v4

    move-object v8, v3

    goto :goto_3d

    .line 163
    :cond_3c
    move-object v8, v3

    .line 167
    .end local v3    # "vParams":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    .local v8, "vParams":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    :goto_3d
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v11, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v10, v11, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v9, v10, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 168
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    .end local v2    # "validationParameters":Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    .end local v8    # "vParams":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    .local v9, "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    goto :goto_9d

    .line 171
    .end local v9    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_6c
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v9, v0

    .line 173
    .restart local v9    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_9d
    invoke-virtual {v9, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a1} :catch_a2

    return-object v0

    .line 175
    .end local v9    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_a2
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 139
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public whitelist test-api getParams()Ljavax/crypto/spec/DHParameterSpec;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getX()Ljava/math/BigInteger;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    .line 228
    return v0
.end method

.method public blacklist setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 236
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 237
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "DH"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/DHUtil;->privateKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
