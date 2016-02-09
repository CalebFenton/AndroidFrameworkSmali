.class Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 9417
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    .line 9420
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap1(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    #@5
    move-result-object v1

    #@6
    .line 9421
    .local v1, "message":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    #@8
    const v3, 0x20015

    #@b
    if-ne v2, v3, :cond_1

    #@d
    .line 9422
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@11
    .line 9424
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@13
    .line 9425
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get96(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@18
    move-result-object v2

    #@19
    const v3, 0x2001b

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@1f
    .line 9419
    :goto_0
    return-void

    #@20
    .line 9427
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get96(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@25
    move-result-object v2

    #@26
    const v3, 0x20019

    #@29
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@2c
    .line 9428
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    #@31
    goto :goto_0

    #@32
    .line 9431
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@34
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "Illegal transition to SoftApStartingState: "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 9436
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@e
    .line 9438
    iget v1, p1, Landroid/os/Message;->what:I

    #@10
    sparse-switch v1, :sswitch_data_0

    #@13
    .line 9471
    return v3

    #@14
    .line 9451
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@19
    .line 9473
    :goto_0
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 9454
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1f
    .line 9455
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@21
    .line 9456
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    #@26
    goto :goto_0

    #@27
    .line 9458
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@29
    const-string/jumbo v2, "Softap config is null!"

    #@2c
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@2f
    .line 9459
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31
    const v2, 0x20017

    #@34
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@37
    goto :goto_0

    #@38
    .line 9463
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3a
    const/16 v2, 0xd

    #@3c
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@3f
    .line 9464
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@46
    move-result-object v2

    #@47
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@4a
    goto :goto_0

    #@4b
    .line 9467
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4d
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@4f
    const/16 v3, 0xe

    #@51
    invoke-static {v1, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@54
    .line 9468
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@5b
    move-result-object v2

    #@5c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@5f
    goto :goto_0

    #@60
    .line 9438
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_2
        0x20017 -> :sswitch_3
        0x20018 -> :sswitch_0
        0x2001c -> :sswitch_1
        0x2001d -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20050 -> :sswitch_0
        0x20054 -> :sswitch_0
        0x20055 -> :sswitch_0
        0x2005a -> :sswitch_0
    .end sparse-switch
.end method
