.class Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
.super Lcom/android/internal/util/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/WakeLockStateMachine;

    #@0
    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 205
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@a
    const-string/jumbo v1, "deferring message until return to idle"

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    #@10
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@12
    invoke-static {v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->-wrap0(Lcom/android/internal/telephony/WakeLockStateMachine;Landroid/os/Message;)V

    #@15
    .line 189
    return v2

    #@16
    .line 192
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@18
    const-string/jumbo v1, "broadcast complete, returning to idle"

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    #@1e
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@20
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@22
    invoke-static {v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->-get0(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->-wrap1(Lcom/android/internal/telephony/WakeLockStateMachine;Lcom/android/internal/util/IState;)V

    #@29
    .line 194
    return v2

    #@2a
    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@2c
    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-get2(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@33
    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@35
    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-get2(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_0

    #@3f
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@41
    const-string/jumbo v1, "mWakeLock released while still in WaitingState!"

    #@44
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->loge(Ljava/lang/String;)V

    #@47
    .line 202
    :cond_0
    return v2

    #@48
    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
