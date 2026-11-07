.class final Lcom/android/org/conscrypt/ActiveSession;
.super Ljava/lang/Object;
.source "ActiveSession.java"

# interfaces
.implements Lcom/android/org/conscrypt/ConscryptSession;


# instance fields
.field private blacklist applicationProtocol:Ljava/lang/String;

.field private blacklist creationTime:J

.field private blacklist id:[B

.field private blacklist lastAccessedTime:J

.field private blacklist localCertificates:[Ljava/security/cert/X509Certificate;

.field private volatile blacklist peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field private blacklist peerCertificateOcspData:[B

.field private blacklist peerCertificates:[Ljava/security/cert/X509Certificate;

.field private blacklist peerHost:Ljava/lang/String;

.field private blacklist peerPort:I

.field private blacklist peerTlsSctData:[B

.field private blacklist protocol:Ljava/lang/String;

.field private final blacklist sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

.field private final blacklist ssl:Lcom/android/org/conscrypt/NativeSsl;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V
    .registers 5
    .param p1, "ssl"    # Lcom/android/org/conscrypt/NativeSsl;
    .param p2, "sessionContext"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerPort:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->lastAccessedTime:J

    .line 53
    const-string v0, "ssl"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/NativeSsl;

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 54
    const-string v0, "sessionContext"

    invoke-static {p2, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/AbstractSessionContext;

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 55
    return-void
.end method

.method private blacklist checkPeerCertificatesPresent()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-eqz v0, :cond_a

    .line 344
    return-void

    .line 342
    :cond_a
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist configurePeer(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V
    .registers 6
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I
    .param p3, "peerCertificates"    # [Ljava/security/cert/X509Certificate;

    .line 307
    iput-object p1, p0, Lcom/android/org/conscrypt/ActiveSession;->peerHost:Ljava/lang/String;

    .line 308
    iput p2, p0, Lcom/android/org/conscrypt/ActiveSession;->peerPort:I

    .line 309
    iput-object p3, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 310
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 311
    :try_start_9
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getPeerCertificateOcspData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificateOcspData:[B

    .line 312
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getPeerTlsSctData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->peerTlsSctData:[B

    .line 313
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw v1
.end method


# virtual methods
.method public whitelist test-api getApplicationBufferSize()I
    .registers 2

    .line 283
    const/16 v0, 0x4000

    return v0
.end method

.method public blacklist getApplicationProtocol()Ljava/lang/String;
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->applicationProtocol:Ljava/lang/String;

    .line 289
    .local v0, "applicationProtocol":Ljava/lang/String;
    if-nez v0, :cond_19

    .line 290
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 291
    :try_start_7
    iget-object v2, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSsl;->getApplicationProtocol()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/SSLUtils;->toProtocolString([B)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 292
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 293
    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->applicationProtocol:Ljava/lang/String;

    goto :goto_19

    .line 292
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2

    .line 295
    :cond_19
    :goto_19
    return-object v0
.end method

.method public whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "cipher":Ljava/lang/String;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 251
    if-nez v1, :cond_f

    const-string v0, "SSL_NULL_WITH_NULL_NULL"

    goto :goto_10

    :cond_f
    move-object v0, v1

    :goto_10
    return-object v0

    .line 250
    .end local v1    # "cipher":Ljava/lang/String;
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist test-api getCreationTime()J
    .registers 5

    .line 74
    iget-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->creationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 75
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 76
    :try_start_b
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/org/conscrypt/ActiveSession;->creationTime:J

    .line 77
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1

    .line 79
    :cond_18
    :goto_18
    iget-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->creationTime:J

    return-wide v0
.end method

.method public whitelist test-api getId()[B
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    if-nez v0, :cond_14

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 61
    :try_start_7
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getSessionId()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    .line 62
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1

    .line 64
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_23

    :cond_21
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    :goto_23
    return-object v0
.end method

.method public whitelist test-api getLastAccessedTime()J
    .registers 5

    .line 92
    iget-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->lastAccessedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ActiveSession;->getCreationTime()J

    move-result-wide v0

    goto :goto_f

    :cond_d
    iget-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->lastAccessedTime:J

    :goto_f
    return-wide v0
.end method

.method public whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_14

    .line 190
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 191
    :try_start_7
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getLocalCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 192
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1

    .line 194
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_22

    :cond_1a
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    :goto_22
    return-object v0
.end method

.method public whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .line 235
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ActiveSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 236
    .local v0, "certs":[Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_13

    array-length v1, v0

    if-lez v1, :cond_13

    .line 237
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1

    .line 239
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getPacketBufferSize()I
    .registers 2

    .line 278
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

    .line 213
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->isJavaxCertificateSupported()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 217
    invoke-direct {p0}, Lcom/android/org/conscrypt/ActiveSession;->checkPeerCertificatesPresent()V

    .line 219
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 220
    .local v0, "result":[Ljavax/security/cert/X509Certificate;
    if-nez v0, :cond_16

    .line 222
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->toCertificateChain([Ljava/security/cert/X509Certificate;)[Ljavax/security/cert/X509Certificate;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 224
    :cond_16
    return-object v0

    .line 214
    .end local v0    # "result":[Ljavax/security/cert/X509Certificate;
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use getPeerCertificates() instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ActiveSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lcom/android/org/conscrypt/ActiveSession;->checkPeerCertificatesPresent()V

    .line 183
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPeerPort()I
    .registers 2

    .line 273
    iget v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerPort:I

    return v0
.end method

.method public whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lcom/android/org/conscrypt/ActiveSession;->checkPeerCertificatesPresent()V

    .line 230
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerTlsSctData:[B

    if-nez v0, :cond_6

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerTlsSctData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getProtocol()Ljava/lang/String;
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->protocol:Ljava/lang/String;

    .line 257
    .local v0, "protocol":Ljava/lang/String;
    if-nez v0, :cond_15

    .line 258
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 259
    :try_start_7
    iget-object v2, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSsl;->getVersion()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 260
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 261
    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->protocol:Ljava/lang/String;

    goto :goto_15

    .line 260
    :catchall_12
    move-exception v2

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v2

    .line 263
    :cond_15
    :goto_15
    return-object v0
.end method

.method public blacklist getRequestedServerName()Ljava/lang/String;
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getRequestedServerName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 137
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ActiveSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist getStatusResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificateOcspData:[B

    if-nez v0, :cond_9

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 116
    :cond_9
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificateOcspData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getValueNames()[Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api invalidate()V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/org/conscrypt/NativeSsl;->setTimeout(J)V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api isValid()Z
    .registers 8

    .line 149
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getTime()J

    move-result-wide v1

    .line 151
    .local v1, "creationTimeMillis":J
    iget-object v3, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/NativeSsl;->getTimeout()J

    move-result-wide v3

    .line 152
    .local v3, "timeoutMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v5, v5, v1

    if-gez v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    :goto_1b
    monitor-exit v0

    return v5

    .line 153
    .end local v1    # "creationTimeMillis":J
    .end local v3    # "timeoutMillis":J
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method blacklist onPeerCertificateAvailable(Ljava/lang/String;I)V
    .registers 5
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 322
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    .line 323
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_12

    .line 324
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getLocalCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 326
    :cond_12
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1f

    .line 332
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/org/conscrypt/ActiveSession;->configurePeer(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 334
    :cond_1f
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v1
.end method

.method blacklist onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I
    .param p3, "peerCertificates"    # [Ljava/security/cert/X509Certificate;

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ActiveSession;->configurePeer(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 304
    return-void
.end method

.method public whitelist test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api removeValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setLastAccessedTime(J)V
    .registers 3
    .param p1, "accessTimeMillis"    # J

    .line 96
    iput-wide p1, p0, Lcom/android/org/conscrypt/ActiveSession;->lastAccessedTime:J

    .line 97
    return-void
.end method
