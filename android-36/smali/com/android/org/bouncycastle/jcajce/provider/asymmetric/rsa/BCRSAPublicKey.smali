.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;
.super Ljava/lang/Object;
.source "BCRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# static fields
.field static final blacklist DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field static final whitelist serialVersionUID:J = 0x25226a0e5bfa6c84L


# instance fields
.field private transient blacklist algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist modulus:Ljava/math/BigInteger;

.field private blacklist publicExponent:Ljava/math/BigInteger;

.field private transient blacklist rsaPublicKey:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 46
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 47
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    .line 48
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->rsaPublicKey:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->populateFromPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 65
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    .line 66
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->rsaPublicKey:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 55
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 56
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    .line 57
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->rsaPublicKey:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    return-void
.end method

.method private blacklist populateFromPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 5

    .line 79
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 82
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 83
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    .line 84
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->rsaPublicKey:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    return-void

    .line 88
    :catch_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid info structure in RSA public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 183
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_12

    .line 187
    :catch_e
    sget-object p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 189
    :goto_12
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->rsaPublicKey:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 198
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 200
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method


# virtual methods
.method blacklist engineGetKeyParameters()Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->rsaPublicKey:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 148
    :cond_4
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 153
    :cond_a
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 155
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 156
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v0

    :cond_29
    return v2
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 116
    const-string p0, "RSASSA-PSS"

    return-object p0

    .line 118
    :cond_11
    const-string p0, "RSA"

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 1

    .line 123
    const-string p0, "X.509"

    return-object p0
.end method

.method public whitelist test-api getModulus()Ljava/math/BigInteger;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api getPublicExponent()Ljava/math/BigInteger;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 138
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 161
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string v2, "RSA Public Key ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generateKeyFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ",["

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generateExponentFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v2, "        modulus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v2, "public exponent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
