.class public final synthetic Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

.field public final synthetic blacklist f$1:Landroid/net/ipsec/ike/exceptions/IkeException;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$$ExternalSyntheticLambda1;->f$1:Landroid/net/ipsec/ike/exceptions/IkeException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$$ExternalSyntheticLambda1;->f$1:Landroid/net/ipsec/ike/exceptions/IkeException;

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->$r8$lambda$Cq1CWwmVk2JpOp6bpYmJ9Vzni30(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-void
.end method
