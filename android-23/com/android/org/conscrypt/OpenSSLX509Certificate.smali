.class public Lcom/android/org/conscrypt/OpenSSLX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "OpenSSLX509Certificate.java"


# instance fields
.field private final transient mContext:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@3
    .line 58
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@5
    .line 57
    return-void
.end method

.method private static alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .param p0, "altNameArray"    # [[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 459
    if-nez p0, :cond_0

    #@3
    .line 460
    return-object v2

    #@4
    .line 463
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@6
    array-length v2, p0

    #@7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 464
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@c
    if-ge v1, v2, :cond_1

    #@e
    .line 465
    aget-object v2, p0, v1

    #@10
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1b
    .line 464
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 468
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method

.method public static fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 163
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@6
    .end local p0    # "cert":Ljava/security/cert/Certificate;
    return-object p0

    #@7
    .line 164
    .restart local p0    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 165
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 167
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    #@16
    const-string/jumbo v1, "Only X.509 certificates are supported"

    #@19
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0
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
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
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
    const/4 v5, 0x1

    #@1
    .line 90
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@3
    invoke-direct {v0, p0, v5}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 94
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@9
    move-result-wide v6

    #@a
    const/4 v5, 0x1

    #@b
    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    .line 98
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@12
    .line 101
    if-nez v1, :cond_0

    #@14
    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@17
    move-result-object v5

    #@18
    return-object v5

    #@19
    .line 95
    .end local v1    # "certRefs":[J
    :catch_0
    move-exception v3

    #@1a
    .line 96
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@1c
    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    #@1f
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 97
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@21
    .line 98
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@24
    .line 97
    throw v5

    #@25
    .line 105
    .restart local v1    # "certRefs":[J
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@27
    .line 106
    array-length v5, v1

    #@28
    .line 105
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@2b
    .line 107
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    const/4 v4, 0x0

    #@2c
    .local v4, "i":I
    :goto_0
    array-length v5, v1

    #@2d
    if-ge v4, v5, :cond_2

    #@2f
    .line 108
    aget-wide v6, v1, v4

    #@31
    const-wide/16 v8, 0x0

    #@33
    cmp-long v5, v6, v8

    #@35
    if-nez v5, :cond_1

    #@37
    .line 107
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 111
    :cond_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@3c
    aget-wide v6, v1, v4

    #@3e
    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    #@41
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    goto :goto_1

    #@45
    .line 113
    :cond_2
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
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
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
    const/4 v5, 0x1

    #@1
    .line 137
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@3
    invoke-direct {v0, p0, v5}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 141
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@9
    move-result-wide v6

    #@a
    .line 142
    const/4 v5, 0x1

    #@b
    .line 141
    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    .line 146
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@12
    .line 149
    new-instance v2, Ljava/util/ArrayList;

    #@14
    .line 150
    array-length v5, v1

    #@15
    .line 149
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 151
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    const/4 v4, 0x0

    #@19
    .local v4, "i":I
    :goto_0
    array-length v5, v1

    #@1a
    if-ge v4, v5, :cond_1

    #@1c
    .line 152
    aget-wide v6, v1, v4

    #@1e
    const-wide/16 v8, 0x0

    #@20
    cmp-long v5, v6, v8

    #@22
    if-nez v5, :cond_0

    #@24
    .line 151
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_0

    #@27
    .line 143
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    #@28
    .line 144
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
    .line 145
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@2f
    .line 146
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@32
    .line 145
    throw v5

    #@33
    .line 155
    .restart local v1    # "certRefs":[J
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    .restart local v4    # "i":I
    :cond_0
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@35
    aget-wide v6, v1, v4

    #@37
    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    #@3a
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_1

    #@3e
    .line 157
    :cond_1
    return-object v2
.end method

