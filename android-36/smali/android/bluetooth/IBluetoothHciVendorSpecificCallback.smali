.class public interface abstract Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
.super Ljava/lang/Object;
.source "IBluetoothHciVendorSpecificCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;,
        Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHciVendorSpecificCallback"


# virtual methods
.method public abstract blacklist onCommandComplete(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCommandStatus(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onEvent(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
