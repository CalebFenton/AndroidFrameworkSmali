.class public Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Default;
.super Ljava/lang/Object;
.source "ISatelliteProvisionStateCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteProvisionStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
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

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSatelliteProvisionStateChanged(Z)V
    .registers 2
    .param p1, "provisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist onSatelliteSubscriptionProvisionStateChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    .local p1, "satelliteSubscriberProvisionStatus":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;>;"
    return-void
.end method
