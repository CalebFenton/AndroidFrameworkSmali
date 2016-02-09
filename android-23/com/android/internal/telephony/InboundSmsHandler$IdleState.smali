.class Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    const-string/jumbo v1, "entering Idle state"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@8
    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@a
    const-wide/16 v2, 0xbb8

    #@c
    const/4 v1, 0x5

    #@d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessageDelayed(IJ)V

    #@10
    .line 335
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@7
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@9
    const-string/jumbo v1, "acquired wakelock, leaving Idle state"

    #@c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@f
    .line 341
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "IdleState.processMessage:"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p1, Landroid/os/Message;->what:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@1c
    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Idle state processing message type "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p1, Landroid/os/Message;->what:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@37
    .line 350
    iget v0, p1, Landroid/os/Message;->what:I

    #@39
    packed-switch v0, :pswitch_data_0

    #@3c
    .line 378
    :pswitch_0
    const/4 v0, 0x0

    #@3d
    return v0

    #@3e
    .line 354
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@40
    invoke-static {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap1(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V

    #@43
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@45
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@47
    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@49
    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap3(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    #@4c
    .line 356
    return v3

    #@4d
    .line 359
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@4f
    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@51
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@54
    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@56
    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@58
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@60
    const-string/jumbo v1, "mWakeLock is still held after release"

    #@63
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@66
    .line 368
    :goto_0
    return v3

    #@67
    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@69
    const-string/jumbo v1, "mWakeLock released"

    #@6c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@6f
    goto :goto_0

    #@70
    .line 372
    :pswitch_3
    return v3

    #@71
    .line 350
    nop

    #@72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
