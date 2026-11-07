.class public interface abstract Landroid/media/INearbyMediaDevicesUpdateCallback;
.super Ljava/lang/Object;
.source "INearbyMediaDevicesUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/INearbyMediaDevicesUpdateCallback$Stub;,
        Landroid/media/INearbyMediaDevicesUpdateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.INearbyMediaDevicesUpdateCallback"


# virtual methods
.method public abstract blacklist onDevicesUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/NearbyDevice;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
