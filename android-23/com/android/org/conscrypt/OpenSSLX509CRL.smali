.class public Lcom/android/org/conscrypt/OpenSSLX509CRL;
.super Ljava/security/cert/X509CRL;
.source "OpenSSLX509CRL.java"


# instance fields
.field private final mContext:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    #@3
    .line 51
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@5
    .line 50
    return-void
.end method

.method public static fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@2
    const/4 v5, 0x1

    #@3
    invoke-direct {v0, p0, v5}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 76
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@9
    move-result-wide v6

    #@a
    const/4 v5, 0x2

    #@b
    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    .line 80
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@12
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    #@14
    array-length v5, v1

    #@15
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 84
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509CRL;>;"
    const/4 v4, 0x0

    #@19
    .local v4, "i":I
    :goto_0
    array-length v5, v1

    #@1a
    if-ge v4, v5, :cond_1

    #@1c
    .line 85
    aget-wide v6, v1, v4

    #@1e
    const-wide/16 v8, 0x0

    #@20
    cmp-long v5, v6, v8

    #@22
    if-nez v5, :cond_0

    #@24
    .line 84
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_0

    #@27
    .line 77
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509CRL;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    #@28
    .line 78
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@2a
    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    #@2d
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 79
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@2f
    .line 80
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@32
    .line 79
    throw v5

    #@33
    .line 88
    .restart local v1    # "certRefs":[J
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509CRL;>;"
    .restart local v4    # "i":I
    :cond_0
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    #@35
    aget-wide v6, v1, v4

    #@37
    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    #@3a
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_1

    #@3e
    .line 90
    :cond_1
    return-object v2
.end method

.method public static fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@2
    const/4 v5, 0x1

    #@3
    invoke-direct {v0, p0, v5}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 115
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@9
    move-result-wide v6

    #@a
    .line 116
    const/4 v5, 0x2

    #@b
    .line 115
    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    .line 120
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@12
    .line 123
    new-instance v2, Ljava/util/ArrayList;

    #@14
    array-length v5, v1

    #@15
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 124
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509CRL;>;"
    const/4 v4, 0x0

    #@19
    .local v4, "i":I
    :goto_0
    array-length v5, v1

    #@1a
    if-ge v4, v5, :cond_1

    #@1c
    .line 125
    aget-wide v6, v1, v4

    #@1e
    const-wide/16 v8, 0x0

    #@20
    cmp-long v5, v6, v8

    #@22
    if-nez v5, :cond_0

    #@24
    .line 124
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_0

    #@27
    .line 117
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509CRL;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    #@28
    .line 118
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@2a
    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    #@2d
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 119
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@2f
    .line 120
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@32
    .line 119
    throw v5

    #@33
    .line 128
    .restart local v1    # "certRefs":[J
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509CRL;>;"
    .restart local v4    # "i":I
    :cond_0
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    #@35
    aget-wide v6, v1, v4

    #@37
    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    #@3a
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_1

    #@3e
    .line 130
    :cond_1
    return-object v2
.end method

