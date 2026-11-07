.class Landroid/net/http/CronetEngineWrapper;
.super Landroid/net/http/HttpEngine;
.source "CronetEngineWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;


# direct methods
.method public static synthetic blacklist $r8$lambda$N5bmx-f5Fe5mRvQLbS9uJOpVIvI(Landroid/net/http/CronetEngineWrapper;Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/http/CronetEngineWrapper;->lambda$openConnection$0(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;)V
    .registers 2
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    .line 33
    invoke-direct {p0}, Landroid/net/http/HttpEngine;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/net/http/CronetEngineWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    .line 35
    return-void
.end method

.method private synthetic blacklist lambda$openConnection$0(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Landroid/net/http/CronetEngineWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist bindToNetwork(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 55
    const-wide/16 v0, -0x1

    .line 56
    .local v0, "networkHandle":J
    if-eqz p1, :cond_8

    .line 57
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    .line 59
    :cond_8
    iget-object v2, p0, Landroid/net/http/CronetEngineWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {v2, v0, v1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->bindToNetwork(J)V

    .line 60
    return-void
.end method

.method public whitelist createUrlStreamHandlerFactory()Ljava/net/URLStreamHandlerFactory;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/net/http/CronetEngineWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->createURLStreamHandlerFactory()Ljava/net/URLStreamHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public whitelist newBidirectionalStreamBuilder(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/BidirectionalStream$Callback;)Landroid/net/http/BidirectionalStream$Builder;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/http/BidirectionalStream$Callback;

    .line 65
    new-instance v0, Landroid/net/http/BidirectionalStreamBuilderWrapper;

    iget-object v1, p0, Landroid/net/http/CronetEngineWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/net/http/BidirectionalStreamBuilderWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/BidirectionalStream$Callback;)V

    return-object v0
.end method

.method public whitelist newUrlRequestBuilder(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/UrlRequest$Callback;)Landroid/net/http/UrlRequest$Builder;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/http/UrlRequest$Callback;

    .line 71
    new-instance v0, Landroid/net/http/UrlRequestBuilderWrapper;

    iget-object v1, p0, Landroid/net/http/CronetEngineWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/net/http/UrlRequestBuilderWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/UrlRequest$Callback;)V

    return-object v0
.end method

.method public whitelist openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/net/http/CronetEngineWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/net/http/CronetEngineWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/net/http/CronetEngineWrapper;Ljava/net/URL;)V

    invoke-static {v0}, Landroid/net/http/CronetExceptionTranslationUtils;->executeTranslatingExceptions(Landroid/net/http/CronetExceptionTranslationUtils$CronetRunnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    return-object v0
.end method

.method public whitelist shutdown()V
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/net/http/CronetEngineWrapper;->backend:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->shutdown()V

    .line 40
    return-void
.end method
