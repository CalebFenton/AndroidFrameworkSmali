.class public interface abstract Landroid/uwb/IUwbOemExtensionCallback;
.super Ljava/lang/Object;
.source "IUwbOemExtensionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/IUwbOemExtensionCallback$Stub;,
        Landroid/uwb/IUwbOemExtensionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.uwb.IUwbOemExtensionCallback"


# virtual methods
.method public abstract blacklist onCheckPointedTarget(Landroid/os/PersistableBundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDeviceStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSessionConfigurationReceived(Landroid/os/PersistableBundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
