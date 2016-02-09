.class public Landroid/hardware/camera2/legacy/CameraDeviceState;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final NO_CAPTURE_ERROR:I = -0x1

.field private static final STATE_CAPTURING:I = 0x4

.field private static final STATE_CONFIGURING:I = 0x2

.field private static final STATE_ERROR:I = 0x0

.field private static final STATE_IDLE:I = 0x3

.field private static final STATE_UNCONFIGURED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraDeviceState"

.field private static final sStateNames:[Ljava/lang/String;


# instance fields
.field private mCurrentError:I

.field private mCurrentHandler:Landroid/os/Handler;

.field private mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

.field private mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

.field private mCurrentState:I


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/CameraDeviceState;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 52
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "ERROR"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "UNCONFIGURED"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "CONFIGURING"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "IDLE"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 53
    const-string/jumbo v1, "CAPTURING"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 52
    sput-object v0, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    #@23
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 55
    const/4 v0, 0x1

    #@5
    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@7
    .line 56
    const/4 v0, -0x1

    #@8
    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    #@a
    .line 58
    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@c
    .line 60
    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@e
    .line 61
    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@10
    .line 42
    return-void
.end method

.method private doStateTransition(I)V
    .locals 3
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 210
    const-wide/16 v0, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V

    #@6
    .line 209
    return-void
.end method

.method private doStateTransition(IJI)V
    .locals 8
    .param p1, "newState"    # I
    .param p2, "timestamp"    # J
    .param p4, "error"    # I

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x3

    #@3
    const/4 v4, 0x0

    #@4
    .line 214
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@6
    if-eq p1, v1, :cond_1

    #@8
    .line 215
    const-string/jumbo v0, "UNKNOWN"

    #@b
    .line 216
    .local v0, "stateName":Ljava/lang/String;
    if-ltz p1, :cond_0

    #@d
    sget-object v1, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    #@f
    array-length v1, v1

    #@10
    if-ge p1, v1, :cond_0

    #@12
    .line 217
    sget-object v1, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    #@14
    aget-object v0, v1, p1

    #@16
    .line 219
    :cond_0
    const-string/jumbo v1, "CameraDeviceState"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Legacy camera service transitioning to state "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 223
    .end local v0    # "stateName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    #@32
    if-eq p1, v5, :cond_2

    #@34
    .line 224
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@36
    if-eq v1, p1, :cond_2

    #@38
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 225
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@3e
    if-eqz v1, :cond_2

    #@40
    .line 226
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@42
    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$3;

    #@44
    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$3;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    #@47
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@4a
    .line 235
    :cond_2
    packed-switch p1, :pswitch_data_0

    #@4d
    .line 317
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@4f
    new-instance v2, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v3, "Transition to unknown state: "

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@66
    throw v1

    #@67
    .line 237
    :pswitch_1
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@69
    if-eqz v1, :cond_3

    #@6b
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@6d
    if-eqz v1, :cond_3

    #@6f
    .line 238
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@71
    if-eqz v1, :cond_3

    #@73
    .line 239
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@75
    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$4;

    #@77
    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$4;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    #@7a
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7d
    .line 246
    :cond_3
    iput v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@7f
    .line 213
    :cond_4
    :goto_0
    return-void

    #@80
    .line 249
    :pswitch_2
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@82
    if-eq v1, v6, :cond_5

    #@84
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@86
    if-eq v1, v5, :cond_5

    #@88
    .line 250
    const-string/jumbo v1, "CameraDeviceState"

    #@8b
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v3, "Cannot call configure while in state: "

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v2

    #@a1
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 251
    iput v6, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    #@a6
    .line 252
    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    #@a9
    goto :goto_0

    #@aa
    .line 255
    :cond_5
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@ac
    if-eq v1, v7, :cond_6

    #@ae
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@b0
    if-eqz v1, :cond_6

    #@b2
    .line 256
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@b4
    if-eqz v1, :cond_6

    #@b6
    .line 257
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@b8
    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$5;

    #@ba
    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$5;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    #@bd
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c0
    .line 264
    :cond_6
    iput v7, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@c2
    goto :goto_0

    #@c3
    .line 267
    :pswitch_3
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@c5
    if-eq v1, v5, :cond_4

    #@c7
    .line 271
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@c9
    if-eq v1, v7, :cond_7

    #@cb
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@cd
    const/4 v2, 0x4

    #@ce
    if-eq v1, v2, :cond_7

    #@d0
    .line 272
    const-string/jumbo v1, "CameraDeviceState"

    #@d3
    new-instance v2, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v3, "Cannot call idle while in state: "

    #@db
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v2

    #@df
    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@e1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v2

    #@e5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v2

    #@e9
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    .line 273
    iput v6, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    #@ee
    .line 274
    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    #@f1
    goto :goto_0

    #@f2
    .line 278
    :cond_7
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@f4
    if-eq v1, v5, :cond_8

    #@f6
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@f8
    if-eqz v1, :cond_8

    #@fa
    .line 279
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@fc
    if-eqz v1, :cond_8

    #@fe
    .line 280
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@100
    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$6;

    #@102
    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$6;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    #@105
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@108
    .line 287
    :cond_8
    iput v5, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@10a
    goto/16 :goto_0

    #@10c
    .line 290
    :pswitch_4
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@10e
    if-eq v1, v5, :cond_9

    #@110
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@112
    const/4 v2, 0x4

    #@113
    if-eq v1, v2, :cond_9

    #@115
    .line 291
    const-string/jumbo v1, "CameraDeviceState"

    #@118
    new-instance v2, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v3, "Cannot call capture while in state: "

    #@120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v2

    #@124
    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@129
    move-result-object v2

    #@12a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v2

    #@12e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@131
    .line 292
    iput v6, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    #@133
    .line 293
    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    #@136
    goto/16 :goto_0

    #@138
    .line 297
    :cond_9
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@13a
    if-eqz v1, :cond_a

    #@13c
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@13e
    if-eqz v1, :cond_a

    #@140
    .line 298
    const/4 v1, -0x1

    #@141
    if-eq p4, v1, :cond_b

    #@143
    .line 299
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@145
    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$7;

    #@147
    invoke-direct {v2, p0, p4}, Landroid/hardware/camera2/legacy/CameraDeviceState$7;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;I)V

    #@14a
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@14d
    .line 314
    :cond_a
    :goto_1
    const/4 v1, 0x4

    #@14e
    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@150
    goto/16 :goto_0

    #@152
    .line 306
    :cond_b
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@154
    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$8;

    #@156
    invoke-direct {v2, p0, p2, p3}, Landroid/hardware/camera2/legacy/CameraDeviceState$8;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;J)V

    #@159
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@15c
    goto :goto_1

    #@15d
    .line 235
    nop

    #@15e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized setCameraDeviceCallbacks(Landroid/os/Handler;Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 205
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@3
    .line 206
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 204
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;I)Z
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "captureError"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v5, -0x1

    #@3
    monitor-enter p0

    #@4
    .line 170
    :try_start_0
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@6
    const/4 v3, 0x4

    #@7
    if-eq v2, v3, :cond_1

    #@9
    .line 171
    const-string/jumbo v2, "CameraDeviceState"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Cannot receive result while in state: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    iget v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 172
    const/4 v2, 0x1

    #@26
    iput v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    #@28
    .line 173
    const/4 v2, 0x0

    #@29
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    #@2c
    .line 174
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    if-ne v2, v5, :cond_0

    #@30
    :goto_0
    monitor-exit p0

    #@31
    return v0

    #@32
    :cond_0
    move v0, v1

    #@33
    goto :goto_0

    #@34
    .line 177
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@36
    if-eqz v2, :cond_2

    #@38
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@3a
    if-eqz v2, :cond_2

    #@3c
    .line 178
    if-eq p3, v5, :cond_3

    #@3e
    .line 179
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@40
    new-instance v3, Landroid/hardware/camera2/legacy/CameraDeviceState$1;

    #@42
    invoke-direct {v3, p0, p3, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState$1;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;ILandroid/hardware/camera2/legacy/RequestHolder;)V

    #@45
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@48
    .line 194
    :cond_2
    :goto_1
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    if-ne v2, v5, :cond_4

    #@4c
    :goto_2
    monitor-exit p0

    #@4d
    return v0

    #@4e
    .line 186
    :cond_3
    :try_start_2
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    #@50
    new-instance v3, Landroid/hardware/camera2/legacy/CameraDeviceState$2;

    #@52
    invoke-direct {v3, p0, p2, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState$2;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@55
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    goto :goto_1

    #@59
    :catchall_0
    move-exception v0

    #@5a
    monitor-exit p0

    #@5b
    throw v0

    #@5c
    :cond_4
    move v0, v1

    #@5d
    .line 194
    goto :goto_2
.end method

.method public declared-synchronized setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "timestamp"    # J
    .param p4, "captureError"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 145
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@3
    .line 146
    const/4 v0, 0x4

    #@4
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V

    #@7
    .line 147
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    const/4 v1, -0x1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    monitor-exit p0

    #@e
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public declared-synchronized setConfiguring()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 109
    const/4 v0, 0x2

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    #@5
    .line 110
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    const/4 v1, -0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    monitor-exit p0

    #@c
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public declared-synchronized setError(I)V
    .locals 1
    .param p1, "error"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 94
    :try_start_0
    iput p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    #@3
    .line 95
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 93
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized setIdle()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 124
    const/4 v0, 0x3

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    #@5
    .line 125
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    const/4 v1, -0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    monitor-exit p0

    #@c
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method
