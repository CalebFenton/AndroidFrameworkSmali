.class final Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;
.super Ljava/security/cert/X509CRLEntry;
.source "OpenSSLX509CRLEntry.java"


# instance fields
.field private final blacklist mContext:J

.field private final blacklist revocationDate:Ljava/util/Date;


# direct methods
.method constructor blacklist <init>(J)V
    .registers 5
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 41
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_revocationDate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->revocationDate:Ljava/util/Date;

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 47
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 56
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 58
    const/4 v1, 0x0

    return-object v1

    .line 61
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public whitelist test-api getEncoded()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 106
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_REVOKED(J)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 4
    .param p1, "oid"    # Ljava/lang/String;

    .line 66
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 72
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 81
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 83
    const/4 v1, 0x0

    return-object v1

    .line 86
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public whitelist test-api getRevocationDate()Ljava/util/Date;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 4

    .line 111
    new-instance v0, Ljava/math/BigInteger;

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_serialNumber(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public whitelist test-api hasExtensions()Z
    .registers 6

    .line 122
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iget-wide v3, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 124
    invoke-static {v3, v4, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_15

    :cond_14
    move v2, v1

    .line 122
    :cond_15
    return v2
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 10

    .line 91
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 92
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "criticalOids":[Ljava/lang/String;
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_1e

    aget-object v5, v0, v4

    .line 95
    .local v5, "oid":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext(JLjava/lang/String;)J

    move-result-wide v6

    .line 96
    .local v6, "extensionRef":J
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v8

    if-eq v8, v2, :cond_1b

    .line 97
    return v2

    .line 94
    .end local v5    # "oid":Ljava/lang/String;
    .end local v6    # "extensionRef":J
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 101
    :cond_1e
    return v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 130
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 131
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v1

    .line 133
    .local v1, "bioCtx":J
    :try_start_9
    iget-wide v3, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_print(JJ)V

    .line 134
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 136
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 134
    return-object v3

    .line 136
    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 137
    throw v3
.end method
