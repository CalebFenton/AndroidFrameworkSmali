.class public Landroid/hardware/usb/UsbDeviceConnection;
.super Ljava/lang/Object;
.source "UsbDeviceConnection.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "UsbDeviceConnection"


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDevice:Landroid/hardware/usb/UsbDevice;

.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist-max-r mNativeContext:J


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/usb/UsbDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 63
    return-void
.end method

.method private static greylist-max-o checkBounds([BII)V
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 414
    if-eqz p0, :cond_4

    array-length v0, p0

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 415
    .local v0, "bufferLength":I
    :goto_5
    if-ltz p2, :cond_e

    if-ltz p1, :cond_e

    add-int v1, p1, p2

    if-gt v1, v0, :cond_e

    .line 418
    return-void

    .line 416
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Buffer start or length out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native greylist-max-o native_bulk_request(I[BIII)I
.end method

.method private native greylist-max-o native_claim_interface(IZ)Z
.end method

.method private native greylist-max-o native_close()V
.end method

.method private native greylist-max-o native_control_request(IIII[BIII)I
.end method

.method private native greylist-max-o native_get_desc()[B
.end method

.method private native greylist-max-o native_get_fd()I
.end method

.method private native greylist-max-o native_get_serial()Ljava/lang/String;
.end method

.method private native greylist-max-o native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method

.method private native greylist-max-o native_release_interface(I)Z
.end method

.method private native greylist-max-o native_request_wait(J)Landroid/hardware/usb/UsbRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_reset_device()Z
.end method

.method private native greylist-max-o native_set_configuration(I)Z
.end method

.method private native greylist-max-o native_set_interface(II)Z
.end method


# virtual methods
.method public whitelist bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    .registers 11
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p2, "buffer"    # [B
    .param p3, "length"    # I
    .param p4, "timeout"    # I

    .line 294
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p1    # "endpoint":Landroid/hardware/usb/UsbEndpoint;
    .end local p2    # "buffer":[B
    .end local p3    # "length":I
    .end local p4    # "timeout":I
    .local v1, "endpoint":Landroid/hardware/usb/UsbEndpoint;
    .local v2, "buffer":[B
    .local v4, "length":I
    .local v5, "timeout":I
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p1

    return p1
.end method

.method public whitelist bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    .registers 12
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "timeout"    # I

    .line 314
    invoke-static {p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    .line 315
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_17

    const/16 v0, 0x4000

    if-le p4, v0, :cond_17

    .line 317
    const/16 p4, 0x4000

    move v4, p4

    goto :goto_18

    .line 319
    :cond_17
    move v4, p4

    .end local p4    # "length":I
    .local v4, "length":I
    :goto_18
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v5, p5

    .end local p2    # "buffer":[B
    .end local p3    # "offset":I
    .end local p5    # "timeout":I
    .local v2, "buffer":[B
    .local v3, "offset":I
    .local v5, "timeout":I
    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->native_bulk_request(I[BIII)I

    move-result p2

    return p2
.end method

.method blacklist cancelRequest(Landroid/hardware/usb/UsbRequest;)Z
    .registers 4
    .param p1, "request"    # Landroid/hardware/usb/UsbRequest;

    .line 101
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_c

    .line 103
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 106
    :cond_c
    invoke-virtual {p1}, Landroid/hardware/usb/UsbRequest;->cancelIfOpen()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 107
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    .registers 4
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;
    .param p2, "force"    # Z

    .line 185
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_claim_interface(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist close()V
    .registers 3

    .line 145
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 147
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_close()V

    .line 148
    iget-object v1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 150
    :cond_11
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist controlTransfer(IIII[BII)I
    .registers 17
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "length"    # I
    .param p7, "timeout"    # I

    .line 242
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    move-result v6

    return v6
.end method

.method public whitelist controlTransfer(IIII[BIII)I
    .registers 10
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "offset"    # I
    .param p7, "length"    # I
    .param p8, "timeout"    # I

    .line 267
    invoke-static {p5, p6, p7}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    .line 268
    invoke-direct/range {p0 .. p8}, Landroid/hardware/usb/UsbDeviceConnection;->native_control_request(IIII[BIII)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 423
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 427
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 428
    nop

    .line 429
    return-void

    .line 427
    :catchall_e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 428
    throw v0
.end method

.method public greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getFileDescriptor()I
    .registers 2

    .line 161
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_fd()I

    move-result v0

    return v0
.end method

.method public whitelist getRawDescriptors()[B
    .registers 2

    .line 172
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_desc()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSerial()Ljava/lang/String;
    .registers 2

    .line 410
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_serial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist isOpen()Z
    .registers 5

    .line 83
    iget-wide v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/Context;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "context"    # Landroid/content/Context;

    .line 66
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_9
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/hardware/usb/UsbDeviceConnection;->native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v1

    .line 71
    .local v1, "wasOpened":Z
    if-eqz v1, :cond_1a

    .line 72
    iget-object v2, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v3, "UsbDeviceConnection.close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 75
    :cond_1a
    monitor-exit v0

    return v1

    .line 76
    .end local v1    # "wasOpened":Z
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method blacklist queueRequest(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p1, "request"    # Landroid/hardware/usb/UsbRequest;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 129
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_c

    .line 131
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 134
    :cond_c
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbRequest;->queueIfConnectionOpen(Ljava/nio/ByteBuffer;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 135
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method blacklist queueRequest(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z
    .registers 6
    .param p1, "request"    # Landroid/hardware/usb/UsbRequest;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "length"    # I

    .line 115
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_c

    .line 117
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 120
    :cond_c
    invoke-virtual {p1, p2, p3}, Landroid/hardware/usb/UsbRequest;->queueIfConnectionOpen(Ljava/nio/ByteBuffer;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 121
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    .registers 3
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    .line 194
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_release_interface(I)Z

    move-result v0

    return v0
.end method

.method public whitelist requestWait()Landroid/hardware/usb/UsbRequest;
    .registers 4

    .line 357
    const/4 v0, 0x0

    .line 360
    .local v0, "request":Landroid/hardware/usb/UsbRequest;
    const-wide/16 v1, -0x1

    :try_start_3
    invoke-direct {p0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait(J)Landroid/hardware/usb/UsbRequest;

    move-result-object v1
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 363
    goto :goto_a

    .line 361
    :catch_9
    move-exception v1

    .line 365
    :goto_a
    if-eqz v0, :cond_1e

    .line 366
    iget-object v1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    .line 367
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 366
    :goto_1b
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbRequest;->dequeue(Z)V

    .line 369
    :cond_1e
    return-object v0
.end method

.method public whitelist requestWait(J)Landroid/hardware/usb/UsbRequest;
    .registers 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 394
    const-string v0, "timeout"

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    move-result-wide p1

    .line 396
    invoke-direct {p0, p1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait(J)Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    .line 397
    .local v0, "request":Landroid/hardware/usb/UsbRequest;
    if-eqz v0, :cond_10

    .line 398
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbRequest;->dequeue(Z)V

    .line 400
    :cond_10
    return-object v0
.end method

.method public whitelist resetDevice()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 332
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_reset_device()Z

    move-result v0

    return v0
.end method

.method public whitelist setConfiguration(Landroid/hardware/usb/UsbConfiguration;)Z
    .registers 3
    .param p1, "configuration"    # Landroid/hardware/usb/UsbConfiguration;

    .line 213
    invoke-virtual {p1}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_set_configuration(I)Z

    move-result v0

    return v0
.end method

.method public whitelist setInterface(Landroid/hardware/usb/UsbInterface;)Z
    .registers 4
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    .line 204
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->native_set_interface(II)Z

    move-result v0

    return v0
.end method
