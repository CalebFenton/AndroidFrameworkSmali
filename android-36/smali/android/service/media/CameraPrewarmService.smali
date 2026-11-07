.class public abstract Landroid/service/media/CameraPrewarmService;
.super Landroid/app/Service;
.source "CameraPrewarmService.java"


# static fields
.field public static final greylist-max-o ACTION_PREWARM:Ljava/lang/String; = "android.service.media.CameraPrewarmService.ACTION_PREWARM"

.field public static final greylist-max-o MSG_CAMERA_FIRED:I = 0x1


# instance fields
.field private greylist-max-o mCameraIntentFired:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmCameraIntentFired(Landroid/service/media/CameraPrewarmService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/service/media/CameraPrewarmService;->mCameraIntentFired:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Landroid/service/media/CameraPrewarmService$1;

    invoke-direct {v0, p0}, Landroid/service/media/CameraPrewarmService$1;-><init>(Landroid/service/media/CameraPrewarmService;)V

    iput-object v0, p0, Landroid/service/media/CameraPrewarmService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 62
    const-string v0, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 63
    invoke-virtual {p0}, Landroid/service/media/CameraPrewarmService;->onPrewarm()V

    .line 64
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/service/media/CameraPrewarmService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 66
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onCooldown(Z)V
.end method

.method public abstract whitelist onPrewarm()V
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 72
    const-string v0, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 73
    iget-boolean v0, p0, Landroid/service/media/CameraPrewarmService;->mCameraIntentFired:Z

    invoke-virtual {p0, v0}, Landroid/service/media/CameraPrewarmService;->onCooldown(Z)V

    .line 75
    :cond_11
    const/4 v0, 0x0

    return v0
.end method
