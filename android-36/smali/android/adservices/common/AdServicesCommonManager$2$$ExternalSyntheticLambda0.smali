.class public final synthetic Landroid/adservices/common/AdServicesCommonManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/adservices/common/EnableAdServicesResponse;

.field public final synthetic blacklist f$1:Landroid/os/OutcomeReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/adservices/common/EnableAdServicesResponse;Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/common/AdServicesCommonManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/adservices/common/EnableAdServicesResponse;

    iput-object p2, p0, Landroid/adservices/common/AdServicesCommonManager$2$$ExternalSyntheticLambda0;->f$1:Landroid/os/OutcomeReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/adservices/common/EnableAdServicesResponse;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonManager$2$$ExternalSyntheticLambda0;->f$1:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1}, Landroid/adservices/common/AdServicesCommonManager$2;->lambda$onResult$0(Landroid/adservices/common/EnableAdServicesResponse;Landroid/os/OutcomeReceiver;)V

    return-void
.end method
