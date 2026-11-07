.class public Landroid/hardware/hdmi/IHdmiInputChangeListener$Default;
.super Ljava/lang/Object;
.source "IHdmiInputChangeListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiInputChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiInputChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 2
    .param p1, "device"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
