.class Landroid/net/DhcpStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/DhcpStateMachine;

    #@0
    .prologue
    .line 183
    iput-object p1, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #@2
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->-get2(Landroid/net/DhcpStateMachine;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #@8
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get1(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@f
    .line 185
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 197
    const-string/jumbo v0, "DhcpStateMachine"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Error! unhandled message  "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 200
    :goto_0
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 193
    :pswitch_0
    const-string/jumbo v0, "DhcpStateMachine"

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "Error! Failed to handle a DHCP renewal on "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #@32
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get6(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 194
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #@43
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->-get4(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@4a
    goto :goto_0

    #@4b
    .line 191
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x30003
        :pswitch_0
    .end packed-switch
.end method
