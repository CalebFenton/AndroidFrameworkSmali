.class public interface abstract Landroid/companion/virtual/IVirtualDeviceActivityListener;
.super Ljava/lang/Object;
.source "IVirtualDeviceActivityListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;,
        Landroid/companion/virtual/IVirtualDeviceActivityListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.IVirtualDeviceActivityListener"


# virtual methods
.method public abstract blacklist onActivityLaunchBlocked(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDisplayEmpty(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSecureWindowHidden(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSecureWindowShown(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTopActivityChanged(ILandroid/content/ComponentName;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
