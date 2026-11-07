.class public Lcom/android/internal/telephony/metrics/DeviceStateHelper;
.super Ljava/lang/Object;
.source "DeviceStateHelper.java"


# instance fields
.field private blacklist mFoldState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$BHiZp1Avx9WTCtZLogEcm_3v30w(Lcom/android/internal/telephony/metrics/DeviceStateHelper;Landroid/hardware/devicestate/DeviceState;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->lambda$new$1(Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->mFoldState:I

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceStateHelperThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    .line 52
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v0, Lcom/android/internal/telephony/metrics/DeviceStateHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/metrics/DeviceStateHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/metrics/DeviceStateHelper;)V

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/hardware/devicestate/DeviceState;)V
    .registers 2

    .line 54
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->updateFoldState(I)V

    return-void
.end method

.method private blacklist updateFoldState(I)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    const/4 v1, 0x2

    if-eq p1, v0, :cond_16

    if-eq p1, v1, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->mFoldState:I

    goto :goto_1b

    .line 71
    :cond_f
    iput v0, p0, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->mFoldState:I

    goto :goto_1b

    :cond_12
    const/4 p1, 0x3

    .line 68
    iput p1, p0, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->mFoldState:I

    goto :goto_1b

    .line 65
    :cond_16
    iput v1, p0, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->mFoldState:I

    goto :goto_1b

    .line 62
    :cond_19
    iput v0, p0, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->mFoldState:I

    .line 76
    :goto_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->updateServiceStateStats()V

    return-void
.end method

.method private blacklist updateServiceStateStats()V
    .registers 6

    .line 80
    invoke-static {}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getPhonesIfAny()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 81
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceStateStats()Lcom/android/internal/telephony/metrics/ServiceStateStats;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->mFoldState:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onFoldStateChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method


# virtual methods
.method public blacklist getFoldState()I
    .registers 1

    .line 86
    iget p0, p0, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->mFoldState:I

    return p0
.end method
