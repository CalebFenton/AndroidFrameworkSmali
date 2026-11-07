.class public interface abstract Landroid/media/INearbyMediaDevicesProvider;
.super Ljava/lang/Object;
.source "INearbyMediaDevicesProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/INearbyMediaDevicesProvider$Stub;,
        Landroid/media/INearbyMediaDevicesProvider$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.INearbyMediaDevicesProvider"


# virtual methods
.method public abstract blacklist registerNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
