.class public Landroid/federatedcompute/aidl/IResultHandlingService$Default;
.super Ljava/lang/Object;
.source "IResultHandlingService.java"

# interfaces
.implements Landroid/federatedcompute/aidl/IResultHandlingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/aidl/IResultHandlingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handleResult(Landroid/os/Bundle;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    .registers 3
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
