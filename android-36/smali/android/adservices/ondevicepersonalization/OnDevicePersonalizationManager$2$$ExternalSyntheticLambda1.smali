.class public final synthetic Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Bundle;

.field public final synthetic blacklist f$1:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

.field public final synthetic blacklist f$2:Landroid/os/OutcomeReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;Landroid/os/OutcomeReceiver;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda1;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda1;->f$1:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda1;->f$2:Landroid/os/OutcomeReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda1;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda1;->f$1:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda1;->f$2:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->lambda$onSuccess$0(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;Landroid/os/OutcomeReceiver;)V

    return-void
.end method
