.class Landroid/media/JetPlayer$NativeEventHandler;
.super Landroid/os/Handler;
.source "JetPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/JetPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mJet:Landroid/media/JetPlayer;

.field final synthetic this$0:Landroid/media/JetPlayer;


# direct methods
.method public constructor <init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/JetPlayer;
    .param p2, "jet"    # Landroid/media/JetPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 402
    iput-object p1, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    #@2
    .line 403
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 404
    iput-object p2, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    #@7
    .line 402
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 409
    const/4 v7, 0x0

    #@1
    .line 410
    .local v7, "listener":Landroid/media/JetPlayer$OnJetEventListener;
    iget-object v0, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    #@3
    invoke-static {v0}, Landroid/media/JetPlayer;->-get0(Landroid/media/JetPlayer;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 411
    :try_start_0
    iget-object v0, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    #@a
    invoke-static {v0}, Landroid/media/JetPlayer;->-get1(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v7

    #@e
    .local v7, "listener":Landroid/media/JetPlayer$OnJetEventListener;
    monitor-exit v1

    #@f
    .line 413
    iget v0, p1, Landroid/os/Message;->what:I

    #@11
    packed-switch v0, :pswitch_data_0

    #@14
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v1, "Unknown message type "

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    iget v1, p1, Landroid/os/Message;->what:I

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-static {v0}, Landroid/media/JetPlayer;->-wrap0(Ljava/lang/String;)V

    #@2d
    .line 446
    return-void

    #@2e
    .line 410
    .local v7, "listener":Landroid/media/JetPlayer$OnJetEventListener;
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0

    #@31
    .line 415
    .local v7, "listener":Landroid/media/JetPlayer$OnJetEventListener;
    :pswitch_0
    if-eqz v7, :cond_0

    #@33
    .line 418
    iget-object v0, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    #@35
    invoke-static {v0}, Landroid/media/JetPlayer;->-get1(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;

    #@38
    move-result-object v0

    #@39
    .line 419
    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    #@3b
    .line 420
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@3d
    const/high16 v3, -0x1000000

    #@3f
    and-int/2addr v2, v3

    #@40
    shr-int/lit8 v2, v2, 0x18

    #@42
    int-to-short v2, v2

    #@43
    .line 421
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@45
    const/high16 v4, 0xfc0000

    #@47
    and-int/2addr v3, v4

    #@48
    shr-int/lit8 v3, v3, 0x12

    #@4a
    int-to-byte v3, v3

    #@4b
    .line 424
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@4d
    const v5, 0x3c000

    #@50
    and-int/2addr v4, v5

    #@51
    shr-int/lit8 v4, v4, 0xe

    #@53
    add-int/lit8 v4, v4, 0x1

    #@55
    int-to-byte v4, v4

    #@56
    .line 425
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@58
    and-int/lit16 v5, v5, 0x3f80

    #@5a
    shr-int/lit8 v5, v5, 0x7

    #@5c
    int-to-byte v5, v5

    #@5d
    .line 426
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@5f
    and-int/lit8 v6, v6, 0x7f

    #@61
    int-to-byte v6, v6

    #@62
    .line 418
    invoke-interface/range {v0 .. v6}, Landroid/media/JetPlayer$OnJetEventListener;->onJetEvent(Landroid/media/JetPlayer;SBBBB)V

    #@65
    .line 428
    :cond_0
    return-void

    #@66
    .line 430
    :pswitch_1
    if-eqz v7, :cond_1

    #@68
    .line 431
    iget-object v0, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    #@6a
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@6c
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@6e
    invoke-interface {v7, v0, v1, v2}, Landroid/media/JetPlayer$OnJetEventListener;->onJetUserIdUpdate(Landroid/media/JetPlayer;II)V

    #@71
    .line 433
    :cond_1
    return-void

    #@72
    .line 435
    :pswitch_2
    if-eqz v7, :cond_2

    #@74
    .line 436
    iget-object v0, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    #@76
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@78
    invoke-interface {v7, v0, v1}, Landroid/media/JetPlayer$OnJetEventListener;->onJetNumQueuedSegmentUpdate(Landroid/media/JetPlayer;I)V

    #@7b
    .line 438
    :cond_2
    return-void

    #@7c
    .line 440
    :pswitch_3
    if-eqz v7, :cond_3

    #@7e
    .line 441
    iget-object v0, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    #@80
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@82
    invoke-interface {v7, v0, v1}, Landroid/media/JetPlayer$OnJetEventListener;->onJetPauseUpdate(Landroid/media/JetPlayer;I)V

    #@85
    .line 442
    :cond_3
    return-void

    #@86
    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
