.class public abstract Ljavax/net/ssl/SSLServerSocket;
.super Ljava/net/ServerSocket;
.source "SSLServerSocket.java"


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    #@3
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    #@3
    .line 52
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    #@3
    .line 69
    return-void
.end method

.method protected constructor <init>(IILjava/net/InetAddress;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@3
    .line 89
    return-void
.end method


# virtual methods
.method public abstract getEnableSessionCreation()Z
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getEnabledProtocols()[Ljava/lang/String;
.end method

.method public abstract getNeedClientAuth()Z
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract getUseClientMode()Z
.end method

.method public abstract getWantClientAuth()Z
.end method

.method public abstract setEnableSessionCreation(Z)V
.end method

.method public abstract setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract setEnabledProtocols([Ljava/lang/String;)V
.end method

.method public abstract setNeedClientAuth(Z)V
.end method

.method public abstract setUseClientMode(Z)V
.end method

.method public abstract setWantClientAuth(Z)V
.end method
