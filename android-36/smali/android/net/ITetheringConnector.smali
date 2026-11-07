.class public interface abstract Landroid/net/ITetheringConnector;
.super Ljava/lang/Object;
.source "ITetheringConnector.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ITetheringConnector$Stub;,
        Landroid/net/ITetheringConnector$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.ITetheringConnector"


# virtual methods
.method public abstract blacklist isTetheringSupported(Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;ZLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setPreferTestNetworks(ZLandroid/net/IIntResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setUsbTethering(ZLjava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startTethering(Landroid/net/TetheringRequestParcel;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopAllTethering(Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopTethering(ILjava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopTetheringRequest(Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist tether(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist untether(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
