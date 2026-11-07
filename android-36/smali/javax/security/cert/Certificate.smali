.class public abstract Ljavax/security/cert/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 78
    return v0

    .line 79
    :cond_4
    instance-of v1, p1, Ljavax/security/cert/Certificate;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 80
    return v2

    .line 82
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljavax/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    .line 83
    .local v1, "thisCert":[B
    move-object v3, p1

    check-cast v3, Ljavax/security/cert/Certificate;

    invoke-virtual {v3}, Ljavax/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 85
    .local v3, "otherCert":[B
    array-length v4, v1

    array-length v5, v3

    if-eq v4, v5, :cond_1a

    .line 86
    return v2

    .line 87
    :cond_1a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    array-length v5, v1

    if-ge v4, v5, :cond_28

    .line 88
    aget-byte v5, v1, v4

    aget-byte v6, v3, v4
    :try_end_22
    .catch Ljavax/security/cert/CertificateException; {:try_start_a .. :try_end_22} :catch_29

    if-eq v5, v6, :cond_25

    .line 89
    return v2

    .line 87
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 90
    .end local v4    # "i":I
    :cond_28
    return v0

    .line 91
    .end local v1    # "thisCert":[B
    .end local v3    # "otherCert":[B
    :catch_29
    move-exception v0

    .line 92
    .local v0, "e":Ljavax/security/cert/CertificateException;
    return v2
.end method

.method public abstract whitelist test-api getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getPublicKey()Ljava/security/PublicKey;
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "retval":I
    :try_start_1
    invoke-virtual {p0}, Ljavax/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    .line 106
    .local v1, "certData":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    array-length v3, v1

    if-ge v2, v3, :cond_10

    .line 107
    aget-byte v3, v1, v2
    :try_end_b
    .catch Ljavax/security/cert/CertificateException; {:try_start_1 .. :try_end_b} :catch_11

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 109
    .end local v2    # "i":I
    :cond_10
    return v0

    .line 110
    .end local v1    # "certData":[B
    :catch_11
    move-exception v1

    .line 111
    .local v1, "e":Ljavax/security/cert/CertificateException;
    return v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public abstract whitelist test-api verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method
