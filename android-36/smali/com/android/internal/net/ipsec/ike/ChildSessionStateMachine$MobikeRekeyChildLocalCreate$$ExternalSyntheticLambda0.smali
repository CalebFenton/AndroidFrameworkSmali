.class public final synthetic Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;

.field public final synthetic blacklist f$1:Landroid/net/IpSecTransform;

.field public final synthetic blacklist f$2:Landroid/net/IpSecTransform;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate$$ExternalSyntheticLambda0;->f$1:Landroid/net/IpSecTransform;

    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate$$ExternalSyntheticLambda0;->f$2:Landroid/net/IpSecTransform;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate$$ExternalSyntheticLambda0;->f$1:Landroid/net/IpSecTransform;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate$$ExternalSyntheticLambda0;->f$2:Landroid/net/IpSecTransform;

    invoke-static {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->$r8$lambda$1MICXbyQVD94sgzDDof54AoMn5U(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method
