.class public final synthetic Landroid/adservices/customaudience/CustomAudienceManager$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Landroid/adservices/common/FledgeErrorResponse;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudienceManager$2$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/adservices/customaudience/CustomAudienceManager$2$$ExternalSyntheticLambda1;->f$1:Landroid/adservices/common/FledgeErrorResponse;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudienceManager$2$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudienceManager$2$$ExternalSyntheticLambda1;->f$1:Landroid/adservices/common/FledgeErrorResponse;

    invoke-static {v0, v1}, Landroid/adservices/customaudience/CustomAudienceManager$2;->lambda$onFailure$1(Landroid/os/OutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V

    return-void
.end method
