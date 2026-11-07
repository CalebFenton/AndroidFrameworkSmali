.class public Landroid/media/INearbyMediaDevicesUpdateCallback$Default;
.super Ljava/lang/Object;
.source "INearbyMediaDevicesUpdateCallback.java"

# interfaces
.implements Landroid/media/INearbyMediaDevicesUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/INearbyMediaDevicesUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDevicesUpdated(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/NearbyDevice;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    .local p1, "nearbyDevices":Ljava/util/List;, "Ljava/util/List<Landroid/media/NearbyDevice;>;"
    return-void
.end method
