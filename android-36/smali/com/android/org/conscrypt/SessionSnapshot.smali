.class final Lcom/android/org/conscrypt/SessionSnapshot;
.super Ljava/lang/Object;
.source "SessionSnapshot.java"

# interfaces
.implements Lcom/android/org/conscrypt/ConscryptSession;


# instance fields
.field private final blacklist applicationProtocol:Ljava/lang/String;

.field private final blacklist cipherSuite:Ljava/lang/String;

.field private final blacklist creationTime:J

.field private final blacklist id:[B

.field private final blacklist lastAccessedTime:J

.field private final blacklist peerHost:Ljava/lang/String;

.field private final blacklist peerPort:I

.field private final blacklist peerTlsSctData:[B

.field private final blacklist protocol:Ljava/lang/String;

.field private final blacklist requestedServerName:Ljava/lang/String;

.field private final blacklist sessionContext:Ljavax/net/ssl/SSLSessionContext;

.field private final blacklist statusResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptSession;)V
    .registers 4
    .param p1, "session"    # Lcom/android/org/conscrypt/ConscryptSession;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->sessionContext:Ljavax/net/ssl/SSLSessionContext;

    .line 48
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->id:[B

    .line 49
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->requestedServerName:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->statusResponses:Ljava/util/List;

    .line 51
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->peerTlsSctData:[B

    .line 52
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getCreationTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->creationTime:J

    .line 53
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getLastAccessedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->lastAccessedTime:J

    .line 54
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->cipherSuite:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->protocol:Ljava/lang/String;

    .line 56
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->peerHost:Ljava/lang/String;

    .line 57
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerPort()I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->peerPort:I

    .line 58
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->applicationProtocol:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist test-api getApplicationBufferSize()I
    .registers 2

    .line 192
    const/16 v0, 0x4000

    return v0
.end method

.method public blacklist getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->applicationProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getCreationTime()J
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->creationTime:J

    return-wide v0
.end method

.method public whitelist test-api getId()[B
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->id:[B

    return-object v0
.end method

.method public whitelist test-api getLastAccessedTime()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->lastAccessedTime:J

    return-wide v0
.end method

.method public whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getPacketBufferSize()I
    .registers 2

    .line 187
    const/16 v0, 0x4145

    return v0
.end method

.method public whitelist test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 148
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->isJavaxCertificateSupported()Z

    move-result v0

    if-nez v0, :cond_e

    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use getPeerCertificates() instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_e
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SessionSnapshot;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPeerPort()I
    .registers 2

    .line 182
    iget v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->peerPort:I

    return v0
.end method

.method public whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->peerTlsSctData:[B

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->peerTlsSctData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist test-api getProtocol()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequestedServerName()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->requestedServerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/SessionSnapshot;->sessionContext:Ljavax/net/ssl/SSLSessionContext;

    return-object v0
.end method

.method public blacklist getStatusResponses()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/org/conscrypt/SessionSnapshot;->statusResponses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v1, p0, Lcom/android/org/conscrypt/SessionSnapshot;->statusResponses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 70
    .local v2, "resp":[B
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v2    # "resp":[B
    goto :goto_11

    .line 72
    :cond_27
    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getValueNames()[Ljava/lang/String;
    .registers 3

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api invalidate()V
    .registers 1

    .line 103
    return-void
.end method

.method public whitelist test-api isValid()Z
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api removeValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
