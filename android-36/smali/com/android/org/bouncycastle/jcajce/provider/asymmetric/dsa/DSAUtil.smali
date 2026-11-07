.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;
.super Ljava/lang/Object;
.source "DSAUtil.java"


# static fields
.field public static final blacklist dsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 29
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    filled-new-array {v0, v1, v2}, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method static blacklist generateKeyFingerprint(Ljava/math/BigInteger;Ljava/security/interfaces/DSAParams;)Ljava/lang/String;
    .registers 5

    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/util/Fingerprint;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, v1, v2, p1}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/util/Fingerprint;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/Fingerprint;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 6

    .line 98
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_2d

    .line 100
    check-cast p0, Ljava/security/interfaces/DSAPrivateKey;

    .line 102
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .line 103
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, v4, p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    return-object v0

    .line 106
    :cond_2d
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify DSA private key."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 4

    .line 70
    instance-of v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    if-eqz v0, :cond_b

    .line 72
    check-cast p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->engineGetKeyParameters()Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    move-result-object p0

    return-object p0

    .line 75
    :cond_b
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_1b

    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Ljava/security/interfaces/DSAPublicKey;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->engineGetKeyParameters()Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    move-result-object p0

    return-object p0

    .line 82
    :cond_1b
    :try_start_1b
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 84
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 86
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->engineGetKeyParameters()Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_2d

    return-object p0

    .line 90
    :catch_2d
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t identify DSA public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isDsaOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 45
    :goto_2
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    array-length v3, v2

    if-eq v1, v3, :cond_14

    .line 47
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method static blacklist toDSAParameters(Ljava/security/interfaces/DSAParams;)Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 4

    if-eqz p0, :cond_14

    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method
