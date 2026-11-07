.class public interface abstract Landroid/bluetooth/IBluetoothMcpServiceManager;
.super Ljava/lang/Object;
.source "IBluetoothMcpServiceManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothMcpServiceManager$Stub;,
        Landroid/bluetooth/IBluetoothMcpServiceManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothMcpServiceManager"


# virtual methods
.method public abstract blacklist setDeviceAuthorized(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
