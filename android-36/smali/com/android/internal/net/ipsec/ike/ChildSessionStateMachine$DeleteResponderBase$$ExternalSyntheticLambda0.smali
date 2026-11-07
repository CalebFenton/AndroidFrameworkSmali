.class public final synthetic Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;

.field public final synthetic blacklist f$1:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->$r8$lambda$uNzyNT1baGR_73e1g1rVn7MlC1s(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;)V

    return-void
.end method
