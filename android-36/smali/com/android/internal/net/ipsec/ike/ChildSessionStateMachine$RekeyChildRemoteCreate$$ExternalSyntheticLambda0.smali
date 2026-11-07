.class public final synthetic Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;

.field public final synthetic blacklist f$1:Landroid/net/IpSecTransform;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;Landroid/net/IpSecTransform;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate$$ExternalSyntheticLambda0;->f$1:Landroid/net/IpSecTransform;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate$$ExternalSyntheticLambda0;->f$1:Landroid/net/IpSecTransform;

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->$r8$lambda$nFE8es8bw0HzSCfMQaYrhrS77Vk(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;Landroid/net/IpSecTransform;)V

    return-void
.end method
