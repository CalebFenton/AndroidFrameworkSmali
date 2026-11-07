.class final Lcom/android/org/conscrypt/OpenSSLX509CRL;
.super Ljava/security/cert/X509CRL;
.source "OpenSSLX509CRL.java"


# instance fields
.field private volatile greylist-max-o mContext:J

.field private final greylist-max-o nextUpdate:Ljava/util/Date;

.field private final greylist-max-o thisUpdate:Ljava/util/Date;


# direct methods
.method private constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 63
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_lastUpdate(JLcom/android/org/conscrypt/OpenSSLX509CRL;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->thisUpdate:Ljava/util/Date;

    .line 64
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_nextUpdate(JLcom/android/org/conscrypt/OpenSSLX509CRL;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->nextUpdate:Ljava/util/Date;

    .line 65
    return-void
.end method

.method static greylist-max-o fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 97
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_34
    .catchall {:try_start_6 .. :try_end_f} :catchall_32

    .line 101
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 102
    nop

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_31

    aget-wide v5, v1, v4

    .line 106
    .local v5, "certRef":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_26

    .line 107
    goto :goto_2e

    .line 109
    :cond_26
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v7, v5, v6}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v5    # "certRef":J
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 111
    :cond_31
    return-object v2

    .line 101
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    :catchall_32
    move-exception v1

    goto :goto_3b

    .line 98
    :catch_34
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    :try_start_35
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_32

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_3b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 102
    throw v1
.end method

.method static greylist-max-o fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 136
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_34
    .catchall {:try_start_6 .. :try_end_f} :catchall_32

    .line 141
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 142
    nop

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_31

    aget-wide v5, v1, v4

    .line 146
    .local v5, "certRef":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_26

    .line 147
    goto :goto_2e

    .line 149
    :cond_26
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v7, v5, v6}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v5    # "certRef":J
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 151
    :cond_31
    return-object v2

    .line 141
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    :catchall_32
    move-exception v1

    goto :goto_3b

    .line 138
    :catch_34
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    :try_start_35
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_32

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_3b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 142
    throw v1
.end method

