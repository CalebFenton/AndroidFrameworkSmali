.class Landroid/bluetooth/BluetoothAdapter$12;
.super Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;
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

    .line 5643
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$12;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCommandComplete$1(I[BLandroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;)V
    .registers 3
    .param p0, "ocf"    # I
    .param p1, "returnParameters"    # [B
    .param p2, "cb"    # Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    .line 5662
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;->onCommandComplete(I[B)V

    return-void
.end method

.method static synthetic blacklist lambda$onCommandStatus$0(IILandroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;)V
    .registers 3
    .param p0, "ocf"    # I
    .param p1, "status"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    .line 5651
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;->onCommandStatus(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onEvent$2(I[BLandroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;)V
    .registers 3
    .param p0, "code"    # I
    .param p1, "data"    # [B
    .param p2, "cb"    # Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    .line 5673
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;->onEvent(I[B)V

    return-void
.end method


# virtual methods
.method public blacklist onCommandComplete(I[B)V
    .registers 6
    .param p1, "ocf"    # I
    .param p2, "returnParameters"    # [B

    .line 5659
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$12;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmHciVendorSpecificCallbackRegistration(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    move-result-object v0

    monitor-enter v0

    .line 5660
    :try_start_7
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->hciVendorSpecificExtension()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 5661
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$12;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmHciVendorSpecificCallbackRegistration(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda0;-><init>(I[B)V

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->execute(Ljava/util/function/Consumer;)V

    .line 5664
    :cond_1b
    monitor-exit v0

    .line 5665
    return-void

    .line 5664
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist onCommandStatus(II)V
    .registers 6
    .param p1, "ocf"    # I
    .param p2, "status"    # I

    .line 5648
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$12;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmHciVendorSpecificCallbackRegistration(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    move-result-object v0

    monitor-enter v0

    .line 5649
    :try_start_7
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->hciVendorSpecificExtension()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 5650
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$12;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmHciVendorSpecificCallbackRegistration(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->execute(Ljava/util/function/Consumer;)V

    .line 5653
    :cond_1b
    monitor-exit v0

    .line 5654
    return-void

    .line 5653
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist onEvent(I[B)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "data"    # [B

    .line 5670
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$12;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmHciVendorSpecificCallbackRegistration(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    move-result-object v0

    monitor-enter v0

    .line 5671
    :try_start_7
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->hciVendorSpecificExtension()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 5672
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$12;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmHciVendorSpecificCallbackRegistration(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2}, Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda2;-><init>(I[B)V

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->execute(Ljava/util/function/Consumer;)V

    .line 5675
    :cond_1b
    monitor-exit v0

    .line 5676
    return-void

    .line 5675
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method