.method public static fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 58
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@9
    move-result-wide v4

    #@a
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_CRL_bio(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v2

    #@e
    .line 59
    .local v2, "crlCtx":J
    const-wide/16 v4, 0x0

    #@10
    cmp-long v4, v2, v4

    #@12
    if-nez v4, :cond_0

    #@14
    .line 60
    const/4 v4, 0x0

    #@15
    .line 66
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@18
    .line 60
    return-object v4

    #@19
    .line 62
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    #@1b
    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 66
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@21
    .line 62
    return-object v4

    #@22
    .line 63
    .end local v2    # "crlCtx":J
    :catch_0
    move-exception v1

    #@23
    .line 64
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@25
    invoke-direct {v4, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    #@28
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@2a
    .line 66
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@2d
    .line 65
    throw v4
.end method

.method public static fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 97
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@9
    move-result-wide v4

    #@a
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509_CRL(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v2

    #@e
    .line 98
    .local v2, "crlCtx":J
    const-wide/16 v4, 0x0

    #@10
    cmp-long v4, v2, v4

    #@12
    if-nez v4, :cond_0

    #@14
    .line 99
    const/4 v4, 0x0

    #@15
    .line 105
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@18
    .line 99
    return-object v4

    #@19
    .line 101
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    #@1b
    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 105
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@21
    .line 101
    return-object v4

    #@22
    .line 102
    .end local v2    # "crlCtx":J
    :catch_0
    move-exception v1

    #@23
    .line 103
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@25
    invoke-direct {v4, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    #@28
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@2a
    .line 105
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@2d
    .line 104
    throw v4
.end method

.method private verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 205
    .local v1, "sigAlg":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 206
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 210
    :cond_0
    if-nez p2, :cond_1

    #@c
    .line 211
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@f
    move-result-object v0

    #@10
    .line 216
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@13
    .line 217
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getTBSCertList()[B

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    #@1a
    .line 218
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSignature()[B

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_2

    #@24
    .line 219
    new-instance v2, Ljava/security/SignatureException;

    #@26
    const-string/jumbo v3, "signature did not verify"

    #@29
    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 213
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@30
    move-result-object v0

    #@31
    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0

    #@32
    .line 203
    :cond_2
    return-void
.end method

.method private verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 3
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5
    move-result-object v2

    #@6
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_verify(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    #@9
    .line 197
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 384
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@a
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 387
    :cond_0
    invoke-super {p0}, Ljava/security/cert/X509CRL;->finalize()V

    #@10
    .line 381
    return-void

    #@11
    .line 386
    :catchall_0
    move-exception v0

    #@12
    .line 387
    invoke-super {p0}, Ljava/security/cert/X509CRL;->finalize()V

    #@15
    .line 386
    throw v0
.end method

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
    .line 136
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 143
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    #@9
    if-nez v1, :cond_0

    #@b
    .line 144
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@d
    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    array-length v1, v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 146
    const/4 v1, 0x0

    #@15
    return-object v1

    #@16
    .line 149
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
    .line 193
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_CRL(J)[B

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
    .line 154
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_ext_oid(JLjava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    #@0
    .prologue
    .line 254
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_issuer_name(J)[B

    #@5
    move-result-object v0

    #@6
    .line 255
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@b
    return-object v1
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 269
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
    .line 270
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@11
    .line 271
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@13
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_nextUpdate(J)J

    #@16
    move-result-wide v2

    #@17
    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    #@1a
    .line 273
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
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
    .line 160
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@3
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 168
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    #@8
    if-nez v1, :cond_0

    #@a
    .line 169
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@c
    .line 170
    const/4 v1, 0x1

    #@d
    .line 169
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    array-length v1, v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 171
    const/4 v1, 0x0

    #@15
    return-object v1

    #@16
    .line 174
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

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 6
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 278
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    .line 279
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    #@5
    move-result-object v4

    #@6
    .line 278
    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_serial(J[B)J

    #@9
    move-result-wide v0

    #@a
    .line 280
    .local v0, "revokedRef":J
    const-wide/16 v2, 0x0

    #@c
    cmp-long v2, v0, v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 281
    const/4 v2, 0x0

    #@11
    return-object v2

    #@12
    .line 284
    :cond_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    #@14
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    #@17
    move-result-wide v4

    #@18
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    #@1b
    return-object v2
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 8
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 289
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@2
    if-eqz v1, :cond_1

    #@4
    move-object v0, p1

    #@5
    .line 290
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@7
    .line 291
    .local v0, "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@9
    .line 292
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    #@c
    move-result-wide v6

    #@d
    .line 291
    invoke-static {v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JJ)J

    #@10
    move-result-wide v2

    #@11
    .line 294
    .local v2, "x509RevokedRef":J
    const-wide/16 v4, 0x0

    #@13
    cmp-long v1, v2, v4

    #@15
    if-nez v1, :cond_0

    #@17
    .line 295
    const/4 v1, 0x0

    #@18
    return-object v1

    #@19
    .line 298
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    #@1b
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    #@1e
    move-result-wide v4

    #@1f
    invoke-direct {v1, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    #@22
    return-object v1

    #@23
    .line 301
    .end local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "x509RevokedRef":J
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 306
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@4
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_REVOKED(J)[J

    #@7
    move-result-object v1

    #@8
    .line 307
    .local v1, "entryRefs":[J
    if-eqz v1, :cond_0

    #@a
    array-length v5, v1

    #@b
    if-nez v5, :cond_1

    #@d
    .line 308
    :cond_0
    return-object v8

    #@e
    .line 311
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    #@10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@13
    .line 312
    .local v0, "crlSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/conscrypt/OpenSSLX509CRLEntry;>;"
    array-length v5, v1

    #@14
    :goto_0
    if-ge v4, v5, :cond_2

    #@16
    aget-wide v2, v1, v4

    #@18
    .line 313
    .local v2, "entryRef":J
    new-instance v6, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    #@1a
    invoke-direct {v6, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    #@1d
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@20
    .line 312
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 316
    .end local v2    # "entryRef":J
    :cond_2
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 336
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_oid(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    #@0
    .prologue
    .line 341
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_parameter(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    #@0
    .prologue
    .line 326
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_signature(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 321
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_crl_enc(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 260
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
    .line 261
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@11
    .line 262
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@13
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_lastUpdate(J)J

    #@16
    move-result-wide v2

    #@17
    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    #@1a
    .line 264
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public getVersion()I
    .locals 2

    #@0
    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_version(J)J

    #@5
    move-result-wide v0

    #@6
    long-to-int v0, v0

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 11

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 180
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@4
    invoke-static {v6, v7, v10}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 181
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
    .line 182
    .local v1, "oid":Ljava/lang/String;
    iget-wide v8, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@10
    invoke-static {v8, v9, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_ext(JLjava/lang/String;)J

    #@13
    move-result-wide v2

    #@14
    .line 183
    .local v2, "extensionRef":J
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    #@17
    move-result v7

    #@18
    if-eq v7, v10, :cond_0

    #@1a
    .line 184
    return v10

    #@1b
    .line 181
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 188
    .end local v1    # "oid":Ljava/lang/String;
    .end local v2    # "extensionRef":J
    :cond_1
    return v5
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 10
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 346
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 347
    return v4

    #@6
    .line 351
    :cond_0
    instance-of v5, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@8
    if-eqz v5, :cond_2

    #@a
    move-object v1, p1

    #@b
    .line 352
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@d
    .line 362
    .local v1, "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :goto_0
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@f
    .line 363
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    #@12
    move-result-wide v8

    #@13
    .line 362
    invoke-static {v6, v7, v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JJ)J

    #@16
    move-result-wide v2

    #@17
    .line 365
    .local v2, "x509RevokedRef":J
    const-wide/16 v6, 0x0

    #@19
    cmp-long v5, v2, v6

    #@1b
    if-eqz v5, :cond_1

    #@1d
    const/4 v4, 0x1

    #@1e
    :cond_1
    return v4

    #@1f
    .line 355
    .end local v1    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "x509RevokedRef":J
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #@21
    .line 356
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@24
    move-result-object v6

    #@25
    .line 355
    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@28
    invoke-static {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v1

    #@2c
    .restart local v1    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    goto :goto_0

    #@2d
    .line 357
    .end local v1    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :catch_0
    move-exception v0

    #@2e
    .line 358
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@30
    const-string/jumbo v5, "cannot convert certificate"

    #@33
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@36
    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 370
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 371
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    #@8
    move-result-wide v0

    #@9
    .line 373
    .local v0, "bioCtx":J
    :try_start_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    #@b
    invoke-static {v0, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_print(JJ)V

    #@e
    .line 374
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v3

    #@12
    .line 376
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    #@15
    .line 374
    return-object v3

    #@16
    .line 375
    :catchall_0
    move-exception v3

    #@17
    .line 376
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    #@1a
    .line 375
    throw v3
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 227
    check-cast p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@6
    .end local p1    # "key":Ljava/security/PublicKey;
    invoke-interface {p1}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    move-result-object v0

    #@a
    .line 228
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@d
    .line 229
    return-void

    #@e
    .line 232
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    .restart local p1    # "key":Ljava/security/PublicKey;
    :cond_0
    const/4 v1, 0x0

    #@f
    invoke-direct {p0, p1, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@12
    .line 225
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@3
    .line 238
    return-void
.end method
