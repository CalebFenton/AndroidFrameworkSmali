.class public interface abstract Landroid/bluetooth/IBluetoothCsipSetCoordinatorCallback;
.super Ljava/lang/Object;
.source "IBluetoothCsipSetCoordinatorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothCsipSetCoordinatorCallback$Stub;,
        Landroid/bluetooth/IBluetoothCsipSetCoordinatorCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothCsipSetCoordinatorCallback"


# virtual methods
.method public abstract blacklist onCsisSetMemberAvailable(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
