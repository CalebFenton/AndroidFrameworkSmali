.class public final Lcom/android/server/connectivity/IpConnectivityMetrics;
.super Lcom/android/server/SystemService;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_BUFFER_SIZE:I = 0x7d0

.field private static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

.field private mBuffer:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCapacity:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDnsListener:Lcom/android/server/connectivity/DnsEventListenerService;

.field private mDropped:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->append(Landroid/net/ConnectivityMetricsEvent;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdDefault(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdFlush(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    const-class v0, Lcom/android/server/connectivity/IpConnectivityMetrics;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    #@8
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 53
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    #@a
    .line 56
    new-instance v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V

    #@f
    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    #@11
    .line 68
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V

    #@14
    .line 66
    return-void
.end method

.method private append(Landroid/net/ConnectivityMetricsEvent;)I
    .locals 5
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 102
    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 103
    :try_start_0
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    #@6
    iget-object v3, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v3

    #@c
    sub-int v0, v1, v3

    #@e
    .line 104
    .local v0, "left":I
    if-nez p1, :cond_0

    #@10
    monitor-exit v2

    #@11
    .line 105
    return v0

    #@12
    .line 107
    :cond_0
    if-nez v0, :cond_1

    #@14
    .line 108
    :try_start_1
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 109
    return v4

    #@1c
    .line 111
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    .line 112
    add-int/lit8 v1, v0, -0x1

    #@23
    monitor-exit v2

    #@24
    return v1

    #@25
    .line 102
    .end local v0    # "left":I
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method private cmdDefault(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 178
    array-length v0, p3

    #@1
    if-nez v0, :cond_0

    #@3
    .line 179
    const-string/jumbo v0, "No command"

    #@6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 180
    return-void

    #@a
    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "Unknown command "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, " "

    #@19
    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 177
    return-void
.end method

.method private cmdFlush(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->flushEncodedOutput()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 140
    return-void
.end method

.method private cmdList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 150
    iget-object v5, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 151
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@6
    iget-object v4, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    #@8
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v3, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    monitor-exit v5

    #@c
    .line 154
    array-length v4, p3

    #@d
    if-le v4, v6, :cond_1

    #@f
    aget-object v4, p3, v6

    #@11
    const-string/jumbo v5, "proto"

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 155
    invoke-static {v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@1d
    move-result-object v5

    #@1e
    const/4 v4, 0x0

    #@1f
    array-length v6, v5

    #@20
    :goto_0
    if-ge v4, v6, :cond_0

    #@22
    aget-object v1, v5, v4

    #@24
    .line 156
    .local v1, "ev":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    invoke-virtual {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->toString()Ljava/lang/String;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    .line 155
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 150
    .end local v1    # "ev":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .end local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit v5

    #@30
    throw v4

    #@31
    .line 158
    .restart local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    :cond_0
    return-void

    #@32
    .line 161
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v2

    #@36
    .local v2, "ev$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_2

    #@3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/net/ConnectivityMetricsEvent;

    #@42
    .line 162
    .local v0, "ev":Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {v0}, Landroid/net/ConnectivityMetricsEvent;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    goto :goto_1

    #@4a
    .line 148
    .end local v0    # "ev":Landroid/net/ConnectivityMetricsEvent;
    :cond_2
    return-void
.end method

.method private cmdStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 168
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Buffered events: "

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Buffer capacity: "

    #@28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    #@2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "Dropped events: "

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    #@47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    monitor-exit v1

    #@53
    .line 172
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDnsListener:Lcom/android/server/connectivity/DnsEventListenerService;

    #@55
    if-eqz v0, :cond_0

    #@57
    .line 173
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDnsListener:Lcom/android/server/connectivity/DnsEventListenerService;

    #@59
    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/DnsEventListenerService;->dump(Ljava/io/PrintWriter;)V

    #@5c
    .line 166
    :cond_0
    return-void

    #@5d
    .line 167
    :catchall_0
    move-exception v0

    #@5e
    monitor-exit v1

    #@5f
    throw v0
.end method

.method private flushEncodedOutput()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 119
    iget-object v5, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 120
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    #@5
    .line 121
    .local v3, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    #@7
    .line 122
    .local v1, "dropped":I
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v5

    #@b
    .line 127
    :try_start_1
    invoke-static {v1, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->serialize(ILjava/util/List;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@e
    move-result-object v0

    #@f
    .line 133
    .local v0, "data":[B
    const/4 v4, 0x0

    #@10
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    return-object v4

    #@15
    .line 119
    .end local v0    # "data":[B
    .end local v1    # "dropped":I
    .end local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    :catchall_0
    move-exception v4

    #@16
    monitor-exit v5

    #@17
    throw v4

    #@18
    .line 128
    .restart local v1    # "dropped":I
    .restart local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    :catch_0
    move-exception v2

    #@19
    .line 129
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    #@1b
    const-string/jumbo v5, "could not serialize events"

    #@1e
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 130
    const-string/jumbo v4, ""

    #@24
    return-object v4
.end method

.method private initBuffer()V
    .locals 3

    #@0
    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 94
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    #@6
    .line 95
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->bufferCapacity()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    #@c
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    #@e
    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    #@10
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 92
    return-void

    #@17
    .line 93
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method


# virtual methods
.method public bufferCapacity()I
    .locals 1

    #@0
    .prologue
    .line 89
    const/16 v0, 0x7d0

    #@2
    return v0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 78
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 80
    new-instance v0, Lcom/android/server/connectivity/DnsEventListenerService;

    #@6
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/DnsEventListenerService;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDnsListener:Lcom/android/server/connectivity/DnsEventListenerService;

    #@f
    .line 82
    const-string/jumbo v0, "connmetrics"

    #@12
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    #@14
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@17
    .line 83
    const-string/jumbo v0, "dns_listener"

    #@1a
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDnsListener:Lcom/android/server/connectivity/DnsEventListenerService;

    #@1c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1f
    .line 77
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    #@0
    .prologue
    .line 72
    return-void
.end method
