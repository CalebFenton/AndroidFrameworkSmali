.class Lcom/android/server/audio/AudioService$4;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService;->setVolumeController(Landroid/media/IVolumeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;

.field final synthetic val$controller:Landroid/media/IVolumeController;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "val$controller"    # Landroid/media/IVolumeController;

    #@0
    .prologue
    .line 5758
    iput-object p1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    iput-object p2, p0, Lcom/android/server/audio/AudioService$4;->val$controller:Landroid/media/IVolumeController;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 5761
    iget-object v0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get42(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/audio/AudioService$4;->val$controller:Landroid/media/IVolumeController;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 5762
    const-string/jumbo v0, "AudioService"

    #@11
    const-string/jumbo v1, "Current remote volume controller died, unregistering"

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 5763
    iget-object v0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->setVolumeController(Landroid/media/IVolumeController;)V

    #@1d
    .line 5760
    :cond_0
    return-void
.end method
