.class Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 344
    :pswitch_0
    return v4

    #@9
    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@b
    const-string/jumbo v1, "Lingering"

    #@e
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    #@11
    .line 301
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@13
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@15
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get10(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@1c
    .line 302
    return v4

    #@1d
    .line 304
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@1f
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@21
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@28
    .line 305
    return v4

    #@29
    .line 307
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2b
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 308
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@33
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    #@36
    move-result-object v0

    #@37
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@39
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@40
    .line 309
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@42
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-set1(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@45
    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@47
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap0(Lcom/android/server/connectivity/NetworkMonitor;)V

    #@4a
    .line 312
    return v4

    #@4b
    .line 315
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@4d
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v2, "Forcing reevaluation for UID "

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    #@66
    .line 316
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@68
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@6a
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;I)I

    #@6d
    .line 317
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@6f
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@71
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@74
    move-result-object v1

    #@75
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@78
    .line 318
    return v4

    #@79
    .line 320
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@7b
    new-instance v1, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v2, "CaptivePortal App responded with "

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    #@94
    .line 321
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@96
    packed-switch v0, :pswitch_data_1

    #@99
    .line 342
    :goto_0
    return v4

    #@9a
    .line 323
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@9c
    const v1, 0x82008

    #@9f
    invoke-virtual {v0, v1, v5, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    #@a2
    goto :goto_0

    #@a3
    .line 326
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@a5
    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    #@a8
    .line 329
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@aa
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@ac
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@af
    move-result-object v1

    #@b0
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@b3
    goto :goto_0

    #@b4
    .line 332
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@b6
    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    #@b9
    .line 333
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@bb
    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-set5(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    #@be
    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@c0
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    #@c3
    move-result-object v0

    #@c4
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@c6
    .line 336
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@c8
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@cb
    move-result-object v2

    #@cc
    .line 335
    const v3, 0x82002

    #@cf
    .line 334
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@d2
    move-result-object v1

    #@d3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@d6
    .line 338
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@d8
    invoke-static {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;I)I

    #@db
    .line 339
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@dd
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@df
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@e2
    move-result-object v1

    #@e3
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@e6
    goto :goto_0

    #@e7
    .line 298
    nop

    #@e8
    :pswitch_data_0
    .packed-switch 0x82001
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    #@104
    .line 321
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
