.class public Landroid/security/net/config/NetworkSecurityTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "NetworkSecurityTrustManager.java"


# instance fields
.field private final mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private mIssuers:[Ljava/security/cert/X509Certificate;

.field private final mIssuersLock:Ljava/lang/Object;

.field private final mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .locals 5
    .param p1, "config"    # Landroid/security/net/config/NetworkSecurityConfig;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    #@3
    .line 45
    new-instance v3, Ljava/lang/Object;

    #@5
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v3, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    #@a
    .line 50
    if-nez p1, :cond_0

    #@c
    .line 51
    new-instance v3, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v4, "config must not be null"

    #@11
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    .line 53
    :cond_0
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@17
    .line 55
    :try_start_0
    new-instance v0, Landroid/security/net/config/TrustedCertificateStoreAdapter;

    #@19
    invoke-direct {v0, p1}, Landroid/security/net/config/TrustedCertificateStoreAdapter;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    #@1c
    .line 58
    .local v0, "certStore":Landroid/security/net/config/TrustedCertificateStoreAdapter;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@23
    move-result-object v2

    #@24
    .line 59
    .local v2, "store":Ljava/security/KeyStore;
    const/4 v3, 0x0

    #@25
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    #@28
    .line 60
    new-instance v3, Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-direct {v3, v2, v4, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    #@2e
    iput-object v3, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 49
    return-void

    #@31
    .line 61
    .end local v0    # "certStore":Landroid/security/net/config/TrustedCertificateStoreAdapter;
    .end local v2    # "store":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    #@32
    .line 62
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@34
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@37
    throw v3
.end method

.method private checkPins(Ljava/util/List;)V
    .locals 14
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
    .line 119
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v10, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@2
    invoke-virtual {v10}, Landroid/security/net/config/NetworkSecurityConfig;->getPins()Landroid/security/net/config/PinSet;

    #@5
    move-result-object v9

    #@6
    .line 120
    .local v9, "pinSet":Landroid/security/net/config/PinSet;
    iget-object v10, v9, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    #@8
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    #@b
    move-result v10

    #@c
    if-nez v10, :cond_0

    #@e
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@11
    move-result-wide v10

    #@12
    iget-wide v12, v9, Landroid/security/net/config/PinSet;->expirationTime:J

    #@14
    cmp-long v10, v10, v12

    #@16
    if-lez v10, :cond_1

    #@18
    .line 123
    :cond_0
    return-void

    #@19
    .line 122
    :cond_1
    invoke-direct {p0, p1}, Landroid/security/net/config/NetworkSecurityTrustManager;->isPinningEnforced(Ljava/util/List;)Z

    #@1c
    move-result v10

    #@1d
    if-eqz v10, :cond_0

    #@1f
    .line 125
    invoke-virtual {v9}, Landroid/security/net/config/PinSet;->getPinAlgorithms()Ljava/util/Set;

    #@22
    move-result-object v8

    #@23
    .line 126
    .local v8, "pinAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArrayMap;

    #@25
    .line 127
    invoke-interface {v8}, Ljava/util/Set;->size()I

    #@28
    move-result v10

    #@29
    .line 126
    invoke-direct {v3, v10}, Landroid/util/ArrayMap;-><init>(I)V

    #@2c
    .line 128
    .local v3, "digestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/MessageDigest;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@2f
    move-result v10

    #@30
    add-int/lit8 v6, v10, -0x1

    #@32
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_5

    #@34
    .line 129
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@3a
    .line 130
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3d
    move-result-object v10

    #@3e
    invoke-interface {v10}, Ljava/security/PublicKey;->getEncoded()[B

    #@41
    move-result-object v5

    #@42
    .line 131
    .local v5, "encodedSPKI":[B
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v1

    #@46
    .local v1, "algorithm$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v10

    #@4a
    if-eqz v10, :cond_4

    #@4c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Ljava/lang/String;

    #@52
    .line 132
    .local v0, "algorithm":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v7

    #@56
    check-cast v7, Ljava/security/MessageDigest;

    #@58
    .line 133
    .local v7, "md":Ljava/security/MessageDigest;
    if-nez v7, :cond_3

    #@5a
    .line 135
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    move-result-object v7

    #@5e
    .line 139
    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 141
    :cond_3
    iget-object v10, v9, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    #@63
    new-instance v11, Landroid/security/net/config/Pin;

    #@65
    invoke-virtual {v7, v5}, Ljava/security/MessageDigest;->digest([B)[B

    #@68
    move-result-object v12

    #@69
    invoke-direct {v11, v0, v12}, Landroid/security/net/config/Pin;-><init>(Ljava/lang/String;[B)V

    #@6c
    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6f
    move-result v10

    #@70
    if-eqz v10, :cond_2

    #@72
    .line 142
    return-void

    #@73
    .line 136
    :catch_0
    move-exception v4

    #@74
    .line 137
    .local v4, "e":Ljava/security/GeneralSecurityException;
    new-instance v10, Ljava/lang/RuntimeException;

    #@76
    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@79
    throw v10

    #@7a
    .line 128
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    .end local v7    # "md":Ljava/security/MessageDigest;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@7c
    goto :goto_0

    #@7d
    .line 148
    .end local v1    # "algorithm$iterator":Ljava/util/Iterator;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "encodedSPKI":[B
    :cond_5
    new-instance v10, Ljava/security/cert/CertificateException;

    #@7f
    const-string/jumbo v11, "Pin verification failed"

    #@82
    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@85
    throw v10
.end method

.method private isPinningEnforced(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    #@1
    .line 152
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 153
    return v2

    #@8
    .line 155
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@b
    move-result v3

    #@c
    add-int/lit8 v3, v3, -0x1

    #@e
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@14
    .line 157
    .local v0, "anchorCert":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@16
    invoke-virtual {v3, v0}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    #@19
    move-result-object v1

    #@1a
    .line 158
    .local v1, "chainAnchor":Landroid/security/net/config/TrustAnchor;
    if-nez v1, :cond_1

    #@1c
    .line 159
    new-instance v2, Ljava/security/cert/CertificateException;

    #@1e
    const-string/jumbo v3, "Trusted chain does not end in a TrustAnchor"

    #@21
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2

    #@25
    .line 161
    :cond_1
    iget-boolean v3, v1, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    #@27
    if-eqz v3, :cond_2

    #@29
    :goto_0
    return v2

    #@2a
    :cond_2
    const/4 v2, 0x1

    #@2b
    goto :goto_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@5
    .line 68
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    #@5
    .line 74
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    #@5
    .line 80
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
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
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 114
    .local v0, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    #@9
    .line 115
    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/lang/String;

    #@3
    invoke-virtual {p0, p1, p2, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@6
    .line 86
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 95
    .local v0, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    #@9
    .line 92
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 103
    .local v0, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    #@9
    .line 100
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 8

    #@0
    .prologue
    .line 168
    iget-object v7, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 169
    :try_start_0
    iget-object v6, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    #@5
    if-nez v6, :cond_1

    #@7
    .line 170
    iget-object v6, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@9
    invoke-virtual {v6}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustAnchors()Ljava/util/Set;

    #@c
    move-result-object v2

    #@d
    .line 171
    .local v2, "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@10
    move-result v6

    #@11
    new-array v5, v6, [Ljava/security/cert/X509Certificate;

    #@13
    .line 172
    .local v5, "issuers":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    #@14
    .line 173
    .local v3, "i":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    move v4, v3

    #@19
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/security/net/config/TrustAnchor;

    #@25
    .line 174
    .local v0, "anchor":Landroid/security/net/config/TrustAnchor;
    add-int/lit8 v3, v4, 0x1

    #@27
    .end local v4    # "i":I
    .restart local v3    # "i":I
    iget-object v6, v0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    #@29
    aput-object v6, v5, v4

    #@2b
    move v4, v3

    #@2c
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@2d
    .line 176
    .end local v0    # "anchor":Landroid/security/net/config/TrustAnchor;
    :cond_0
    iput-object v5, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    #@2f
    .line 178
    .end local v1    # "anchor$iterator":Ljava/util/Iterator;
    .end local v2    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    .end local v4    # "i":I
    .end local v5    # "issuers":[Ljava/security/cert/X509Certificate;
    :cond_1
    iget-object v6, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    #@31
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    check-cast v6, [Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit v7

    #@38
    return-object v6

    #@39
    .line 168
    :catchall_0
    move-exception v6

    #@3a
    monitor-exit v7

    #@3b
    throw v6
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    #@0
    .prologue
    .line 183
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 184
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    #@6
    .line 185
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->handleTrustStorageUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 182
    return-void

    #@d
    .line 183
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method
