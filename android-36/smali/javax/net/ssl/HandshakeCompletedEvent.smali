.class public Ljavax/net/ssl/HandshakeCompletedEvent;
.super Ljava/util/EventObject;
.source "HandshakeCompletedEvent.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x6dd7999712948132L


# instance fields
.field private transient greylist-max-o session:Ljavax/net/ssl/SSLSession;


# direct methods
.method public constructor whitelist test-api <init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V
    .registers 3
    .param p1, "sock"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "s"    # Ljavax/net/ssl/SSLSession;

    .line 64
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 65
    iput-object p2, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 113
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 5

    .line 210
    :try_start_0
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_6} :catch_7

    .line 220
    .local v0, "principal":Ljava/security/Principal;
    goto :goto_1b

    .line 211
    .end local v0    # "principal":Ljava/security/Principal;
    :catch_7
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const/4 v1, 0x0

    .line 215
    .local v1, "principal":Ljava/security/Principal;
    invoke-virtual {p0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 216
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_1a

    .line 217
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 218
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    move-object v0, v1

    goto :goto_1b

    .line 216
    :cond_1a
    move-object v0, v1

    .line 221
    .end local v1    # "principal":Ljava/security/Principal;
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .local v0, "principal":Ljava/security/Principal;
    :goto_1b
    return-object v0
.end method

.method public whitelist test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 183
    :try_start_0
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_6} :catch_7

    .line 189
    .local v0, "principal":Ljava/security/Principal;
    goto :goto_16

    .line 184
    .end local v0    # "principal":Ljava/security/Principal;
    :catch_7
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/AbstractMethodError;
    invoke-virtual {p0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 188
    .local v1, "certs":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object v0, v2

    .line 190
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .local v0, "principal":Ljava/security/Principal;
    :goto_16
    return-object v0
.end method

.method public whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 76
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public whitelist test-api getSocket()Ljavax/net/ssl/SSLSocket;
    .registers 2

    .line 233
    invoke-virtual {p0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method
