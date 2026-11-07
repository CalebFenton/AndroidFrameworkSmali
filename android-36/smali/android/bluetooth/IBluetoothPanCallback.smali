.class public interface abstract Landroid/bluetooth/IBluetoothPanCallback;
.super Ljava/lang/Object;
.source "IBluetoothPanCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothPanCallback$Stub;,
        Landroid/bluetooth/IBluetoothPanCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothPanCallback"


# virtual methods
.method public abstract blacklist onAvailable(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUnavailable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
