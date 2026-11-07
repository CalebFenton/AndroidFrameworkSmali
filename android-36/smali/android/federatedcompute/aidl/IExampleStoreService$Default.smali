.class public Landroid/federatedcompute/aidl/IExampleStoreService$Default;
.super Ljava/lang/Object;
.source "IExampleStoreService.java"

# interfaces
.implements Landroid/federatedcompute/aidl/IExampleStoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/aidl/IExampleStoreService;
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

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist startQuery(Landroid/os/Bundle;Landroid/federatedcompute/aidl/IExampleStoreCallback;)V
    .registers 3
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/federatedcompute/aidl/IExampleStoreCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
