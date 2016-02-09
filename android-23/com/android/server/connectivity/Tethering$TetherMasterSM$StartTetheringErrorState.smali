.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartTetheringErrorState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@0
    .prologue
    .line 1654
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    #@0
    .prologue
    .line 1657
    const-string/jumbo v1, "Tethering"

    #@3
    const-string/jumbo v2, "Error in startTethering"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1658
    const/16 v1, 0x9

    #@b
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;->notify(I)V

    #@e
    .line 1660
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@10
    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@12
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x0

    #@17
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1656
    :goto_0
    return-void

    #@1b
    .line 1661
    :catch_0
    move-exception v0

    #@1c
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
