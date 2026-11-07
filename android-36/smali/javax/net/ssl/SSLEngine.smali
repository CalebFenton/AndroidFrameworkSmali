.class public abstract Ljavax/net/ssl/SSLEngine;
.super Ljava/lang/Object;
.source "SSLEngine.java"


# instance fields
.field private greylist-max-o peerHost:Ljava/lang/String;

.field private greylist-max-o peerPort:I


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    .line 1042
    const/4 v0, -0x1

    iput v0, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    .line 1052
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    .line 1042
    const/4 v0, -0x1

    iput v0, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    .line 1074
    iput-object p1, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    .line 1075
    iput p2, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    .line 1076
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api beginHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api closeInbound()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api closeOutbound()V
.end method

.method public whitelist test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1966
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api getDelegatedTask()Ljava/lang/Runnable;
.end method

.method public abstract whitelist test-api getEnableSessionCreation()Z
.end method

.method public abstract whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getEnabledProtocols()[Ljava/lang/String;
.end method

.method public whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1991
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getHandshakeApplicationProtocolSelector()Ljava/util/function/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2078
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 1691
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
.end method

.method public abstract whitelist test-api getNeedClientAuth()Z
.end method

.method public whitelist test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 1088
    iget-object v0, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPeerPort()I
    .registers 2

    .line 1101
    iget v0, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    return v0
.end method

.method public whitelist test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 4

    .line 1885
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    .line 1886
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 1887
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 1888
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getNeedClientAuth()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 1889
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    goto :goto_27

    .line 1890
    :cond_1e
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1891
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    .line 1893
    :cond_27
    :goto_27
    return-object v0
.end method

.method public abstract whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getUseClientMode()Z
.end method

.method public abstract whitelist test-api getWantClientAuth()Z
.end method

.method public abstract whitelist test-api isInboundDone()Z
.end method

.method public abstract whitelist test-api isOutboundDone()Z
.end method

.method public abstract whitelist test-api setEnableSessionCreation(Z)V
.end method

.method public abstract whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
.end method

.method public whitelist test-api setHandshakeApplicationProtocolSelector(Ljava/util/function/BiFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2057
    .local p1, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLEngine;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api setNeedClientAuth(Z)V
.end method

.method public whitelist test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 5
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    .line 1923
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 1924
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1925
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 1927
    :cond_9
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 1928
    if-eqz v0, :cond_12

    .line 1929
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 1931
    :cond_12
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 1932
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    goto :goto_2b

    .line 1933
    :cond_1d
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1934
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    goto :goto_2b

    .line 1936
    :cond_27
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 1938
    :goto_2b
    return-void
.end method

.method public abstract whitelist test-api setUseClientMode(Z)V
.end method

.method public abstract whitelist test-api setWantClientAuth(Z)V
.end method

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1292
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v1, v2, v0}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1329
    if-eqz p2, :cond_9

    .line 1332
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0

    .line 1330
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dsts == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public whitelist test-api wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1137
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1, v2, v0, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public whitelist test-api wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 5
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1174
    if-eqz p1, :cond_9

    .line 1177
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0

    .line 1175
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
