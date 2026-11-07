.class public Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsInterface$Default;
.super Ljava/lang/Object;
.source "IMeasurementCorrectionsInterface.java"

# interfaces
.implements Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsInterface;
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

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist setCorrections(Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;)V
    .registers 2
    .param p1, "corrections"    # Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
