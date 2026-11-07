.class public Landroid/hardware/gnss/IGnssMeasurementInterface$Default;
.super Ljava/lang/Object;
.source "IGnssMeasurementInterface.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssMeasurementInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssMeasurementInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/IGnssMeasurementCallback;ZZ)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/gnss/IGnssMeasurementCallback;
    .param p2, "enableFullTracking"    # Z
    .param p3, "enableCorrVecOutputs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist setCallbackWithOptions(Landroid/hardware/gnss/IGnssMeasurementCallback;Landroid/hardware/gnss/IGnssMeasurementInterface$Options;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/gnss/IGnssMeasurementCallback;
    .param p2, "options"    # Landroid/hardware/gnss/IGnssMeasurementInterface$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method
