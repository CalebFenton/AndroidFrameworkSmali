.class public Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;
.super Ljava/security/cert/X509CRLEntry;
.source "OpenSSLX509CRLEntry.java"


# instance fields
.field private final mContext:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    #@3
    .line 34
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@5
    .line 33
    return-void
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 40
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@3
    .line 41
    const/4 v1, 0x1

    #@4
    .line 40
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 48
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    #@9
    if-nez v1, :cond_0

    #@b
    .line 49
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@d
    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    array-length v1, v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 51
    const/4 v1, 0x0

    #@15
    return-object v1

    #@16
    .line 54
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    #@18
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1f
    return-object v1
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_REVOKED(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 65
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@3
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 73
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    #@8
    if-nez v1, :cond_0

    #@a
    .line 74
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@c
    .line 75
    const/4 v1, 0x1

    #@d
    .line 74
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    array-length v1, v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 76
    const/4 v1, 0x0

    #@15
    return-object v1

    #@16
    .line 79
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    #@18
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1f
    return-object v1
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 109
    const-string/jumbo v1, "UTC"

    #@3
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@a
    move-result-object v0

    #@b
    .line 110
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@11
    .line 111
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@13
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_revocationDate(J)J

    #@16
    move-result-wide v2

    #@17
    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    #@1a
    .line 113
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 4

    #@0
    .prologue
    .line 104
    new-instance v0, Ljava/math/BigInteger;

    #@2
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@4
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_serialNumber(J)[B

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@b
    return-object v0
.end method

.method public hasExtensions()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 118
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@4
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    array-length v2, v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 120
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@d
    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    array-length v2, v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 118
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 120
    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 11

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 85
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@4
    invoke-static {v6, v7, v10}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 87
    .local v0, "criticalOids":[Ljava/lang/String;
    array-length v6, v0

    #@9
    move v4, v5

    #@a
    :goto_0
    if-ge v4, v6, :cond_1

    #@c
    aget-object v1, v0, v4

    #@e
    .line 88
    .local v1, "oid":Ljava/lang/String;
    iget-wide v8, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@10
    invoke-static {v8, v9, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext(JLjava/lang/String;)J

    #@13
    move-result-wide v2

    #@14
    .line 89
    .local v2, "extensionRef":J
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    #@17
    move-result v7

    #@18
    if-eq v7, v10, :cond_0

    #@1a
    .line 90
    return v10

    #@1b
    .line 87
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 94
    .end local v1    # "oid":Ljava/lang/String;
    .end local v2    # "extensionRef":J
    :cond_1
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 126
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 127
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    #@8
    move-result-wide v0

    #@9
    .line 129
    .local v0, "bioCtx":J
    :try_start_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    #@b
    invoke-static {v0, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_print(JJ)V

    #@e
    .line 130
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v3

    #@12
    .line 132
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    #@15
    .line 130
    return-object v3

    #@16
    .line 131
    :catchall_0
    move-exception v3

    #@17
    .line 132
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    #@1a
    .line 131
    throw v3
.end method
