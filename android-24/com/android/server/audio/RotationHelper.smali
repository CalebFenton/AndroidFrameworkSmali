.class Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RotationHelper$AudioOrientationListener;,
        Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;,
        Lcom/android/server/audio/RotationHelper$RotationCheckThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioService.RotationHelper"

.field private static sContext:Landroid/content/Context;

.field private static sDeviceRotation:I

.field private static sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

.field private static final sRotationLock:Ljava/lang/Object;

.field private static sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    #@7
    .line 49
    const/4 v0, 0x0

    #@8
    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    #@a
    .line 41
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static disable()V
    .locals 1

    #@0
    .prologue
    .line 87
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 88
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    #@6
    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->disable()V

    #@9
    .line 86
    :goto_0
    return-void

    #@a
    .line 90
    :cond_0
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    #@c
    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->disable()V

    #@f
    goto :goto_0
.end method

.method static enable()V
    .locals 1

    #@0
    .prologue
    .line 78
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 79
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    #@6
    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->enable()V

    #@9
    .line 83
    :goto_0
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    #@c
    .line 77
    return-void

    #@d
    .line 81
    :cond_0
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    #@f
    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->enable()V

    #@12
    goto :goto_0
.end method

.method static init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 60
    if-nez p0, :cond_0

    #@3
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Invalid null context"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 63
    :cond_0
    sput-object p0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    #@e
    .line 64
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    #@10
    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@13
    sput-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    #@15
    .line 65
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    #@17
    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->enable()V

    #@1a
    .line 66
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    #@1c
    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->canDetectOrientation()Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 69
    const-string/jumbo v0, "AudioService.RotationHelper"

    #@25
    const-string/jumbo v1, "Not using WindowOrientationListener, reverting to OrientationListener"

    #@28
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 70
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    #@2d
    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->disable()V

    #@30
    .line 71
    sput-object v2, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    #@32
    .line 72
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    #@34
    invoke-direct {v0, p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;-><init>(Landroid/content/Context;)V

    #@37
    sput-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    #@39
    .line 73
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    #@3b
    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->enable()V

    #@3e
    .line 59
    :cond_1
    return-void
.end method

.method private static publishRotation(I)V
    .locals 3
    .param p0, "rotation"    # I

    #@0
    .prologue
    .line 111
    const-string/jumbo v0, "AudioService.RotationHelper"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "publishing device rotation ="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " (x90deg)"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 112
    packed-switch p0, :pswitch_data_0

    #@24
    .line 126
    const-string/jumbo v0, "AudioService.RotationHelper"

    #@27
    const-string/jumbo v1, "Unknown device rotation"

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 110
    :goto_0
    return-void

    #@2e
    .line 114
    :pswitch_0
    const-string/jumbo v0, "rotation=0"

    #@31
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@34
    goto :goto_0

    #@35
    .line 117
    :pswitch_1
    const-string/jumbo v0, "rotation=90"

    #@38
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@3b
    goto :goto_0

    #@3c
    .line 120
    :pswitch_2
    const-string/jumbo v0, "rotation=180"

    #@3f
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@42
    goto :goto_0

    #@43
    .line 123
    :pswitch_3
    const-string/jumbo v0, "rotation=270"

    #@46
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@49
    goto :goto_0

    #@4a
    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static updateOrientation()V
    .locals 3

    #@0
    .prologue
    .line 100
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    #@2
    .line 101
    const-string/jumbo v2, "window"

    #@5
    .line 100
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/view/WindowManager;

    #@b
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    #@12
    move-result v0

    #@13
    .line 102
    .local v0, "newRotation":I
    sget-object v2, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    #@15
    monitor-enter v2

    #@16
    .line 103
    :try_start_0
    sget v1, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    #@18
    if-eq v0, v1, :cond_0

    #@1a
    .line 104
    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    #@1c
    .line 105
    sget v1, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    #@1e
    invoke-static {v1}, Lcom/android/server/audio/RotationHelper;->publishRotation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :cond_0
    monitor-exit v2

    #@22
    .line 97
    return-void

    #@23
    .line 102
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method
