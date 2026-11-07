.class public interface abstract Landroid/companion/virtualnative/IVirtualDeviceManagerNative;
.super Ljava/lang/Object;
.source "IVirtualDeviceManagerNative.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;,
        Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtualnative.IVirtualDeviceManagerNative"

.field public static final blacklist DEVICE_POLICY_CUSTOM:I = 0x1

.field public static final blacklist DEVICE_POLICY_DEFAULT:I = 0x0

.field public static final blacklist POLICY_TYPE_ACTIVITY:I = 0x3

.field public static final blacklist POLICY_TYPE_AUDIO:I = 0x1

.field public static final blacklist POLICY_TYPE_CAMERA:I = 0x5

.field public static final blacklist POLICY_TYPE_CLIPBOARD:I = 0x4

.field public static final blacklist POLICY_TYPE_RECENTS:I = 0x2

.field public static final blacklist POLICY_TYPE_SENSORS:I


# virtual methods
.method public abstract blacklist getDeviceIdForDisplayId(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDeviceIdsForUid(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDevicePolicy(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
