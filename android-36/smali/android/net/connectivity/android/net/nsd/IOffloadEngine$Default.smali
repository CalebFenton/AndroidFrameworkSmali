.class public Landroid/net/connectivity/android/net/nsd/IOffloadEngine$Default;
.super Ljava/lang/Object;
.source "IOffloadEngine.java"

# interfaces
.implements Landroid/net/connectivity/android/net/nsd/IOffloadEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/nsd/IOffloadEngine;
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

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onOffloadServiceRemoved(Landroid/net/nsd/OffloadServiceInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/net/nsd/OffloadServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onOffloadServiceUpdated(Landroid/net/nsd/OffloadServiceInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/net/nsd/OffloadServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
