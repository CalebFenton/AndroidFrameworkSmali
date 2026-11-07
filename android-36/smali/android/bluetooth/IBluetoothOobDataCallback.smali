.class public interface abstract Landroid/bluetooth/IBluetoothOobDataCallback;
.super Ljava/lang/Object;
.source "IBluetoothOobDataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothOobDataCallback$Stub;,
        Landroid/bluetooth/IBluetoothOobDataCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothOobDataCallback"


# virtual methods
.method public abstract blacklist onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onOobData(ILandroid/bluetooth/OobData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
