.class public Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAfModePrevious:Ljava/lang/String;

.field private mAfRun:I

.field private mAfState:I

.field private mAfStatePrevious:I

.field private final mCamera:Landroid/hardware/Camera;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "LegacyFocusStateMapper"

    #@3
    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    #@5
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 45
    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    #@6
    .line 46
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    #@9
    .line 49
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    #@10
    .line 51
    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    #@12
    .line 53
    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    #@14
    .line 63
    const-string/jumbo v0, "camera must not be null"

    #@17
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/hardware/Camera;

    #@1d
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    #@1f
    .line 62
    return-void
.end method

.method private static afStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "afState"    # I

    #@0
    .prologue
    .line 302
    packed-switch p0, :pswitch_data_0

    #@3
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "UNKNOWN("

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, ")"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 304
    :pswitch_0
    const-string/jumbo v0, "ACTIVE_SCAN"

    #@22
    return-object v0

    #@23
    .line 306
    :pswitch_1
    const-string/jumbo v0, "FOCUSED_LOCKED"

    #@26
    return-object v0

    #@27
    .line 308
    :pswitch_2
    const-string/jumbo v0, "INACTIVE"

    #@2a
    return-object v0

    #@2b
    .line 310
    :pswitch_3
    const-string/jumbo v0, "NOT_FOCUSED_LOCKED"

    #@2e
    return-object v0

    #@2f
    .line 312
    :pswitch_4
    const-string/jumbo v0, "PASSIVE_FOCUSED"

    #@32
    return-object v0

    #@33
    .line 314
    :pswitch_5
    const-string/jumbo v0, "PASSIVE_SCAN"

    #@36
    return-object v0

    #@37
    .line 316
    :pswitch_6
    const-string/jumbo v0, "PASSIVE_UNFOCUSED"

    #@3a
    return-object v0

    #@3b
    .line 302
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@0
    .prologue
    .line 284
    const-string/jumbo v1, "result must not be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 287
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 288
    :try_start_0
    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v0, "newAfState":I
    monitor-exit v1

    #@c
    .line 296
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    #@e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@15
    .line 298
    iput v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    #@17
    .line 283
    return-void

    #@18
    .line 287
    .end local v0    # "newAfState":I
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v1

    #@1a
    throw v2
.end method

