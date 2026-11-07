.class public interface abstract Landroid/hardware/location/ISignificantPlaceProvider;
.super Ljava/lang/Object;
.source "ISignificantPlaceProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ISignificantPlaceProvider$Stub;,
        Landroid/hardware/location/ISignificantPlaceProvider$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.ISignificantPlaceProvider"


# virtual methods
.method public abstract blacklist onSignificantPlaceCheck()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setSignificantPlaceProviderManager(Landroid/hardware/location/ISignificantPlaceProviderManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
