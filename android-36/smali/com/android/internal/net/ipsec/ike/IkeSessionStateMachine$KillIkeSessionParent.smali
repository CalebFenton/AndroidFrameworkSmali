.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KillIkeSessionParent"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$yenSOTnJULkFRCRu-OrNmsjFTwI(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;->lambda$processStateMessage$0()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1303
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$processStateMessage$0()V
    .registers 2

    .line 1311
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSessionCallback(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/net/ipsec/ike/IkeSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/ipsec/ike/IkeSessionCallback;->onClosed()V

    .line 1312
    return-void
.end method


# virtual methods
.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1323
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 1306
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_24

    .line 1317
    return v1

    .line 1308
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mcloseAllSaRecords(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Z)V

    .line 1309
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1313
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1314
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->quitSessionNow()V

    .line 1315
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_24
    .packed-switch 0xca
        :pswitch_7
    .end packed-switch
.end method
