.class Landroid/bluetooth/le/BluetoothLeAdvertiser$1;
.super Landroid/bluetooth/le/AdvertisingSetCallback;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic blacklist val$callback:Landroid/bluetooth/le/AdvertiseCallback;

.field final synthetic blacklist val$settings:Landroid/bluetooth/le/AdvertiseSettings;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 4
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 216
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertisingSetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V
    .registers 6
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "enabled"    # Z
    .param p3, "status"    # I

    .line 232
    if-eqz p2, :cond_c

    .line 233
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Legacy advertiser should be only disabled on timeout, but was enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 240
    :cond_c
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 241
    return-void
.end method

.method public whitelist onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V
    .registers 7
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .line 220
    if-eqz p3, :cond_a

    .line 221
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-static {v0, v1, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$mpostStartFailure(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 222
    return-void

    .line 225
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$mpostStartSuccess(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 226
    return-void
.end method
