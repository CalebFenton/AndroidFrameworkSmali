.class public Landroid/federatedcompute/aidl/IExampleStoreCallback$Default;
.super Ljava/lang/Object;
.source "IExampleStoreCallback.java"

# interfaces
.implements Landroid/federatedcompute/aidl/IExampleStoreCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/aidl/IExampleStoreCallback;
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

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onStartQueryFailure(I)V
    .registers 2
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onStartQuerySuccess(Landroid/federatedcompute/aidl/IExampleStoreIterator;)V
    .registers 2
    .param p1, "iterator"    # Landroid/federatedcompute/aidl/IExampleStoreIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
