.class final Lcom/android/org/conscrypt/Java8EngineWrapper;
.super Lcom/android/org/conscrypt/AbstractConscryptEngine;
.source "Java8EngineWrapper.java"


# instance fields
.field private final blacklist delegate:Lcom/android/org/conscrypt/ConscryptEngine;

.field private blacklist selector:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .line 43
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 44
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ConscryptEngine;

    iput-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 45
    return-void
.end method

.method static blacklist getDelegate(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLEngine;
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 48
    instance-of v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;

    if-eqz v0, :cond_a

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/Java8EngineWrapper;

    iget-object v0, v0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    return-object v0

    .line 51
    :cond_a
    return-object p0
.end method

.method private static blacklist toApplicationProtocolSelector(Ljava/util/function/BiFunction;)Lcom/android/org/conscrypt/ApplicationProtocolSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/org/conscrypt/ApplicationProtocolSelector;"
        }
    .end annotation

    .line 330
    .local p0, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLEngine;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/Java8EngineWrapper$1;-><init>(Ljava/util/function/BiFunction;)V

    :goto_9
    return-object v0
.end method


# virtual methods
.method public whitelist test-api beginHandshake()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshake()V

    .line 123
    return-void
.end method

.method public whitelist test-api closeInbound()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeInbound()V

    .line 128
    return-void
.end method

.method public whitelist test-api closeOutbound()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 133
    return-void
.end method

.method blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngine;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getChannelId()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDelegatedTask()Ljava/lang/Runnable;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEnableSessionCreation()Z
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 325
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->selector:Ljava/util/function/BiFunction;

    return-object v0
.end method

.method public whitelist test-api getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0
.end method

.method blacklist getHostname()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNeedClientAuth()Z
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPeerPort()I
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getUseClientMode()Z
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getWantClientAuth()Z
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method blacklist handshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isInboundDone()Z
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->isInboundDone()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isOutboundDone()Z
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->isOutboundDone()Z

    move-result v0

    return v0
.end method

.method blacklist maxSealOverhead()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->maxSealOverhead()I

    move-result v0

    return v0
.end method

.method blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 4
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 295
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 296
    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_b

    :cond_6
    new-instance v1, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 295
    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 297
    return-void
.end method

.method blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocols([Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method blacklist setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 3
    .param p1, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V

    .line 73
    return-void
.end method

.method blacklist setChannelIdEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 82
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdEnabled(Z)V

    .line 83
    return-void
.end method

.method blacklist setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 93
    return-void
.end method

.method public whitelist test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 217
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnableSessionCreation(Z)V

    .line 218
    return-void
.end method

.method public whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 213
    return-void
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

    .line 318
    .local p1, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLEngine;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->selector:Ljava/util/function/BiFunction;

    .line 319
    invoke-static {p1}, Lcom/android/org/conscrypt/Java8EngineWrapper;->toApplicationProtocolSelector(Ljava/util/function/BiFunction;)Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/Java8EngineWrapper;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 320
    return-void
.end method

.method blacklist setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V
    .registers 3
    .param p1, "handshakeListener"    # Lcom/android/org/conscrypt/HandshakeListener;

    .line 97
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V

    .line 98
    return-void
.end method

.method blacklist setHostname(Ljava/lang/String;)V
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public whitelist test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 222
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setNeedClientAuth(Z)V

    .line 223
    return-void
.end method

.method public whitelist test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "sslParameters"    # Ljavax/net/ssl/SSLParameters;

    .line 67
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 68
    return-void
.end method

.method public whitelist test-api setUseClientMode(Z)V
    .registers 3
    .param p1, "mode"    # Z

    .line 227
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    .line 228
    return-void
.end method

.method blacklist setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .line 275
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseSessionTickets(Z)V

    .line 276
    return-void
.end method

.method public whitelist test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 232
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setWantClientAuth(Z)V

    .line 233
    return-void
.end method

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method blacklist unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 14
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    .local v1, "srcs":[Ljava/nio/ByteBuffer;
    .local v2, "srcsOffset":I
    .local v3, "srcsLength":I
    .local v4, "dsts":[Ljava/nio/ByteBuffer;
    .local v5, "dstsOffset":I
    .local v6, "dstsLength":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method blacklist unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 4
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 6
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/ConscryptEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 4
    .param p1, "byteBuffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineWrapper;->delegate:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method
