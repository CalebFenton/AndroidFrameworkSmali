.class public interface abstract Landroid/bluetooth/IBluetoothMetadataListener;
.super Ljava/lang/Object;
.source "IBluetoothMetadataListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothMetadataListener$Stub;,
        Landroid/bluetooth/IBluetoothMetadataListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothMetadataListener"


# virtual methods
.method public abstract blacklist onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
