.class public Lcom/android/internal/os/CachedDeviceState;
.super Ljava/lang/Object;
.source "CachedDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;,
        Lcom/android/internal/os/CachedDeviceState$Readonly;
    }
.end annotation


# instance fields
.field private volatile blacklist mCharging:Z

.field private final blacklist mOnBatteryStopwatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mScreenInteractive:Z

.field private final blacklist mStopwatchesLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCharging(Lcom/android/internal/os/CachedDeviceState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnBatteryStopwatches(Lcom/android/internal/os/CachedDeviceState;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenInteractive(Lcom/android/internal/os/CachedDeviceState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopwatchesLock(Lcom/android/internal/os/CachedDeviceState;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(ZZ)V
    .registers 4
    .param p1, "isCharging"    # Z
    .param p2, "isScreenInteractive"    # Z

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    .line 48
    iput-boolean p1, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    .line 49
    iput-boolean p2, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    .line 50
    return-void
.end method

.method private blacklist updateStopwatches(Z)V
    .registers 6
    .param p1, "shouldStart"    # Z

    .line 64
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 66
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_28

    .line 67
    if-eqz p1, :cond_1a

    .line 68
    iget-object v3, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-static {v3}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->-$$Nest$mstart(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V

    goto :goto_25

    .line 70
    :cond_1a
    iget-object v3, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-static {v3}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->-$$Nest$mstop(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V

    .line 66
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 73
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_28
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method


# virtual methods
.method public blacklist getReadonlyClient()Lcom/android/internal/os/CachedDeviceState$Readonly;
    .registers 2

    .line 77
    new-instance v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-direct {v0, p0}, Lcom/android/internal/os/CachedDeviceState$Readonly;-><init>(Lcom/android/internal/os/CachedDeviceState;)V

    return-object v0
.end method

.method public blacklist setCharging(Z)V
    .registers 3
    .param p1, "charging"    # Z

    .line 57
    iget-boolean v0, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    if-eq v0, p1, :cond_b

    .line 58
    iput-boolean p1, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    .line 59
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/CachedDeviceState;->updateStopwatches(Z)V

    .line 61
    :cond_b
    return-void
.end method

.method public blacklist setScreenInteractive(Z)V
    .registers 2
    .param p1, "screenInteractive"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    .line 54
    return-void
.end method
