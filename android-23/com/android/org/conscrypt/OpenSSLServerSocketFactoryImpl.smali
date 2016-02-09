.class public Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "OpenSSLServerSocketFactoryImpl.java"


# instance fields
.field private instantiationException:Ljava/io/IOException;

.field private sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    #@3
    .line 31
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@9
    .line 32
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 29
    :goto_0
    return-void

    #@10
    .line 33
    :catch_0
    move-exception v0

    #@11
    .line 35
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v1, Ljava/io/IOException;

    #@13
    const-string/jumbo v2, "Delayed instantiation exception:"

    #@16
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    .line 34
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    #@1b
    .line 36
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    #@1d
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@20
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    #@3
    .line 41
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@b
    .line 42
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    #@11
    .line 40
    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    #@2
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@a
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    #@d
    return-object v1
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    #@2
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@a
    invoke-direct {v1, p1, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;-><init>(ILcom/android/org/conscrypt/SSLParametersImpl;)V

    #@d
    return-object v1
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    #@2
    .line 70
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@a
    .line 68
    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;-><init>(IILcom/android/org/conscrypt/SSLParametersImpl;)V

    #@d
    return-object v1
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "iAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    #@2
    .line 80
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@a
    .line 77
    invoke-direct {v1, p1, p2, p3, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;-><init>(IILjava/net/InetAddress;Lcom/android/org/conscrypt/SSLParametersImpl;)V

    #@d
    return-object v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
