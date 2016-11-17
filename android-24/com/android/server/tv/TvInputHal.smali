.class final Lcom/android/server/tv/TvInputHal;
.super Ljava/lang/Object;
.source "TvInputHal.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHal$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ERROR_NO_INIT:I = -0x1

.field public static final ERROR_STALE_CONFIG:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x3

.field public static final EVENT_DEVICE_AVAILABLE:I = 0x1

.field public static final EVENT_DEVICE_UNAVAILABLE:I = 0x2

.field public static final EVENT_FIRST_FRAME_CAPTURED:I = 0x4

.field public static final EVENT_STREAM_CONFIGURATION_CHANGED:I = 0x3

.field public static final SUCCESS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/server/tv/TvInputHal$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPtr:J

.field private final mStreamConfigGenerations:Landroid/util/SparseIntArray;

.field private final mStreamConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    const-class v0, Lcom/android/server/tv/TvInputHal;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    #@8
    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHal$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/tv/TvInputHal$Callback;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    #@a
    .line 66
    const-wide/16 v0, 0x0

    #@c
    iput-wide v0, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    #@e
    .line 69
    new-instance v0, Landroid/util/SparseIntArray;

    #@10
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    #@15
    .line 70
    new-instance v0, Landroid/util/SparseArray;

    #@17
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    #@1c
    .line 154
    new-instance v0, Ljava/util/LinkedList;

    #@1e
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mPendingMessageQueue:Ljava/util/Queue;

    #@23
    .line 73
    iput-object p1, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    #@25
    .line 74
    new-instance v0, Landroid/os/Handler;

    #@27
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    #@2a
    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    #@2c
    .line 72
    return-void
.end method

