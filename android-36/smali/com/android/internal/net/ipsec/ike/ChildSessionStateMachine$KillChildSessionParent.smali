.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KillChildSessionParent"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$1XfXJAiG07G24d0iJADsC4JRMLI(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;->lambda$processStateMessage$0()V

    return-void
.end method

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

    .line 810
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$processStateMessage$0()V
    .registers 2

    .line 818
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/ipsec/ike/ChildSessionCallback;->onClosed()V

    .line 819
    return-void
.end method


# virtual methods
.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 832
    const/16 v0, 0x65

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 813
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1e

    .line 826
    return v1

    .line 815
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mcloseAllSaRecords(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Z)V

    .line 816
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 823
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->quitSessionNow()V

    .line 824
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0xca
        :pswitch_7
    .end packed-switch
.end method
