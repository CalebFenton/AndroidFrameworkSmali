.class public interface abstract Landroid/bluetooth/IBluetoothQualityReportReadyCallback;
.super Ljava/lang/Object;
.source "IBluetoothQualityReportReadyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothQualityReportReadyCallback$Stub;,
        Landroid/bluetooth/IBluetoothQualityReportReadyCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothQualityReportReadyCallback"


# virtual methods
.method public abstract blacklist onBluetoothQualityReportReady(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothQualityReport;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
