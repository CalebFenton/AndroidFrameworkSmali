.class public interface abstract Landroid/media/IDevicesForAttributesCallback;
.super Ljava/lang/Object;
.source "IDevicesForAttributesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IDevicesForAttributesCallback$Stub;,
        Landroid/media/IDevicesForAttributesCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IDevicesForAttributesCallback"


# virtual methods
.method public abstract blacklist onDevicesForAttributesChanged(Landroid/media/AudioAttributes;ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Z",
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
