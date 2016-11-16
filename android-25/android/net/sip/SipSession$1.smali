.class Landroid/net/sip/SipSession$1;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/sip/SipSession;->createListener()Landroid/net/sip/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/sip/SipSession;


# direct methods
.method constructor <init>(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 465
    iput-object p1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 508
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCallBusy(Landroid/net/sip/SipSession;)V

    #@13
    .line 506
    :cond_0
    return-void
.end method

.method public onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 526
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 527
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    #@13
    .line 525
    :cond_0
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 501
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCallEnded(Landroid/net/sip/SipSession;)V

    #@13
    .line 499
    :cond_0
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 493
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    #@13
    .line 491
    :cond_0
    return-void
.end method

.method public onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 516
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    .line 517
    new-instance v1, Landroid/net/sip/SipSession;

    #@10
    iget-object v2, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@12
    invoke-static {v2}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, p1, v2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V

    #@19
    .line 516
    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onCallTransferring(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    #@1c
    .line 514
    :cond_0
    return-void
.end method

.method public onCalling(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 469
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCalling(Landroid/net/sip/SipSession;)V

    #@13
    .line 467
    :cond_0
    return-void
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 534
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 535
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    #@13
    .line 533
    :cond_0
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 542
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRegistering(Landroid/net/sip/SipSession;)V

    #@13
    .line 540
    :cond_0
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 549
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onRegistrationDone(Landroid/net/sip/SipSession;I)V

    #@13
    .line 547
    :cond_0
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 556
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 557
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    #@13
    .line 555
    :cond_0
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 564
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 565
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRegistrationTimeout(Landroid/net/sip/SipSession;)V

    #@13
    .line 563
    :cond_0
    return-void
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 477
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    #@13
    .line 475
    :cond_0
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@2
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 485
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@a
    invoke-static {v0}, Landroid/net/sip/SipSession;->-get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #@10
    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRingingBack(Landroid/net/sip/SipSession;)V

    #@13
    .line 483
    :cond_0
    return-void
.end method
