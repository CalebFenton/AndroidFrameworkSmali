.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mLocked:Z

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    #@2
    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    #@5
    .line 44
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    #@7
    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;
    .param p2, "id"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    #@3
    return-void
.end method

.method private setLightLocked(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    #@0
    .prologue
    const-wide/32 v8, 0x20000

    #@3
    .line 122
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLocked:Z

    #@5
    if-nez v0, :cond_1

    #@7
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    #@9
    if-ne p1, v0, :cond_0

    #@b
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    #@d
    if-eq p2, v0, :cond_2

    #@f
    .line 126
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    #@11
    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    #@13
    .line 127
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    #@15
    .line 128
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    #@17
    .line 129
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    #@19
    .line 130
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    #@1b
    .line 131
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    #@1d
    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    #@1f
    .line 132
    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    #@21
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v1, "setLight("

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    const-string/jumbo v1, ", 0x"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 134
    const-string/jumbo v1, ")"

    #@45
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@50
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    #@52
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-get1(Lcom/android/server/lights/LightsService;)J

    #@55
    move-result-wide v0

    #@56
    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    #@58
    move v3, p1

    #@59
    move v4, p2

    #@5a
    move v5, p3

    #@5b
    move v6, p4

    #@5c
    move v7, p5

    #@5d
    invoke-static/range {v0 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    .line 138
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@63
    .line 121
    :cond_1
    return-void

    #@64
    .line 122
    :cond_2
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    #@66
    if-ne p3, v0, :cond_0

    #@68
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    #@6a
    if-ne p4, v0, :cond_0

    #@6c
    .line 123
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    #@6e
    if-eq v0, p5, :cond_1

    #@70
    goto :goto_0

    #@71
    .line 137
    :catchall_0
    move-exception v0

    #@72
    .line 138
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@75
    .line 137
    throw v0
.end method

.method private stopFlashing()V
    .locals 6

    #@0
    .prologue
    .line 116
    monitor-enter p0

    #@1
    .line 117
    :try_start_0
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    move-object v0, p0

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 115
    return-void

    #@d
    .line 116
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method


# virtual methods
.method disableLowPersistence()V
    .locals 6

    #@0
    .prologue
    .line 109
    monitor-enter p0

    #@1
    .line 110
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLocked:Z

    #@4
    .line 111
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    #@6
    iget v5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    move-object v0, p0

    #@c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 108
    return-void

    #@11
    .line 109
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method enableLowPersistence()V
    .locals 6

    #@0
    .prologue
    .line 102
    monitor-enter p0

    #@1
    .line 103
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x2

    #@6
    move-object v0, p0

    #@7
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    #@a
    .line 104
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 101
    return-void

    #@f
    .line 102
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public pulse()V
    .locals 2

    #@0
    .prologue
    .line 77
    const v0, 0xffffff

    #@3
    const/4 v1, 0x7

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    #@7
    .line 76
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 82
    monitor-enter p0

    #@2
    .line 83
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-ne v0, v1, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 84
    return-void

    #@8
    .line 86
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    #@a
    if-nez v0, :cond_1

    #@c
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    if-eqz v0, :cond_2

    #@10
    :cond_1
    :goto_0
    monitor-exit p0

    #@11
    .line 81
    return-void

    #@12
    .line 87
    :cond_2
    const/4 v2, 0x2

    #@13
    const/16 v4, 0x3e8

    #@15
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move v3, p2

    #@19
    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    #@1c
    .line 88
    const/4 v0, 0x0

    #@1d
    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    #@1f
    .line 89
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    #@21
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-get0(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    #@24
    move-result-object v0

    #@25
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    #@27
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get0(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    #@2a
    move-result-object v1

    #@2b
    const/4 v2, 0x1

    #@2c
    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v1

    #@30
    int-to-long v2, p2

    #@31
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 82
    :catchall_0
    move-exception v0

    #@36
    monitor-exit p0

    #@37
    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    #@4
    .line 48
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    #@0
    .prologue
    .line 54
    monitor-enter p0

    #@1
    .line 55
    and-int/lit16 v1, p1, 0xff

    #@3
    .line 56
    .local v1, "color":I
    shl-int/lit8 v0, v1, 0x10

    #@5
    const/high16 v2, -0x1000000

    #@7
    or-int/2addr v0, v2

    #@8
    shl-int/lit8 v2, v1, 0x8

    #@a
    or-int/2addr v0, v2

    #@b
    or-int/2addr v1, v0

    #@c
    .line 57
    const/4 v2, 0x0

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x0

    #@f
    move-object v0, p0

    #@10
    move v5, p2

    #@11
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 53
    return-void

    #@16
    .line 54
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    #@0
    .prologue
    .line 63
    monitor-enter p0

    #@1
    .line 64
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    move-object v0, p0

    #@6
    move v1, p1

    #@7
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 62
    return-void

    #@c
    .line 63
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    #@0
    .prologue
    .line 70
    monitor-enter p0

    #@1
    .line 71
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 69
    return-void

    #@c
    .line 70
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public turnOff()V
    .locals 6

    #@0
    .prologue
    .line 96
    monitor-enter p0

    #@1
    .line 97
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    move-object v0, p0

    #@7
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 95
    return-void

    #@c
    .line 96
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
