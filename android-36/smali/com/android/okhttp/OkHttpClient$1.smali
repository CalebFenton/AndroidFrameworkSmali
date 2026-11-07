.class Lcom/android/okhttp/OkHttpClient$1;
.super Lcom/android/okhttp/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/android/okhttp/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;)V
    .registers 3

    .line 66
    invoke-virtual {p1, p2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-void
.end method

.method public blacklist addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 70
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-void
.end method

.method public blacklist apply(Lcom/android/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    .line 110
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public blacklist callEngineGetStreamAllocation(Lcom/android/okhttp/Call;)Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 2

    .line 105
    iget-object p0, p1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object p0
.end method

.method public blacklist callEnqueue(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V
    .registers 4

    .line 101
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/Call;->enqueue(Lcom/android/okhttp/Callback;Z)V

    return-void
.end method

.method public blacklist connectionBecameIdle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)Z
    .registers 3

    .line 83
    invoke-virtual {p1, p2}, Lcom/android/okhttp/ConnectionPool;->connectionBecameIdle(Lcom/android/okhttp/internal/io/RealConnection;)Z

    move-result p0

    return p0
.end method

.method public blacklist get(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 4

    .line 88
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/ConnectionPool;->get(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHttpUrlChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 115
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->getChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public blacklist internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;
    .registers 2

    .line 78
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->internalCache()Lcom/android/okhttp/internal/InternalCache;

    move-result-object p0

    return-object p0
.end method

.method public blacklist put(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 3

    .line 92
    invoke-virtual {p1, p2}, Lcom/android/okhttp/ConnectionPool;->put(Lcom/android/okhttp/internal/io/RealConnection;)V

    return-void
.end method

.method public blacklist routeDatabase(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/internal/RouteDatabase;
    .registers 2

    .line 96
    iget-object p0, p1, Lcom/android/okhttp/ConnectionPool;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    return-object p0
.end method

.method public blacklist setCache(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/InternalCache;)V
    .registers 3

    .line 74
    invoke-virtual {p1, p2}, Lcom/android/okhttp/OkHttpClient;->setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V

    return-void
.end method
