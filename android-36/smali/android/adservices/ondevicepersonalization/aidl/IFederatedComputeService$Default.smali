.class public Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService$Default;
.super Ljava/lang/Object;
.source "IFederatedComputeService.java"

# interfaces
.implements Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
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

.method public blacklist cancel(Ljava/lang/String;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback;)V
    .registers 3
    .param p1, "populationName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist schedule(Landroid/federatedcompute/common/TrainingOptions;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback;)V
    .registers 3
    .param p1, "trainingOptions"    # Landroid/federatedcompute/common/TrainingOptions;
    .param p2, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
