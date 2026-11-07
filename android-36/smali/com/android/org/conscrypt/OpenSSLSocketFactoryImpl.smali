.class final Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "OpenSSLSocketFactoryImpl.java"


# static fields
.field private static blacklist useEngineSocketByDefault:Z


# instance fields
.field private final blacklist instantiationException:Ljava/io/IOException;

.field private final greylist sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private blacklist useEngineSocket:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    sget-boolean v0, Lcom/android/org/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    sput-boolean v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    return-void
.end method

.method constructor greylist <init>()V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 43
    sget-boolean v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "sslParametersLocal":Lcom/android/org/conscrypt/SSLParametersImpl;
    const/4 v1, 0x0

    .line 50
    .local v1, "instantiationExceptionLocal":Ljava/io/IOException;
    :try_start_9
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;

    move-result-object v2
    :try_end_d
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_d} :catch_f

    move-object v0, v2

    .line 53
    goto :goto_18

    .line 51
    :catch_f
    move-exception v2

    .line 52
    .local v2, "e":Ljava/security/KeyManagementException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Delayed instantiation exception:"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 54
    .end local v2    # "e":Ljava/security/KeyManagementException;
    :goto_18
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 55
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 56
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 3
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 58
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 43
    sget-boolean v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    .line 59
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 61
    return-void
.end method

.method private blacklist hasFileDescriptor(Ljava/net/Socket;)Z
    .registers 4
    .param p1, "s"    # Ljava/net/Socket;

    .line 172
    :try_start_0
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    .line 173
    const/4 v0, 0x1

    return v0

    .line 174
    :catch_5
    move-exception v0

    .line 175
    .local v0, "re":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return v1
.end method

.method static blacklist setUseEngineSocketByDefault(Z)V
    .registers 3
    .param p0, "useEngineSocket"    # Z

    .line 67
    sput-boolean p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    .line 69
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    .line 70
    .local v0, "defaultFactory":Ljavax/net/SocketFactory;
    instance-of v1, v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    if-eqz v1, :cond_10

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    invoke-virtual {v1, p0}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->setUseEngineSocket(Z)V

    .line 73
    :cond_10
    return-void
.end method


# virtual methods
.method public whitelist test-api createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-nez v0, :cond_22

    .line 98
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_15

    .line 99
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->createEngineSocket(Lcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;

    move-result-object v0

    return-object v0

    .line 101
    :cond_15
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->createFileDescriptorSocket(Lcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object v0

    return-object v0

    .line 96
    :cond_22
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_11

    .line 108
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 109
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 108
    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/Platform;->createEngineSocket(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;

    move-result-object v0

    return-object v0

    .line 111
    :cond_11
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 112
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 111
    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/Platform;->createFileDescriptorSocket(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 119
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 121
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 120
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/org/conscrypt/Platform;->createEngineSocket(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;

    move-result-object v0

    return-object v0

    .line 123
    :cond_11
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 124
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 123
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/org/conscrypt/Platform;->createFileDescriptorSocket(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_11

    .line 131
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 132
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 131
    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/Platform;->createEngineSocket(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;

    move-result-object v0

    return-object v0

    .line 134
    :cond_11
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 135
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 134
    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/Platform;->createFileDescriptorSocket(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_11

    .line 143
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 144
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 143
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/org/conscrypt/Platform;->createEngineSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;

    move-result-object v0

    return-object v0

    .line 146
    :cond_11
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 147
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 146
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/org/conscrypt/Platform;->createFileDescriptorSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const-string v0, "socket"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 159
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-nez v0, :cond_22

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->hasFileDescriptor(Ljava/net/Socket;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 160
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 161
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 160
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/org/conscrypt/Platform;->createFileDescriptorSocket(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object v0

    return-object v0

    .line 163
    :cond_22
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 164
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 163
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/org/conscrypt/Platform;->createEngineSocket(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;

    move-result-object v0

    return-object v0

    .line 156
    :cond_2f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 90
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist setUseEngineSocket(Z)V
    .registers 2
    .param p1, "useEngineSocket"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    .line 81
    return-void
.end method
