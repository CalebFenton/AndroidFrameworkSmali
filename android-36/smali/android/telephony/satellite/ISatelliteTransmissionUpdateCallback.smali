.class public interface abstract Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
.super Ljava/lang/Object;
.source "ISatelliteTransmissionUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;,
        Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.ISatelliteTransmissionUpdateCallback"


# virtual methods
.method public abstract blacklist onReceiveDatagramStateChanged(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSatellitePositionChanged(Landroid/telephony/satellite/PointingInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSendDatagramRequested(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSendDatagramStateChanged(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
