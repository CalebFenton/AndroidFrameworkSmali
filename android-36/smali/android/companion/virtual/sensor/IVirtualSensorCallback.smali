.class public interface abstract Landroid/companion/virtual/sensor/IVirtualSensorCallback;
.super Ljava/lang/Object;
.source "IVirtualSensorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;,
        Landroid/companion/virtual/sensor/IVirtualSensorCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.sensor.IVirtualSensorCallback"


# virtual methods
.method public abstract blacklist onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDirectChannelCreated(ILandroid/os/SharedMemory;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDirectChannelDestroyed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
