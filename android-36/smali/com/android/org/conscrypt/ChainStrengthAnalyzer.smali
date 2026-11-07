.class public final Lcom/android/org/conscrypt/ChainStrengthAnalyzer;
.super Ljava/lang/Object;
.source "ChainStrengthAnalyzer.java"


# static fields
.field private static final blacklist MIN_DSA_P_LEN_BITS:I = 0x400

.field private static final blacklist MIN_DSA_Q_LEN_BITS:I = 0xa0

.field private static final blacklist MIN_EC_FIELD_SIZE_BITS:I = 0xa0

.field private static final blacklist MIN_RSA_MODULUS_LEN_BITS:I = 0x400

.field private static final blacklist SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 41
    const-string v4, "1.2.840.10040.4.3"

    const-string v5, "1.2.840.10045.4.1"

    const-string v0, "1.2.840.113549.1.1.2"

    const-string v1, "1.2.840.113549.1.1.3"

    const-string v2, "1.2.840.113549.1.1.4"

    const-string v3, "1.2.840.113549.1.1.5"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist check(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 62
    .local p0, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 64
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    :try_start_10
    invoke-static {v1}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_13} :catch_15

    .line 68
    nop

    .line 69
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_4

    .line 65
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    :catch_15
    move-exception v0

    .line 66
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unacceptable certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 67
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 70
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    :cond_33
    return-void
.end method

.method public static final blacklist check([Ljava/security/cert/X509Certificate;)V
    .registers 6
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 51
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2b

    aget-object v2, p0, v1

    .line 53
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    :try_start_6
    invoke-static {v2}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_9
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_9} :catch_d

    .line 57
    nop

    .line 51
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 54
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    :catch_d
    move-exception v0

    .line 55
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unacceptable certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 59
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2b
    return-void
.end method

.method public static final blacklist checkCert(Ljava/security/cert/X509Certificate;)V
    .registers 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkKeyLength(Ljava/security/cert/X509Certificate;)V

    .line 74
    invoke-static {p0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkSignatureAlgorithm(Ljava/security/cert/X509Certificate;)V

    .line 75
    return-void
.end method

.method private static blacklist checkKeyLength(Ljava/security/cert/X509Certificate;)V
    .registers 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 79
    .local v0, "pubkey":Ljava/lang/Object;
    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    const/16 v2, 0x400

    if-eqz v1, :cond_20

    .line 80
    move-object v1, v0

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 81
    .local v1, "modulusLength":I
    if-lt v1, v2, :cond_18

    .line 85
    .end local v1    # "modulusLength":I
    goto :goto_6b

    .line 82
    .restart local v1    # "modulusLength":I
    :cond_18
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "RSA modulus is < 1024 bits"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    .end local v1    # "modulusLength":I
    :cond_20
    instance-of v1, v0, Ljava/security/interfaces/ECPublicKey;

    const/16 v3, 0xa0

    if-eqz v1, :cond_44

    .line 86
    move-object v1, v0

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 87
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v1

    .line 88
    .local v1, "fieldSizeBits":I
    if-lt v1, v3, :cond_3c

    .line 92
    .end local v1    # "fieldSizeBits":I
    goto :goto_6b

    .line 89
    .restart local v1    # "fieldSizeBits":I
    :cond_3c
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "EC key field size is < 160 bits"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    .end local v1    # "fieldSizeBits":I
    :cond_44
    instance-of v1, v0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_74

    .line 93
    move-object v1, v0

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 94
    .local v1, "pLength":I
    move-object v4, v0

    check-cast v4, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 95
    .local v4, "qLength":I
    if-lt v1, v2, :cond_6c

    if-lt v4, v3, :cond_6c

    .line 100
    .end local v1    # "pLength":I
    .end local v4    # "qLength":I
    nop

    .line 104
    :goto_6b
    return-void

    .line 96
    .restart local v1    # "pLength":I
    .restart local v4    # "qLength":I
    :cond_6c
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "DSA key length is < (1024, 160) bits"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    .end local v1    # "pLength":I
    .end local v4    # "qLength":I
    :cond_74
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting unknown key class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist checkSignatureAlgorithm(Ljava/security/cert/X509Certificate;)V
    .registers 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "oid":Ljava/lang/String;
    sget-object v1, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_2e

    aget-object v4, v1, v3

    .line 110
    .local v4, "blacklisted":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 109
    .end local v4    # "blacklisted":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 111
    .restart local v4    # "blacklisted":Ljava/lang/String;
    :cond_15
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature uses an insecure hash function: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v4    # "blacklisted":Ljava/lang/String;
    :cond_2e
    return-void
.end method
