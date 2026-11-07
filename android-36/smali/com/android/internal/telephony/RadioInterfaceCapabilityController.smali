.class public Lcom/android/internal/telephony/RadioInterfaceCapabilityController;
.super Landroid/os/Handler;
.source "RadioInterfaceCapabilityController.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RadioInterfaceCapabilityController"

.field private static blacklist sInstance:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;


# instance fields
.field private final blacklist mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mLockRadioInterfaceCapabilities:Ljava/lang/Object;

.field private final blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private blacklist mRadioInterfaceCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Looper;)V
    .registers 4

    .line 94
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mLockRadioInterfaceCapabilities:Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 96
    iput-object p2, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->register()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/RadioInterfaceCapabilityController;
    .registers 2

    .line 84
    sget-object v0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->sInstance:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    if-nez v0, :cond_b

    .line 85
    sget-object v0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->sInstance:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    return-object v0
.end method

.method public static blacklist init(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/RadioInterfaceCapabilityController;
    .registers 5

    .line 58
    const-class v0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->sInstance:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    if-nez v1, :cond_1f

    .line 66
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RHC"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v2, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    .line 71
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, p1, v1}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;-><init>(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Looper;)V

    sput-object v2, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->sInstance:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    goto :goto_37

    :catchall_1d
    move-exception p0

    goto :goto_3b

    .line 74
    :cond_1f
    sget-object p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() called multiple times!  sInstance = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->sInstance:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_37
    sget-object p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->sInstance:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    monitor-exit v0

    return-object p0

    .line 77
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_1d

    throw p0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 194
    sget-object v0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 198
    sget-object v0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist register()V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_10

    .line 162
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioInterfaceCapabilities:Ljava/util/Set;

    return-void

    :cond_10
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist requestCapabilities()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioInterfaceCapabilities:Ljava/util/Set;

    if-eqz v0, :cond_5

    return-void

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RadioConfig;->getHalDeviceCapabilities(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist setupCapabilities(Landroid/os/AsyncResult;)V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioInterfaceCapabilities:Ljava/util/Set;

    if-nez v0, :cond_50

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mLockRadioInterfaceCapabilities:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioInterfaceCapabilities:Ljava/util/Set;

    if-nez v1, :cond_47

    .line 139
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_28

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupRadioInterfaceCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_4e

    .line 142
    :cond_28
    :goto_28
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_33

    .line 143
    const-string p0, "setupRadioInterfaceCapabilities: ar.result is null"

    invoke-static {p0}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->loge(Ljava/lang/String;)V

    .line 144
    monitor-exit v0

    return-void

    .line 146
    :cond_33
    const-string v1, "setupRadioInterfaceCapabilities: mRadioInterfaceCapabilities now setup"

    invoke-static {v1}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->log(Ljava/lang/String;)V

    .line 148
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    .line 149
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioInterfaceCapabilities:Ljava/util/Set;

    if-eqz p1, :cond_47

    .line 151
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->unregister()V

    .line 154
    :cond_47
    iget-object p0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mLockRadioInterfaceCapabilities:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 155
    monitor-exit v0

    return-void

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_26

    throw p0

    :cond_50
    return-void
.end method

.method private blacklist unregister()V
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mRadioConfig="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCapabilities()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioInterfaceCapabilities:Ljava/util/Set;

    if-nez v0, :cond_36

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mLockRadioInterfaceCapabilities:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioInterfaceCapabilities:Ljava/util/Set;

    if-nez v1, :cond_32

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->requestCapabilities()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_20

    .line 118
    :try_start_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_22

    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mLockRadioInterfaceCapabilities:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_1f} :catch_22
    .catchall {:try_start_e .. :try_end_1f} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_34

    .line 124
    :catch_22
    :cond_22
    :goto_22
    :try_start_22
    iget-object v1, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioInterfaceCapabilities:Ljava/util/Set;

    if-nez v1, :cond_32

    .line 125
    const-string p0, "getRadioInterfaceCapabilities: Radio Capabilities not loaded in time"

    invoke-static {p0}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->loge(Ljava/lang/String;)V

    .line 127
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object p0

    .line 130
    :cond_32
    monitor-exit v0

    goto :goto_36

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_20

    throw p0

    .line 132
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->mRadioInterfaceCapabilities:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/16 v1, 0x64

    if-eq v0, v1, :cond_d

    return-void

    .line 181
    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->setupCapabilities(Landroid/os/AsyncResult;)V

    return-void

    .line 178
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->requestCapabilities()V

    return-void
.end method
