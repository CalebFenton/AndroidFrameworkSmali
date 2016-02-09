.class Lcom/android/server/wifi/WifiController$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    #@0
    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 328
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 393
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "WifiController.handleMessage "

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    iget v5, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 330
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@25
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get0(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    #@28
    move-result-object v1

    #@29
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2b
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get7(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@32
    .line 331
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@34
    invoke-static {v1, v8}, Lcom/android/server/wifi/WifiController;->-set3(Lcom/android/server/wifi/WifiController;Z)Z

    #@37
    .line 332
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@39
    invoke-static {v1, v8}, Lcom/android/server/wifi/WifiController;->-set0(Lcom/android/server/wifi/WifiController;Z)Z

    #@3c
    .line 333
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3e
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;)V

    #@41
    .line 395
    :cond_0
    :goto_0
    :pswitch_1
    return v9

    #@42
    .line 336
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@44
    invoke-static {v1, v9}, Lcom/android/server/wifi/WifiController;->-set3(Lcom/android/server/wifi/WifiController;Z)Z

    #@47
    .line 343
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@49
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@4b
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get9(Lcom/android/server/wifi/WifiController;)I

    #@4e
    move-result v4

    #@4f
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;I)Z

    #@52
    move-result v1

    #@53
    if-nez v1, :cond_0

    #@55
    .line 345
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@57
    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@59
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@5c
    move-result-object v1

    #@5d
    .line 346
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@5f
    .line 345
    if-ne v1, v4, :cond_1

    #@61
    .line 348
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@63
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get0(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    #@66
    move-result-object v1

    #@67
    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6a
    move-result-wide v4

    #@6b
    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@6d
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)J

    #@70
    move-result-wide v6

    #@71
    add-long/2addr v4, v6

    #@72
    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@74
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->-get7(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    #@77
    move-result-object v6

    #@78
    .line 348
    invoke-virtual {v1, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@7b
    goto :goto_0

    #@7c
    .line 351
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@7e
    const v4, 0x26005

    #@81
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@84
    goto :goto_0

    #@85
    .line 356
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@87
    invoke-static {v1, v9}, Lcom/android/server/wifi/WifiController;->-set0(Lcom/android/server/wifi/WifiController;Z)Z

    #@8a
    .line 357
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@8c
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;)V

    #@8f
    goto :goto_0

    #@90
    .line 367
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@92
    .line 369
    .local v0, "pluggedType":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@94
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get11(Lcom/android/server/wifi/WifiController;)Z

    #@97
    move-result v1

    #@98
    if-eqz v1, :cond_2

    #@9a
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@9c
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@9e
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get9(Lcom/android/server/wifi/WifiController;)I

    #@a1
    move-result v4

    #@a2
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;I)Z

    #@a5
    move-result v1

    #@a6
    if-eqz v1, :cond_2

    #@a8
    .line 370
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@aa
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;I)Z

    #@ad
    move-result v1

    #@ae
    if-eqz v1, :cond_3

    #@b0
    .line 376
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@b2
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiController;->-set2(Lcom/android/server/wifi/WifiController;I)I

    #@b5
    goto :goto_0

    #@b6
    .line 371
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b9
    move-result-wide v4

    #@ba
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@bc
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)J

    #@bf
    move-result-wide v6

    #@c0
    add-long v2, v4, v6

    #@c2
    .line 373
    .local v2, "triggerTime":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@c4
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get0(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    #@c7
    move-result-object v1

    #@c8
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@ca
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get7(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@d1
    goto :goto_1

    #@d2
    .line 387
    .end local v0    # "pluggedType":I
    .end local v2    # "triggerTime":J
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@d4
    invoke-static {v1, v9}, Lcom/android/server/wifi/WifiController;->-set1(Lcom/android/server/wifi/WifiController;Z)Z

    #@d7
    goto/16 :goto_0

    #@d9
    .line 390
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #@db
    const-string/jumbo v4, "DEFERRED_TOGGLE ignored due to state change"

    #@de
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 328
    nop

    #@e4
    :pswitch_data_0
    .packed-switch 0x26001
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
