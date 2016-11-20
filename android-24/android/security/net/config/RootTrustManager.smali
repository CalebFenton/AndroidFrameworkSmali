.class public Landroid/security/net/config/RootTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "RootTrustManager.java"


# instance fields
.field private final mConfig:Landroid/security/net/config/ApplicationConfig;


# direct methods
.method public constructor <init>(Landroid/security/net/config/ApplicationConfig;)V
    .locals 2
    .param p1, "config"    # Landroid/security/net/config/ApplicationConfig;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    #@3
    .line 44
    if-nez p1, :cond_0

    #@5
    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "config must not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 47
    :cond_0
    iput-object p1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@10
    .line 43
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@2
    const-string/jumbo v2, ""

    #@5
    invoke-virtual {v1, v2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@8
    move-result-object v0

    #@9
    .line 56
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@10
    .line 52
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 3
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
    .line 64
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@2
    const-string/jumbo v2, ""

    #@5
    invoke-virtual {v1, v2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@8
    move-result-object v0

    #@9
    .line 65
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    #@10
    .line 61
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 3
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
    .line 73
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@2
    const-string/jumbo v2, ""

    #@5
    invoke-virtual {v1, v2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@8
    move-result-object v0

    #@9
    .line 74
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    #@10
    .line 70
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 126
    if-nez p3, :cond_0

    #@2
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@4
    invoke-virtual {v1}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 127
    new-instance v1, Ljava/security/cert/CertificateException;

    #@c
    .line 128
    const-string/jumbo v2, "Domain specific configurations require that the hostname be provided"

    #@f
    .line 127
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 130
    :cond_0
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@15
    invoke-virtual {v1, p3}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@18
    move-result-object v0

    #@19
    .line 131
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@2
    invoke-virtual {v1}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 111
    new-instance v1, Ljava/security/cert/CertificateException;

    #@a
    .line 112
    const-string/jumbo v2, "Domain specific configurations require that hostname aware checkServerTrusted(X509Certificate[], String, String) is used"

    #@d
    .line 111
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 115
    :cond_0
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@13
    const-string/jumbo v2, ""

    #@16
    invoke-virtual {v1, v2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@19
    move-result-object v0

    #@1a
    .line 116
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1, p2}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@21
    .line 109
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 6
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
    .line 80
    instance-of v4, p3, Ljavax/net/ssl/SSLSocket;

    #@2
    if-eqz v4, :cond_1

    #@4
    move-object v3, p3

    #@5
    .line 81
    check-cast v3, Ljavax/net/ssl/SSLSocket;

    #@7
    .line 82
    .local v3, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@a
    move-result-object v2

    #@b
    .line 83
    .local v2, "session":Ljavax/net/ssl/SSLSession;
    if-nez v2, :cond_0

    #@d
    .line 84
    new-instance v4, Ljava/security/cert/CertificateException;

    #@f
    const-string/jumbo v5, "Not in handshake; no session available"

    #@12
    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 86
    :cond_0
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 87
    .local v1, "host":Ljava/lang/String;
    iget-object v4, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@1c
    invoke-virtual {v4, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@1f
    move-result-object v0

    #@20
    .line 88
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    #@27
    .line 79
    .end local v0    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "session":Ljavax/net/ssl/SSLSession;
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :goto_0
    return-void

    #@28
    .line 91
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/security/net/config/RootTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@2b
    goto :goto_0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 5
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
    .line 98
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@3
    move-result-object v2

    #@4
    .line 99
    .local v2, "session":Ljavax/net/ssl/SSLSession;
    if-nez v2, :cond_0

    #@6
    .line 100
    new-instance v3, Ljava/security/cert/CertificateException;

    #@8
    const-string/jumbo v4, "Not in handshake; no session available"

    #@b
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 102
    :cond_0
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 103
    .local v1, "host":Ljava/lang/String;
    iget-object v3, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@15
    invoke-virtual {v3, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@18
    move-result-object v0

    #@19
    .line 104
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    #@20
    .line 97
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 3

    #@0
    .prologue
    .line 139
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@2
    const-string/jumbo v2, ""

    #@5
    invoke-virtual {v1, v2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@8
    move-result-object v0

    #@9
    .line 140
    .local v0, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/security/net/config/NetworkSecurityTrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public isSameTrustConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "hostname1"    # Ljava/lang/String;
    .param p2, "hostname2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@2
    invoke-virtual {v0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@5
    move-result-object v0

    #@6
    .line 151
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    #@8
    invoke-virtual {v1, p2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@b
    move-result-object v1

    #@c
    .line 150
    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method
