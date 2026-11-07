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
.field final synthetic blacklist this$0:Landroid/net/sip/SipSession;


# direct methods
.method constructor blacklist <init>(Landroid/net/sip/SipSession;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/sip/SipSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 467
    iput-object p1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallBusy(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 509
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 510
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCallBusy(Landroid/net/sip/SipSession;)V

    .line 512
    :cond_13
    return-void
.end method

.method public blacklist onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 6
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 528
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 529
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    .line 532
    :cond_13
    return-void
.end method

.method public blacklist onCallEnded(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 502
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 503
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCallEnded(Landroid/net/sip/SipSession;)V

    .line 505
    :cond_13
    return-void
.end method

.method public blacklist onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .registers 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .line 494
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 495
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    .line 498
    :cond_13
    return-void
.end method

.method public blacklist onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .registers 6
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .line 517
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 518
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    new-instance v1, Landroid/net/sip/SipSession;

    iget-object v2, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v2}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onCallTransferring(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    .line 523
    :cond_1c
    return-void
.end method

.method public blacklist onCalling(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 470
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 471
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCalling(Landroid/net/sip/SipSession;)V

    .line 473
    :cond_13
    return-void
.end method

.method public blacklist onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 6
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 536
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 537
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    .line 539
    :cond_13
    return-void
.end method

.method public blacklist onRegistering(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 543
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 544
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRegistering(Landroid/net/sip/SipSession;)V

    .line 546
    :cond_13
    return-void
.end method

.method public blacklist onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .registers 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    .line 550
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 551
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onRegistrationDone(Landroid/net/sip/SipSession;I)V

    .line 553
    :cond_13
    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 6
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 558
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 559
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    .line 562
    :cond_13
    return-void
.end method

.method public blacklist onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 566
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 567
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRegistrationTimeout(Landroid/net/sip/SipSession;)V

    .line 569
    :cond_13
    return-void
.end method

.method public blacklist onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 6
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    .line 478
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 479
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 482
    :cond_13
    return-void
.end method

.method public blacklist onRingingBack(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 486
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 487
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-static {v0}, Landroid/net/sip/SipSession;->-$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRingingBack(Landroid/net/sip/SipSession;)V

    .line 489
    :cond_13
    return-void
.end method