.method static greylist-max-o fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 79
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_CRL_bio(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_25
    .catchall {:try_start_6 .. :try_end_e} :catchall_23

    .line 80
    .local v1, "crlCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    .line 81
    nop

    .line 87
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 81
    const/4 v3, 0x0

    return-object v3

    .line 83
    :cond_1a
    :try_start_1a
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_25
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 87
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 83
    return-object v3

    .line 87
    .end local v1    # "crlCtx":J
    :catchall_23
    move-exception v1

    goto :goto_2c

    .line 84
    :catch_25
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    :try_start_26
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2c
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 88
    throw v1
.end method

.method static greylist-max-o fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 118
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509_CRL(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_25
    .catchall {:try_start_6 .. :try_end_e} :catchall_23

    .line 119
    .local v1, "crlCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    .line 120
    nop

    .line 126
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 120
    const/4 v3, 0x0

    return-object v3

    .line 122
    :cond_1a
    :try_start_1a
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_25
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 126
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 122
    return-object v3

    .line 126
    .end local v1    # "crlCtx":J
    :catchall_23
    move-exception v1

    goto :goto_2c

    .line 123
    :catch_25
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    :try_start_26
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2c
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 127
    throw v1
.end method

.method static greylist-max-o toDate(J)Ljava/util/Date;
    .registers 5
    .param p0, "asn1time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 69
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 70
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 71
    invoke-static {p0, p1, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 72
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "sigAlg":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 231
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_a
    if-nez p2, :cond_11

    .line 236
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .local v1, "sig":Ljava/security/Signature;
    goto :goto_15

    .line 238
    .end local v1    # "sig":Ljava/security/Signature;
    :cond_11
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 241
    .restart local v1    # "sig":Ljava/security/Signature;
    :goto_15
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getTBSCertList()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 243
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 246
    return-void

    .line 244
    :cond_2a
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "signature did not verify"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 5
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 220
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_verify(JLcom/android/org/conscrypt/OpenSSLX509CRL;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 223
    nop

    .line 224
    return-void

    .line 221
    :catch_b
    move-exception v0

    .line 222
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 423
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 424
    .local v0, "toFree":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 425
    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 426
    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_free(JLcom/android/org/conscrypt/OpenSSLX509CRL;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    .line 429
    .end local v0    # "toFree":J
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 430
    nop

    .line 431
    return-void

    .line 429
    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 430
    throw v0
.end method

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

    .line 156
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 157
    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 165
    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 167
    const/4 v1, 0x0

    return-object v1

    .line 170
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

    .line 214
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_CRL(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 4
    .param p1, "oid"    # Ljava/lang/String;

    .line 175
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_ext_oid(JLcom/android/org/conscrypt/OpenSSLX509CRL;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 274
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .line 279
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_issuer_name(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    .line 280
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public whitelist test-api getNextUpdate()Ljava/util/Date;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

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

    .line 180
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 181
    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 190
    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 192
    const/4 v1, 0x0

    return-object v1

    .line 195
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public whitelist test-api getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 8
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .line 297
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 298
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 297
    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_serial(JLcom/android/org/conscrypt/OpenSSLX509CRL;[B)J

    move-result-wide v0

    .line 299
    .local v0, "revokedRef":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    .line 300
    return-object v3

    .line 303
    :cond_12
    :try_start_12
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V
    :try_end_1b
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_12 .. :try_end_1b} :catch_1c

    return-object v2

    .line 304
    :catch_1c
    move-exception v2

    .line 305
    .local v2, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    return-object v3
.end method

.method public whitelist test-api getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .registers 11
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 311
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_26

    .line 312
    move-object v6, p1

    check-cast v6, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 313
    .local v6, "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 314
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v4

    .line 313
    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JLcom/android/org/conscrypt/OpenSSLX509CRL;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v1

    .line 316
    .local v1, "x509RevokedRef":J
    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    const/4 v4, 0x0

    if-nez v0, :cond_1a

    .line 317
    return-object v4

    .line 321
    :cond_1a
    :try_start_1a
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V
    :try_end_23
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_1a .. :try_end_23} :catch_24

    return-object v0

    .line 322
    :catch_24
    move-exception v0

    .line 323
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    return-object v4

    .line 327
    .end local v0    # "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    .end local v1    # "x509RevokedRef":J
    .end local v6    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_26
    move-object v3, p0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRevokedCertificates()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    .line 332
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_REVOKED(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[J

    move-result-object v0

    .line 333
    .local v0, "entryRefs":[J
    if-eqz v0, :cond_25

    array-length v1, v0

    if-nez v1, :cond_c

    goto :goto_25

    .line 337
    :cond_c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 338
    .local v1, "crlSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_24

    aget-wide v4, v0, v3

    .line 340
    .local v4, "entryRef":J
    :try_start_17
    new-instance v6, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-direct {v6, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_17 .. :try_end_1f} :catch_20

    .line 343
    goto :goto_21

    .line 341
    :catch_20
    move-exception v6

    .line 338
    .end local v4    # "entryRef":J
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 346
    :cond_24
    return-object v1

    .line 334
    .end local v1    # "crlSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;>;"
    :cond_25
    :goto_25
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 3

    .line 361
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "oid":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OidData;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "algName":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 364
    return-object v1

    .line 366
    :cond_b
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_12

    .line 368
    return-object v1

    .line 370
    :cond_12
    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 3

    .line 375
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_oid(JLcom/android/org/conscrypt/OpenSSLX509CRL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 3

    .line 380
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_parameter(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSignature()[B
    .registers 3

    .line 356
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_signature(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTBSCertList()[B
    .registers 3

    .line 351
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_crl_enc(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getThisUpdate()Ljava/util/Date;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .registers 3

    .line 269
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_version(JLcom/android/org/conscrypt/OpenSSLX509CRL;)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 10

    .line 200
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 201
    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "criticalOids":[Ljava/lang/String;
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_1e

    aget-object v5, v0, v4

    .line 203
    .local v5, "oid":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v6, v7, p0, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_ext(JLcom/android/org/conscrypt/OpenSSLX509CRL;Ljava/lang/String;)J

    move-result-wide v6

    .line 204
    .local v6, "extensionRef":J
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v8

    if-eq v8, v2, :cond_1b

    .line 205
    return v2

    .line 202
    .end local v5    # "oid":Ljava/lang/String;
    .end local v6    # "extensionRef":J
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 209
    :cond_1e
    return v3
.end method

.method public whitelist test-api isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 10
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 385
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 386
    return v1

    .line 390
    :cond_6
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_f

    .line 391
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-object v7, v0

    .local v0, "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    goto :goto_1d

    .line 394
    .end local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 395
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 394
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_30

    .line 398
    .restart local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    move-object v7, v0

    .line 401
    .end local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .local v7, "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :goto_1d
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 402
    invoke-virtual {v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v5

    .line 401
    move-object v4, p0

    invoke-static/range {v2 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JLcom/android/org/conscrypt/OpenSSLX509CRL;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v2

    .line 404
    .local v2, "x509RevokedRef":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1

    .line 396
    .end local v2    # "x509RevokedRef":J
    .end local v7    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :catch_30
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot convert certificate"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 409
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 410
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v1

    .line 412
    .local v1, "bioCtx":J
    :try_start_9
    iget-wide v3, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v1, v2, v3, v4, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_print(JJLcom/android/org/conscrypt/OpenSSLX509CRL;)V

    .line 413
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 415
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 413
    return-object v3

    .line 415
    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 416
    throw v3
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 3
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

    .line 251
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_f

    .line 252
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 253
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 254
    return-void

    .line 257
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 3
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

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 265
    return-void
.end method
