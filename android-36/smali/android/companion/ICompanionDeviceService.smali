.class public interface abstract Landroid/companion/ICompanionDeviceService;
.super Ljava/lang/Object;
.source "ICompanionDeviceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceService$Stub;,
        Landroid/companion/ICompanionDeviceService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.ICompanionDeviceService"


# virtual methods
.method public abstract blacklist onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
