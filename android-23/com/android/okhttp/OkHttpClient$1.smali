.class final Lcom/android/okhttp/OkHttpClient$1;
.super Lcom/android/okhttp/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/okhttp/internal/Internal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/okhttp/Headers$Builder;
    .param p2, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    invoke-virtual {p1, p2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@3
    .line 94
    return-void
.end method

.method public addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/okhttp/Headers$Builder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@3
    .line 98
    return-void
.end method

.method public apply(Lcom/android/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .param p1, "tlsConfiguration"    # Lcom/android/okhttp/ConnectionSpec;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    #@0
    .prologue
    .line 158
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    #@3
    .line 157
    return-void
.end method

.method public callEngineGetConnection(Lcom/android/okhttp/Call;)Lcom/android/okhttp/Connection;
    .locals 1
    .param p1, "call"    # Lcom/android/okhttp/Call;

    #@0
    .prologue
    .line 141
    iget-object v0, p1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public callEngineReleaseConnection(Lcom/android/okhttp/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/okhttp/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v0, p1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    #@5
    .line 136
    return-void
.end method

.method public callEnqueue(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V
    .locals 0
    .param p1, "call"    # Lcom/android/okhttp/Call;
    .param p2, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p3, "forWebSocket"    # Z

    #@0
    .prologue
    .line 133
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/Call;->enqueue(Lcom/android/okhttp/Callback;Z)V

    #@3
    .line 132
    return-void
.end method

.method public clearOwner(Lcom/android/okhttp/Connection;)Z
    .locals 1
    .param p1, "connection"    # Lcom/android/okhttp/Connection;

    #@0
    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->clearOwner()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public closeIfOwnedBy(Lcom/android/okhttp/Connection;Ljava/lang/Object;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/okhttp/Connection;
    .param p2, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-virtual {p1, p2}, Lcom/android/okhttp/Connection;->closeIfOwnedBy(Ljava/lang/Object;)V

    #@3
    .line 74
    return-void
.end method

.method public connectAndSetOwner(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)V
    .locals 0
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "connection"    # Lcom/android/okhttp/Connection;
    .param p3, "owner"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p4, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/okhttp/Connection;->connectAndSetOwner(Lcom/android/okhttp/OkHttpClient;Ljava/lang/Object;Lcom/android/okhttp/Request;)V

    #@3
    .line 127
    return-void
.end method

.method public connectionRawSink(Lcom/android/okhttp/Connection;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "connection"    # Lcom/android/okhttp/Connection;

    #@0
    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->rawSink()Lcom/android/okhttp/okio/BufferedSink;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public connectionRawSource(Lcom/android/okhttp/Connection;)Lcom/android/okhttp/okio/BufferedSource;
    .locals 1
    .param p1, "connection"    # Lcom/android/okhttp/Connection;

    #@0
    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->rawSource()Lcom/android/okhttp/okio/BufferedSource;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public connectionSetOwner(Lcom/android/okhttp/Connection;Ljava/lang/Object;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/okhttp/Connection;
    .param p2, "owner"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 153
    invoke-virtual {p1, p2}, Lcom/android/okhttp/Connection;->setOwner(Ljava/lang/Object;)V

    #@3
    .line 152
    return-void
.end method

.method public internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;
    .locals 1
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;

    #@0
    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->internalCache()Lcom/android/okhttp/internal/InternalCache;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isReadable(Lcom/android/okhttp/Connection;)Z
    .locals 1
    .param p1, "pooled"    # Lcom/android/okhttp/Connection;

    #@0
    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->isReadable()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public network(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/Network;
    .locals 1
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;

    #@0
    .prologue
    .line 119
    invoke-static {p1}, Lcom/android/okhttp/OkHttpClient;->-get0(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/Network;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newTransport(Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/Transport;
    .locals 1
    .param p1, "connection"    # Lcom/android/okhttp/Connection;
    .param p2, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-virtual {p1, p2}, Lcom/android/okhttp/Connection;->newTransport(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/Transport;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public recycle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;)V
    .locals 0
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "connection"    # Lcom/android/okhttp/Connection;

    #@0
    .prologue
    .line 111
    invoke-virtual {p1, p2}, Lcom/android/okhttp/ConnectionPool;->recycle(Lcom/android/okhttp/Connection;)V

    #@3
    .line 110
    return-void
.end method

.method public recycleCount(Lcom/android/okhttp/Connection;)I
    .locals 1
    .param p1, "connection"    # Lcom/android/okhttp/Connection;

    #@0
    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->recycleCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public routeDatabase(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/RouteDatabase;
    .locals 1
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;

    #@0
    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setCache(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/InternalCache;)V
    .locals 0
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "internalCache"    # Lcom/android/okhttp/internal/InternalCache;

    #@0
    .prologue
    .line 103
    invoke-virtual {p1, p2}, Lcom/android/okhttp/OkHttpClient;->setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V

    #@3
    .line 102
    return-void
.end method

.method public setNetwork(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/Network;)V
    .locals 0
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "network"    # Lcom/android/okhttp/internal/Network;

    #@0
    .prologue
    .line 123
    invoke-static {p1, p2}, Lcom/android/okhttp/OkHttpClient;->-set0(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/Network;)Lcom/android/okhttp/internal/Network;

    #@3
    .line 122
    return-void
.end method

.method public setOwner(Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/HttpEngine;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/okhttp/Connection;
    .param p2, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;

    #@0
    .prologue
    .line 87
    invoke-virtual {p1, p2}, Lcom/android/okhttp/Connection;->setOwner(Ljava/lang/Object;)V

    #@3
    .line 86
    return-void
.end method

.method public setProtocol(Lcom/android/okhttp/Connection;Lcom/android/okhttp/Protocol;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/okhttp/Connection;
    .param p2, "protocol"    # Lcom/android/okhttp/Protocol;

    #@0
    .prologue
    .line 83
    invoke-virtual {p1, p2}, Lcom/android/okhttp/Connection;->setProtocol(Lcom/android/okhttp/Protocol;)V

    #@3
    .line 82
    return-void
.end method
