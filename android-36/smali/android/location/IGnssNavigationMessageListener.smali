.class public interface abstract Landroid/location/IGnssNavigationMessageListener;
.super Ljava/lang/Object;
.source "IGnssNavigationMessageListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGnssNavigationMessageListener$Stub;,
        Landroid/location/IGnssNavigationMessageListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
