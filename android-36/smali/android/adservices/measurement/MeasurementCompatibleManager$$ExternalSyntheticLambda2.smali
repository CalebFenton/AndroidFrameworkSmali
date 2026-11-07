.class public final synthetic Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/adservices/measurement/MeasurementCompatibleManager;

.field public final synthetic blacklist f$1:Landroid/adservices/measurement/RegistrationRequest$Builder;

.field public final synthetic blacklist f$2:Landroid/adservices/measurement/IMeasurementService;

.field public final synthetic blacklist f$3:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$4:Landroid/os/OutcomeReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;->f$0:Landroid/adservices/measurement/MeasurementCompatibleManager;

    iput-object p2, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;->f$1:Landroid/adservices/measurement/RegistrationRequest$Builder;

    iput-object p3, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;->f$2:Landroid/adservices/measurement/IMeasurementService;

    iput-object p4, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;->f$4:Landroid/os/OutcomeReceiver;

    return-void
.end method


# virtual methods
.method public final blacklist onAdIdCallback(ZLjava/lang/String;)V
    .registers 10

    .line 0
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;->f$0:Landroid/adservices/measurement/MeasurementCompatibleManager;

    iget-object v1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;->f$1:Landroid/adservices/measurement/RegistrationRequest$Builder;

    iget-object v2, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;->f$2:Landroid/adservices/measurement/IMeasurementService;

    iget-object v3, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;->f$4:Landroid/os/OutcomeReceiver;

    move v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/adservices/measurement/MeasurementCompatibleManager;->$r8$lambda$1WnCtKOFRzwXkqIkRU4xdUL8yyA(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V

    return-void
.end method
