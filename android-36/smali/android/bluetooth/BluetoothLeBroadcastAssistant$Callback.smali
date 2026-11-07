.class public interface abstract Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastAssistant.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback$Reason;
    }
.end annotation


# virtual methods
.method public abstract whitelist onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSearchStartFailed(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSearchStarted(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSearchStopFailed(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSearchStopped(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist onSourceLost(I)V
    .registers 2
    .param p1, "broadcastId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 465
    return-void
.end method

.method public abstract whitelist onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method
