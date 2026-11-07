.class public interface abstract Landroid/media/ICapturePresetDevicesRoleDispatcher;
.super Ljava/lang/Object;
.source "ICapturePresetDevicesRoleDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;,
        Landroid/media/ICapturePresetDevicesRoleDispatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.ICapturePresetDevicesRoleDispatcher"


# virtual methods
.method public abstract blacklist dispatchDevicesRoleChanged(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
