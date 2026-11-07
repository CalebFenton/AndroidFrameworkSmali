.class public final synthetic Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;

.field public final synthetic blacklist f$1:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;

.field public final synthetic blacklist f$2:Landroid/net/ipsec/ike/ChildSessionConfiguration;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;

    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase$$ExternalSyntheticLambda0;->f$2:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase$$ExternalSyntheticLambda0;->f$2:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    invoke-static {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->$r8$lambda$Jyz4rSk698ZOZWzbHINWH3PVBSM(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;Landroid/net/ipsec/ike/ChildSessionConfiguration;)V

    return-void
.end method
