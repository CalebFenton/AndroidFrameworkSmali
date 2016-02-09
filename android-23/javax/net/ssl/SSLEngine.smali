.class public abstract Ljavax/net/ssl/SSLEngine;
.super Ljava/lang/Object;
.source "SSLEngine.java"


# instance fields
.field private final peerHost:Ljava/lang/String;

.field private final peerPort:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 668
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    #@6
    .line 669
    const/4 v0, -0x1

    #@7
    iput v0, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    #@9
    .line 667
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 682
    iput-object p1, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    #@5
    .line 683
    iput p2, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    #@7
    .line 681
    return-void
.end method


# virtual methods
.method public abstract beginHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract closeInbound()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract closeOutbound()V
.end method

.method public abstract getDelegatedTask()Ljava/lang/Runnable;
.end method

.method public abstract getEnableSessionCreation()Z
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getEnabledProtocols()[Ljava/lang/String;
.end method

.method public abstract getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
.end method

.method public abstract getNeedClientAuth()Z
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 692
    iget-object v0, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    #@0
    .prologue
    .line 702
    iget v0, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    #@2
    return v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    #@0
    .prologue
    .line 1103
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@2
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@5
    .line 1104
    .local v0, "p":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    #@c
    .line 1105
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@13
    .line 1106
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getNeedClientAuth()Z

    #@16
    move-result v1

    #@17
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    #@1a
    .line 1107
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getWantClientAuth()Z

    #@1d
    move-result v1

    #@1e
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    #@21
    .line 1108
    return-object v0
.end method

.method public abstract getSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract getUseClientMode()Z
.end method

.method public abstract getWantClientAuth()Z
.end method

.method public abstract isInboundDone()Z
.end method

.method public abstract isOutboundDone()Z
.end method

.method public abstract setEnableSessionCreation(Z)V
.end method

.method public abstract setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract setEnabledProtocols([Ljava/lang/String;)V
.end method

.method public abstract setNeedClientAuth(Z)V
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 4
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1121
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1122
    .local v0, "cipherSuites":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 1123
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    #@a
    .line 1125
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1126
    .local v1, "protocols":[Ljava/lang/String;
    if-eqz v1, :cond_1

    #@10
    .line 1127
    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    #@13
    .line 1129
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 1130
    invoke-virtual {p0, v3}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    #@1c
    .line 1120
    :goto_0
    return-void

    #@1d
    .line 1131
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_3

    #@23
    .line 1132
    invoke-virtual {p0, v3}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    #@26
    goto :goto_0

    #@27
    .line 1134
    :cond_3
    const/4 v2, 0x0

    #@28
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    #@2b
    goto :goto_0
.end method

.method public abstract setUseClientMode(Z)V
.end method

.method public abstract setWantClientAuth(Z)V
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1014
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    #@4
    aput-object p2, v0, v1

    #@6
    invoke-virtual {p0, p1, v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1039
    if-nez p2, :cond_0

    #@2
    .line 1040
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Byte buffer array dsts is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1042
    :cond_0
    array-length v0, p2

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, p1, p2, v1, v0}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public abstract unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1093
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-virtual {p0, v0, v1, v2, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public abstract wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1066
    if-nez p1, :cond_0

    #@2
    .line 1067
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Byte buffer array srcs is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1069
    :cond_0
    array-length v0, p1

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, p1, v1, v0, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method
