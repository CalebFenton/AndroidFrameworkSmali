.class public Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Default;
.super Ljava/lang/Object;
.source "ISatelliteTransmissionUpdateCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
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

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onReceiveDatagramStateChanged(III)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "receivePendingCount"    # I
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onSatellitePositionChanged(Landroid/telephony/satellite/PointingInfo;)V
    .registers 2
    .param p1, "pointingInfo"    # Landroid/telephony/satellite/PointingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onSendDatagramRequested(I)V
    .registers 2
    .param p1, "datagramType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist onSendDatagramStateChanged(IIII)V
    .registers 5
    .param p1, "datagramType"    # I
    .param p2, "state"    # I
    .param p3, "sendPendingCount"    # I
    .param p4, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
