.class public final Lorg/apache/http/conn/scheme/PlainSocketFactory;
.super Ljava/lang/Object;
.source "PlainSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 61
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@2
    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@7
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V

    #@4
    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .locals 0
    .param p1, "nameResolver"    # Lorg/apache/http/conn/scheme/HostNameResolver;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    #@5
    .line 73
    return-void
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 70
    sget-object v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@2
    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    if-nez p2, :cond_0

    #@2
    .line 95
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "Target host may not be null."

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 97
    :cond_0
    if-nez p6, :cond_1

    #@d
    .line 98
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v5, "Parameters may not be null."

    #@12
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 101
    :cond_1
    if-nez p1, :cond_2

    #@18
    .line 102
    invoke-virtual {p0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->createSocket()Ljava/net/Socket;

    #@1b
    move-result-object p1

    #@1c
    .line 104
    :cond_2
    if-nez p4, :cond_3

    #@1e
    if-lez p5, :cond_5

    #@20
    .line 107
    :cond_3
    if-gez p5, :cond_4

    #@22
    .line 108
    const/4 p5, 0x0

    #@23
    .line 111
    :cond_4
    new-instance v1, Ljava/net/InetSocketAddress;

    #@25
    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@28
    .line 112
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {p1, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    #@2b
    .line 115
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_5
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    #@2e
    move-result v3

    #@2f
    .line 118
    .local v3, "timeout":I
    iget-object v4, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    #@31
    if-eqz v4, :cond_6

    #@33
    .line 119
    new-instance v2, Ljava/net/InetSocketAddress;

    #@35
    iget-object v4, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    #@37
    invoke-interface {v4, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3a
    move-result-object v4

    #@3b
    invoke-direct {v2, v4, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@3e
    .line 124
    .local v2, "remoteAddress":Ljava/net/InetSocketAddress;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 128
    return-object p1

    #@42
    .line 121
    .end local v2    # "remoteAddress":Ljava/net/InetSocketAddress;
    :cond_6
    new-instance v2, Ljava/net/InetSocketAddress;

    #@44
    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@47
    .restart local v2    # "remoteAddress":Ljava/net/InetSocketAddress;
    goto :goto_0

    #@48
    .line 125
    :catch_0
    move-exception v0

    #@49
    .line 126
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    new-instance v4, Lorg/apache/http/conn/ConnectTimeoutException;

    #@4b
    new-instance v5, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v6, "Connect to "

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    const-string/jumbo v6, " timed out"

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-direct {v4, v5}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    #@69
    throw v4
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    #@0
    .prologue
    .line 85
    new-instance v0, Ljava/net/Socket;

    #@2
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    #@5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 178
    if-ne p1, p0, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 188
    const-class v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    if-nez p1, :cond_0

    #@2
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Socket may not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 153
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    const-class v1, Ljava/net/Socket;

    #@11
    if-eq v0, v1, :cond_1

    #@13
    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    .line 155
    const-string/jumbo v1, "Socket not created by this factory."

    #@18
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "Socket is closed."

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 163
    :cond_2
    const/4 v0, 0x0

    #@2c
    return v0
.end method
