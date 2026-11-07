.class public Landroid/federatedcompute/aidl/IExampleStoreIterator$Default;
.super Ljava/lang/Object;
.source "IExampleStoreIterator.java"

# interfaces
.implements Landroid/federatedcompute/aidl/IExampleStoreIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/aidl/IExampleStoreIterator;
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

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist next(Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
