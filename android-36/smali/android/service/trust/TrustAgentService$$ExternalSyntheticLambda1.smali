.class public final synthetic Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/trust/TrustAgentService;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/trust/TrustAgentService;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$0:Landroid/service/trust/TrustAgentService;

    iput-object p2, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$0:Landroid/service/trust/TrustAgentService;

    iget-object v1, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Landroid/service/trust/GrantTrustResult;

    invoke-static {v0, v1, p1}, Landroid/service/trust/TrustAgentService;->$r8$lambda$uD3DsiDrofELvUQyVd18HwpW1H4(Landroid/service/trust/TrustAgentService;Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    return-void
.end method
