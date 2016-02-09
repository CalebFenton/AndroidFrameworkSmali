.class Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiNetworkAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I

    #@0
    .prologue
    .line 7787
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p2

    #@4
    move-object v2, p3

    #@5
    move-object v3, p4

    #@6
    move-object v4, p5

    #@7
    move-object v5, p6

    #@8
    move-object v6, p7

    #@9
    move/from16 v7, p8

    #@b
    .line 7789
    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    #@e
    .line 7788
    return-void
.end method


# virtual methods
.method protected networkStatus(I)V
    .locals 3
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 7801
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@6
    move-result-object v0

    #@7
    if-eq p0, v0, :cond_0

    #@9
    return-void

    #@a
    .line 7802
    :cond_0
    const/4 v0, 0x2

    #@b
    if-ne p1, v0, :cond_3

    #@d
    .line 7803
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    new-instance v0, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v1, "WifiNetworkAgent -> Wifi networkStatus invalid, score="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 7804
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@24
    move-result-object v1

    #@25
    iget v1, v1, Landroid/net/wifi/WifiInfo;->score:I

    #@27
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 7803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    #@36
    .line 7805
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    #@3b
    .line 7800
    :cond_2
    :goto_0
    return-void

    #@3c
    .line 7806
    :cond_3
    if-ne p1, v2, :cond_2

    #@3e
    .line 7807
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_4

    #@44
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@46
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@49
    move-result-object v0

    #@4a
    if-eqz v0, :cond_4

    #@4c
    new-instance v0, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v1, "WifiNetworkAgent -> Wifi networkStatus valid, score= "

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 7808
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@5d
    move-result-object v1

    #@5e
    iget v1, v1, Landroid/net/wifi/WifiInfo;->score:I

    #@60
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    .line 7807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    #@6f
    .line 7809
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@71
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->doNetworkStatus(I)V

    #@74
    goto :goto_0
.end method

.method protected preventAutomaticReconnect()V
    .locals 2

    #@0
    .prologue
    .line 7821
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    return-void

    #@9
    .line 7822
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    #@f
    .line 7820
    return-void
.end method

.method protected saveAcceptUnvalidated(Z)V
    .locals 3
    .param p1, "accept"    # Z

    #@0
    .prologue
    .line 7815
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    return-void

    #@9
    .line 7816
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    if-eqz p1, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    const v2, 0x20099

    #@11
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@14
    .line 7814
    return-void

    #@15
    .line 7816
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method protected unwanted()V
    .locals 2

    #@0
    .prologue
    .line 7793
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    return-void

    #@9
    .line 7794
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "WifiNetworkAgent -> Wifi unwanted score "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 7795
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@20
    move-result-object v1

    #@21
    iget v1, v1, Landroid/net/wifi/WifiInfo;->score:I

    #@23
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 7794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    #@32
    .line 7796
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    const/4 v1, 0x0

    #@35
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    #@38
    .line 7791
    return-void
.end method
