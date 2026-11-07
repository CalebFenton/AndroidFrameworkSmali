.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;
.super Ljava/lang/Object;
.source "DSAUtil.java"


# static fields
.field public static final blacklist dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist generateKeyFingerprint(Ljava/math/BigInteger;Ljava/security/interfaces/DSAParams;)Ljava/lang/String;
    .registers 7
    .param p0, "y"    # Ljava/math/BigInteger;
    .param p1, "params"    # Ljava/security/interfaces/DSAParams;

    .line 111
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 8
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 98
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_2e

    .line 100
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    .line 102
    .local v0, "k":Ljava/security/interfaces/DSAPrivateKey;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 103
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    .line 102
    return-object v1

    .line 106
    .end local v0    # "k":Ljava/security/interfaces/DSAPrivateKey;
    :cond_2e
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify DSA private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 5
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 70
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    if-eqz v0, :cond_c

    .line 72
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    move-result-object v0

    return-object v0

    .line 75
    :cond_c
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_1d

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Ljava/security/interfaces/DSAPublicKey;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    move-result-object v0

    return-object v0

    .line 82
    :cond_1d
    :try_start_1d
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 84
    .local v0, "bytes":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 86
    .local v1, "bckey":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    move-result-object v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2e} :catch_2f

    return-object v2

    .line 88
    .end local v0    # "bytes":[B
    .end local v1    # "bckey":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;
    :catch_2f
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t identify DSA public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/PublicKey;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist isDsaOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 3
    .param p0, "algOid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    array-length v1, v1

    if-eq v0, v1, :cond_15

    .line 47
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 49
    const/4 v1, 0x1

    return v1

    .line 45
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist toDSAParameters(Ljava/security/interfaces/DSAParams;)Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 5
    .param p0, "spec"    # Ljava/security/interfaces/DSAParams;

    .line 58
    if-eqz p0, :cond_14

    .line 60
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 63
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method
