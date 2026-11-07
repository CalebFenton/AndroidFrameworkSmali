.class public interface abstract Landroid/media/IStrategyPreferredDevicesDispatcher;
.super Ljava/lang/Object;
.source "IStrategyPreferredDevicesDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;,
        Landroid/media/IStrategyPreferredDevicesDispatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IStrategyPreferredDevicesDispatcher"


# virtual methods
.method public abstract blacklist dispatchPrefDevicesChanged(ILjava/util/List;)V
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
