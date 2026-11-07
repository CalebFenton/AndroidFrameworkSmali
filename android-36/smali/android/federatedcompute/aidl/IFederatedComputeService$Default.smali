.class public Landroid/federatedcompute/aidl/IFederatedComputeService$Default;
.super Ljava/lang/Object;
.source "IFederatedComputeService.java"

# interfaces
.implements Landroid/federatedcompute/aidl/IFederatedComputeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/aidl/IFederatedComputeService;
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

.method public blacklist cancel(Landroid/content/ComponentName;Ljava/lang/String;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    .registers 4
    .param p1, "ownerComponent"    # Landroid/content/ComponentName;
    .param p2, "populationName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist schedule(Ljava/lang/String;Landroid/federatedcompute/common/TrainingOptions;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    .registers 4
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "trainingOptions"    # Landroid/federatedcompute/common/TrainingOptions;
    .param p3, "callback"    # Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
