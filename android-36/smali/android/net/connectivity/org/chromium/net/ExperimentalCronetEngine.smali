.class public abstract Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;
.super Landroid/net/connectivity/org/chromium/net/CronetEngine;
.source "ExperimentalCronetEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CONNECTION_METRIC_UNKNOWN:I = -0x1

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_2G:I = 0x3

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_3G:I = 0x4

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_4G:I = 0x5

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_OFFLINE:I = 0x1

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_SLOW_2G:I = 0x2

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist UNBIND_NETWORK_HANDLE:J = -0x1L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/CronetEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist newBidirectionalStreamBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->newBidirectionalStreamBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist newBidirectionalStreamBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
.end method

.method public abstract blacklist newUrlRequestBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
.end method

.method public bridge synthetic blacklist newUrlRequestBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-virtual {p1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method
