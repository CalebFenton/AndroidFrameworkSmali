.class final Lcom/android/org/conscrypt/NativeSsl;
.super Ljava/lang/Object;
.source "NativeSsl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    }
.end annotation


# instance fields
.field private final blacklist aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

.field private final blacklist handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

.field private blacklist localCertificates:[Ljava/security/cert/X509Certificate;

.field private final blacklist lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final blacklist parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private final blacklist pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

.field private volatile blacklist ssl:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgethandshakeCallbacks(Lcom/android/org/conscrypt/NativeSsl;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetssl(Lcom/android/org/conscrypt/NativeSsl;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    return-wide v0
.end method

.method private constructor blacklist <init>(JLcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)V
    .registers 8
    .param p1, "ssl"    # J
    .param p3, "parameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p4, "handshakeCallbacks"    # Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .param p5, "aliasChooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .param p6, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 70
    iput-wide p1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    .line 71
    iput-object p3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 72
    iput-object p4, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    .line 73
    iput-object p5, p0, Lcom/android/org/conscrypt/NativeSsl;->aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    .line 74
    iput-object p6, p0, Lcom/android/org/conscrypt/NativeSsl;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    .line 75
    return-void
.end method

.method private blacklist enablePSKKeyManagerIfRequested()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v0

    .line 462
    .local v0, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-eqz v0, :cond_41

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, "pskEnabled":Z
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v2, v2, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_22

    aget-object v5, v2, v4

    .line 465
    .local v5, "enabledCipherSuite":Ljava/lang/String;
    if-eqz v5, :cond_1f

    const-string v6, "PSK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 466
    const/4 v1, 0x1

    .line 467
    goto :goto_22

    .line 464
    .end local v5    # "enabledCipherSuite":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 470
    :cond_22
    :goto_22
    if-eqz v1, :cond_41

    .line 471
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    .line 472
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_client_callback_enabled(JLcom/android/org/conscrypt/NativeSsl;Z)V

    goto :goto_41

    .line 474
    :cond_31
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_server_callback_enabled(JLcom/android/org/conscrypt/NativeSsl;Z)V

    .line 475
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v2, v0}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "identityHint":Ljava/lang/String;
    iget-wide v3, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v3, v4, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_psk_identity_hint(JLcom/android/org/conscrypt/NativeSsl;Ljava/lang/String;)V

    .line 480
    .end local v1    # "pskEnabled":Z
    .end local v2    # "identityHint":Ljava/lang/String;
    :cond_41
    :goto_41
    return-void
.end method

.method private blacklist getCipherKeyTypes()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 396
    .local v0, "keyTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ciphers(JLcom/android/org/conscrypt/NativeSsl;)[J

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1d

    aget-wide v4, v1, v3

    .line 397
    .local v4, "sslCipherNativePointer":J
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/SSLUtils;->getServerX509KeyType(J)Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, "keyType":Ljava/lang/String;
    if-eqz v6, :cond_1a

    .line 399
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v4    # "sslCipherNativePointer":J
    .end local v6    # "keyType":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 402
    :cond_1d
    return-object v0
.end method

.method private blacklist isClient()Z
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method static blacklist newInstance(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)Lcom/android/org/conscrypt/NativeSsl;
    .registers 12
    .param p0, "parameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "handshakeCallbacks"    # Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .param p2, "chooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .param p3, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->newSsl()J

    move-result-wide v2

    .line 81
    .local v2, "ssl":J
    new-instance v1, Lcom/android/org/conscrypt/NativeSsl;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .end local p0    # "parameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    .end local p1    # "handshakeCallbacks":Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .end local p2    # "chooser":Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .end local p3    # "pskCallbacks":Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
    .local v4, "parameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    .local v5, "handshakeCallbacks":Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .local v6, "chooser":Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .local v7, "pskCallbacks":Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/NativeSsl;-><init>(JLcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)V

    return-object v1
.end method

.method private blacklist setCertificate(Ljava/lang/String;)V
    .registers 11
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 230
    if-nez p1, :cond_3

    .line 231
    return-void

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    .line 234
    .local v0, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_c

    .line 235
    return-void

    .line 237
    :cond_c
    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 238
    .local v1, "privateKey":Ljava/security/PrivateKey;
    if-nez v1, :cond_13

    .line 239
    return-void

    .line 241
    :cond_13
    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 242
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_1e

    .line 243
    return-void

    .line 245
    :cond_1e
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    .line 246
    .local v2, "numLocalCerts":I
    if-lez v2, :cond_2d

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    .line 249
    .local v3, "publicKey":Ljava/security/PublicKey;
    :goto_2e
    new-array v4, v2, [[B

    .line 250
    .local v4, "encodedLocalCerts":[[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31
    if-ge v5, v2, :cond_40

    .line 251
    iget-object v6, p0, Lcom/android/org/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    aput-object v6, v4, v5

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 257
    .end local v5    # "i":I
    :cond_40
    :try_start_40
    invoke-static {v1, v3}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5
    :try_end_44
    .catch Ljava/security/InvalidKeyException; {:try_start_40 .. :try_end_44} :catch_4f

    .line 260
    .local v5, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    nop

    .line 263
    iget-wide v6, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v8

    invoke-static {v6, v7, p0, v4, v8}, Lcom/android/org/conscrypt/NativeCrypto;->setLocalCertsAndPrivateKey(JLcom/android/org/conscrypt/NativeSsl;[[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    .line 264
    return-void

    .line 258
    .end local v5    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_4f
    move-exception v5

    .line 259
    .local v5, "e":Ljava/security/InvalidKeyException;
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-direct {v6, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private blacklist setCertificateValidation()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 501
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v0

    if-nez v0, :cond_52

    .line 504
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 505
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const/4 v2, 0x3

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JLcom/android/org/conscrypt/NativeSsl;I)V

    .line 507
    const/4 v0, 0x1

    .local v0, "certRequested":Z
    goto :goto_2d

    .line 509
    .end local v0    # "certRequested":Z
    :cond_16
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 510
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JLcom/android/org/conscrypt/NativeSsl;I)V

    .line 511
    const/4 v0, 0x1

    .restart local v0    # "certRequested":Z
    goto :goto_2d

    .line 514
    .end local v0    # "certRequested":Z
    :cond_26
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JLcom/android/org/conscrypt/NativeSsl;I)V

    .line 515
    const/4 v0, 0x0

    .line 518
    .restart local v0    # "certRequested":Z
    :goto_2d
    if-eqz v0, :cond_52

    .line 519
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 520
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 521
    .local v2, "issuers":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_52

    array-length v3, v2

    if-eqz v3, :cond_52

    .line 524
    :try_start_3e
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLUtils;->encodeSubjectX509Principals([Ljava/security/cert/X509Certificate;)[[B

    move-result-object v3
    :try_end_42
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3e .. :try_end_42} :catch_49

    .line 527
    .local v3, "issuersBytes":[[B
    nop

    .line 528
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_client_CA_list(JLcom/android/org/conscrypt/NativeSsl;[[B)V

    goto :goto_52

    .line 525
    .end local v3    # "issuersBytes":[[B
    :catch_49
    move-exception v3

    .line 526
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string v5, "Problem encoding principals"

    invoke-direct {v4, v5, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 532
    .end local v0    # "certRequested":Z
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    .end local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_52
    :goto_52
    return-void
.end method

.method private blacklist setTlsChannelId(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 5
    .param p1, "channelIdPrivateKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    if-nez v0, :cond_7

    .line 484
    return-void

    .line 487
    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 489
    if-eqz p1, :cond_1b

    .line 492
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set1_tls_channel_id(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    goto :goto_28

    .line 490
    :cond_1b
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Invalid TLS channel ID key specified"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_23
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_tls_channel_id(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 497
    :goto_28
    return-void
.end method

.method private blacklist verifyWithSniMatchers(Ljava/lang/String;)V
    .registers 5
    .param p1, "serverName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 385
    invoke-static {p1}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 386
    return-void

    .line 389
    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, p1}, Lcom/android/org/conscrypt/Platform;->serverNamePermitted(Lcom/android/org/conscrypt/SSLParametersImpl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 392
    return-void

    .line 390
    :cond_10
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNI match failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist chooseClientCertificate([B[I[[B)V
    .registers 10
    .param p1, "keyTypeBytes"    # [B
    .param p2, "signatureAlgs"    # [I
    .param p3, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 210
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/SSLUtils;->getSupportedClientKeyTypes([B[I)Ljava/util/Set;

    move-result-object v0

    .line 211
    .local v0, "keyTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 214
    .local v1, "keyTypes":[Ljava/lang/String;
    if-nez p3, :cond_11

    .line 215
    const/4 v2, 0x0

    .local v2, "issuers":[Ljavax/security/auth/x500/X500Principal;
    goto :goto_24

    .line 217
    .end local v2    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    :cond_11
    array-length v2, p3

    new-array v2, v2, [Ljavax/security/auth/x500/X500Principal;

    .line 218
    .restart local v2    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    array-length v4, p3

    if-ge v3, v4, :cond_24

    .line 219
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, p3, v3

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v4, v2, v3

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 222
    .end local v3    # "i":I
    :cond_24
    :goto_24
    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    .line 223
    .local v3, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v3, :cond_33

    .line 224
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSsl;->aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_34

    .line 225
    :cond_33
    const/4 v4, 0x0

    :goto_34
    nop

    .line 226
    .local v4, "alias":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/NativeSsl;->setCertificate(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method blacklist clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 12
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identityBytesOut"    # [B
    .param p3, "key"    # [B

    .line 150
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v0

    .line 151
    .local v0, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 152
    return v1

    .line 155
    :cond_a
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v2, v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "identity":Ljava/lang/String;
    if-nez v2, :cond_17

    .line 159
    const-string v2, ""

    .line 160
    sget-object v3, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    .local v3, "identityBytes":[B
    goto :goto_26

    .line 161
    .end local v3    # "identityBytes":[B
    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 162
    sget-object v3, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    .restart local v3    # "identityBytes":[B
    goto :goto_26

    .line 164
    .end local v3    # "identityBytes":[B
    :cond_20
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 166
    .restart local v3    # "identityBytes":[B
    :goto_26
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    array-length v5, p2

    if-le v4, v5, :cond_2d

    .line 168
    return v1

    .line 170
    :cond_2d
    array-length v4, v3

    if-lez v4, :cond_34

    .line 171
    array-length v4, v3

    invoke-static {v3, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_34
    array-length v4, v3

    aput-byte v1, p2, v4

    .line 175
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSsl;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v4, v0, p1, v2}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 176
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    .line 177
    .local v5, "secretKeyBytes":[B
    if-nez v5, :cond_44

    .line 178
    return v1

    .line 179
    :cond_44
    array-length v6, v5

    array-length v7, p3

    if-le v6, v7, :cond_49

    .line 181
    return v1

    .line 183
    :cond_49
    array-length v6, v5

    invoke-static {v5, v1, p3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    array-length v1, v5

    return v1
.end method

.method blacklist close()V
    .registers 5

    .line 617
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 619
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 620
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    .line 621
    .local v0, "toFree":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    .line 622
    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_free(JLcom/android/org/conscrypt/NativeSsl;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_23

    .line 625
    .end local v0    # "toFree":J
    :cond_18
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 626
    nop

    .line 627
    return-void

    .line 625
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 626
    throw v0
.end method

.method blacklist configureServerCertificate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/NativeSsl;->verifyWithSniMatchers(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 370
    return-void

    .line 372
    :cond_e
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    .line 373
    .local v0, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v0, :cond_3c

    .line 374
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->getCipherKeyTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 376
    .local v2, "keyType":Ljava/lang/String;
    :try_start_2a
    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    invoke-interface {v3, v0, v2}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/NativeSsl;->setCertificate(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2a .. :try_end_33} :catch_35

    .line 379
    nop

    .line 380
    .end local v2    # "keyType":Ljava/lang/String;
    goto :goto_1e

    .line 377
    .restart local v2    # "keyType":Ljava/lang/String;
    :catch_35
    move-exception v1

    .line 378
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 382
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v2    # "keyType":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method blacklist doHandshake()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 422
    :try_start_9
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_do_handshake(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1b

    .line 424
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 422
    return v0

    .line 424
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 425
    throw v0
.end method

.method blacklist doHandshake(Ljava/io/FileDescriptor;I)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 410
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 413
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v5, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_3a

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "timeoutMillis":I
    .local v4, "fd":Ljava/io/FileDescriptor;
    .local v6, "timeoutMillis":I
    :try_start_1e
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_37

    .line 415
    iget-object p1, v3, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 416
    nop

    .line 417
    return-void

    .line 410
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "timeoutMillis":I
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "timeoutMillis":I
    :cond_2c
    move-object v3, p0

    move-object v4, p1

    move v6, p2

    .line 411
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "timeoutMillis":I
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "timeoutMillis":I
    :try_start_2f
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Socket is closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "timeoutMillis":I
    .end local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    throw p1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 415
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "timeoutMillis":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    :catchall_37
    move-exception v0

    move-object p1, v0

    goto :goto_3f

    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "timeoutMillis":I
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "timeoutMillis":I
    :catchall_3a
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move-object p1, v0

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "timeoutMillis":I
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "timeoutMillis":I
    :goto_3f
    iget-object p2, v3, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 416
    throw p1
.end method

.method blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 134
    if-eqz p1, :cond_12

    .line 137
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 138
    .local v4, "labelBytes":[B
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    .end local p2    # "context":[B
    .end local p3    # "length":I
    .local v5, "context":[B
    .local v6, "length":I
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_export_keying_material(JLcom/android/org/conscrypt/NativeSsl;[B[BI)[B

    move-result-object p2

    return-object p2

    .line 135
    .end local v4    # "labelBytes":[B
    .end local v5    # "context":[B
    .end local v6    # "length":I
    .restart local p2    # "context":[B
    .restart local p3    # "length":I
    :cond_12
    move-object v5, p2

    move v6, p3

    .end local p2    # "context":[B
    .end local p3    # "length":I
    .restart local v5    # "context":[B
    .restart local v6    # "length":I
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Label is null"

    invoke-direct {p2, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 649
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 651
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 652
    nop

    .line 653
    return-void

    .line 651
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 652
    throw v0
.end method

.method blacklist forceRead()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 594
    :try_start_9
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_force_read(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 596
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 597
    nop

    .line 598
    return-void

    .line 596
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 597
    throw v0
.end method

.method blacklist getApplicationProtocol()[B
    .registers 3

    .line 638
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->getApplicationProtocol(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getCipherSuite()Ljava/lang/String;
    .registers 3

    .line 113
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_current_cipher(JLcom/android/org/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getError(I)I
    .registers 4
    .param p1, "result"    # I

    .line 634
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_error(JLcom/android/org/conscrypt/NativeSsl;I)I

    move-result v0

    return v0
.end method

.method blacklist getLocalCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method blacklist getMaxSealOverhead()I
    .registers 3

    .line 613
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_max_seal_overhead(JLcom/android/org/conscrypt/NativeSsl;)I

    move-result v0

    return v0
.end method

.method blacklist getPeerCertificateOcspData()[B
    .registers 3

    .line 126
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ocsp_response(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 117
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get0_peer_certificates(JLcom/android/org/conscrypt/NativeSsl;)[[B

    move-result-object v0

    .line 118
    .local v0, "encoded":[[B
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method blacklist getPeerTlsSctData()[B
    .registers 3

    .line 142
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_signed_cert_timestamp_list(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getPendingReadableBytes()I
    .registers 3

    .line 601
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 603
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 604
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_pending_readable_bytes(JLcom/android/org/conscrypt/NativeSsl;)I

    move-result v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2b

    .line 608
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 604
    return v0

    .line 606
    :cond_1f
    nop

    .line 608
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 606
    const/4 v0, 0x0

    return v0

    .line 608
    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 609
    throw v0
.end method

.method blacklist getRequestedServerName()Ljava/lang/String;
    .registers 3

    .line 271
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_servername(JLcom/android/org/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getSessionId()[B
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_session_id(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getTime()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_time(JLcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getTimeout()J
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_timeout(JLcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getTlsChannelId()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 275
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_tls_channel_id(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 3

    .line 130
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_tls_unique(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getVersion()Ljava/lang/String;
    .registers 3

    .line 267
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_version(JLcom/android/org/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 11
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "channelIdPrivateKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    .line 280
    .local v0, "enableSessionCreation":Z
    if-nez v0, :cond_e

    .line 281
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JLcom/android/org/conscrypt/NativeSsl;Z)V

    .line 287
    :cond_e
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_accept_renegotiations(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 289
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 290
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_connect_state(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 293
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 294
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->isCTVerificationEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 295
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_signed_cert_timestamps(JLcom/android/org/conscrypt/NativeSsl;)V

    goto :goto_43

    .line 298
    :cond_31
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_accept_state(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 301
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getOCSPResponse()[B

    move-result-object v1

    if-eqz v1, :cond_43

    .line 302
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 306
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-boolean v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    if-nez v1, :cond_53

    goto :goto_5b

    .line 307
    :cond_53
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "No enabled protocols; SSLv3, TLSv1 and TLSv1.1 are no longer supported and were filtered from the list"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :cond_5b
    :goto_5b
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSpake()Z

    move-result v1

    if-nez v1, :cond_7a

    .line 315
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v3, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledProtocols(JLcom/android/org/conscrypt/NativeSsl;[Ljava/lang/String;)V

    .line 316
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v3, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v4, v4, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledCipherSuites(JLcom/android/org/conscrypt/NativeSsl;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_85

    .line 320
    :cond_7a
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const-string v3, "TLSv1.3"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledProtocols(JLcom/android/org/conscrypt/NativeSsl;[Ljava/lang/String;)V

    .line 323
    :goto_85
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    array-length v1, v1

    if-lez v1, :cond_99

    .line 324
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v3

    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v4, v4, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->setApplicationProtocols(JLcom/android/org/conscrypt/NativeSsl;Z[B)V

    .line 326
    :cond_99
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    if-nez v1, :cond_ab

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    if-eqz v1, :cond_ab

    .line 327
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->setHasApplicationProtocolSelector(JLcom/android/org/conscrypt/NativeSsl;Z)V

    .line 332
    :cond_ab
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    if-nez v1, :cond_d7

    .line 333
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const-wide/32 v3, 0x400000

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_options(JLcom/android/org/conscrypt/NativeSsl;J)J

    .line 335
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    if-eqz v1, :cond_c8

    .line 336
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v3, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_signed_cert_timestamp_list(JLcom/android/org/conscrypt/NativeSsl;[B)V

    .line 339
    :cond_c8
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    if-eqz v1, :cond_d7

    .line 340
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v3, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_ocsp_response(JLcom/android/org/conscrypt/NativeSsl;[B)V

    .line 344
    :cond_d7
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->enablePSKKeyManagerIfRequested()V

    .line 346
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-boolean v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    const-wide/16 v2, 0x4000

    if-eqz v1, :cond_e8

    .line 347
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_options(JLcom/android/org/conscrypt/NativeSsl;J)J

    goto :goto_f5

    .line 349
    :cond_e8
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-wide v6, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    .line 350
    invoke-static {v6, v7, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_options(JLcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v6

    or-long v1, v6, v2

    .line 349
    invoke-static {v4, v5, p0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_options(JLcom/android/org/conscrypt/NativeSsl;J)J

    .line 353
    :goto_f5
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v1

    if-eqz v1, :cond_108

    invoke-static {p1}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 354
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_tlsext_host_name(JLcom/android/org/conscrypt/NativeSsl;Ljava/lang/String;)V

    .line 359
    :cond_108
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const-wide/16 v3, 0x100

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_mode(JLcom/android/org/conscrypt/NativeSsl;J)J

    .line 361
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSpake()Z

    move-result v1

    if-nez v1, :cond_11a

    .line 362
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->setCertificateValidation()V

    .line 364
    :cond_11a
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/NativeSsl;->setTlsChannelId(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 365
    return-void
.end method

.method blacklist interrupt()V
    .registers 3

    .line 535
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 536
    return-void
.end method

.method blacklist isClosed()Z
    .registers 5

    .line 630
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist newBio()Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    .registers 3

    .line 86
    :try_start_0
    new-instance v0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeSsl-IA;)V
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 87
    :catch_7
    move-exception v0

    .line 88
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist offerToResumeSession(J)V
    .registers 5
    .param p1, "sslSessionNativePointer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 93
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session(JLcom/android/org/conscrypt/NativeSsl;J)V

    .line 94
    return-void
.end method

.method blacklist read(Ljava/io/FileDescriptor;[BIII)I
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 433
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2f

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 436
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v5, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_40

    .line 437
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buf":[B
    .end local p3    # "offset":I
    .end local p4    # "len":I
    .end local p5    # "timeoutMillis":I
    .local v4, "fd":Ljava/io/FileDescriptor;
    .local v6, "buf":[B
    .local v7, "offset":I
    .local v8, "len":I
    .local v9, "timeoutMillis":I
    :try_start_21
    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_read(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I

    move-result p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_3d

    .line 439
    iget-object p2, v3, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 436
    return p1

    .line 433
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "len":I
    .end local v9    # "timeoutMillis":I
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "buf":[B
    .restart local p3    # "offset":I
    .restart local p4    # "len":I
    .restart local p5    # "timeoutMillis":I
    :cond_2f
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 434
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buf":[B
    .end local p3    # "offset":I
    .end local p4    # "len":I
    .end local p5    # "timeoutMillis":I
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "len":I
    .restart local v9    # "timeoutMillis":I
    :try_start_35
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Socket is closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "len":I
    .end local v9    # "timeoutMillis":I
    .end local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    throw p1
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 439
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "len":I
    .restart local v9    # "timeoutMillis":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    :catchall_3d
    move-exception v0

    move-object p1, v0

    goto :goto_48

    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "len":I
    .end local v9    # "timeoutMillis":I
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "buf":[B
    .restart local p3    # "offset":I
    .restart local p4    # "len":I
    .restart local p5    # "timeoutMillis":I
    :catchall_40
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    move-object p1, v0

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buf":[B
    .end local p3    # "offset":I
    .end local p4    # "len":I
    .end local p5    # "timeoutMillis":I
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "len":I
    .restart local v9    # "timeoutMillis":I
    :goto_48
    iget-object p2, v3, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 440
    throw p1
.end method

.method blacklist readDirectByteBuffer(JI)I
    .registers 12
    .param p1, "destAddress"    # J
    .param p3, "destLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 574
    :try_start_9
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v7, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_21

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "destAddress":J
    .end local p3    # "destLength":I
    .local v4, "destAddress":J
    .local v6, "destLength":I
    :try_start_10
    invoke-static/range {v1 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_direct(JLcom/android/org/conscrypt/NativeSsl;JILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1e

    .line 577
    iget-object p2, v3, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 574
    return p1

    .line 577
    :catchall_1e
    move-exception v0

    move-object p1, v0

    goto :goto_26

    .end local v4    # "destAddress":J
    .end local v6    # "destLength":I
    .restart local p1    # "destAddress":J
    .restart local p3    # "destLength":I
    :catchall_21
    move-exception v0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    move-object p1, v0

    .end local p1    # "destAddress":J
    .end local p3    # "destLength":I
    .restart local v4    # "destAddress":J
    .restart local v6    # "destLength":I
    :goto_26
    iget-object p2, v3, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 578
    throw p1
.end method

.method blacklist serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 10
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .line 192
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v0

    .line 193
    .local v0, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 194
    return v1

    .line 196
    :cond_a
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v2, v0, p1, p2}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 197
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 198
    .local v3, "secretKeyBytes":[B
    if-nez v3, :cond_17

    .line 199
    return v1

    .line 200
    :cond_17
    array-length v4, v3

    array-length v5, p3

    if-le v4, v5, :cond_1c

    .line 201
    return v1

    .line 203
    :cond_1c
    array-length v4, v3

    invoke-static {v3, v1, p3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    array-length v1, v3

    return v1
.end method

.method blacklist setTimeout(J)V
    .registers 5
    .param p1, "millis"    # J

    .line 109
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_timeout(JLcom/android/org/conscrypt/NativeSsl;J)J

    .line 110
    return-void
.end method

.method blacklist shutdown()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 546
    :try_start_9
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_shutdown(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 548
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 549
    nop

    .line 550
    return-void

    .line 548
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 549
    throw v0
.end method

.method blacklist shutdown(Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_shutdown(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V

    .line 541
    return-void
.end method

.method blacklist wasShutdownReceived()Z
    .registers 3

    .line 553
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 555
    :try_start_9
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(JLcom/android/org/conscrypt/NativeSsl;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_20

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 557
    :goto_16
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 555
    return v0

    .line 557
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 558
    throw v0
.end method

.method blacklist wasShutdownSent()Z
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 564
    :try_start_9
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(JLcom/android/org/conscrypt/NativeSsl;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1f

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 566
    :goto_15
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 564
    return v1

    .line 566
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 567
    throw v0
.end method

.method blacklist write(Ljava/io/FileDescriptor;[BIII)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 448
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2f

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 451
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v5, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_40

    .line 452
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buf":[B
    .end local p3    # "offset":I
    .end local p4    # "len":I
    .end local p5    # "timeoutMillis":I
    .local v4, "fd":Ljava/io/FileDescriptor;
    .local v6, "buf":[B
    .local v7, "offset":I
    .local v8, "len":I
    .local v9, "timeoutMillis":I
    :try_start_21
    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_write(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_3d

    .line 454
    iget-object p1, v3, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 455
    nop

    .line 456
    return-void

    .line 448
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "len":I
    .end local v9    # "timeoutMillis":I
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "buf":[B
    .restart local p3    # "offset":I
    .restart local p4    # "len":I
    .restart local p5    # "timeoutMillis":I
    :cond_2f
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 449
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buf":[B
    .end local p3    # "offset":I
    .end local p4    # "len":I
    .end local p5    # "timeoutMillis":I
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "len":I
    .restart local v9    # "timeoutMillis":I
    :try_start_35
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Socket is closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "len":I
    .end local v9    # "timeoutMillis":I
    .end local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    throw p1
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 454
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "len":I
    .restart local v9    # "timeoutMillis":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    :catchall_3d
    move-exception v0

    move-object p1, v0

    goto :goto_48

    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "len":I
    .end local v9    # "timeoutMillis":I
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "buf":[B
    .restart local p3    # "offset":I
    .restart local p4    # "len":I
    .restart local p5    # "timeoutMillis":I
    :catchall_40
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    move-object p1, v0

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buf":[B
    .end local p3    # "offset":I
    .end local p4    # "len":I
    .end local p5    # "timeoutMillis":I
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "len":I
    .restart local v9    # "timeoutMillis":I
    :goto_48
    iget-object p2, v3, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 455
    throw p1
.end method

.method blacklist writeDirectByteBuffer(JI)I
    .registers 12
    .param p1, "sourceAddress"    # J
    .param p3, "sourceLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 584
    :try_start_9
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v7, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_21

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "sourceAddress":J
    .end local p3    # "sourceLength":I
    .local v4, "sourceAddress":J
    .local v6, "sourceLength":I
    :try_start_10
    invoke-static/range {v1 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_direct(JLcom/android/org/conscrypt/NativeSsl;JILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1e

    .line 587
    iget-object p2, v3, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 584
    return p1

    .line 587
    :catchall_1e
    move-exception v0

    move-object p1, v0

    goto :goto_26

    .end local v4    # "sourceAddress":J
    .end local v6    # "sourceLength":I
    .restart local p1    # "sourceAddress":J
    .restart local p3    # "sourceLength":I
    :catchall_21
    move-exception v0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    move-object p1, v0

    .end local p1    # "sourceAddress":J
    .end local p3    # "sourceLength":I
    .restart local v4    # "sourceAddress":J
    .restart local v6    # "sourceLength":I
    :goto_26
    iget-object p2, v3, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 588
    throw p1
.end method
