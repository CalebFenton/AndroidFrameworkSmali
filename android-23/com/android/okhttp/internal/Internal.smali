.class public abstract Lcom/android/okhttp/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lcom/android/okhttp/internal/Internal;

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const-class v0, Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    #@c
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    #@0
    .prologue
    .line 46
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/OkHttpClient;-><init>()V

    #@5
    .line 44
    return-void
.end method


# virtual methods
.method public abstract addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lcom/android/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract callEngineGetConnection(Lcom/android/okhttp/Call;)Lcom/android/okhttp/Connection;
.end method

.method public abstract callEngineReleaseConnection(Lcom/android/okhttp/Call;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract callEnqueue(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V
.end method

.method public abstract clearOwner(Lcom/android/okhttp/Connection;)Z
.end method

.method public abstract closeIfOwnedBy(Lcom/android/okhttp/Connection;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connectAndSetOwner(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation
.end method

.method public abstract connectionRawSink(Lcom/android/okhttp/Connection;)Lcom/android/okhttp/okio/BufferedSink;
.end method

.method public abstract connectionRawSource(Lcom/android/okhttp/Connection;)Lcom/android/okhttp/okio/BufferedSource;
.end method

.method public abstract connectionSetOwner(Lcom/android/okhttp/Connection;Ljava/lang/Object;)V
.end method

.method public abstract internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;
.end method

.method public abstract isReadable(Lcom/android/okhttp/Connection;)Z
.end method

.method public abstract network(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/Network;
.end method

.method public abstract newTransport(Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/Transport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract recycle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;)V
.end method

.method public abstract recycleCount(Lcom/android/okhttp/Connection;)I
.end method

.method public abstract routeDatabase(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/RouteDatabase;
.end method

.method public abstract setCache(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/InternalCache;)V
.end method

.method public abstract setNetwork(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/Network;)V
.end method

.method public abstract setOwner(Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/HttpEngine;)V
.end method

.method public abstract setProtocol(Lcom/android/okhttp/Connection;Lcom/android/okhttp/Protocol;)V
.end method
