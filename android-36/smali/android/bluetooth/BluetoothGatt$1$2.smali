.class Landroid/bluetooth/BluetoothGatt$1$2;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onPhyUpdate(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic blacklist val$rxPhy:I

.field final synthetic blacklist val$status:I

.field final synthetic blacklist val$txPhy:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGatt$1;III)V
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

    .line 321
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$2;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput p2, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$txPhy:I

    iput p3, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$rxPhy:I

    iput p4, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 324
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$2;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    .line 325
    .local v0, "callback":Landroid/bluetooth/BluetoothGattCallback;
    if-eqz v0, :cond_17

    .line 326
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$2;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v1, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$txPhy:I

    iget v3, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$rxPhy:I

    iget v4, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$status:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCallback;->onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V

    .line 329
    :cond_17
    return-void
.end method
