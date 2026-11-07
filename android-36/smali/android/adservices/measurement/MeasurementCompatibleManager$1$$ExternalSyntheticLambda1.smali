.class public final synthetic Landroid/adservices/measurement/MeasurementCompatibleManager$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Landroid/adservices/measurement/MeasurementErrorResponse;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Landroid/adservices/measurement/MeasurementErrorResponse;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$1$$ExternalSyntheticLambda1;->f$1:Landroid/adservices/measurement/MeasurementErrorResponse;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$1$$ExternalSyntheticLambda1;->f$1:Landroid/adservices/measurement/MeasurementErrorResponse;

    invoke-static {v0, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager$1;->lambda$onFailure$1(Landroid/os/OutcomeReceiver;Landroid/adservices/measurement/MeasurementErrorResponse;)V

    return-void
.end method
