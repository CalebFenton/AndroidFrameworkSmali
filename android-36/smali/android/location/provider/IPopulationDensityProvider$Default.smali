.class public Landroid/location/provider/IPopulationDensityProvider$Default;
.super Ljava/lang/Object;
.source "IPopulationDensityProvider.java"

# interfaces
.implements Landroid/location/provider/IPopulationDensityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/IPopulationDensityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
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

.method public blacklist getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V
    .registers 7
    .param p1, "latitudeDegrees"    # D
    .param p3, "longitudeDegrees"    # D
    .param p5, "numAdditionalCells"    # I
    .param p6, "callback"    # Landroid/location/provider/IS2CellIdsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/location/provider/IS2LevelCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
