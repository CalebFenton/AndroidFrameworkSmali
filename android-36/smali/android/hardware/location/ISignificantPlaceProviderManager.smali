.class public interface abstract Landroid/hardware/location/ISignificantPlaceProviderManager;
.super Ljava/lang/Object;
.source "ISignificantPlaceProviderManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ISignificantPlaceProviderManager$Stub;,
        Landroid/hardware/location/ISignificantPlaceProviderManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.ISignificantPlaceProviderManager"


# virtual methods
.method public abstract blacklist setInSignificantPlace(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
