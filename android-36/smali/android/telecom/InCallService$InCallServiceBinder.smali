.class final Landroid/telecom/InCallService$InCallServiceBinder;
.super Lcom/android/internal/telecom/IInCallService$Stub;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InCallServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/InCallService;


# direct methods
.method private constructor blacklist <init>(Landroid/telecom/InCallService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 391
    iput-object p1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IInCallService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o addCall(Landroid/telecom/ParcelableCall;)V
    .registers 4
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .line 399
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 400
    return-void
.end method

.method public greylist-max-o bringToForeground(Z)V
    .registers 5
    .param p1, "showDialpad"    # Z

    .line 443
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 444
    return-void
.end method

.method public blacklist onAvailableCallEndpointsChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 432
    .local p1, "availableEndpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 434
    return-void
.end method

.method public greylist-max-o onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 4
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    .line 422
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 423
    return-void
.end method

.method public blacklist onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V
    .registers 4
    .param p1, "callEndpoint"    # Landroid/telecom/CallEndpoint;

    .line 427
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 428
    return-void
.end method

.method public greylist-max-o onCanAddCallChanged(Z)V
    .registers 5
    .param p1, "canAddCall"    # Z

    .line 448
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 450
    return-void
.end method

.method public greylist-max-o onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 459
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 460
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 461
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 462
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 463
    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 464
    return-void
.end method

.method public greylist-max-o onHandoverComplete(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 483
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 484
    return-void
.end method

.method public greylist-max-o onHandoverFailed(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 478
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 479
    return-void
.end method

.method public blacklist onMuteStateChanged(Z)V
    .registers 5
    .param p1, "isMuted"    # Z

    .line 438
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 439
    return-void
.end method

.method public greylist-max-o onRttInitiationFailure(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 473
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 474
    return-void
.end method

.method public greylist-max-o onRttUpgradeRequest(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 468
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 469
    return-void
.end method

.method public greylist-max-o setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V
    .registers 4
    .param p1, "inCallAdapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    .line 394
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 395
    return-void
.end method

.method public greylist-max-o setPostDial(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 410
    return-void
.end method

.method public greylist-max-o setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 414
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 415
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 416
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 417
    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 418
    return-void
.end method

.method public greylist-max-o silenceRinger()V
    .registers 3

    .line 454
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 455
    return-void
.end method

.method public greylist-max-o updateCall(Landroid/telecom/ParcelableCall;)V
    .registers 4
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .line 404
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 405
    return-void
.end method
