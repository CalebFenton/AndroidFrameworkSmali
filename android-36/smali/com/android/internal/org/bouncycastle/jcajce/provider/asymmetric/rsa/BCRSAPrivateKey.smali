.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;
.super Ljava/lang/Object;
.source "BCRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field private static blacklist ZERO:Ljava/math/BigInteger; = null

.field static final whitelist serialVersionUID:J = 0x46eb09c007cf411cL


# instance fields
.field protected transient blacklist algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist algorithmIdentifierEnc:[B

.field protected transient blacklist attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field protected blacklist modulus:Ljava/math/BigInteger;

.field protected blacklist privateExponent:Ljava/math/BigInteger;

.field protected transient blacklist rsaPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 30
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V
    .registers 7
    .param p1, "algID"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "key"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getEncoding(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifierEnc:[B

    .line 36
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 78
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 79
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getEncoding(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifierEnc:[B

    .line 81
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 82
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 83
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->rsaPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 84
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;)V
    .registers 4
    .param p1, "algID"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "key"    # Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getEncoding(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifierEnc:[B

    .line 36
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 52
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 53
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getEncoding(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifierEnc:[B

    .line 55
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 56
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 57
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->rsaPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 58
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;)V
    .registers 3
    .param p1, "key"    # Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getEncoding(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifierEnc:[B

    .line 36
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 43
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 44
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 45
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->rsaPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 46
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/interfaces/RSAPrivateKey;)V
    .registers 6
    .param p1, "key"    # Ljava/security/interfaces/RSAPrivateKey;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getEncoding(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifierEnc:[B

    .line 36
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 71
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 72
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 73
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->rsaPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 74
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/spec/RSAPrivateKeySpec;)V
    .registers 6
    .param p1, "spec"    # Ljava/security/spec/RSAPrivateKeySpec;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getEncoding(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifierEnc:[B

    .line 36
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 63
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 64
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 65
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->rsaPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 66
    return-void
.end method

.method private static blacklist getEncoding(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B
    .registers 3
    .param p0, "algorithmIdentifier"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 203
    :catch_5
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
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

    .line 165
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifierEnc:[B

    if-nez v0, :cond_f

    .line 169
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getEncoding(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifierEnc:[B

    .line 172
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifierEnc:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 174
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 175
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->rsaPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 176
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 183
    return-void
.end method


# virtual methods
.method blacklist engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->rsaPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 122
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 124
    return v1

    .line 127
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    .line 129
    return v0

    .line 132
    :cond_a
    move-object v2, p1

    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    .line 134
    .local v2, "key":Ljava/security/interfaces/RSAPrivateKey;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v1, v0

    goto :goto_2c

    :cond_2b
    nop

    .line 134
    :goto_2c
    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 100
    const-string v0, "RSASSA-PSS"

    return-object v0

    .line 102
    :cond_11
    const-string v0, "RSA"

    return-object v0
.end method

.method public blacklist getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 11

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v6, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v7, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v8, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v9, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedPrivateKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 107
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public whitelist test-api getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrivateExponent()Ljava/math/BigInteger;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 148
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "nl":Ljava/lang/String;
    const-string v2, "RSA Private Key ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generateKeyFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 191
    const-string v3, "],[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v2, "            modulus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
