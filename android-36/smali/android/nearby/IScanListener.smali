.class public interface abstract Landroid/nearby/IScanListener;
.super Ljava/lang/Object;
.source "IScanListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/IScanListener$Stub;,
        Landroid/nearby/IScanListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.nearby.IScanListener"


# virtual methods
.method public abstract blacklist onDiscovered(Landroid/nearby/NearbyDeviceParcelable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onLost(Landroid/nearby/NearbyDeviceParcelable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUpdated(Landroid/nearby/NearbyDeviceParcelable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
