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
    .line 1504
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    #@0
    .prologue
    .line 1506
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1510
    const-string/jumbo v3, "Tethering"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "MasterInitialState.processMessage what="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    iget v5, p1, Landroid/os/Message;->what:I

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1511
    const/4 v1, 0x1

    #@1d
    .line 1512
    .local v1, "retValue":Z
    iget v3, p1, Landroid/os/Message;->what:I

    #@1f
    packed-switch v3, :pswitch_data_0

    #@22
    .line 1528
    const/4 v1, 0x0

    #@23
    .line 1531
    :cond_0
    :goto_0
    return v1

    #@24
    .line 1514
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26
    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@28
    .line 1516
    .local v2, "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2a
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 1517
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@33
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@35
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get10(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@38
    move-result-object v4

    #@39
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@3c
    goto :goto_0

    #@3d
    .line 1520
    .end local v2    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3f
    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@41
    .line 1522
    .restart local v2    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@43
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@4a
    move-result v0

    #@4b
    .line 1523
    .local v0, "index":I
    const/4 v3, -0x1

    #@4c
    if-eq v0, v3, :cond_0

    #@4e
    .line 1524
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@50
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@57
    goto :goto_0

    #@58
    .line 1512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
