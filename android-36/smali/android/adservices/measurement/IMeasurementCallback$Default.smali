.class public Landroid/adservices/measurement/IMeasurementCallback$Default;
.super Ljava/lang/Object;
.source "IMeasurementCallback.java"

# interfaces
.implements Landroid/adservices/measurement/IMeasurementCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/IMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onFailure(Landroid/adservices/measurement/MeasurementErrorResponse;)V
    .registers 2
    .param p1, "responseParcel"    # Landroid/adservices/measurement/MeasurementErrorResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist onResult()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
