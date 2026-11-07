.class Landroid/bluetooth/BluetoothGatt$1$10;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onDescriptorWrite(Ljava/lang/String;II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic blacklist val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4
    .param p1, "this$1"    # Landroid/bluetooth/BluetoothGatt$1;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 789
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$10;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt$1$10;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iput p3, p0, Landroid/bluetooth/BluetoothGatt$1$10;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 792
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$10;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    .line 793
    .local v0, "callback":Landroid/bluetooth/BluetoothGattCallback;
    if-eqz v0, :cond_15

    .line 794
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$10;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v1, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1$10;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt$1$10;->val$status:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 797
    :cond_15
    return-void
.end method
