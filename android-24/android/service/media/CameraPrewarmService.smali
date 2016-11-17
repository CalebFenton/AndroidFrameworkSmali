.class public abstract Landroid/service/media/CameraPrewarmService;
.super Landroid/app/Service;
.source "CameraPrewarmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/CameraPrewarmService$1;
    }
.end annotation


# static fields
.field public static final ACTION_PREWARM:Ljava/lang/String; = "android.service.media.CameraPrewarmService.ACTION_PREWARM"

.field public static final MSG_CAMERA_FIRED:I = 0x1


# instance fields
.field private mCameraIntentFired:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -set0(Landroid/service/media/CameraPrewarmService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/service/media/CameraPrewarmService;->mCameraIntentFired:Z

    #@2
    return p1
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 45
    new-instance v0, Landroid/service/media/CameraPrewarmService$1;

    #@5
    invoke-direct {v0, p0}, Landroid/service/media/CameraPrewarmService$1;-><init>(Landroid/service/media/CameraPrewarmService;)V

    #@8
    iput-object v0, p0, Landroid/service/media/CameraPrewarmService;->mHandler:Landroid/os/Handler;

    #@a
    .line 30
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    #@3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 63
    invoke-virtual {p0}, Landroid/service/media/CameraPrewarmService;->onPrewarm()V

    #@10
    .line 64
    new-instance v0, Landroid/os/Messenger;

    #@12
    iget-object v1, p0, Landroid/service/media/CameraPrewarmService;->mHandler:Landroid/os/Handler;

    #@14
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@17
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 66
    :cond_0
    const/4 v0, 0x0

    #@1d
    return-object v0
.end method

.method public abstract onCooldown(Z)V
.end method

.method public abstract onPrewarm()V
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 72
    const-string/jumbo v0, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    #@3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 73
    iget-boolean v0, p0, Landroid/service/media/CameraPrewarmService;->mCameraIntentFired:Z

    #@f
    invoke-virtual {p0, v0}, Landroid/service/media/CameraPrewarmService;->onCooldown(Z)V

    #@12
    .line 75
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method
