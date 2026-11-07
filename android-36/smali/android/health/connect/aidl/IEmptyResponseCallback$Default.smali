.class public Landroid/health/connect/aidl/IEmptyResponseCallback$Default;
.super Ljava/lang/Object;
.source "IEmptyResponseCallback.java"

# interfaces
.implements Landroid/health/connect/aidl/IEmptyResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/aidl/IEmptyResponseCallback;
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

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .registers 2
    .param p1, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist onResult()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
