.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ClosedAndAwaitResponse;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClosedAndAwaitResponse"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1278
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ClosedAndAwaitResponse;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ClosedAndAwaitResponse;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1296
    const/16 v0, 0x6a

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .line 1281
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 1290
    const/4 v0, 0x0

    return v0

    .line 1287
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ClosedAndAwaitResponse;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->quitSessionNow()V

    .line 1288
    const/4 v0, 0x1

    return v0

    :pswitch_data_e
    .packed-switch 0x12f
        :pswitch_7
    .end packed-switch
.end method
