.class public final Lcom/android/org/conscrypt/ChainStrengthAnalyzer;
.super Ljava/lang/Object;
.source "ChainStrengthAnalyzer.java"


# static fields
.field private static final MIN_DSA_P_LEN_BITS:I = 0x400

.field private static final MIN_DSA_Q_LEN_BITS:I = 0xa0

.field private static final MIN_EC_FIELD_SIZE_BITS:I = 0xa0

.field private static final MIN_RSA_MODULUS_LEN_BITS:I = 0x400

.field private static final SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 35
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 36
    const-string/jumbo v1, "1.2.840.113549.1.1.2"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 37
    const-string/jumbo v1, "1.2.840.113549.1.1.3"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 38
    const-string/jumbo v1, "1.2.840.113549.1.1.4"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 35
    sput-object v0, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;

    #@17
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final check(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    .local p0, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@10
    .line 55
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-static {v0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    goto :goto_0

    #@14
    .line 56
    :catch_0
    move-exception v2

    #@15
    .line 57
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/cert/CertificateException;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Unacceptable certificate: "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    .line 58
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@26
    move-result-object v5

    #@27
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-direct {v3, v4, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    throw v3

    #@33
    .line 52
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :cond_0
    return-void
.end method

.method public static final check([Ljava/security/cert/X509Certificate;)V
    .locals 5
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    const/4 v2, 0x0

    #@1
    array-length v3, p0

    #@2
    :goto_0
    if-ge v2, v3, :cond_0

    #@4
    aget-object v0, p0, v2

    #@6
    .line 44
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-static {v0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 42
    add-int/lit8 v2, v2, 0x1

    #@b
    goto :goto_0

    #@c
    .line 45
    :catch_0
    move-exception v1

    #@d
    .line 46
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertificateException;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Unacceptable certificate: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    .line 47
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@1e
    move-result-object v4

    #@1f
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2a
    throw v2

    #@2b
    .line 41
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :cond_0
    return-void
.end method

.method public static final checkCert(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkKeyLength(Ljava/security/cert/X509Certificate;)V

    #@3
    .line 65
    invoke-static {p0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkSignatureAlgorithm(Ljava/security/cert/X509Certificate;)V

    #@6
    .line 63
    return-void
.end method

.method private static final checkKeyLength(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x400

    #@2
    const/16 v6, 0xa0

    #@4
    .line 69
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@7
    move-result-object v3

    #@8
    .line 70
    .local v3, "pubkey":Ljava/lang/Object;
    instance-of v5, v3, Ljava/security/interfaces/RSAPublicKey;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 71
    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    #@e
    .end local v3    # "pubkey":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    #@15
    move-result v1

    #@16
    .line 72
    .local v1, "modulusLength":I
    if-ge v1, v7, :cond_4

    #@18
    .line 73
    new-instance v5, Ljava/security/cert/CertificateException;

    #@1a
    .line 74
    const-string/jumbo v6, "RSA modulus is < 1024 bits"

    #@1d
    .line 73
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v5

    #@21
    .line 76
    .end local v1    # "modulusLength":I
    .restart local v3    # "pubkey":Ljava/lang/Object;
    :cond_0
    instance-of v5, v3, Ljava/security/interfaces/ECPublicKey;

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 78
    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    #@27
    .end local v3    # "pubkey":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    #@32
    move-result-object v5

    #@33
    invoke-interface {v5}, Ljava/security/spec/ECField;->getFieldSize()I

    #@36
    move-result v0

    #@37
    .line 79
    .local v0, "fieldSizeBits":I
    if-ge v0, v6, :cond_4

    #@39
    .line 80
    new-instance v5, Ljava/security/cert/CertificateException;

    #@3b
    .line 81
    const-string/jumbo v6, "EC key field size is < 160 bits"

    #@3e
    .line 80
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v5

    #@42
    .line 83
    .end local v0    # "fieldSizeBits":I
    .restart local v3    # "pubkey":Ljava/lang/Object;
    :cond_1
    instance-of v5, v3, Ljava/security/interfaces/DSAPublicKey;

    #@44
    if-eqz v5, :cond_3

    #@46
    move-object v5, v3

    #@47
    .line 84
    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    #@49
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@4c
    move-result-object v5

    #@4d
    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    #@54
    move-result v2

    #@55
    .line 85
    .local v2, "pLength":I
    check-cast v3, Ljava/security/interfaces/DSAPublicKey;

    #@57
    .end local v3    # "pubkey":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@5a
    move-result-object v5

    #@5b
    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    #@62
    move-result v4

    #@63
    .line 86
    .local v4, "qLength":I
    if-lt v2, v7, :cond_2

    #@65
    if-ge v4, v6, :cond_4

    #@67
    .line 87
    :cond_2
    new-instance v5, Ljava/security/cert/CertificateException;

    #@69
    .line 88
    const-string/jumbo v6, "DSA key length is < (1024, 160) bits"

    #@6c
    .line 87
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v5

    #@70
    .line 93
    .end local v2    # "pLength":I
    .end local v4    # "qLength":I
    .restart local v3    # "pubkey":Ljava/lang/Object;
    :cond_3
    new-instance v5, Ljava/security/cert/CertificateException;

    #@72
    new-instance v6, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v7, "Rejecting unknown key class "

    #@7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v6

    #@8e
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@91
    throw v5

    #@92
    .line 68
    .end local v3    # "pubkey":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private static final checkSignatureAlgorithm(Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 100
    .local v1, "oid":Ljava/lang/String;
    sget-object v3, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;

    #@6
    const/4 v2, 0x0

    #@7
    array-length v4, v3

    #@8
    :goto_0
    if-ge v2, v4, :cond_1

    #@a
    aget-object v0, v3, v2

    #@c
    .line 101
    .local v0, "blacklisted":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 102
    new-instance v2, Ljava/security/cert/CertificateException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Signature uses an insecure hash function: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 98
    .end local v0    # "blacklisted":Ljava/lang/String;
    :cond_1
    return-void
.end method
