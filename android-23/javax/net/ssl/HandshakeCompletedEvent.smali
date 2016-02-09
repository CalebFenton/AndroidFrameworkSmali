.class public Ljavax/net/ssl/HandshakeCompletedEvent;
.super Ljava/util/EventObject;
.source "HandshakeCompletedEvent.java"


# instance fields
.field private transient session:Ljavax/net/ssl/SSLSession;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V
    .locals 0
    .param p1, "sock"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "s"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 44
    iput-object p2, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@5
    .line 42
    return-void
.end method


# virtual methods
.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 62
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
    .line 74
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    .line 102
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
    .line 87
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    #@2
    return-object v0
.end method

.method public getSocket()Ljavax/net/ssl/SSLSocket;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->source:Ljava/lang/Object;

    #@2
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@4
    return-object v0
.end method
