.class public Lcom/android/server/connectivity/MetricsLoggerService;
.super Lcom/android/server/SystemService;
.source "MetricsLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final EVENTS_NOTIFICATION_THRESHOLD:I

.field private final MAX_NUMBER_OF_EVENTS:I

.field private final THROTTLING_MAX_NUMBER_OF_MESSAGES_PER_COMPONENT:I

.field private final THROTTLING_TIME_INTERVAL_MILLIS:J

.field final mBinder:Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;

.field private mEventCounter:I

.field private final mEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastEventReference:J

.field private final mThrottlingCounters:[I

.field private mThrottlingIntervalBoundaryMillis:J


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/connectivity/MetricsLoggerService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/MetricsLoggerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEventCounter:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEvents:Ljava/util/ArrayDeque;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/MetricsLoggerService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mLastEventReference:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingCounters:[I

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/MetricsLoggerService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingIntervalBoundaryMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/MetricsLoggerService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEventCounter:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/MetricsLoggerService;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mLastEventReference:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/MetricsLoggerService;Landroid/net/ConnectivityMetricsEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/net/ConnectivityMetricsEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/MetricsLoggerService;->addEvent(Landroid/net/ConnectivityMetricsEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/MetricsLoggerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/MetricsLoggerService;->enforceConnectivityInternalPermission()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/MetricsLoggerService;->enforceDumpPermission()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/MetricsLoggerService;J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/MetricsLoggerService;->resetThrottlingCounters(J)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "ConnectivityMetricsLoggerService"

    #@3
    sput-object v0, Lcom/android/server/connectivity/MetricsLoggerService;->TAG:Ljava/lang/String;

    #@5
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/16 v1, 0x3e8

    #@2
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@5
    .line 63
    const/16 v0, 0x12c

    #@7
    iput v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->EVENTS_NOTIFICATION_THRESHOLD:I

    #@9
    .line 64
    iput v1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->MAX_NUMBER_OF_EVENTS:I

    #@b
    .line 65
    iput v1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->THROTTLING_MAX_NUMBER_OF_MESSAGES_PER_COMPONENT:I

    #@d
    .line 66
    const-wide/32 v0, 0x36ee80

    #@10
    iput-wide v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->THROTTLING_TIME_INTERVAL_MILLIS:J

    #@12
    .line 68
    const/4 v0, 0x0

    #@13
    iput v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEventCounter:I

    #@15
    .line 78
    const-wide/16 v0, 0x0

    #@17
    iput-wide v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mLastEventReference:J

    #@19
    .line 81
    const/4 v0, 0x5

    #@1a
    new-array v0, v0, [I

    #@1c
    .line 80
    iput-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingCounters:[I

    #@1e
    .line 85
    new-instance v0, Ljava/util/ArrayDeque;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@23
    iput-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEvents:Ljava/util/ArrayDeque;

    #@25
    .line 122
    new-instance v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;

    #@27
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;-><init>(Lcom/android/server/connectivity/MetricsLoggerService;)V

    #@2a
    iput-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mBinder:Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;

    #@2c
    .line 44
    return-void
.end method

.method private addEvent(Landroid/net/ConnectivityMetricsEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/net/ConnectivityMetricsEvent;

    #@0
    .prologue
    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEvents:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x3e8

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 115
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEvents:Ljava/util/ArrayDeque;

    #@c
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    #@f
    goto :goto_0

    #@10
    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEvents:Ljava/util/ArrayDeque;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@15
    .line 109
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    #@0
    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/server/connectivity/MetricsLoggerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 89
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@7
    .line 90
    const-string/jumbo v2, "MetricsLoggerService"

    #@a
    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 87
    return-void
.end method

.method private enforceDumpPermission()V
    .locals 3

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/server/connectivity/MetricsLoggerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 95
    const-string/jumbo v1, "android.permission.DUMP"

    #@7
    .line 96
    const-string/jumbo v2, "MetricsLoggerService"

    #@a
    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 93
    return-void
.end method

.method private resetThrottlingCounters(J)V
    .locals 7
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingCounters:[I

    #@2
    monitor-enter v2

    #@3
    .line 101
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingCounters:[I

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 102
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingCounters:[I

    #@b
    const/4 v3, 0x0

    #@c
    aput v3, v1, v0

    #@e
    .line 101
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 105
    :cond_0
    const-wide/32 v4, 0x36ee80

    #@14
    add-long/2addr v4, p1

    #@15
    .line 104
    iput-wide v4, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingIntervalBoundaryMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 99
    return-void

    #@19
    .line 100
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 55
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 56
    sget-object v0, Lcom/android/server/connectivity/MetricsLoggerService;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 57
    const-string/jumbo v0, "connectivity_metrics_logger"

    #@f
    .line 58
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mBinder:Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;

    #@11
    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/MetricsLoggerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@14
    .line 54
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/MetricsLoggerService;->resetThrottlingCounters(J)V

    #@7
    .line 49
    return-void
.end method
