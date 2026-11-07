.class public Lcom/android/internal/telephony/RadioConfig;
.super Landroid/os/Handler;
.source "RadioConfig.java"


# static fields
.field private static blacklist sContext:Landroid/content/Context;

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sRadioConfig:Lcom/android/internal/telephony/RadioConfig;


# instance fields
.field private final blacklist mDefaultWorkSource:Landroid/os/WorkSource;

.field private final blacklist mDeviceNrCapabilities:[I

.field private final blacklist mIsMobileNetworkSupported:Z

.field private blacklist mMockModem:Lcom/android/internal/telephony/MockModem;

.field private final blacklist mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

.field private final blacklist mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSimultaneousCallingSupportStatusRegistrant:Lcom/android/internal/telephony/Registrant;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/HalVersion;)V
    .registers 6

    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->isMobileDataCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/RadioConfig;->mIsMobileNetworkSupported:Z

    .line 88
    new-instance v0, Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/RadioConfigProxy;-><init>(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/HalVersion;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    .line 89
    new-instance p2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x111027c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111027b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p2, :cond_51

    if-nez p1, :cond_51

    const/4 p1, 0x0

    .line 98
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mDeviceNrCapabilities:[I

    return-void

    .line 100
    :cond_51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_60

    const/4 p1, 0x1

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_60
    if-eqz p2, :cond_6a

    const/4 p1, 0x2

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_6a
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/RadioConfig$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/telephony/RadioConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mDeviceNrCapabilities:[I

    return-void
.end method

.method private blacklist clearRequestList(IZ)V
    .registers 9

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 161
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_22

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestList: mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_67

    :cond_22
    :goto_22
    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_60

    .line 167
    iget-object v3, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_56

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    :cond_56
    const/4 v4, 0x0

    .line 171
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 172
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 174
    :cond_60
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 175
    monitor-exit v0

    return-void

    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_20

    throw p0
.end method

.method private blacklist findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .registers 8

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_1f

    .line 351
    const-string v2, "RIL"

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const-wide/32 v4, 0x200000

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 353
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 355
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-object v1

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/RadioConfig;
    .registers 3

    .line 115
    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    if-eqz v1, :cond_b

    .line 120
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    goto :goto_13

    .line 117
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "RadioConfig.getInstance can\'t be called before make()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_9

    throw v1
.end method

.method private blacklist isMobileDataCapable(Landroid/content/Context;)Z
    .registers 2

    .line 82
    const-class p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_12

    .line 83
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 666
    const-string v0, "RadioConfig"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 670
    const-string v0, "RadioConfig"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Lcom/android/internal/telephony/HalVersion;)Lcom/android/internal/telephony/RadioConfig;
    .registers 4

    .line 128
    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    if-nez v1, :cond_14

    .line 132
    sput-object p0, Lcom/android/internal/telephony/RadioConfig;->sContext:Landroid/content/Context;

    .line 133
    new-instance v1, Lcom/android/internal/telephony/RadioConfig;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/RadioConfig;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/HalVersion;)V

    sput-object v1, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 134
    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    goto :goto_1c

    .line 130
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "RadioConfig.make() should only be called once"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_12

    throw p0
.end method

.method private blacklist obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .registers 7

    .line 335
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 336
    const-string p2, "RIL"

    iget p3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 337
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p3

    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const-wide/32 v1, 0x200000

    .line 336
    invoke-static {v1, v2, p2, p3, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 339
    iget-object p2, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p2

    .line 340
    :try_start_17
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    iget p3, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 341
    monitor-exit p2

    return-object p1

    :catchall_20
    move-exception p0

    monitor-exit p2
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p0
.end method

.method private blacklist resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    .line 183
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 185
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioConfig;->clearRequestList(IZ)V

    const/4 p1, 0x0

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    return-void
.end method

.method private blacklist updateRadioConfigProxy()V
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_1c

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/radio/config/IRadioConfig;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_22

    :cond_1c
    const/16 v1, 0x8

    .line 288
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_22
    if-eqz v0, :cond_2d

    .line 292
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    .line 293
    invoke-static {v0}, Landroid/hardware/radio/config/IRadioConfig$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfig;

    move-result-object v0

    .line 292
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RadioConfigProxy;->setAidl(Landroid/hardware/radio/config/IRadioConfig;)V

    .line 296
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5c

    .line 298
    :try_start_36
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    .line 299
    invoke-static {v1}, Landroid/hardware/radio/config/V1_3/IRadioConfig;->getService(Z)Landroid/hardware/radio/config/V1_3/IRadioConfig;

    move-result-object v3

    .line 298
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/RadioConfigProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/config/V1_1/IRadioConfig;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_41} :catch_42
    .catch Ljava/util/NoSuchElementException; {:try_start_36 .. :try_end_41} :catch_42

    goto :goto_5c

    :catch_42
    move-exception v0

    .line 301
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHidlRadioConfigProxy1_3: RadioConfigProxy getService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 306
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 308
    :try_start_64
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 309
    invoke-static {v1}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->getService(Z)Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/RadioConfigProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/config/V1_1/IRadioConfig;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6f} :catch_70
    .catch Ljava/util/NoSuchElementException; {:try_start_64 .. :try_end_6f} :catch_70

    goto :goto_8a

    :catch_70
    move-exception v0

    .line 311
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHidlRadioConfigProxy1_1: RadioConfigProxy getService | linkToDeath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 316
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 317
    const-string v0, "IRadioConfig <1.1 is no longer supported."

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 320
    :cond_97
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 322
    :try_start_9f
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RadioConfigProxy;->linkToDeath(J)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RadioConfigProxy;->setResponseFunctions(Lcom/android/internal/telephony/RadioConfig;)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_af} :catch_b0

    return-void

    .line 326
    :catch_b0
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    .line 327
    const-string p0, "RadioConfigProxy: failed to linkToDeath() or setResponseFunction()"

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 331
    :cond_ba
    const-string p0, "getRadioConfigProxy: mRadioConfigProxy == null"

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getDeviceNrCapabilities()[I
    .registers 1

    .line 662
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mDeviceNrCapabilities:[I

    return-object p0
.end method

.method public blacklist getHalDeviceCapabilities(Landroid/os/Message;)V
    .registers 5

    .line 623
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_6d

    .line 626
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz p1, :cond_32

    .line 629
    const-string p0, "RIL_REQUEST_GET_HAL_DEVICE_CAPABILITIES > REQUEST_NOT_SUPPORTED"

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->getFullCapabilitySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x6

    .line 635
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 631
    invoke-static {p1, p0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 636
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 639
    :cond_32
    const-string p0, "RIL_REQUEST_GET_HAL_DEVICE_CAPABILITIES > REQUEST_NOT_SUPPORTED on complete message not set."

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    return-void

    :cond_38
    const/16 v1, 0xdc

    .line 646
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 652
    :try_start_61
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->getHalDeviceCapabilities(I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_66} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_66} :catch_67

    return-void

    :catch_67
    move-exception p1

    .line 654
    const-string v0, "getHalDeviceCapabilities"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_6d
    return-void
.end method

.method public blacklist getPhoneCapability(Landroid/os/Message;)V
    .registers 6

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5b

    .line 513
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz p1, :cond_5b

    const/4 p0, 0x6

    .line 516
    invoke-static {p0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 515
    invoke-static {p1, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 517
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_26
    const/16 v0, 0xce

    .line 522
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 527
    :try_start_4f
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->getPhoneCapability(I)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_54} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception p1

    .line 529
    const-string v0, "getPhoneCapability"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public blacklist getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;
    .registers 5

    .line 199
    iget-boolean v0, p0, Lcom/android/internal/telephony/RadioConfig;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    if-eqz p1, :cond_12

    .line 203
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 202
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 204
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 206
    :cond_12
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    return-object p0

    .line 210
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 211
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    return-object p0

    .line 214
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioConfig;->updateRadioConfigProxy()V

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_3c

    .line 218
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 217
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 219
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 222
    :cond_3c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    return-object p0
.end method

.method public blacklist getSimSlotsStatus(Landroid/os/Message;)V
    .registers 5

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_40

    :cond_b
    const/16 v1, 0xc8

    .line 439
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 444
    :try_start_34
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->getSimSlotStatus(I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p1

    .line 446
    const-string v0, "getSimSlotsStatus"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_40
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_42

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: EVENT_HIDL_SERVICE_DEAD cookie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRadioConfigProxyCookie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 142
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 143
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-nez p1, :cond_64

    .line 144
    const-string p1, "EVENT_HIDL_SERVICE_DEAD"

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_42
    const/4 p1, 0x2

    if-ne v0, p1, :cond_64

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: EVENT_AIDL_SERVICE_DEAD mRadioConfigProxyCookie = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 148
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 149
    const-string p1, "EVENT_AIDL_SERVICE_DEAD"

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_64
    return-void
.end method

.method public blacklist isSetPreferredDataCommandSupported()Z
    .registers 2

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object p0

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist processResponse(Landroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 6

    .line 367
    iget v0, p1, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    .line 368
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    .line 369
    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->type:I

    if-eqz p1, :cond_1c

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 375
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-nez p0, :cond_3f

    .line 377
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "processResponse: Unexpected response! serial: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3f
    return-object p0
.end method

.method public blacklist processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 6

    .line 391
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 392
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 393
    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-eqz p1, :cond_1c

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 399
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-nez p0, :cond_3f

    .line 401
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "processResponse: Unexpected response! serial: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3f
    return-object p0
.end method

.method public blacklist processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 6

    .line 416
    iget v0, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->serial:I

    .line 417
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    .line 418
    iget p1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->type:I

    if-eqz p1, :cond_1c

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 423
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-nez p0, :cond_3f

    .line 425
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "processResponse: Unexpected response! serial: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3f
    return-object p0
.end method

.method public blacklist registerForSimSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 606
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForSimultaneousCallingSupportStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 599
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimultaneousCallingSupportStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_57

    .line 235
    const-string v2, "Overriding connected service to MockModemService"

    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 236
    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    .line 238
    new-instance v2, Lcom/android/internal/telephony/MockModem;

    sget-object v3, Lcom/android/internal/telephony/RadioConfig;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/internal/telephony/MockModem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    const/16 v3, 0x8

    .line 244
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/MockModem;->bindToMockModemService(I)V

    const/4 v2, 0x0

    move v4, v2

    .line 249
    :cond_1b
    iget-object v5, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v5

    add-int/2addr v4, v1

    if-nez v5, :cond_42

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") Mock RadioConfig"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    const-wide/16 v6, 0x12c

    .line 255
    :try_start_3f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_42

    :catch_42
    :cond_42
    if-nez v5, :cond_48

    const/16 v6, 0xa

    if-lt v4, v6, :cond_1b

    :cond_48
    if-nez v5, :cond_50

    .line 262
    const-string v1, "Mock RadioConfig bind fail"

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    move v1, v2

    :cond_50
    if-eqz v1, :cond_57

    .line 266
    const-string v2, "EVENT_HIDL_SERVICE_DEAD"

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_57
    if-eqz p1, :cond_5b

    if-nez v1, :cond_6d

    :cond_5b
    if-eqz v1, :cond_62

    .line 270
    const-string p1, "Unbinding to mock RadioConfig service"

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 272
    :cond_62
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-eqz p1, :cond_6d

    .line 273
    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    .line 274
    const-string p1, "EVENT_AIDL_SERVICE_DEAD"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6d
    return v1
.end method

.method public blacklist setNumOfLiveModems(ILandroid/os/Message;)V
    .registers 6

    .line 569
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_63

    .line 572
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz p2, :cond_63

    const/4 p0, 0x6

    .line 575
    invoke-static {p0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    const/4 p1, 0x0

    .line 574
    invoke-static {p2, p1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 576
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_26
    const/16 v1, 0xcf

    .line 581
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", numOfLiveModems = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 588
    :try_start_57
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->setNumOfLiveModems(II)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_5c} :catch_5d

    return-void

    :catch_5d
    move-exception p1

    .line 590
    const-string p2, "setNumOfLiveModems"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public blacklist setPreferredDataModem(ILandroid/os/Message;)V
    .registers 6

    const/4 v0, 0x0

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5d

    .line 457
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v2

    if-nez v2, :cond_20

    if-eqz p2, :cond_5d

    const/4 p0, 0x6

    .line 460
    invoke-static {p0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 459
    invoke-static {p2, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 461
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_20
    const/16 v0, 0xcc

    .line 466
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p2, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 472
    :try_start_51
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->setPreferredDataModem(II)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_56} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception p1

    .line 474
    const-string p2, "setPreferredDataModem"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public blacklist setSimSlotsMapping(Ljava/util/List;Landroid/os/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 548
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_48

    :cond_b
    const/16 v1, 0xc9

    .line 551
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 558
    :try_start_3c
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->setSimSlotsMapping(ILjava/util/List;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception p1

    .line 560
    const-string p2, "setSimSlotsMapping"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_48
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioConfig[mRadioConfigProxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist unregisterForSimSlotStatusChanged(Landroid/os/Handler;)V
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 614
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 615
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist updateSimultaneousCallingSupport(Landroid/os/Message;)V
    .registers 6

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5b

    .line 485
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz p1, :cond_5b

    const/4 p0, 0x6

    .line 488
    invoke-static {p0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 487
    invoke-static {p1, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 489
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_26
    const/16 v0, 0xfa

    .line 494
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 500
    :try_start_4f
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->updateSimultaneousCallingSupport(I)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_54} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception p1

    .line 502
    const-string v0, "updateSimultaneousCallingSupport"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5b
    :goto_5b
    return-void
.end method
