.class Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/WakeLockStateMachine;

    #@0
    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

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
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@2
    const-wide/16 v2, 0xbb8

    #@4
    const/4 v1, 0x3

    #@5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/WakeLockStateMachine;->sendMessageDelayed(IJ)V

    #@8
    .line 140
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-get2(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@9
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@b
    const-string/jumbo v1, "acquired wakelock, leaving Idle state"

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    #@11
    .line 145
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 173
    :pswitch_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->handleSmsMessage(Landroid/os/Message;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@12
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@14
    invoke-static {v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->-get1(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->-wrap1(Lcom/android/internal/telephony/WakeLockStateMachine;Lcom/android/internal/util/IState;)V

    #@1b
    .line 158
    :cond_0
    return v2

    #@1c
    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@1e
    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-get2(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@25
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@27
    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-get2(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_1

    #@31
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@33
    const-string/jumbo v1, "mWakeLock is still held after release"

    #@36
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    #@39
    .line 170
    :goto_0
    return v2

    #@3a
    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@3c
    const-string/jumbo v1, "mWakeLock released"

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    #@42
    goto :goto_0

    #@43
    .line 152
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
