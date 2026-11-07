.class Landroid/bluetooth/BluetoothGatt$1$6;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onCharacteristicRead(Ljava/lang/String;II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic blacklist val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic blacklist val$status:I

.field final synthetic blacklist val$value:[B


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGatt$1;ILandroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 5
    .param p1, "this$1"    # Landroid/bluetooth/BluetoothGatt$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 541
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$6;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput p2, p0, Landroid/bluetooth/BluetoothGatt$1$6;->val$status:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothGatt$1$6;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p4, p0, Landroid/bluetooth/BluetoothGatt$1$6;->val$value:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 544
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$6;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    .line 545
    .local v0, "callback":Landroid/bluetooth/BluetoothGattCallback;
    if-eqz v0, :cond_22

    .line 546
    iget v1, p0, Landroid/bluetooth/BluetoothGatt$1$6;->val$status:I

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$6;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1$6;->val$value:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 547
    :cond_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$6;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v1, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1$6;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1$6;->val$value:[B

    iget v4, p0, Landroid/bluetooth/BluetoothGatt$1$6;->val$status:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 550
    :cond_22
    return-void
.end method
