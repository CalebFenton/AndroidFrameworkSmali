.class public Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Default;
.super Ljava/lang/Object;
.source "IHdmiControlStatusChangeListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
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

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onStatusChange(IZ)V
    .registers 3
    .param p1, "isCecEnabled"    # I
    .param p2, "isCecAvailable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method
