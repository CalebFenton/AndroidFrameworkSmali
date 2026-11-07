.class public Landroid/hardware/hdmi/IHdmiDeviceEventListener$Default;
.super Ljava/lang/Object;
.source "IHdmiDeviceEventListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiDeviceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiDeviceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 3
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method
