.class public Lcom/android/internal/telephony/satellite/DemoSimulator;
.super Lcom/android/internal/telephony/StateMachine;
.source "DemoSimulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;,
        Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;,
        Lcom/android/internal/telephony/satellite/DemoSimulator$ConnectedState;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_DEVICE_ALIGNED:I = 0x4

.field protected static final blacklist EVENT_DEVICE_NOT_ALIGNED:I = 0x5

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/DemoSimulator;


# instance fields
.field private final blacklist mConnectedState:Lcom/android/internal/telephony/satellite/DemoSimulator$ConnectedState;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mISatelliteListener:Landroid/telephony/satellite/stub/ISatelliteListener;

.field private blacklist mIsAligned:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNotConnectedState:Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;

.field private final blacklist mPowerOffState:Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;

.field private final blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/satellite/DemoSimulator;)Lcom/android/internal/telephony/satellite/DemoSimulator$ConnectedState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mConnectedState:Lcom/android/internal/telephony/satellite/DemoSimulator$ConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmISatelliteListener(Lcom/android/internal/telephony/satellite/DemoSimulator;)Landroid/telephony/satellite/stub/ISatelliteListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mISatelliteListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAligned(Lcom/android/internal/telephony/satellite/DemoSimulator;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mIsAligned:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/DemoSimulator;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/DemoSimulator;)Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mNotConnectedState:Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/DemoSimulator;)Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mPowerOffState:Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/DemoSimulator;)Lcom/android/internal/telephony/satellite/SatelliteController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    return-object p0
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .registers 7

    .line 90
    const-string v0, "DemoSimulator"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 50
    new-instance p2, Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;-><init>(Lcom/android/internal/telephony/satellite/DemoSimulator;Lcom/android/internal/telephony/satellite/DemoSimulator-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mPowerOffState:Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;

    .line 51
    new-instance v1, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;-><init>(Lcom/android/internal/telephony/satellite/DemoSimulator;Lcom/android/internal/telephony/satellite/DemoSimulator-IA;)V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mNotConnectedState:Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;

    .line 52
    new-instance v2, Lcom/android/internal/telephony/satellite/DemoSimulator$ConnectedState;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator$ConnectedState;-><init>(Lcom/android/internal/telephony/satellite/DemoSimulator;Lcom/android/internal/telephony/satellite/DemoSimulator-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mConnectedState:Lcom/android/internal/telephony/satellite/DemoSimulator$ConnectedState;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mIsAligned:Z

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mContext:Landroid/content/Context;

    .line 93
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 94
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 97
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->start()V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/android/internal/telephony/satellite/DemoSimulator;I)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$1200(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1300(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1400(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1500(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1600(Lcom/android/internal/telephony/satellite/DemoSimulator;I)Z
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1700(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1800(Lcom/android/internal/telephony/satellite/DemoSimulator;I)Z
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1900(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$2000(Lcom/android/internal/telephony/satellite/DemoSimulator;I)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$700(Lcom/android/internal/telephony/satellite/DemoSimulator;I)Z
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$800(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$900(Lcom/android/internal/telephony/satellite/DemoSimulator;I)Z
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/DemoSimulator;
    .registers 2

    .line 62
    sget-object v0, Lcom/android/internal/telephony/satellite/DemoSimulator;->sInstance:Lcom/android/internal/telephony/satellite/DemoSimulator;

    if-nez v0, :cond_b

    .line 63
    const-string v0, "DemoSimulator"

    const-string v1, "DemoSimulator was not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/satellite/DemoSimulator;->sInstance:Lcom/android/internal/telephony/satellite/DemoSimulator;

    return-object v0
.end method

.method public static blacklist make(Landroid/content/Context;Lcom/android/internal/telephony/satellite/SatelliteController;)Lcom/android/internal/telephony/satellite/DemoSimulator;
    .registers 4

    .line 76
    sget-object v0, Lcom/android/internal/telephony/satellite/DemoSimulator;->sInstance:Lcom/android/internal/telephony/satellite/DemoSimulator;

    if-nez v0, :cond_f

    .line 77
    new-instance v0, Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/telephony/satellite/DemoSimulator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/satellite/SatelliteController;)V

    sput-object v0, Lcom/android/internal/telephony/satellite/DemoSimulator;->sInstance:Lcom/android/internal/telephony/satellite/DemoSimulator;

    .line 79
    :cond_f
    sget-object p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->sInstance:Lcom/android/internal/telephony/satellite/DemoSimulator;

    return-object p0
.end method


# virtual methods
.method public blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V
    .registers 4

    const/4 p1, 0x0

    .line 293
    :try_start_1
    invoke-interface {p2, p1}, Landroid/telephony/IIntegerConsumer;->accept(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p1

    .line 295
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableTerrestrialNetworkScanWhileSatelliteModeIsOn: RemoteException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist getWhatToString(I)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2d

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2a

    const/4 p0, 0x3

    if-eq p1, p0, :cond_27

    const/4 p0, 0x4

    if-eq p1, p0, :cond_24

    const/4 p0, 0x5

    if-eq p1, p0, :cond_21

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN EVENT "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :cond_21
    const-string p0, "EVENT_DEVICE_NOT_ALIGNED"

    return-object p0

    .line 263
    :cond_24
    const-string p0, "EVENT_DEVICE_ALIGNED"

    return-object p0

    .line 260
    :cond_27
    const-string p0, "EVENT_DEVICE_ALIGNED_WITH_SATELLITE"

    return-object p0

    .line 257
    :cond_2a
    const-string p0, "EVENT_SATELLITE_MODE_OFF"

    return-object p0

    .line 254
    :cond_2d
    const-string p0, "EVENT_SATELLITE_MODE_ON"

    return-object p0
.end method

.method public blacklist onSatelliteModeOff()V
    .registers 2

    const/4 v0, 0x2

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public blacklist onSatelliteModeOn()V
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isDemoModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_c
    return-void
.end method

.method public blacklist setDeviceAlignedWithSatellite(Z)V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isDemoModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 324
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mIsAligned:Z

    .line 325
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 327
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public blacklist setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator;->mISatelliteListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    return-void
.end method
