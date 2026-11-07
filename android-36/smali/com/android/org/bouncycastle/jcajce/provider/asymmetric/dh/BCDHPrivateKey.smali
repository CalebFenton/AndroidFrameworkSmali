.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;
.super Ljava/lang/Object;
.source "BCDHPrivateKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field static final whitelist serialVersionUID:J = 0x4511a58411962b4L


# instance fields
.field private transient blacklist attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private transient blacklist dhPrivateKey:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field private transient blacklist dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private transient blacklist info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

.field private blacklist x:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 10

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 80
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 82
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 84
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 85
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    .line 87
    sget-object p1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 89
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 93
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .line 95
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    return-void

    .line 99
    :cond_75
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .line 101
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    return-void

    .line 104
    :cond_9b
    sget-object p1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_df

    .line 106
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    move-result-object p1

    .line 108
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 109
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .line 110
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    return-void

    .line 114
    :cond_df
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown algorithm type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;)V
    .registers 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 123
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    .line 124
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor blacklist <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 58
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    .line 59
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor blacklist <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 65
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    .line 72
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
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

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    const/4 p1, 0x0

    .line 257
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 258
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 267
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 269
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 213
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 218
    :cond_6
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 220
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 221
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 222
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 223
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    if-ne p0, p1, :cond_56

    const/4 p0, 0x1

    return p0

    :cond_56
    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 1

    .line 129
    const-string p0, "DH"

    return-object p0
.end method

.method public blacklist getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 1

    .line 247
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 13

    const/4 v0, 0x0

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_9c

    const-string v2, "DER"

    if-eqz v1, :cond_c

    .line 154
    :try_start_7
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 158
    :cond_c
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v3, v1, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    if-eqz v3, :cond_67

    check-cast v1, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 160
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v1, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getDomainParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 165
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->getSeed()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->getCounter()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;-><init>([BI)V

    move-object v11, v4

    goto :goto_38

    :cond_37
    move-object v11, v0

    .line 167
    :goto_38
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {v6 .. v11}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_97

    .line 171
    :cond_67
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 173
    :goto_97
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9b} :catch_9c

    return-object p0

    :catch_9c
    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 1

    .line 139
    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public whitelist test-api getParams()Ljavax/crypto/spec/DHParameterSpec;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object p0
.end method

.method public whitelist test-api getX()Ljava/math/BigInteger;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 228
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 229
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public blacklist setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 236
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string p0, "DH"

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/DHUtil;->privateKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
