.class Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;
.super Landroid/bluetooth/IBluetoothHealthCallback$Stub;
.source "BluetoothHealth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHealthCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/BluetoothHealthCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHealthCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/BluetoothHealthCallback;

    #@0
    .prologue
    .line 425
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;-><init>()V

    #@3
    .line 426
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    #@5
    .line 425
    return-void
.end method


# virtual methods
.method public onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 1
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHealthCallback;->onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    #@5
    .line 431
    return-void
.end method

.method public onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 7
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "prevState"    # I
    .param p4, "newState"    # I
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "channelId"    # I

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/BluetoothHealthCallback;->onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    #@b
    .line 438
    return-void
.end method
