.class Landroid/media/audiopolicy/AudioPolicy$EventHandler;
.super Landroid/os/Handler;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiopolicy/AudioPolicy;


# direct methods
.method public constructor <init>(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/audiopolicy/AudioPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiopolicy/AudioPolicy;
    .param p2, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 464
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@2
    .line 465
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 464
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 470
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 492
    const-string/jumbo v0, "AudioPolicy"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Unknown event "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 469
    :cond_0
    :goto_0
    return-void

    #@23
    .line 472
    :pswitch_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@25
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-wrap0(Landroid/media/audiopolicy/AudioPolicy;)V

    #@28
    goto :goto_0

    #@29
    .line 475
    :pswitch_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@2b
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-get1(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 476
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@33
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-get1(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    #@36
    move-result-object v1

    #@37
    .line 477
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@39
    check-cast v0, Landroid/media/AudioFocusInfo;

    #@3b
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@3d
    .line 476
    invoke-virtual {v1, v0, v2}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;->onAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V

    #@40
    goto :goto_0

    #@41
    .line 481
    :pswitch_2
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@43
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-get1(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    #@46
    move-result-object v0

    #@47
    if-eqz v0, :cond_0

    #@49
    .line 482
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@4b
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-get1(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    #@4e
    move-result-object v2

    #@4f
    .line 483
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@51
    check-cast v0, Landroid/media/AudioFocusInfo;

    #@53
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@55
    if-eqz v3, :cond_1

    #@57
    const/4 v1, 0x1

    #@58
    .line 482
    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;->onAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V

    #@5b
    goto :goto_0

    #@5c
    .line 487
    :pswitch_3
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@5e
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-get2(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    #@61
    move-result-object v0

    #@62
    if-eqz v0, :cond_0

    #@64
    .line 488
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@66
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-get2(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    #@69
    move-result-object v1

    #@6a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6c
    check-cast v0, Landroid/media/audiopolicy/AudioMix;

    #@6e
    invoke-virtual {v1, v0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;->onMixStateUpdate(Landroid/media/audiopolicy/AudioMix;)V

    #@71
    goto :goto_0

    #@72
    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