.method public static fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 4
    .param p0, "encoded"    # [B

    #@0
    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509([B)J

    #@3
    move-result-wide v0

    #@4
    .line 81
    .local v0, "certCtx":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v0, v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 82
    const/4 v2, 0x0

    #@b
    return-object v2

    #@c
    .line 84
    :cond_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@e
    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    #@11
    return-object v2
.end method

.method public static fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 67
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@9
    move-result-wide v4

    #@a
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_bio(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v2

    #@e
    .line 68
    .local v2, "certCtx":J
    const-wide/16 v4, 0x0

    #@10
    cmp-long v4, v2, v4

    #@12
    if-nez v4, :cond_0

    #@14
    .line 69
    const/4 v4, 0x0

    #@15
    .line 75
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@18
    .line 69
    return-object v4

    #@19
    .line 71
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@1b
    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 75
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@21
    .line 71
    return-object v4

    #@22
    .line 72
    .end local v2    # "certCtx":J
    :catch_0
    move-exception v1

    #@23
    .line 73
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
    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@2a
    .line 75
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@2d
    .line 74
    throw v4
.end method

.method public static fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 122
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@9
    move-result-wide v4

    #@a
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v2

    #@e
    .line 123
    .local v2, "certCtx":J
    const-wide/16 v4, 0x0

    #@10
    cmp-long v4, v2, v4

    #@12
    if-nez v4, :cond_0

    #@14
    .line 124
    const/4 v4, 0x0

    #@15
    .line 130
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@18
    .line 124
    return-object v4

    #@19
    .line 126
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@1b
    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 130
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@21
    .line 126
    return-object v4

    #@22
    .line 127
    .end local v2    # "certCtx":J
    :catch_0
    move-exception v1

    #@23
    .line 128
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
    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@2a
    .line 130
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@2d
    .line 129
    throw v4
.end method

.method private verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 361
    .local v1, "sigAlg":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 362
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgOID()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 366
    :cond_0
    if-nez p2, :cond_1

    #@c
    .line 367
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@f
    move-result-object v0

    #@10
    .line 372
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@13
    .line 373
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    #@1a
    .line 374
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_2

    #@24
    .line 375
    new-instance v2, Ljava/security/SignatureException;

    #@26
    const-string/jumbo v3, "signature did not verify"

    #@29
    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 369
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@30
    move-result-object v0

    #@31
    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0

    #@32
    .line 359
    :cond_2
    return-void
.end method

.method private verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 5
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    :try_start_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5
    move-result-object v4

    #@6
    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->X509_verify(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 347
    return-void

    #@a
    .line 352
    :catch_0
    move-exception v1

    #@b
    .line 353
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/SignatureException;

    #@d
    invoke-direct {v2}, Ljava/security/SignatureException;-><init>()V

    #@10
    throw v2

    #@11
    .line 350
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v0

    #@12
    .line 351
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/security/cert/CertificateException;

    #@14
    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@17
    throw v2
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->checkValidity(Ljava/util/Date;)V

    #@8
    .line 221
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    #@7
    move-result v0

    #@8
    if-lez v0, :cond_0

    #@a
    .line 229
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Certificate not valid until "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 230
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 230
    const-string/jumbo v2, " (compared to "

    #@27
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 230
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 230
    const-string/jumbo v2, ")"

    #@36
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    #@49
    move-result v0

    #@4a
    if-gez v0, :cond_1

    #@4c
    .line 234
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    #@4e
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v2, "Certificate expired at "

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    .line 235
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    .line 235
    const-string/jumbo v2, " (compared to "

    #@69
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    .line 235
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    .line 235
    const-string/jumbo v2, ")"

    #@78
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    #@83
    throw v0

    #@84
    .line 227
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 485
    instance-of v2, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 486
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@8
    .line 488
    .local v0, "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@a
    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@c
    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_cmp(JJ)I

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    :cond_0
    return v1

    #@14
    .line 491
    .end local v0    # "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_1
    invoke-super {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    return v1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 513
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 514
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@a
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 517
    :cond_0
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->finalize()V

    #@10
    .line 511
    return-void

    #@11
    .line 516
    :catchall_0
    move-exception v0

    #@12
    .line 517
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->finalize()V

    #@15
    .line 516
    throw v0
.end method

.method public getBasicConstraints()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 328
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@3
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(J)I

    #@6
    move-result v1

    #@7
    and-int/lit8 v1, v1, 0x10

    #@9
    if-nez v1, :cond_0

    #@b
    .line 329
    return v4

    #@c
    .line 332
    :cond_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@e
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_pathlen(J)I

    #@11
    move-result v0

    #@12
    .line 333
    .local v0, "pathLen":I
    if-ne v0, v4, :cond_1

    #@14
    .line 334
    const v1, 0x7fffffff

    #@17
    return v1

    #@18
    .line 337
    :cond_1
    return v0
.end method

.method public getContext()J
    .locals 2

    #@0
    .prologue
    .line 507
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    return-wide v0
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
    .line 174
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 181
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    #@9
    if-nez v1, :cond_0

    #@b
    .line 182
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@d
    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    array-length v1, v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 184
    const/4 v1, 0x0

    #@15
    return-object v1

    #@16
    .line 187
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
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 342
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 450
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@3
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_xkusage(J)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 451
    .local v0, "extUsage":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    .line 452
    return-object v1

    #@a
    .line 455
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 192
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_ext_oid(JLjava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 479
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    .line 480
    const/4 v2, 0x2

    #@3
    .line 479
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 2

    #@0
    .prologue
    .line 302
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_issuerUID(J)[Z

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    #@0
    .prologue
    .line 438
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_issuer_name(J)[B

    #@5
    move-result-object v0

    #@6
    .line 439
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@b
    return-object v1
.end method

.method public getKeyUsage()[Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/16 v5, 0x9

    #@3
    const/4 v4, 0x0

    #@4
    .line 312
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@6
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_kusage(J)[Z

    #@9
    move-result-object v0

    #@a
    .line 313
    .local v0, "kusage":[Z
    if-nez v0, :cond_0

    #@c
    .line 314
    return-object v6

    #@d
    .line 317
    :cond_0
    array-length v2, v0

    #@e
    if-lt v2, v5, :cond_1

    #@10
    .line 318
    return-object v0

    #@11
    .line 321
    :cond_1
    new-array v1, v5, [Z

    #@13
    .line 322
    .local v1, "resized":[Z
    array-length v2, v0

    #@14
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@17
    .line 323
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
    .line 198
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@3
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 205
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    #@8
    if-nez v1, :cond_0

    #@a
    .line 206
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@c
    .line 207
    const/4 v1, 0x1

    #@d
    .line 206
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    array-length v1, v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 208
    const/4 v1, 0x0

    #@15
    return-object v1

    #@16
    .line 211
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

.method public getNotAfter()Ljava/util/Date;
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
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@13
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notAfter(J)J

    #@16
    move-result-wide v2

    #@17
    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    #@1a
    .line 272
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 261
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
    .line 262
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@11
    .line 263
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@13
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notBefore(J)J

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

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 8

    #@0
    .prologue
    .line 414
    :try_start_0
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@4
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_pubkey(J)J

    #@7
    move-result-wide v6

    #@8
    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@b
    .line 415
    .local v5, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v6

    #@f
    return-object v6

    #@10
    .line 416
    .end local v5    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v1

    #@11
    .line 420
    .local v1, "ignored":Ljava/security/NoSuchAlgorithmException;
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@13
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_pubkey_oid(J)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 421
    .local v4, "oid":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@19
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_PUBKEY(J)[B

    #@1c
    move-result-object v0

    #@1d
    .line 423
    .local v0, "encoded":[B
    :try_start_1
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@20
    move-result-object v3

    #@21
    .line 424
    .local v3, "kf":Ljava/security/KeyFactory;
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    #@23
    invoke-direct {v6, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@26
    invoke-virtual {v3, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    #@29
    move-result-object v6

    #@2a
    return-object v6

    #@2b
    .line 425
    .end local v3    # "kf":Ljava/security/KeyFactory;
    :catch_1
    move-exception v1

    #@2c
    .line 433
    :goto_0
    new-instance v6, Lcom/android/org/conscrypt/X509PublicKey;

    #@2e
    invoke-direct {v6, v4, v0}, Lcom/android/org/conscrypt/X509PublicKey;-><init>(Ljava/lang/String;[B)V

    #@31
    return-object v6

    #@32
    .line 426
    :catch_2
    move-exception v2

    #@33
    .local v2, "ignored":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 4

    #@0
    .prologue
    .line 246
    new-instance v0, Ljava/math/BigInteger;

    #@2
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@4
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_serialNumber(J)[B

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@b
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgOID()Ljava/lang/String;

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
    .line 292
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_oid(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    #@0
    .prologue
    .line 297
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_parameter(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    #@0
    .prologue
    .line 282
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_signature(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    .line 474
    const/4 v2, 0x1

    #@3
    .line 473
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 2

    #@0
    .prologue
    .line 307
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_subjectUID(J)[Z

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    #@0
    .prologue
    .line 444
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_subject_name(J)[B

    #@5
    move-result-object v0

    #@6
    .line 445
    .local v0, "subject":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@b
    return-object v1
.end method

.method public getTBSCertificate()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_cert_info_enc(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVersion()I
    .locals 2

    #@0
    .prologue
    .line 241
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_version(J)J

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
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 216
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@3
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(J)I

    #@6
    move-result v1

    #@7
    and-int/lit16 v1, v1, 0x200

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 497
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_hashCode(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 400
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 401
    .local v8, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v8}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    #@8
    move-result-wide v0

    #@9
    .line 403
    .local v0, "bioCtx":J
    :try_start_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    #@b
    const-wide/16 v4, 0x0

    #@d
    const-wide/16 v6, 0x0

    #@f
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_print_ex(JJJJ)V

    #@12
    .line 404
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v2

    #@16
    .line 406
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    #@19
    .line 404
    return-object v2

    #@1a
    .line 405
    :catchall_0
    move-exception v2

    #@1b
    .line 406
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    #@1e
    .line 405
    throw v2
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 383
    check-cast p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@6
    .end local p1    # "key":Ljava/security/PublicKey;
    invoke-interface {p1}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    move-result-object v0

    #@a
    .line 384
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@d
    .line 385
    return-void

    #@e
    .line 388
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    .restart local p1    # "key":Ljava/security/PublicKey;
    :cond_0
    const/4 v1, 0x0

    #@f
    invoke-direct {p0, p1, v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@12
    .line 381
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@3
    .line 394
    return-void
.end method