.method public processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 82
    const-string/jumbo v6, "captureRequest must not be null"

    #@4
    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 87
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    #@9
    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v7

    #@d
    .line 87
    invoke-static {p1, v6, v7}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Ljava/lang/Integer;

    #@13
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v3

    #@17
    .line 90
    .local v3, "afTrigger":I
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 92
    .local v0, "afMode":Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    #@1d
    invoke-static {v6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_0

    #@23
    .line 100
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    #@25
    monitor-enter v7

    #@26
    .line 101
    :try_start_0
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    #@28
    add-int/lit8 v6, v6, 0x1

    #@2a
    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    #@2c
    .line 102
    const/4 v6, 0x0

    #@2d
    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v7

    #@30
    .line 104
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    #@32
    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V

    #@35
    .line 107
    :cond_0
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    #@37
    .line 113
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    #@39
    monitor-enter v6

    #@3a
    .line 114
    :try_start_1
    iget v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3c
    .local v4, "currentAfRun":I
    monitor-exit v6

    #@3d
    .line 117
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;

    #@3f
    invoke-direct {v1, p0, v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    #@42
    .line 160
    .local v1, "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    const-string/jumbo v6, "auto"

    #@45
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v6

    #@49
    if-eqz v6, :cond_4

    #@4b
    .line 165
    :cond_1
    :goto_0
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    #@4d
    invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    #@50
    .line 171
    :cond_2
    packed-switch v3, :pswitch_data_0

    #@53
    .line 269
    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    #@55
    new-instance v7, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v8, "processRequestTriggers - ignoring unknown control.afTrigger = "

    #@5d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 81
    :cond_3
    :goto_1
    :pswitch_0
    return-void

    #@6d
    .line 100
    .end local v1    # "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    .end local v4    # "currentAfRun":I
    :catchall_0
    move-exception v6

    #@6e
    monitor-exit v7

    #@6f
    throw v6

    #@70
    .line 113
    :catchall_1
    move-exception v7

    #@71
    monitor-exit v6

    #@72
    throw v7

    #@73
    .line 160
    .restart local v1    # "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    .restart local v4    # "currentAfRun":I
    :cond_4
    const-string/jumbo v6, "macro"

    #@76
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v6

    #@7a
    if-nez v6, :cond_1

    #@7c
    const-string/jumbo v6, "continuous-picture"

    #@7f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v6

    #@83
    if-nez v6, :cond_1

    #@85
    const-string/jumbo v6, "continuous-video"

    #@88
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v6

    #@8c
    if-eqz v6, :cond_2

    #@8e
    goto :goto_0

    #@8f
    .line 175
    :pswitch_1
    const-string/jumbo v6, "auto"

    #@92
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v6

    #@96
    if-eqz v6, :cond_6

    #@98
    .line 178
    :cond_5
    const/4 v2, 0x3

    #@99
    .line 190
    .local v2, "afStateAfterStart":I
    :goto_2
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    #@9b
    monitor-enter v7

    #@9c
    .line 191
    :try_start_2
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    #@9e
    add-int/lit8 v4, v6, 0x1

    #@a0
    .end local v4    # "currentAfRun":I
    iput v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    #@a2
    .line 192
    .restart local v4    # "currentAfRun":I
    iput v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@a4
    monitor-exit v7

    #@a5
    .line 201
    if-eqz v2, :cond_3

    #@a7
    .line 205
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    #@a9
    new-instance v7, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;

    #@ab
    invoke-direct {v7, p0, v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    #@ae
    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    #@b1
    goto :goto_1

    #@b2
    .line 175
    .end local v2    # "afStateAfterStart":I
    :cond_6
    const-string/jumbo v6, "macro"

    #@b5
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v6

    #@b9
    if-nez v6, :cond_5

    #@bb
    const-string/jumbo v6, "continuous-picture"

    #@be
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v6

    #@c2
    if-eqz v6, :cond_8

    #@c4
    .line 182
    :cond_7
    const/4 v2, 0x1

    #@c5
    .line 183
    .restart local v2    # "afStateAfterStart":I
    goto :goto_2

    #@c6
    .line 175
    .end local v2    # "afStateAfterStart":I
    :cond_8
    const-string/jumbo v6, "continuous-video"

    #@c9
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v6

    #@cd
    if-nez v6, :cond_7

    #@cf
    .line 186
    const/4 v2, 0x0

    #@d0
    .restart local v2    # "afStateAfterStart":I
    goto :goto_2

    #@d1
    .line 190
    .end local v4    # "currentAfRun":I
    :catchall_2
    move-exception v6

    #@d2
    monitor-exit v7

    #@d3
    throw v6

    #@d4
    .line 248
    .end local v2    # "afStateAfterStart":I
    .restart local v4    # "currentAfRun":I
    :pswitch_2
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    #@d6
    monitor-enter v7

    #@d7
    .line 251
    :try_start_3
    iget-object v8, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    #@d9
    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@da
    .line 252
    :try_start_4
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    #@dc
    add-int/lit8 v5, v6, 0x1

    #@de
    iput v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    #@e0
    .line 253
    .local v5, "updatedAfRun":I
    const/4 v6, 0x0

    #@e1
    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@e3
    :try_start_5
    monitor-exit v8

    #@e4
    .line 256
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    #@e6
    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@e9
    monitor-exit v7

    #@ea
    goto :goto_1

    #@eb
    .line 251
    .end local v5    # "updatedAfRun":I
    :catchall_3
    move-exception v6

    #@ec
    :try_start_6
    monitor-exit v8

    #@ed
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@ee
    .line 248
    :catchall_4
    move-exception v6

    #@ef
    monitor-exit v7

    #@f0
    throw v6

    #@f1
    .line 171
    nop

    #@f2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
