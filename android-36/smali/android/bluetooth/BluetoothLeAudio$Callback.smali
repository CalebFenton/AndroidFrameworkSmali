.class public interface abstract Landroid/bluetooth/BluetoothLeAudio$Callback;
.super Ljava/lang/Object;
.source "BluetoothLeAudio.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudio$Callback$GroupStreamStatus;,
        Landroid/bluetooth/BluetoothLeAudio$Callback$GroupStatus;
    }
.end annotation


# virtual methods
.method public whitelist onBroadcastToUnicastFallbackGroupChanged(I)V
    .registers 4
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 176
    invoke-static {}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 177
    invoke-static {}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBroadcastToUnicastFallbackGroupChanged is not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_f
    return-void
.end method

.method public abstract whitelist onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onGroupStatusChanged(II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist onGroupStreamStatusChanged(II)V
    .registers 5
    .param p1, "groupId"    # I
    .param p2, "groupStreamStatus"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 158
    invoke-static {}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 159
    invoke-static {}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onGroupStreamStatusChanged is not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_f
    return-void
.end method
