.class public interface abstract Landroid/os/IHardwarePropertiesManager;
.super Ljava/lang/Object;
.source "IHardwarePropertiesManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHardwarePropertiesManager$Stub;,
        Landroid/os/IHardwarePropertiesManager$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getDeviceTemperatures(Ljava/lang/String;II)[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getFanSpeeds(Ljava/lang/String;)[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
