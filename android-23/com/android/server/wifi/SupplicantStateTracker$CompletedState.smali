.class Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompletedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    #@0
    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

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
    const/4 v3, 0x0

    #@1
    .line 362
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-get0()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "SupplicantStateTracker"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->getName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "\n"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@27
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-set2(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    #@2a
    .line 365
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@2c
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-set0(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    #@2f
    .line 366
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@31
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->-get4(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@39
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->-get6(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    #@40
    .line 368
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@42
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-set3(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    #@45
    .line 361
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 373
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-get0()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    const-string/jumbo v2, "SupplicantStateTracker"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->getName()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, "\n"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 374
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    #@2f
    sparse-switch v2, :sswitch_data_0

    #@32
    .line 393
    return v5

    #@33
    .line 376
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@35
    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    #@37
    .line 377
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v0, v1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@39
    .line 378
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@3b
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@3d
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-get2(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    #@40
    move-result v3

    #@41
    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap2(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    #@44
    .line 383
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_1

    #@4a
    .line 395
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :goto_0
    const/4 v2, 0x1

    #@4b
    return v2

    #@4c
    .line 386
    .restart local v0    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@4e
    invoke-static {v2, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap3(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V

    #@51
    goto :goto_0

    #@52
    .line 389
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@54
    sget-object v3, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #@56
    invoke-static {v2, v3, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap2(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    #@59
    .line 390
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@5b
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@5d
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-get5(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap4(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V

    #@64
    goto :goto_0

    #@65
    .line 374
    nop

    #@66
    :sswitch_data_0
    .sparse-switch
        0x2006f -> :sswitch_1
        0x24006 -> :sswitch_0
    .end sparse-switch
.end method
