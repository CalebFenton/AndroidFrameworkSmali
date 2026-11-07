.class final Lcom/android/org/conscrypt/ConscryptServerSocket;
.super Ljavax/net/ssl/SSLServerSocket;
.source "ConscryptServerSocket.java"


# instance fields
.field private blacklist channelIdEnabled:Z

.field private final blacklist sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private blacklist useEngineSocket:Z


# direct methods
.method constructor blacklist <init>(IILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    .line 46
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 47
    return-void
.end method

.method constructor blacklist <init>(IILjava/net/InetAddress;Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 5
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "iAddress"    # Ljava/net/InetAddress;
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 55
    iput-object p4, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 56
    return-void
.end method

.method constructor blacklist <init>(ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 3
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLServerSocket;-><init>(I)V

    .line 40
    iput-object p2, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 41
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 2
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist test-api accept()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->useEngineSocket:Z

    if-eqz v0, :cond_b

    .line 181
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->createEngineSocket(Lcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;

    move-result-object v0

    .local v0, "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    goto :goto_11

    .line 183
    .end local v0    # "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    :cond_b
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->createFileDescriptorSocket(Lcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object v0

    .line 186
    .restart local v0    # "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    :goto_11
    iget-boolean v1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->channelIdEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setChannelIdEnabled(Z)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 188
    return-object v0
.end method

.method public whitelist test-api getEnableSessionCreation()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNeedClientAuth()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 112
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 83
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getUseClientMode()Z
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getWantClientAuth()Z
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method blacklist isChannelIdEnabled()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->channelIdEnabled:Z

    return v0
.end method

.method blacklist setChannelIdEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->channelIdEnabled:Z

    .line 125
    return-void
.end method

.method public whitelist test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 73
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 74
    return-void
.end method

.method public whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public whitelist test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 164
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 165
    return-void
.end method

.method public whitelist test-api setUseClientMode(Z)V
    .registers 3
    .param p1, "mode"    # Z

    .line 169
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 170
    return-void
.end method

.method blacklist setUseEngineSocket(Z)Lcom/android/org/conscrypt/ConscryptServerSocket;
    .registers 2
    .param p1, "useEngineSocket"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->useEngineSocket:Z

    .line 63
    return-object p0
.end method

.method public whitelist test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 154
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 155
    return-void
.end method
