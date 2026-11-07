.class Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;
.super Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;
.source "BluetoothHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$Aonku7_z_niAgPkpRBdo_LdgmFc(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->lambda$onInterruptData$5(Landroid/bluetooth/BluetoothDevice;B[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J-AsyAVcNcaI10DjQ5zumhrmIBI(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BB[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->lambda$onSetReport$3(Landroid/bluetooth/BluetoothDevice;BB[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TUD99Iz0H4qX7msfng8e7Tfh2Sw(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->lambda$onGetReport$2(Landroid/bluetooth/BluetoothDevice;BBI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZSVyiM2ky3Wyn88Rdq_Sudm_Aps(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->lambda$onAppStatusChanged$0(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g9v97FiWeW9Hx-i48S9zhmeH4Xg(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->lambda$onVirtualCableUnplug$6(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i03ALrLxadtKx1nAenwgAC9FG4U(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->lambda$onSetProtocol$4(Landroid/bluetooth/BluetoothDevice;B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mJLKfY3MWvapsHDgD6t9Myse9VU(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->lambda$onConnectionStateChanged$1(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothHidDevice$Callback;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 367
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;-><init>()V

    .line 368
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 369
    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    .line 370
    iput-object p3, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    .line 371
    return-void
.end method

.method private synthetic blacklist lambda$onAppStatusChanged$0(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 4
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "registered"    # Z

    .line 377
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onConnectionStateChanged$1(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 383
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onGetReport$2(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "bufferSize"    # I

    .line 389
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V

    return-void
.end method

.method private synthetic blacklist lambda$onInterruptData$5(Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportId"    # B
    .param p3, "data"    # [B

    .line 407
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onSetProtocol$4(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocol"    # B

    .line 401
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V

    return-void
.end method

.method private synthetic blacklist lambda$onSetReport$3(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .line 395
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onVirtualCableUnplug$6(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 413
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method


# virtual methods
.method public blacklist onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 5
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "registered"    # Z

    .line 375
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 376
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public blacklist onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 382
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 383
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method public blacklist onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "bufferSize"    # I

    .line 388
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 389
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "type":B
    .end local p3    # "id":B
    .end local p4    # "bufferSize":I
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    .local v4, "type":B
    .local v5, "id":B
    .local v6, "bufferSize":I
    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BBI)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method public blacklist onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportId"    # B
    .param p3, "data"    # [B

    .line 406
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 407
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B[B)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method public blacklist onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocol"    # B

    .line 400
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 401
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method public blacklist onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .registers 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .line 394
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 395
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "type":B
    .end local p3    # "id":B
    .end local p4    # "data":[B
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    .local v4, "type":B
    .local v5, "id":B
    .local v6, "data":[B
    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BB[B)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method public blacklist onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 412
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 413
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method
