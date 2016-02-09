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
.field private mColor:I

.field private mFlashing:Z

.field private mId:I

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
    .line 35
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    #@2
    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    #@5
    .line 36
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    #@7
    .line 35
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
    .line 97
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    #@5
    if-ne p1, v0, :cond_0

    #@7
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    #@9
    if-eq p2, v0, :cond_2

    #@b
    .line 100
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    #@d
    .line 101
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    #@f
    .line 102
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    #@11
    .line 103
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    #@13
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v1, "setLight("

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, ", 0x"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 105
    const-string/jumbo v1, ")"

    #@37
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@42
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    #@44
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-get1(Lcom/android/server/lights/LightsService;)J

    #@47
    move-result-wide v0

    #@48
    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    #@4a
    move v3, p1

    #@4b
    move v4, p2

    #@4c
    move v5, p3

    #@4d
    move v6, p4

    #@4e
    move v7, p5

    #@4f
    invoke-static/range {v0 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    .line 109
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@55
    .line 96
    :cond_1
    return-void

    #@56
    .line 97
    :cond_2
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    #@58
    if-ne p3, v0, :cond_0

    #@5a
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    #@5c
    if-eq p4, v0, :cond_1

    #@5e
    goto :goto_0

    #@5f
    .line 108
    :catchall_0
    move-exception v0

    #@60
    .line 109
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@63
    .line 108
    throw v0
.end method

.method private stopFlashing()V
    .locals 6

    #@0
    .prologue
    .line 91
    monitor-enter p0

    #@1
    .line 92
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
    .line 90
    return-void

    #@d
    .line 91
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    #@0
    .prologue
    .line 69
    const v0, 0xffffff

    #@3
    const/4 v1, 0x7

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    #@7
    .line 68
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    #@0
    .prologue
    .line 74
    monitor-enter p0

    #@1
    .line 75
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    #@3
    if-nez v0, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v0, :cond_1

    #@9
    :cond_0
    :goto_0
    monitor-exit p0

    #@a
    .line 73
    return-void

    #@b
    .line 76
    :cond_1
    const/4 v2, 0x2

    #@c
    const/16 v4, 0x3e8

    #@e
    const/4 v5, 0x0

    #@f
    move-object v0, p0

    #@10
    move v1, p1

    #@11
    move v3, p2

    #@12
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    #@15
    .line 77
    const/4 v0, 0x0

    #@16
    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    #@18
    .line 78
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    #@1a
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-get0(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    #@1d
    move-result-object v0

    #@1e
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    #@20
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get0(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x1

    #@25
    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@28
    move-result-object v1

    #@29
    int-to-long v2, p2

    #@2a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 74
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit p0

    #@30
    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    #@0
    .prologue
    .line 41
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    #@4
    .line 40
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    #@0
    .prologue
    .line 46
    monitor-enter p0

    #@1
    .line 47
    and-int/lit16 v1, p1, 0xff

    #@3
    .line 48
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
    .line 49
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
    .line 45
    return-void

    #@16
    .line 46
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
    .line 55
    monitor-enter p0

    #@1
    .line 56
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
    .line 54
    return-void

    #@c
    .line 55
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
    .line 62
    monitor-enter p0

    #@1
    .line 63
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
    .line 61
    return-void

    #@c
    .line 62
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
    .line 85
    monitor-enter p0

    #@1
    .line 86
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
    .line 84
    return-void

    #@c
    .line 85
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
