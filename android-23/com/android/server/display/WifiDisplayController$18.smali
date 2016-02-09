.class Lcom/android/server/display/WifiDisplayController$18;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;
    .param p2, "val$oldDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$18;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    #@0
    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get2(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5
    move-result-object v0

    #@6
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$18;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@8
    if-ne v0, v2, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@c
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get13(Lcom/android/server/display/WifiDisplayController;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 742
    :cond_0
    :goto_0
    return-void

    #@13
    .line 744
    :cond_1
    const-string/jumbo v0, "WifiDisplayController"

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Opened RTSP connection with Wifi display: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 745
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@24
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get2(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@27
    move-result-object v3

    #@28
    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@2a
    .line 744
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 746
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@37
    const/4 v2, 0x1

    #@38
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->-set7(Lcom/android/server/display/WifiDisplayController;Z)Z

    #@3b
    .line 747
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@3d
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get10(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    #@40
    move-result-object v0

    #@41
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@43
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@4a
    .line 749
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@4c
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get17(Lcom/android/server/display/WifiDisplayController;)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_2

    #@52
    .line 750
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@54
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    #@57
    move-result-object v0

    #@58
    .line 751
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@5a
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@5c
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get3(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@5f
    move-result-object v3

    #@60
    invoke-static {v2, v3, p5}, Lcom/android/server/display/WifiDisplayController;->-wrap0(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    #@63
    move-result-object v2

    #@64
    .line 750
    invoke-interface {v0, v2}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    #@67
    .line 754
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@69
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get2(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@6c
    move-result-object v0

    #@6d
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap1(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    #@70
    move-result-object v1

    #@71
    .line 755
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@73
    move-object v2, p1

    #@74
    move v3, p2

    #@75
    move v4, p3

    #@76
    move v5, p4

    #@77
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->-wrap4(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    #@7a
    goto :goto_0
.end method

.method public onDisplayDisconnected()V
    .locals 3

    #@0
    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get2(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$18;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 762
    const-string/jumbo v0, "WifiDisplayController"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Closed RTSP connection with Wifi display: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 763
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@1b
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get2(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1e
    move-result-object v2

    #@1f
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@21
    .line 762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 764
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2e
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get10(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    #@31
    move-result-object v0

    #@32
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@34
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@3b
    .line 765
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@3d
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap5(Lcom/android/server/display/WifiDisplayController;)V

    #@40
    .line 760
    :cond_0
    return-void
.end method

.method public onDisplayError(I)V
    .locals 3
    .param p1, "error"    # I

    #@0
    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get2(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$18;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 772
    const-string/jumbo v0, "WifiDisplayController"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Lost RTSP connection with Wifi display due to error "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 773
    const-string/jumbo v2, ": "

    #@20
    .line 772
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 773
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@26
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get2(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@29
    move-result-object v2

    #@2a
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@2c
    .line 772
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 774
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@39
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get10(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    #@3c
    move-result-object v0

    #@3d
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@3f
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@46
    .line 775
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@48
    const/4 v1, 0x0

    #@49
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap7(Lcom/android/server/display/WifiDisplayController;Z)V

    #@4c
    .line 770
    :cond_0
    return-void
.end method
