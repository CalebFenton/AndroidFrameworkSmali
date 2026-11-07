.class public Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService$Default;
.super Ljava/lang/Object;
.source "IDataAccessService.java"

# interfaces
.implements Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist logApiCallStats(IJI)V
    .registers 5
    .param p1, "apiName"    # I
    .param p2, "latencyMillis"    # J
    .param p4, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback;)V
    .registers 4
    .param p1, "operationCode"    # I
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
