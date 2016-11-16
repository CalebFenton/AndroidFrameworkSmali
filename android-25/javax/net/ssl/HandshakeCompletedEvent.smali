.class public Ljavax/net/ssl/HandshakeCompletedEvent;
.super Ljava/util/EventObject;
.source "HandshakeCompletedEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x6dd7999712948132L


# instance fields
.field private transient session:Ljavax/net/ssl/SSLSession;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V
    .locals 0
    .param p1, "sock"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "s"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 66
    iput-object p2, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@5
    .line 63
    return-void
.end method


# virtual methods
.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 4

    #@0
    .prologue
    .line 212
    :try_start_0
    iget-object v3, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v2

    #@6
    .line 223
    :cond_0
    :goto_0
    return-object v2

    #@7
    .line 213
    :catch_0
    move-exception v1

    #@8
    .line 214
    .local v1, "e":Ljava/lang/AbstractMethodError;
    const/4 v2, 0x0

    #@9
    .line 217
    .local v2, "principal":Ljava/security/Principal;
    invoke-virtual {p0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@c
    move-result-object v0

    #@d
    .line 218
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    #@f
    .line 220
    const/4 v3, 0x0

    #@10
    aget-object v3, v0, v3

    #@12
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@14
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@17
    move-result-object v2

    #@18
    .local v2, "principal":Ljava/security/Principal;
    goto :goto_0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    :try_start_0
    iget-object v3, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v2

    #@6
    .line 192
    .local v2, "principal":Ljava/security/Principal;
    :goto_0
    return-object v2

    #@7
    .line 185
    .end local v2    # "principal":Ljava/security/Principal;
    :catch_0
    move-exception v1

    #@8
    .line 188
    .local v1, "e":Ljava/lang/AbstractMethodError;
    invoke-virtual {p0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@b
    move-result-object v0

    #@c
    .line 190
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    #@d
    aget-object v3, v0, v3

    #@f
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@11
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@14
    move-result-object v2

    #@15
    .restart local v2    # "principal":Ljava/security/Principal;
    goto :goto_0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    return-object v0
.end method

.method public getSocket()Ljavax/net/ssl/SSLSocket;
    .locals 1

    #@0
    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@6
    return-object v0
.end method