.method private deviceAvailableFromNative(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 132
    return-void
.end method

.method private deviceUnavailableFromNative(I)V
    .locals 3
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 139
    return-void
.end method

.method private firstFrameCapturedFromNative(II)V
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "streamId"    # I

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    #@2
    .line 149
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x3

    #@5
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 147
    return-void
.end method

.method private static native nativeAddOrUpdateStream(JIILandroid/view/Surface;)I
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;
.end method

.method private native nativeOpen(Landroid/os/MessageQueue;)J
.end method

.method private static native nativeRemoveStream(JII)I
.end method

.method private retrieveStreamConfigsLocked(I)V
    .locals 4
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, 0x1

    #@9
    .line 127
    .local v0, "generation":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    #@b
    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    #@d
    invoke-static {v2, v3, p1, v0}, Lcom/android/server/tv/TvInputHal;->nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 128
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    #@16
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@19
    .line 125
    return-void
.end method

.method private streamConfigsChangedFromNative(I)V
    .locals 3
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 143
    return-void
.end method


# virtual methods
.method public addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I
    .locals 9
    .param p1, "deviceId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "streamConfig"    # Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 84
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 85
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    const-wide/16 v6, 0x0

    #@8
    cmp-long v1, v4, v6

    #@a
    if-nez v1, :cond_0

    #@c
    .line 86
    const/4 v1, -0x1

    #@d
    monitor-exit v2

    #@e
    return v1

    #@f
    .line 88
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    #@11
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@15
    move-result v0

    #@16
    .line 89
    .local v0, "generation":I
    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getGeneration()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result v1

    #@1a
    if-eq v0, v1, :cond_1

    #@1c
    .line 90
    const/4 v1, -0x2

    #@1d
    monitor-exit v2

    #@1e
    return v1

    #@1f
    .line 92
    :cond_1
    :try_start_2
    iget-wide v4, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    #@21
    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    #@24
    move-result v1

    #@25
    invoke-static {v4, v5, p1, v1, p2}, Lcom/android/server/tv/TvInputHal;->nativeAddOrUpdateStream(JIILandroid/view/Surface;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_2

    #@2b
    monitor-exit v2

    #@2c
    .line 93
    return v8

    #@2d
    .line 95
    :cond_2
    const/4 v1, -0x3

    #@2e
    monitor-exit v2

    #@2f
    return v1

    #@30
    .line 84
    .end local v0    # "generation":I
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method

.method public close()V
    .locals 6

    #@0
    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 119
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    #@5
    const-wide/16 v4, 0x0

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 120
    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    #@d
    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputHal;->nativeClose(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 117
    return-void

    #@12
    .line 118
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 158
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v4, :pswitch_data_0

    #@5
    .line 204
    sget-object v4, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "Unknown event: "

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 205
    const/4 v4, 0x0

    #@1f
    return v4

    #@20
    .line 161
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22
    check-cast v2, Landroid/media/tv/TvInputHardwareInfo;

    #@24
    .line 162
    .local v2, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v5, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    #@26
    monitor-enter v5

    #@27
    .line 163
    :try_start_0
    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@2a
    move-result v4

    #@2b
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    #@2e
    .line 167
    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@33
    move-result v6

    #@34
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, [Landroid/media/tv/TvStreamConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .local v0, "configs":[Landroid/media/tv/TvStreamConfig;
    monitor-exit v5

    #@3b
    .line 169
    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    #@3d
    invoke-interface {v4, v2, v0}, Lcom/android/server/tv/TvInputHal$Callback;->onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V

    #@40
    .line 208
    .end local v0    # "configs":[Landroid/media/tv/TvStreamConfig;
    .end local v2    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :goto_0
    const/4 v4, 0x1

    #@41
    return v4

    #@42
    .line 162
    .restart local v2    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :catchall_0
    move-exception v4

    #@43
    monitor-exit v5

    #@44
    throw v4

    #@45
    .line 174
    .end local v2    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@47
    .line 178
    .local v1, "deviceId":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    #@49
    invoke-interface {v4, v1}, Lcom/android/server/tv/TvInputHal$Callback;->onDeviceUnavailable(I)V

    #@4c
    goto :goto_0

    #@4d
    .line 184
    .end local v1    # "deviceId":I
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4f
    .line 185
    .restart local v1    # "deviceId":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    #@51
    monitor-enter v5

    #@52
    .line 189
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    #@55
    .line 190
    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    #@57
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, [Landroid/media/tv/TvStreamConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5d
    .restart local v0    # "configs":[Landroid/media/tv/TvStreamConfig;
    monitor-exit v5

    #@5e
    .line 192
    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    #@60
    invoke-interface {v4, v1, v0}, Lcom/android/server/tv/TvInputHal$Callback;->onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;)V

    #@63
    goto :goto_0

    #@64
    .line 185
    .end local v0    # "configs":[Landroid/media/tv/TvStreamConfig;
    :catchall_1
    move-exception v4

    #@65
    monitor-exit v5

    #@66
    throw v4

    #@67
    .line 197
    .end local v1    # "deviceId":I
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@69
    .line 198
    .restart local v1    # "deviceId":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@6b
    .line 199
    .local v3, "streamId":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    #@6d
    invoke-interface {v4, v1, v3}, Lcom/android/server/tv/TvInputHal$Callback;->onFirstFrameCaptured(II)V

    #@70
    goto :goto_0

    #@71
    .line 158
    nop

    #@72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init()V
    .locals 4

    #@0
    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    #@5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@c
    move-result-object v0

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputHal;->nativeOpen(Landroid/os/MessageQueue;)J

    #@10
    move-result-wide v2

    #@11
    iput-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 77
    return-void

    #@15
    .line 78
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public removeStream(ILandroid/media/tv/TvStreamConfig;)I
    .locals 9
    .param p1, "deviceId"    # I
    .param p2, "streamConfig"    # Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 101
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 102
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    const-wide/16 v6, 0x0

    #@8
    cmp-long v1, v4, v6

    #@a
    if-nez v1, :cond_0

    #@c
    .line 103
    const/4 v1, -0x1

    #@d
    monitor-exit v2

    #@e
    return v1

    #@f
    .line 105
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    #@11
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@15
    move-result v0

    #@16
    .line 106
    .local v0, "generation":I
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getGeneration()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result v1

    #@1a
    if-eq v0, v1, :cond_1

    #@1c
    .line 107
    const/4 v1, -0x2

    #@1d
    monitor-exit v2

    #@1e
    return v1

    #@1f
    .line 109
    :cond_1
    :try_start_2
    iget-wide v4, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    #@21
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    #@24
    move-result v1

    #@25
    invoke-static {v4, v5, p1, v1}, Lcom/android/server/tv/TvInputHal;->nativeRemoveStream(JII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_2

    #@2b
    monitor-exit v2

    #@2c
    .line 110
    return v8

    #@2d
    .line 112
    :cond_2
    const/4 v1, -0x3

    #@2e
    monitor-exit v2

    #@2f
    return v1

    #@30
    .line 101
    .end local v0    # "generation":I
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method
