.class public Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "OpenSSLSocketFactoryImpl.java"


# instance fields
.field private final instantiationException:Ljava/io/IOException;

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    #@3
    .line 31
    const/4 v2, 0x0

    #@4
    .line 32
    .local v2, "sslParametersLocal":Lcom/android/org/conscrypt/SSLParametersImpl;
    const/4 v1, 0x0

    #@5
    .line 34
    .local v1, "instantiationExceptionLocal":Ljava/io/IOException;
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v2

    #@9
    .line 39
    .end local v1    # "instantiationExceptionLocal":Ljava/io/IOException;
    .end local v2    # "sslParametersLocal":Lcom/android/org/conscrypt/SSLParametersImpl;
    :goto_0
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@b
    .line 40
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    #@d
    .line 30
    return-void

    #@e
    .line 35
    .restart local v1    # "instantiationExceptionLocal":Ljava/io/IOException;
    .restart local v2    # "sslParametersLocal":Lcom/android/org/conscrypt/SSLParametersImpl;
    :catch_0
    move-exception v0

    #@f
    .line 36
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v1, Ljava/io/IOException;

    #@11
    .end local v1    # "instantiationExceptionLocal":Ljava/io/IOException;
    const-string/jumbo v3, "Delayed instantiation exception:"

    #@14
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    .line 37
    .local v1, "instantiationExceptionLocal":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1a
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 1
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@5
    .line 45
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    #@8
    .line 43
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 61
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    #@6
    throw v0

    #@7
    .line 63
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@9
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    #@14
    return-object v1
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@2
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@a
    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    #@d
    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
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

    #@0
    .prologue
    .line 74
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@2
    .line 78
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@7
    move-result-object v5

    #@8
    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@a
    move-object v1, p1

    #@b
    move v2, p2

    #@c
    move-object v3, p3

    #@d
    move v4, p4

    #@e
    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    #@11
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@2
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@a
    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    #@d
    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@2
    .line 96
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@7
    move-result-object v5

    #@8
    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@a
    move-object v1, p1

    #@b
    move v2, p2

    #@c
    move-object v3, p3

    #@d
    move v4, p4

    #@e
    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    #@11
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 6
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;

    #@2
    .line 106
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@7
    move-result-object v5

    #@8
    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    #@11
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

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
    .line 55
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
