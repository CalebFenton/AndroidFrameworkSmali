.class Landroid/net/wifi/nan/WifiNanSessionListener$1;
.super Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;
.source "WifiNanSessionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/WifiNanSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanSessionListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanSessionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/nan/WifiNanSessionListener;

    #@0
    .prologue
    .line 349
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@2
    invoke-direct {p0}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onMatch(I[BI[BI)V
    .locals 4
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "serviceSpecificInfoLength"    # I
    .param p4, "matchFilter"    # [B
    .param p5, "matchFilterLength"    # I

    #@0
    .prologue
    .line 391
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 392
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "peer_id"

    #@8
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    #@b
    .line 393
    const-string/jumbo v2, "message"

    #@e
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@11
    .line 394
    const-string/jumbo v2, "message2"

    #@14
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@17
    .line 396
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@19
    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@1c
    move-result-object v2

    #@1d
    const/16 v3, 0x10

    #@1f
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@22
    move-result-object v1

    #@23
    .line 397
    .local v1, "msg":Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    #@25
    .line 398
    iput p5, v1, Landroid/os/Message;->arg2:I

    #@27
    .line 399
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@2a
    .line 400
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@2c
    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@33
    .line 388
    return-void
.end method

.method public onMessageReceived(I[BI)V
    .locals 4
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .param p3, "messageLength"    # I

    #@0
    .prologue
    .line 429
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 430
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "message"

    #@8
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@b
    .line 432
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@d
    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@10
    move-result-object v2

    #@11
    const/16 v3, 0x80

    #@13
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@16
    move-result-object v1

    #@17
    .line 433
    .local v1, "msg":Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    #@19
    .line 434
    iput p1, v1, Landroid/os/Message;->arg2:I

    #@1b
    .line 435
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@1e
    .line 436
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@20
    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@27
    .line 423
    return-void
.end method

.method public onMessageSendFail(II)V
    .locals 3
    .param p1, "messageId"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 416
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@2
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x40

    #@8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 417
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@e
    .line 418
    iput p2, v0, Landroid/os/Message;->arg2:I

    #@10
    .line 419
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@12
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 413
    return-void
.end method

.method public onMessageSendSuccess(I)V
    .locals 3
    .param p1, "messageId"    # I

    #@0
    .prologue
    .line 407
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@2
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x20

    #@8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 408
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@e
    .line 409
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@10
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 404
    return-void
.end method

.method public onPublishFail(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 354
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@2
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 355
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 356
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@f
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 351
    return-void
.end method

.method public onPublishTerminated(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 363
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@2
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x2

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 364
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 365
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@f
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 360
    return-void
.end method

.method public onSubscribeFail(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 372
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@2
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x4

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 373
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 374
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@f
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 369
    return-void
.end method

.method public onSubscribeTerminated(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 381
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@2
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x8

    #@8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 382
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@e
    .line 383
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@10
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 378
    return-void
.end method
