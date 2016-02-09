.class final Landroid/media/SoundPool$EventHandler;
.super Landroid/os/Handler;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/media/SoundPool;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/SoundPool;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 537
    iput-object p1, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    #@2
    .line 538
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 537
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 543
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 553
    const-string/jumbo v0, "SoundPool"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unknown message type "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p1, Landroid/os/Message;->what:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 554
    return-void

    #@22
    .line 545
    :pswitch_0
    invoke-static {}, Landroid/media/SoundPool;->-get0()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    const-string/jumbo v0, "SoundPool"

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Sample "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, " loaded"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 546
    :cond_0
    iget-object v0, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    #@4d
    invoke-static {v0}, Landroid/media/SoundPool;->-get1(Landroid/media/SoundPool;)Ljava/lang/Object;

    #@50
    move-result-object v1

    #@51
    monitor-enter v1

    #@52
    .line 547
    :try_start_0
    iget-object v0, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    #@54
    invoke-static {v0}, Landroid/media/SoundPool;->-get2(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;

    #@57
    move-result-object v0

    #@58
    if-eqz v0, :cond_1

    #@5a
    .line 548
    iget-object v0, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    #@5c
    invoke-static {v0}, Landroid/media/SoundPool;->-get2(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;

    #@5f
    move-result-object v0

    #@60
    iget-object v2, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    #@62
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@64
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@66
    invoke-interface {v0, v2, v3, v4}, Landroid/media/SoundPool$OnLoadCompleteListener;->onLoadComplete(Landroid/media/SoundPool;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@69
    :cond_1
    monitor-exit v1

    #@6a
    .line 542
    return-void

    #@6b
    .line 546
    :catchall_0
    move-exception v0

    #@6c
    monitor-exit v1

    #@6d
    throw v0

    #@6e
    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
