.class public Lcom/android/server/connectivity/DnsEventListenerService;
.super Landroid/net/metrics/IDnsEventListener$Stub;
.source "DnsEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DnsEventListenerService$1;,
        Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MAX_LOOKUPS_PER_DNS_EVENT:I = 0x64

.field public static final SERVICE_NAME:Ljava/lang/String; = "dns_listener"

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mEventBatches:Ljava/util/SortedMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/DnsEventListenerService;)Ljava/util/SortedMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/DnsEventListenerService;)Landroid/net/metrics/IpConnectivityLog;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/connectivity/DnsEventListenerService;->maybeLog(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const-class v0, Lcom/android/server/connectivity/DnsEventListenerService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/connectivity/DnsEventListenerService;->TAG:Ljava/lang/String;

    #@8
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 123
    const-class v0, Landroid/net/ConnectivityManager;

    #@2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/ConnectivityManager;

    #@8
    new-instance v1, Landroid/net/metrics/IpConnectivityLog;

    #@a
    invoke-direct {v1}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    #@d
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsEventListenerService;-><init>(Landroid/net/ConnectivityManager;Landroid/net/metrics/IpConnectivityLog;)V

    #@10
    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/metrics/IpConnectivityLog;)V
    .locals 3
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "log"    # Landroid/net/metrics/IpConnectivityLog;

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Landroid/net/metrics/IDnsEventListener$Stub;-><init>()V

    #@3
    .line 102
    new-instance v1, Ljava/util/TreeMap;

    #@5
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    #@a
    .line 110
    new-instance v1, Lcom/android/server/connectivity/DnsEventListenerService$1;

    #@c
    invoke-direct {v1, p0}, Lcom/android/server/connectivity/DnsEventListenerService$1;-><init>(Lcom/android/server/connectivity/DnsEventListenerService;)V

    #@f
    iput-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@11
    .line 129
    iput-object p1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    #@13
    .line 130
    iput-object p2, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@15
    .line 131
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    #@17
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    #@1a
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    #@21
    move-result-object v0

    #@22
    .line 132
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    #@24
    iget-object v2, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@26
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@29
    .line 127
    return-void
.end method

.method private static maybeLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    sget-object v0, Lcom/android/server/connectivity/DnsEventListenerService;->TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 159
    return-void
.end method

.method private static maybeVerboseLog(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 150
    :try_start_0
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    #@3
    const-string/jumbo v3, "  "

    #@6
    invoke-direct {v2, p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@9
    .line 151
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    sget-object v4, Lcom/android/server/connectivity/DnsEventListenerService;->TAG:Ljava/lang/String;

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    const-string/jumbo v4, ":"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 152
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@25
    .line 153
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    #@27
    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    #@2a
    move-result-object v3

    #@2b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    .local v1, "batch$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_0

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;

    #@3b
    .line 154
    .local v0, "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    goto :goto_0

    #@43
    .end local v0    # "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    .end local v1    # "batch$iterator":Ljava/util/Iterator;
    .end local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v3

    #@44
    monitor-exit p0

    #@45
    throw v3

    #@46
    .line 156
    .restart local v1    # "batch$iterator":Ljava/util/Iterator;
    .restart local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    monitor-exit p0

    #@4a
    .line 149
    return-void
.end method

.method public declared-synchronized onDnsEvent(IIII)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 138
    :try_start_0
    const-string/jumbo v1, "onDnsEvent(%d, %d, %d, %d)"

    #@4
    const/4 v2, 0x4

    #@5
    new-array v2, v2, [Ljava/lang/Object;

    #@7
    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v3

    #@b
    const/4 v4, 0x0

    #@c
    aput-object v3, v2, v4

    #@e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x1

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x2

    #@1a
    aput-object v3, v2, v4

    #@1c
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v3

    #@20
    const/4 v4, 0x3

    #@21
    aput-object v3, v2, v4

    #@23
    .line 138
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1}, Lcom/android/server/connectivity/DnsEventListenerService;->maybeVerboseLog(Ljava/lang/String;)V

    #@2a
    .line 141
    iget-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    #@2c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;

    #@36
    .line 142
    .local v0, "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    if-nez v0, :cond_0

    #@38
    .line 143
    new-instance v0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;

    #@3a
    .end local v0    # "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    invoke-direct {v0, p0, p1}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;-><init>(Lcom/android/server/connectivity/DnsEventListenerService;I)V

    #@3d
    .line 144
    .restart local v0    # "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    iget-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    #@3f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v2

    #@43
    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 146
    :cond_0
    int-to-byte v1, p2

    #@47
    int-to-byte v2, p3

    #@48
    invoke-virtual {v0, v1, v2, p4}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->addResult(BBI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    monitor-exit p0

    #@4c
    .line 137
    return-void

    #@4d
    .end local v0    # "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    :catchall_0
    move-exception v1

    #@4e
    monitor-exit p0

    #@4f
    throw v1
.end method
