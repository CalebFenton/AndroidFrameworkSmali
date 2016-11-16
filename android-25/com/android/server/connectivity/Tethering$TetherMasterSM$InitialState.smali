.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@0
    .prologue
    .line 1611
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1614
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@4
    iget v3, p1, Landroid/os/Message;->what:I

    #@6
    invoke-static {v2, p0, v3}, Lcom/android/server/connectivity/Tethering;->-wrap4(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V

    #@9
    .line 1615
    const/4 v0, 0x1

    #@a
    .line 1616
    .local v0, "retValue":Z
    iget v2, p1, Landroid/os/Message;->what:I

    #@c
    packed-switch v2, :pswitch_data_0

    #@f
    .line 1633
    const/4 v0, 0x0

    #@10
    .line 1636
    :goto_0
    return v0

    #@11
    .line 1618
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13
    check-cast v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@15
    .line 1620
    .local v1, "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@17
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@1e
    move-result v2

    #@1f
    if-gez v2, :cond_0

    #@21
    .line 1621
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@23
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 1622
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2c
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->addActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    #@33
    .line 1624
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@35
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@37
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get11(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@3e
    goto :goto_0

    #@3f
    .line 1627
    .end local v1    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41
    check-cast v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@43
    .line 1629
    .restart local v1    # "who":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@45
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@4c
    .line 1630
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@4e
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->removeActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    #@55
    goto :goto_0

    #@56
    .line 1616
    :pswitch_data_0
    .packed-switch 0x50001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
