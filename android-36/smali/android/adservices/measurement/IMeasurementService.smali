.class public interface abstract Landroid/adservices/measurement/IMeasurementService;
.super Ljava/lang/Object;
.source "IMeasurementService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/IMeasurementService$Stub;,
        Landroid/adservices/measurement/IMeasurementService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.measurement.IMeasurementService"


# virtual methods
.method public abstract blacklist deleteRegistrations(Landroid/adservices/measurement/DeletionParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMeasurementApiStatus(Landroid/adservices/measurement/StatusParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementApiStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist register(Landroid/adservices/measurement/RegistrationRequest;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerSource(Landroid/adservices/measurement/SourceRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerWebSource(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerWebTrigger(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist schedulePeriodicJobs(Landroid/adservices/measurement/IMeasurementCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
