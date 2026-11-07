.class public interface abstract Landroid/location/provider/IPopulationDensityProvider;
.super Ljava/lang/Object;
.source "IPopulationDensityProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/IPopulationDensityProvider$Stub;,
        Landroid/location/provider/IPopulationDensityProvider$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.location.provider.IPopulationDensityProvider"


# virtual methods
.method public abstract blacklist getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
