.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildRemoteDelete;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteChildRemoteDelete"
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1520
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V

    return-void
.end method


# virtual methods
.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1538
    const/16 v0, 0x6c

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 1523
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_18

    .line 1532
    return v1

    .line 1525
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    .line 1526
    .local v0, "req":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;
    iget v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_17

    .line 1527
    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->requestPayloads:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildRemoteDelete;->handleDeleteSessionRequest(Ljava/util/List;)V

    .line 1528
    const/4 v1, 0x1

    return v1

    .line 1530
    :cond_17
    return v1

    :pswitch_data_18
    .packed-switch 0x12e
        :pswitch_7
    .end packed-switch
.end method
