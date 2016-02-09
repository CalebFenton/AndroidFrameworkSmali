.class Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolListenerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 2404
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    .line 2405
    const-string/jumbo v0, "SoundPoolListenerThread"

    #@5
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@8
    .line 2404
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 2411
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@3
    .line 2412
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    #@5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    #@c
    .line 2414
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    #@e
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    monitor-enter v1

    #@13
    .line 2415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    #@15
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    #@18
    move-result-object v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 2416
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    #@1d
    new-instance v2, Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@1f
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    #@21
    const/4 v4, 0x0

    #@22
    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioService$SoundPoolCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)V

    #@25
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-set13(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@28
    .line 2417
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    #@2a
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    #@2d
    move-result-object v0

    #@2e
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    #@30
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    #@37
    .line 2419
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    #@39
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit v1

    #@41
    .line 2421
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@44
    .line 2409
    return-void

    #@45
    .line 2414
    :catchall_0
    move-exception v0

    #@46
    monitor-exit v1

    #@47
    throw v0
.end method
