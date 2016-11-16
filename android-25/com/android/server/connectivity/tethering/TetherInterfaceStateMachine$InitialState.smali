.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@0
    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get7(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IControlsTethering;

    #@5
    move-result-object v0

    #@6
    .line 171
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@8
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@e
    .line 172
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@10
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I

    #@13
    move-result v3

    #@14
    const/4 v4, 0x1

    #@15
    .line 170
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/server/connectivity/tethering/IControlsTethering;->notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    #@18
    .line 169
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2
    iget v2, p1, Landroid/os/Message;->what:I

    #@4
    invoke-static {v1, p0, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    #@7
    .line 178
    const/4 v0, 0x1

    #@8
    .line 179
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    #@a
    sparse-switch v1, :sswitch_data_0

    #@d
    .line 192
    const/4 v0, 0x0

    #@e
    .line 195
    :goto_0
    return v0

    #@f
    .line 181
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    #@15
    .line 182
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@17
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@19
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    #@20
    goto :goto_0

    #@21
    .line 185
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@23
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@25
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get9(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    #@2c
    goto :goto_0

    #@2d
    .line 188
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2f
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    #@32
    move-result-object v2

    #@33
    .line 189
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@35
    check-cast v1, Landroid/net/LinkProperties;

    #@37
    .line 188
    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    #@3a
    goto :goto_0

    #@3b
    .line 179
    nop

    #@3c
    :sswitch_data_0
    .sparse-switch
        0x50066 -> :sswitch_0
        0x50068 -> :sswitch_1
        0x50071 -> :sswitch_2
    .end sparse-switch
.end method
