.class public abstract Landroid/net/connectivity/org/chromium/net/CronetEngine;
.super Ljava/lang/Object;
.source "CronetEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE_REQUEST_COUNT_UNKNOWN:I = -0x1

.field public static final blacklist CONNECTION_METRIC_UNKNOWN:I = -0x1

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_2G:I = 0x3

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_3G:I = 0x4

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_4G:I = 0x5

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_OFFLINE:I = 0x1

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_SLOW_2G:I = 0x2

.field public static final blacklist EFFECTIVE_CONNECTION_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNBIND_NETWORK_HANDLE:J = -0x1L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Landroid/net/connectivity/org/chromium/net/CronetEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/CronetEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    .line 910
    return-void
.end method

.method public blacklist addRttListener(Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;

    .line 1027
    return-void
.end method

.method public blacklist addThroughputListener(Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    .line 1048
    return-void
.end method

.method public blacklist bindToNetwork(J)V
    .registers 3
    .param p1, "networkHandle"    # J

    .line 987
    return-void
.end method

.method public blacklist configureNetworkQualityEstimatorForTesting(ZZZ)V
    .registers 4
    .param p1, "useLocalHostRequests"    # Z
    .param p2, "useSmallerResponses"    # Z
    .param p3, "disableOfflineCheck"    # Z

    .line 1014
    return-void
.end method

.method public abstract blacklist createURLStreamHandlerFactory()Ljava/net/URLStreamHandlerFactory;
.end method

.method public blacklist getActiveRequestCount()I
    .registers 2

    .line 899
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDownstreamThroughputKbps()I
    .registers 2

    .line 952
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getEffectiveConnectionType()I
    .registers 2

    .line 997
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist getGlobalMetricsDeltas()[B
.end method

.method public blacklist getHttpRttMs()I
    .registers 2

    .line 928
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getTransportRttMs()I
    .registers 2

    .line 940
    const/4 v0, -0x1

    return v0
.end method

.method public abstract blacklist getVersionString()Ljava/lang/String;
.end method

.method public blacklist newBidirectionalStreamBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 882
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist newUrlRequestBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
.end method

.method public abstract blacklist openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist removeRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    .line 917
    return-void
.end method

.method public blacklist removeRttListener(Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;

    .line 1036
    return-void
.end method

.method public blacklist removeThroughputListener(Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    .line 1057
    return-void
.end method

.method public abstract blacklist shutdown()V
.end method

.method public blacklist startNetLogToDisk(Ljava/lang/String;ZI)V
    .registers 4
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "logAll"    # Z
    .param p3, "maxSize"    # I

    .line 975
    return-void
.end method

.method public abstract blacklist startNetLogToFile(Ljava/lang/String;Z)V
.end method

.method public abstract blacklist stopNetLog()V
.end method
