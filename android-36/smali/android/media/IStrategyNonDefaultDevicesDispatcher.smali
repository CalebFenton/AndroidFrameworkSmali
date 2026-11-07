.class public interface abstract Landroid/media/IStrategyNonDefaultDevicesDispatcher;
.super Ljava/lang/Object;
.source "IStrategyNonDefaultDevicesDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;,
        Landroid/media/IStrategyNonDefaultDevicesDispatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IStrategyNonDefaultDevicesDispatcher"


# virtual methods
.method public abstract blacklist dispatchNonDefDevicesChanged(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
