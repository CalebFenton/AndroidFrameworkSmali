.class public Landroid/security/net/config/NetworkSecurityTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "NetworkSecurityTrustManager.java"


# instance fields
.field private final greylist-max-o mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private greylist-max-o mIssuers:[Ljava/security/cert/X509Certificate;

.field private final greylist-max-o mIssuersLock:Ljava/lang/Object;

.field private final greylist-max-o mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .registers 6
    .param p1, "config"    # Landroid/security/net/config/NetworkSecurityConfig;

    .line 50
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    .line 51
    if-eqz p1, :cond_2f

    .line 54
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 56
    :try_start_e
    new-instance v0, Landroid/security/net/config/TrustedCertificateStoreAdapter;

    invoke-direct {v0, p1}, Landroid/security/net/config/TrustedCertificateStoreAdapter;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    .line 59
    .local v0, "certStore":Landroid/security/net/config/TrustedCertificateStoreAdapter;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 60
    .local v1, "store":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 61
    new-instance v3, Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;)V

    iput-object v3, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;
    :try_end_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_e .. :try_end_26} :catch_28
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_26} :catch_28

    .line 64
    .end local v0    # "certStore":Landroid/security/net/config/TrustedCertificateStoreAdapter;
    .end local v1    # "store":Ljava/security/KeyStore;
    nop

    .line 65
    return-void

    .line 62
    :catch_28
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkPins(Ljava/util/List;)V
    .registers 14
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

    .line 133
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getPins()Landroid/security/net/config/PinSet;

    move-result-object v0

    .line 134
    .local v0, "pinSet":Landroid/security/net/config/PinSet;
    iget-object v1, v0, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_89

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/security/net/config/PinSet;->expirationTime:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_89

    .line 136
    invoke-direct {p0, p1}, Landroid/security/net/config/NetworkSecurityTrustManager;->isPinningEnforced(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_89

    .line 139
    :cond_1f
    invoke-virtual {v0}, Landroid/security/net/config/PinSet;->getPinAlgorithms()Ljava/util/Set;

    move-result-object v1

    .line 140
    .local v1, "pinAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Landroid/util/ArrayMap;

    .line 141
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 142
    .local v2, "digestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/MessageDigest;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_32
    if-ltz v3, :cond_81

    .line 143
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 144
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    .line 145
    .local v5, "encodedSPKI":[B
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 146
    .local v7, "algorithm":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/MessageDigest;

    .line 147
    .local v8, "md":Ljava/security/MessageDigest;
    if-nez v8, :cond_6b

    .line 149
    :try_start_5a
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9
    :try_end_5e
    .catch Ljava/security/GeneralSecurityException; {:try_start_5a .. :try_end_5e} :catch_64

    move-object v8, v9

    .line 152
    nop

    .line 153
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 150
    :catch_64
    move-exception v6

    .line 151
    .local v6, "e":Ljava/security/GeneralSecurityException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 155
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    :cond_6b
    :goto_6b
    iget-object v9, v0, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    new-instance v10, Landroid/security/net/config/Pin;

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    invoke-direct {v10, v7, v11}, Landroid/security/net/config/Pin;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 156
    return-void

    .line 158
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v8    # "md":Ljava/security/MessageDigest;
    :cond_7d
    goto :goto_46

    .line 142
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "encodedSPKI":[B
    :cond_7e
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 162
    .end local v3    # "i":I
    :cond_81
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Pin verification failed"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    .end local v1    # "pinAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "digestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/MessageDigest;>;"
    :cond_89
    :goto_89
    return-void
.end method

.method private greylist-max-o isPinningEnforced(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 166
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 170
    .local v0, "anchorCert":Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 171
    invoke-virtual {v1, v0}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v1

    .line 172
    .local v1, "chainAnchor":Landroid/security/net/config/TrustAnchor;
    if-eqz v1, :cond_21

    .line 175
    iget-boolean v2, v1, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 173
    :cond_21
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Trusted chain does not end in a TrustAnchor"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 5
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 77
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 5
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 83
    return-void
.end method

.method public greylist-max-o checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 116
    return-object v0
.end method

.method public blacklist checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "authType"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local p2    # "ocspData":[B
    .end local p3    # "tlsSctData":[B
    .end local p4    # "authType":Ljava/lang/String;
    .end local p5    # "host":Ljava/lang/String;
    .local v1, "certs":[Ljava/security/cert/X509Certificate;
    .local v2, "ocspData":[B
    .local v3, "tlsSctData":[B
    .local v4, "authType":Ljava/lang/String;
    .local v5, "host":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 128
    .local p1, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, p1}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 129
    return-object p1
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 89
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 5
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 95
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 97
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 5
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 103
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 105
    return-void
.end method

.method public whitelist test-api getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 9

    .line 182
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_2e

    .line 184
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v1}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    .line 185
    .local v1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    .line 186
    .local v2, "issuers":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 187
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/net/config/TrustAnchor;

    .line 188
    .local v5, "anchor":Landroid/security/net/config/TrustAnchor;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    iget-object v7, v5, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    aput-object v7, v2, v3

    .line 189
    .end local v5    # "anchor":Landroid/security/net/config/TrustAnchor;
    move v3, v6

    goto :goto_18

    .line 190
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_2c
    iput-object v2, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    .line 192
    .end local v1    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    .end local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v3    # "i":I
    :cond_2e
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    monitor-exit v0

    return-object v1

    .line 193
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 3

    .line 197
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    .line 199
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->handleTrustStorageUpdate()V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method
