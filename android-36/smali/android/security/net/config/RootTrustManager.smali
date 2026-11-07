.class public Landroid/security/net/config/RootTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "RootTrustManager.java"


# instance fields
.field private final greylist-max-o mConfig:Landroid/security/net/config/ApplicationConfig;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/security/net/config/ApplicationConfig;)V
    .registers 4
    .param p1, "config"    # Landroid/security/net/config/ApplicationConfig;

    .line 45
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 46
    if-eqz p1, :cond_8

    .line 49
    iput-object p1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 50
    return-void

    .line 47
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 58
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 6
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 67
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 68
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 6
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 76
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 77
    return-void
.end method

.method public greylist checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
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

    .line 129
    if-nez p3, :cond_13

    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 130
    :cond_b
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Domain specific configurations require that the hostname be provided"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p3}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 134
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "authType"    # Ljava/lang/String;
    .param p5, "hostname"    # Ljava/lang/String;
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

    .line 144
    if-nez p5, :cond_13

    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 145
    :cond_b
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Domain specific configurations require that the hostname be provided"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p5}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 149
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local p2    # "ocspData":[B
    .end local p3    # "tlsSctData":[B
    .end local p4    # "authType":Ljava/lang/String;
    .end local p5    # "hostname":Ljava/lang/String;
    .local v2, "certs":[Ljava/security/cert/X509Certificate;
    .local v3, "ocspData":[B
    .local v4, "tlsSctData":[B
    .local v5, "authType":Ljava/lang/String;
    .local v6, "hostname":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

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

    .line 112
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v0

    if-nez v0, :cond_18

    .line 117
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 118
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 119
    return-void

    .line 113
    .end local v0    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    :cond_18
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Domain specific configurations require that hostname aware checkServerTrusted(X509Certificate[], String, String) is used"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 9
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 82
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_27

    .line 83
    move-object v0, p3

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 84
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 85
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_1f

    .line 88
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "host":Ljava/lang/String;
    iget-object v3, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v3, v2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v3

    .line 90
    .local v3, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v3}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 91
    .end local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    goto :goto_2a

    .line 86
    .restart local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1f
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Not in handshake; no session available"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_27
    invoke-virtual {p0, p1, p2}, Landroid/security/net/config/RootTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 95
    :goto_2a
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 8
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 100
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 101
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_18

    .line 104
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "host":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v2, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v2

    .line 106
    .local v2, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 107
    return-void

    .line 102
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    :cond_18
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Not in handshake; no session available"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 3

    .line 158
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 159
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/net/config/NetworkSecurityTrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o isSameTrustConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "hostname1"    # Ljava/lang/String;
    .param p2, "hostname2"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 170
    invoke-virtual {v1, p2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    return v0
.end method
