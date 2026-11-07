.class public final synthetic Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/adservices/measurement/IMeasurementService;

.field public final synthetic blacklist f$1:Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;

.field public final synthetic blacklist f$2:Landroid/adservices/common/CallerMetadata;

.field public final synthetic blacklist f$3:Landroid/adservices/measurement/IMeasurementCallback;

.field public final synthetic blacklist f$4:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$5:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/adservices/measurement/IMeasurementService;Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$0:Landroid/adservices/measurement/IMeasurementService;

    iput-object p2, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$1:Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;

    iput-object p3, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$2:Landroid/adservices/common/CallerMetadata;

    iput-object p4, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$3:Landroid/adservices/measurement/IMeasurementCallback;

    iput-object p5, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$4:Landroid/os/OutcomeReceiver;

    iput-object p6, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$5:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final blacklist onAdIdCallback(ZLjava/lang/String;)V
    .registers 11

    .line 0
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$0:Landroid/adservices/measurement/IMeasurementService;

    iget-object v1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$1:Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;

    iget-object v2, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$2:Landroid/adservices/common/CallerMetadata;

    iget-object v3, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$3:Landroid/adservices/measurement/IMeasurementCallback;

    iget-object v4, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$4:Landroid/os/OutcomeReceiver;

    iget-object v5, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;->f$5:Ljava/util/concurrent/Executor;

    move v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Landroid/adservices/measurement/MeasurementCompatibleManager;->lambda$registerSource$3(Landroid/adservices/measurement/IMeasurementService;Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;Ljava/util/concurrent/Executor;ZLjava/lang/String;)V

    return-void
.end method
