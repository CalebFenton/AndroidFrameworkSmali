.class public interface abstract Landroid/ranging/IRangingAdapter;
.super Ljava/lang/Object;
.source "IRangingAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/IRangingAdapter$Stub;,
        Landroid/ranging/IRangingAdapter$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.ranging.IRangingAdapter"


# virtual methods
.method public abstract blacklist addOobDevice(Landroid/ranging/SessionHandle;Landroid/ranging/oob/OobResponderRangingConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist addRawDevice(Landroid/ranging/SessionHandle;Landroid/ranging/raw/RawResponderRangingConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deviceOobClosed(Landroid/ranging/oob/OobHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deviceOobDisconnected(Landroid/ranging/oob/OobHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deviceOobReconnected(Landroid/ranging/oob/OobHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist oobDataReceived(Landroid/ranging/oob/OobHandle;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reconfigureRangingInterval(Landroid/ranging/SessionHandle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerCapabilitiesCallback(Landroid/ranging/IRangingCapabilitiesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerOobSendDataListener(Landroid/ranging/oob/IOobSendDataListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeDevice(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startRanging(Landroid/content/AttributionSource;Landroid/ranging/SessionHandle;Landroid/ranging/RangingPreference;Landroid/ranging/IRangingCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopRanging(Landroid/ranging/SessionHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterCapabilitiesCallback(Landroid/ranging/IRangingCapabilitiesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
