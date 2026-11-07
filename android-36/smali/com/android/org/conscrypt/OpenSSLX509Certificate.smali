.class public final Lcom/android/org/conscrypt/OpenSSLX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "OpenSSLX509Certificate.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1ba5daf1d5fc5de0L


# instance fields
.field private volatile transient greylist mContext:J

.field private transient greylist-max-o mHashCode:Ljava/lang/Integer;

.field private final greylist-max-o notAfter:Ljava/util/Date;

.field private final greylist-max-o notBefore:Ljava/util/Date;


# direct methods
.method constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 73
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 76
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notBefore(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    .line 77
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notAfter(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    .line 78
    return-void
.end method

.method private static greylist-max-o alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;
    .registers 6
    .param p0, "altNameArray"    # [[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 510
    if-nez p0, :cond_4

    .line 511
    const/4 v0, 0x0

    return-object v0

    .line 514
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 516
    .local v3, "objects":[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 515
    .end local v3    # "objects":[Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 519
    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 186
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_8

    .line 187
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    return-object v0

    .line 188
    :cond_8
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_15

    .line 189
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0

    .line 191
    :cond_15
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Only X.509 certificates are supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 119
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_3b
    .catchall {:try_start_6 .. :try_end_e} :catchall_39

    .line 123
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 124
    nop

    .line 126
    if-nez v1, :cond_1a

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 132
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_38

    aget-wide v5, v1, v4

    .line 134
    .local v5, "certRef":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_2d

    .line 135
    goto :goto_35

    .line 137
    :cond_2d
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v7, v5, v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v5    # "certRef":J
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 139
    :cond_38
    return-object v2

    .line 123
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    :catchall_39
    move-exception v1

    goto :goto_42

    .line 120
    :catch_3b
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3c
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_39

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_42
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 124
    throw v1
.end method

.method public static greylist-max-o fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 166
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_33
    .catchall {:try_start_6 .. :try_end_e} :catchall_31

    .line 171
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 172
    nop

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_30

    aget-wide v5, v1, v4

    .line 176
    .local v5, "certRef":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_25

    .line 177
    goto :goto_2d

    .line 179
    :cond_25
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v7, v5, v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v5    # "certRef":J
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 181
    :cond_30
    return-object v2

    .line 171
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    :catchall_31
    move-exception v1

    goto :goto_3a

    .line 168
    :catch_33
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    :try_start_34
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_31

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_3a
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 172
    throw v1
.end method

.method public static greylist-max-o fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 4
    .param p0, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 107
    :try_start_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509([B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_9
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 108
    :catch_a
    move-exception v0

    .line 109
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static greylist-max-o fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 92
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_bio(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_25
    .catchall {:try_start_6 .. :try_end_e} :catchall_23

    .line 93
    .local v1, "certCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    .line 94
    nop

    .line 100
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 94
    const/4 v3, 0x0

    return-object v3

    .line 96
    :cond_1a
    :try_start_1a
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_25
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 100
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 96
    return-object v3

    .line 100
    .end local v1    # "certCtx":J
    :catchall_23
    move-exception v1

    goto :goto_2c

    .line 97
    :catch_25
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    :try_start_26
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2c
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 101
    throw v1
.end method

.method public static greylist fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 148
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_25
    .catchall {:try_start_6 .. :try_end_e} :catchall_23

    .line 149
    .local v1, "certCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    .line 150
    nop

    .line 156
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 150
    const/4 v3, 0x0

    return-object v3

    .line 152
    :cond_1a
    :try_start_1a
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_25
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 156
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 152
    return-object v3

    .line 156
    .end local v1    # "certCtx":J
    :catchall_23
    move-exception v1

    goto :goto_2c

    .line 153
    :catch_25
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    :try_start_26
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2c
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 157
    throw v1
.end method

.method private static greylist-max-o toDate(J)Ljava/util/Date;
    .registers 5
    .param p0, "asn1time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 81
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 82
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 83
    invoke-static {p0, p1, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 84
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 390
    if-nez p2, :cond_b

    .line 391
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .local v0, "sig":Ljava/security/Signature;
    goto :goto_13

    .line 393
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_b
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 396
    .restart local v0    # "sig":Ljava/security/Signature;
    :goto_13
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 398
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 401
    return-void

    .line 399
    :cond_28
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "signature did not verify"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 5
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 378
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_verify(JLcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_12
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 383
    nop

    .line 384
    return-void

    .line 381
    :catch_b
    move-exception v0

    .line 382
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 379
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_12
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 248
    return-void
.end method

.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .registers 7
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    const-string v1, ")"

    const-string v2, " (compared to "

    if-gtz v0, :cond_4a

    .line 259
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-ltz v0, :cond_19

    .line 263
    return-void

    .line 260
    :cond_19
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate expired at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 261
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_4a
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate not valid until "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 256
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 536
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_16

    .line 537
    move-object v6, p1

    check-cast v6, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 539
    .local v6, "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    iget-wide v4, v6, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->X509_cmp(JLcom/android/org/conscrypt/OpenSSLX509Certificate;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    .line 542
    .end local v6    # "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_16
    invoke-super {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 575
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 576
    .local v0, "toFree":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 577
    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 578
    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_free(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    .line 581
    .end local v0    # "toFree":J
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 582
    nop

    .line 583
    return-void

    .line 581
    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 582
    throw v0
.end method

.method public whitelist test-api getBasicConstraints()I
    .registers 5

    .line 359
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/4 v1, -0x1

    if-nez v0, :cond_c

    .line 360
    return v1

    .line 363
    :cond_c
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_pathlen(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    .line 364
    .local v0, "pathLen":I
    if-ne v0, v1, :cond_18

    .line 365
    const v1, 0x7fffffff

    return v1

    .line 368
    :cond_18
    return v0
.end method

.method public greylist-max-o getContext()J
    .registers 3

    .line 561
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    return-wide v0
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

    .line 197
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 198
    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 206
    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 208
    const/4 v1, 0x0

    return-object v1

    .line 211
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
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 373
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExtendedKeyUsage()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 501
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_xkusage(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "extUsage":[Ljava/lang/String;
    if-nez v0, :cond_a

    .line 503
    const/4 v1, 0x0

    return-object v1

    .line 506
    :cond_a
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 4
    .param p1, "oid"    # Ljava/lang/String;

    .line 216
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_ext_oid(JLcom/android/org/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 530
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 277
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerUniqueID()[Z
    .registers 3

    .line 333
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_issuerUID(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .line 489
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_issuer_name(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 490
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public whitelist test-api getKeyUsage()[Z
    .registers 5

    .line 343
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_kusage(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    .line 344
    .local v0, "kusage":[Z
    if-nez v0, :cond_a

    .line 345
    const/4 v1, 0x0

    return-object v1

    .line 348
    :cond_a
    array-length v1, v0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_10

    .line 349
    return-object v0

    .line 352
    :cond_10
    new-array v1, v2, [Z

    .line 353
    .local v1, "resized":[Z
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    return-object v1
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

    .line 221
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 222
    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 230
    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 232
    const/4 v1, 0x0

    return-object v1

    .line 235
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public whitelist test-api getNotAfter()Ljava/util/Date;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 5

    .line 464
    :try_start_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_pubkey(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 465
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 466
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_10
    move-exception v0

    .line 471
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_pubkey_oid(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "oid":Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_PUBKEY(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v1

    .line 474
    .local v1, "encoded":[B
    :try_start_1d
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 475
    .local v2, "kf":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_2a} :catch_2b
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1d .. :try_end_2a} :catch_2b

    return-object v3

    .line 476
    .end local v2    # "kf":Ljava/security/KeyFactory;
    :catch_2b
    move-exception v2

    .line 484
    new-instance v2, Lcom/android/org/conscrypt/X509PublicKey;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/X509PublicKey;-><init>(Ljava/lang/String;[B)V

    return-object v2
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 4

    .line 272
    new-instance v0, Ljava/math/BigInteger;

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_serialNumber(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 3

    .line 309
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "oid":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OidData;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "algName":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 312
    return-object v1

    .line 314
    :cond_b
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    if-eqz v1, :cond_12

    .line 316
    return-object v1

    .line 318
    :cond_12
    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 3

    .line 323
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_oid(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 3

    .line 328
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_parameter(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSignature()[B
    .registers 3

    .line 304
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_signature(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 524
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .registers 2

    .line 282
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectUniqueID()[Z
    .registers 3

    .line 338
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_subjectUID(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .line 495
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_subject_name(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 496
    .local v0, "subject":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public whitelist test-api getTBSCertificate()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 299
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_tbs_cert(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTBSCertificateWithoutExtension(Ljava/lang/String;)[B
    .registers 4
    .param p1, "oid"    # Ljava/lang/String;

    .line 568
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_tbs_cert_without_ext(JLcom/android/org/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .registers 3

    .line 267
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_version(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 3

    .line 240
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 548
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 550
    :cond_b
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    .line 551
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 12

    .line 450
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v0

    .line 451
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v2

    .line 453
    .local v2, "bioCtx":J
    :try_start_a
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v6, p0

    invoke-static/range {v2 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->X509_print_ex(JJLcom/android/org/conscrypt/OpenSSLX509Certificate;JJ)V

    .line 454
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1c

    .line 456
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 454
    return-object v0

    .line 456
    :catchall_1c
    move-exception v0

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 457
    throw v0
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 3
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

    .line 406
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_f

    .line 407
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 408
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 409
    return-void

    .line 412
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 3
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

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 6
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 428
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_13

    instance-of v0, p2, Lcom/android/org/conscrypt/OpenSSLProvider;

    if-eqz v0, :cond_13

    .line 429
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 430
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 431
    return-void

    .line 435
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_13
    if-nez p2, :cond_1e

    .line 436
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .local v0, "sig":Ljava/security/Signature;
    goto :goto_26

    .line 438
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_1e
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 441
    .restart local v0    # "sig":Ljava/security/Signature;
    :goto_26
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 443
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 446
    return-void

    .line 444
    :cond_3b
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "signature did not verify"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
