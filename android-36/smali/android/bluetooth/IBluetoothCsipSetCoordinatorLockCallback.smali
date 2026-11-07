.class public interface abstract Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback;
.super Ljava/lang/Object;
.source "IBluetoothCsipSetCoordinatorLockCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback$Stub;,
        Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothCsipSetCoordinatorLockCallback"


# virtual methods
.method public abstract blacklist onGroupLockSet(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
