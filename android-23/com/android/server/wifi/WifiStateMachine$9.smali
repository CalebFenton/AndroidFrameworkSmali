.class Lcom/android/server/wifi/WifiStateMachine$9;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "val$config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 5250
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine$9;->val$config:Landroid/net/wifi/WifiConfiguration;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 5253
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$9;->val$config:Landroid/net/wifi/WifiConfiguration;

    #@8
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 5265
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19
    const-string/jumbo v3, "Soft AP start successful"

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1f
    .line 5266
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21
    const v3, 0x20016

    #@24
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@27
    .line 5251
    return-void

    #@28
    .line 5254
    :catch_0
    move-exception v0

    #@29
    .line 5255
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v4, "Exception in softap start "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@42
    .line 5257
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@44
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@47
    move-result-object v2

    #@48
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    #@51
    .line 5258
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@56
    move-result-object v2

    #@57
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$9;->val$config:Landroid/net/wifi/WifiConfiguration;

    #@59
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5b
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@62
    goto :goto_0

    #@63
    .line 5259
    :catch_1
    move-exception v1

    #@64
    .line 5260
    .local v1, "e1":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@66
    new-instance v3, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v4, "Exception in softap re-start "

    #@6e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@7d
    .line 5261
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$9;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7f
    const v3, 0x20017

    #@82
    const/4 v4, 0x0

    #@83
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@86
    .line 5262
    return-void
.end method
