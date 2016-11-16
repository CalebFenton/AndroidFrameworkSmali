.class Landroid/net/sip/SipAudioCall$1;
.super Landroid/net/sip/SipSession$Listener;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/sip/SipAudioCall;


# direct methods
.method constructor <init>(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/sip/SipAudioCall;

    #@0
    .prologue
    .line 376
    iput-object p1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2
    invoke-direct {p0}, Landroid/net/sip/SipSession$Listener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 480
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "onCallBusy: "

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->-wrap3(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    #@19
    .line 481
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@1b
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get3(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    #@1e
    move-result-object v0

    #@1f
    .line 482
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    #@21
    .line 484
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@23
    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallBusy(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 489
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@28
    const/4 v3, 0x0

    #@29
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->-wrap2(Landroid/net/sip/SipAudioCall;Z)V

    #@2c
    .line 479
    return-void

    #@2d
    .line 485
    :catch_0
    move-exception v1

    #@2e
    .line 486
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@30
    const-string/jumbo v3, "onCallBusy(): "

    #@33
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-wrap4(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@36
    goto :goto_0
.end method

.method public onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 495
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "onCallChangedFailed: "

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->-wrap3(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    #@19
    .line 496
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@1b
    invoke-static {v2, p2}, Landroid/net/sip/SipAudioCall;->-set0(Landroid/net/sip/SipAudioCall;I)I

    #@1e
    .line 497
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@20
    invoke-static {v2, p3}, Landroid/net/sip/SipAudioCall;->-set1(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;

    #@23
    .line 498
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@25
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get3(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    #@28
    move-result-object v0

    #@29
    .line 499
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    #@2b
    .line 501
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2d
    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2f
    invoke-static {v3}, Landroid/net/sip/SipAudioCall;->-get0(Landroid/net/sip/SipAudioCall;)I

    #@32
    move-result v3

    #@33
    invoke-virtual {v0, v2, v3, p3}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 494
    :cond_0
    :goto_0
    return-void

    #@37
    .line 503
    :catch_0
    move-exception v1

    #@38
    .line 504
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@3a
    const-string/jumbo v3, "onCallBusy():"

    #@3d
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-wrap4(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@40
    goto :goto_0
.end method

.method public onCallEnded(Landroid/net/sip/SipSession;)V
    .locals 6
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 456
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "onCallEnded: "

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, " mSipSession:"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    iget-object v4, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@1c
    invoke-static {v4}, Landroid/net/sip/SipAudioCall;->-get5(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->-wrap3(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    #@2b
    .line 458
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2d
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get6(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    #@30
    move-result-object v2

    #@31
    if-ne p1, v2, :cond_0

    #@33
    .line 459
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@35
    invoke-static {v2, v5}, Landroid/net/sip/SipAudioCall;->-set3(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession;

    #@38
    .line 460
    return-void

    #@39
    .line 464
    :cond_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@3b
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get6(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    #@3e
    move-result-object v2

    #@3f
    if-nez v2, :cond_1

    #@41
    .line 465
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@43
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get5(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    #@46
    move-result-object v2

    #@47
    if-eq p1, v2, :cond_2

    #@49
    :cond_1
    return-void

    #@4a
    .line 467
    :cond_2
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@4c
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get3(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    #@4f
    move-result-object v0

    #@50
    .line 468
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_3

    #@52
    .line 470
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@54
    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallEnded(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 475
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@59
    invoke-virtual {v2}, Landroid/net/sip/SipAudioCall;->close()V

    #@5c
    .line 455
    return-void

    #@5d
    .line 471
    :catch_0
    move-exception v1

    #@5e
    .line 472
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@60
    const-string/jumbo v3, "onCallEnded(): "

    #@63
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-wrap4(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@66
    goto :goto_0
.end method

.method public onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 430
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2
    invoke-static {v2, p2}, Landroid/net/sip/SipAudioCall;->-set2(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 431
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "onCallEstablished(): "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    iget-object v4, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@15
    invoke-static {v4}, Landroid/net/sip/SipAudioCall;->-get4(Landroid/net/sip/SipAudioCall;)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->-wrap3(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    #@24
    .line 434
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@26
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get6(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    #@29
    move-result-object v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 435
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2e
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get6(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    #@31
    move-result-object v2

    #@32
    if-ne p1, v2, :cond_0

    #@34
    .line 436
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@36
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-wrap6(Landroid/net/sip/SipAudioCall;)V

    #@39
    .line 437
    return-void

    #@3a
    .line 440
    :cond_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@3c
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get3(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    #@3f
    move-result-object v0

    #@40
    .line 441
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_1

    #@42
    .line 443
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@44
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get1(Landroid/net/sip/SipAudioCall;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_2

    #@4a
    .line 444
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@4c
    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallHeld(Landroid/net/sip/SipAudioCall;)V

    #@4f
    .line 429
    :cond_1
    :goto_0
    return-void

    #@50
    .line 446
    :cond_2
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@52
    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    goto :goto_0

    #@56
    .line 448
    :catch_0
    move-exception v1

    #@57
    .line 449
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@59
    const-string/jumbo v3, "onCallEstablished(): "

    #@5c
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-wrap4(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5f
    goto :goto_0
.end method

.method public onCallTransferring(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "newSession"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 539
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "onCallTransferring: mSipSession="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    .line 540
    iget-object v4, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@10
    invoke-static {v4}, Landroid/net/sip/SipAudioCall;->-get5(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    #@13
    move-result-object v4

    #@14
    .line 539
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    .line 540
    const-string/jumbo v4, " newSession="

    #@1b
    .line 539
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->-wrap3(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    #@2a
    .line 541
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2c
    invoke-static {v2, p1}, Landroid/net/sip/SipAudioCall;->-set3(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession;

    #@2f
    .line 543
    if-nez p2, :cond_0

    #@31
    .line 544
    :try_start_0
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    #@34
    move-result-object v2

    #@35
    .line 545
    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@37
    invoke-static {v3}, Landroid/net/sip/SipAudioCall;->-wrap1(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SimpleSessionDescription;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    const/16 v4, 0xf

    #@41
    .line 544
    invoke-virtual {p1, v2, v3, v4}, Landroid/net/sip/SipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    #@44
    .line 538
    :goto_0
    return-void

    #@45
    .line 547
    :cond_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@47
    invoke-static {v2, p2}, Landroid/net/sip/SipAudioCall;->-wrap0(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    .line 548
    .local v0, "answer":Ljava/lang/String;
    const/4 v2, 0x5

    #@50
    invoke-virtual {p1, v0, v2}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    goto :goto_0

    #@54
    .line 550
    .end local v0    # "answer":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@55
    .line 551
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@57
    const-string/jumbo v3, "onCallTransferring()"

    #@5a
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-wrap4(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5d
    .line 552
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V

    #@60
    goto :goto_0
.end method

.method public onCalling(Landroid/net/sip/SipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 379
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "onCalling: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->-wrap3(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    #@19
    .line 380
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@1b
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get3(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    #@1e
    move-result-object v0

    #@1f
    .line 381
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    #@21
    .line 383
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@23
    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCalling(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 378
    :cond_0
    :goto_0
    return-void

    #@27
    .line 384
    :catch_0
    move-exception v1

    #@28
    .line 385
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2a
    const-string/jumbo v3, "onCalling():"

    #@2d
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-wrap4(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    goto :goto_0
.end method

.method public onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2
    invoke-static {v0, p2, p3}, Landroid/net/sip/SipAudioCall;->-wrap5(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V

    #@5
    .line 511
    return-void
.end method

.method public onRegistering(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 516
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/SipSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "duration"    # I

    #@0
    .prologue
    .line 532
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 527
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 521
    return-void
.end method

.method public onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 407
    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2
    monitor-enter v3

    #@3
    .line 408
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@5
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get5(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    #@8
    move-result-object v2

    #@9
    if-eqz v2, :cond_0

    #@b
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@d
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get2(Landroid/net/sip/SipAudioCall;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 409
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->getCallId()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 410
    iget-object v4, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@19
    invoke-static {v4}, Landroid/net/sip/SipAudioCall;->-get5(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Landroid/net/sip/SipSession;->getCallId()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 409
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 418
    :try_start_1
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@29
    invoke-static {v2, p3}, Landroid/net/sip/SipAudioCall;->-wrap0(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 419
    .local v0, "answer":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@33
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get5(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    #@36
    move-result-object v2

    #@37
    const/4 v4, 0x5

    #@38
    invoke-virtual {v2, v0, v4}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .end local v0    # "answer":Ljava/lang/String;
    :goto_0
    monitor-exit v3

    #@3c
    .line 405
    return-void

    #@3d
    .line 412
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    monitor-exit v3

    #@41
    .line 413
    return-void

    #@42
    .line 420
    :catch_0
    move-exception v1

    #@43
    .line 421
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@45
    const-string/jumbo v4, "onRinging():"

    #@48
    invoke-static {v2, v4, v1}, Landroid/net/sip/SipAudioCall;->-wrap4(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4b
    .line 422
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 407
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    #@50
    monitor-exit v3

    #@51
    throw v2
.end method

.method public onRingingBack(Landroid/net/sip/SipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 392
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "onRingingBackk: "

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->-wrap3(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    #@19
    .line 393
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@1b
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-get3(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    #@1e
    move-result-object v0

    #@1f
    .line 394
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    #@21
    .line 396
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@23
    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onRingingBack(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 391
    :cond_0
    :goto_0
    return-void

    #@27
    .line 397
    :catch_0
    move-exception v1

    #@28
    .line 398
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #@2a
    const-string/jumbo v3, "onRingingBack():"

    #@2d
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-wrap4(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    goto :goto_0
.end method
