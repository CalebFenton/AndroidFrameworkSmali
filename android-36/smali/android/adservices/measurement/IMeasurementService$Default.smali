.class public Landroid/adservices/measurement/IMeasurementService$Default;
.super Ljava/lang/Object;
.source "IMeasurementService.java"

# interfaces
.implements Landroid/adservices/measurement/IMeasurementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/IMeasurementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deleteRegistrations(Landroid/adservices/measurement/DeletionParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    .registers 4
    .param p1, "params"    # Landroid/adservices/measurement/DeletionParam;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist getMeasurementApiStatus(Landroid/adservices/measurement/StatusParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementApiStatusCallback;)V
    .registers 4
    .param p1, "statusParam"    # Landroid/adservices/measurement/StatusParam;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/measurement/IMeasurementApiStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist register(Landroid/adservices/measurement/RegistrationRequest;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    .registers 4
    .param p1, "params"    # Landroid/adservices/measurement/RegistrationRequest;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist registerSource(Landroid/adservices/measurement/SourceRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    .registers 4
    .param p1, "params"    # Landroid/adservices/measurement/SourceRegistrationRequestInternal;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist registerWebSource(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    .registers 4
    .param p1, "params"    # Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist registerWebTrigger(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    .registers 4
    .param p1, "params"    # Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist schedulePeriodicJobs(Landroid/adservices/measurement/IMeasurementCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method
