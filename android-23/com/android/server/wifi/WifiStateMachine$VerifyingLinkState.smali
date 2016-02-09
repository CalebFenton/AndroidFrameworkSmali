.class Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 8452
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    #@0
    .prologue
    .line 8455
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, " enter"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1d
    .line 8456
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    #@21
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@24
    .line 8457
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@29
    move-result-object v0

    #@2a
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@2f
    move-result v1

    #@30
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    #@32
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    #@35
    .line 8458
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@37
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@39
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@40
    .line 8460
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    const/4 v1, 0x0

    #@43
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@46
    .line 8454
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 8464
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@d
    .line 8466
    iget v0, p1, Landroid/os/Message;->what:I

    #@f
    packed-switch v0, :pswitch_data_0

    #@12
    .line 8477
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, " what="

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget v2, p1, Landroid/os/Message;->what:I

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string/jumbo v2, " NOT_HANDLED"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@42
    .line 8478
    :cond_0
    const/4 v0, 0x0

    #@43
    return v0

    #@44
    .line 8469
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@46
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    const-string/jumbo v2, " POOR_LINK_DETECTED: no transition"

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@61
    .line 8480
    :goto_0
    const/4 v0, 0x1

    #@62
    return v0

    #@63
    .line 8472
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    const-string/jumbo v2, " GOOD_LINK_DETECTED: transition to CONNECTED"

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@80
    .line 8473
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@82
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;)V

    #@85
    .line 8474
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@87
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@89
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@8c
    move-result-object v1

    #@8d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@90
    goto :goto_0

    #@91
    .line 8466
    nop

    #@92
    :pswitch_data_0
    .packed-switch 0x21015
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
