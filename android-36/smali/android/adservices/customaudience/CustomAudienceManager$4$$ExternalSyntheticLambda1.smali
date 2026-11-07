.class public final synthetic Landroid/adservices/customaudience/CustomAudienceManager$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/adservices/common/AdServicesOutcomeReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudienceManager$4$$ExternalSyntheticLambda1;->f$0:Landroid/adservices/common/AdServicesOutcomeReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudienceManager$4$$ExternalSyntheticLambda1;->f$0:Landroid/adservices/common/AdServicesOutcomeReceiver;

    invoke-static {v0}, Landroid/adservices/customaudience/CustomAudienceManager$4;->lambda$onSuccess$0(Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    return-void
.end method
