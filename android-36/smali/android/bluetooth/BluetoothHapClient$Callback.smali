.class public interface abstract Landroid/bluetooth/BluetoothHapClient$Callback;
.super Ljava/lang/Object;
.source "BluetoothHapClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHapClient$Callback$GroupPresetNameChangeFailureReason;,
        Landroid/bluetooth/BluetoothHapClient$Callback$PresetNameChangeFailureReason;,
        Landroid/bluetooth/BluetoothHapClient$Callback$PresetInfoChangeReason;,
        Landroid/bluetooth/BluetoothHapClient$Callback$GroupPresetSelectionFailureReason;,
        Landroid/bluetooth/BluetoothHapClient$Callback$PresetSelectionFailureReason;,
        Landroid/bluetooth/BluetoothHapClient$Callback$PresetSelectionReason;
    }
.end annotation


# virtual methods
.method public abstract whitelist onPresetInfoChanged(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHapPresetInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract whitelist onPresetSelected(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onPresetSelectionFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onPresetSelectionForGroupFailed(II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSetPresetNameFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSetPresetNameForGroupFailed(II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method
