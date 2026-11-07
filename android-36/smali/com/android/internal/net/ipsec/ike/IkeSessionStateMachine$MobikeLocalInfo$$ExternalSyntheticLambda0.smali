.class public final synthetic Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;

.field public final synthetic blacklist f$1:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo$$ExternalSyntheticLambda0;->f$1:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo$$ExternalSyntheticLambda0;->f$1:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->$r8$lambda$z-iAJI4MlriV4XCV-OqHLqOOfWs(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    return-void
.end method
