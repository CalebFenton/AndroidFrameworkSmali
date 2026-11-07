.class Landroid/bluetooth/BluetoothAdapter$9;
.super Landroid/bluetooth/IBluetoothConnectionCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4696
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$9;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothConnectionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDeviceConnected$0(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)V
    .registers 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "cb"    # Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    .line 4702
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;->onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDeviceDisconnected$1(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)V
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "hciReason"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    .line 4710
    invoke-virtual {p2, p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 4700
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 4701
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothConnectionCallbackWrapper(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 4703
    return-void
.end method

.method public blacklist onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "hciReason"    # I

    .line 4708
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 4709
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothConnectionCallbackWrapper(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 4711
    return-void
.end method
