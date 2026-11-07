.class public interface abstract Landroid/media/IDeviceVolumeBehaviorDispatcher;
.super Ljava/lang/Object;
.source "IDeviceVolumeBehaviorDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;,
        Landroid/media/IDeviceVolumeBehaviorDispatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IDeviceVolumeBehaviorDispatcher"


# virtual methods
.method public abstract blacklist dispatchDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
