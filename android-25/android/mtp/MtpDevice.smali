.class public final Landroid/mtp/MtpDevice;
.super Ljava/lang/Object;
.source "MtpDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:J


# direct methods
.method static synthetic -wrap0(Landroid/mtp/MtpDevice;I)V
    .locals 0
    .param p1, "handle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_discard_event_request(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    #@5
    .line 53
    return-void
.end method

.method private native native_close()V
.end method

.method private native native_delete_object(I)Z
.end method

.method private native native_discard_event_request(I)V
.end method

.method private native native_get_device_info()Landroid/mtp/MtpDeviceInfo;
.end method

.method private native native_get_object(IJ)[B
.end method

.method private native native_get_object_handles(III)[I
.end method

.method private native native_get_object_info(I)Landroid/mtp/MtpObjectInfo;
.end method

.method private native native_get_object_size_long(II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_get_parent(I)I
.end method

.method private native native_get_partial_object(IJJ[B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_get_partial_object_64(IJJ[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_get_storage_id(I)I
.end method

.method private native native_get_storage_ids()[I
.end method

.method private native native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;
.end method

.method private native native_get_thumbnail(I)[B
.end method

.method private native native_import_file(II)Z
.end method

.method private native native_import_file(ILjava/lang/String;)Z
.end method

.method private native native_open(Ljava/lang/String;I)Z
.end method

.method private native native_reap_event_request(I)Landroid/mtp/MtpEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_send_object(IJI)Z
.end method

.method private native native_send_object_info(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
.end method

.method private native native_submit_event_request()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V

    #@3
    .line 89
    return-void
.end method

.method public deleteObject(I)Z
    .locals 1
    .param p1, "objectHandle"    # I

    #@0
    .prologue
    .line 260
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_delete_object(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 98
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 94
    return-void

    #@7
    .line 97
    :catchall_0
    move-exception v0

    #@8
    .line 98
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 97
    throw v0
.end method

.method public getDeviceId()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDeviceInfo()Landroid/mtp/MtpDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_device_info()Landroid/mtp/MtpDeviceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getObject(II)[B
    .locals 2
    .param p1, "objectHandle"    # I
    .param p2, "objectSize"    # I

    #@0
    .prologue
    .line 174
    const-string/jumbo v0, "objectSize should not be negative"

    #@3
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@6
    .line 175
    int-to-long v0, p2

    #@7
    invoke-direct {p0, p1, v0, v1}, Landroid/mtp/MtpDevice;->native_get_object(IJ)[B

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getObjectHandles(III)[I
    .locals 1
    .param p1, "storageId"    # I
    .param p2, "format"    # I
    .param p3, "objectHandle"    # I

    #@0
    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDevice;->native_get_object_handles(III)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getObjectInfo(I)Landroid/mtp/MtpObjectInfo;
    .locals 1
    .param p1, "objectHandle"    # I

    #@0
    .prologue
    .line 248
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_object_info(I)Landroid/mtp/MtpObjectInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getObjectSizeLong(II)J
    .locals 2
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_get_object_size_long(II)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getParent(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    #@0
    .prologue
    .line 270
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_parent(I)I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    return-wide v0
.end method

.method public getPartialObject(IJJ[B)J
    .locals 2
    .param p1, "objectHandle"    # I
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .param p6, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_get_partial_object(IJJ[B)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getPartialObject64(IJJ[B)J
    .locals 2
    .param p1, "objectHandle"    # I
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .param p6, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_get_partial_object_64(IJJ[B)I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    return-wide v0
.end method

.method public getStorageId(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    #@0
    .prologue
    .line 280
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_id(I)I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    return-wide v0
.end method

.method public getStorageIds()[I
    .locals 1

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_storage_ids()[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getStorageInfo(I)Landroid/mtp/MtpStorageInfo;
    .locals 1
    .param p1, "storageId"    # I

    #@0
    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getThumbnail(I)[B
    .locals 1
    .param p1, "objectHandle"    # I

    #@0
    .prologue
    .line 228
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_thumbnail(I)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public importFile(ILandroid/os/ParcelFileDescriptor;)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "descriptor"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 309
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpDevice;->native_import_file(II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public importFile(ILjava/lang/String;)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "destPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 295
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(ILjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 5
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    #@0
    .prologue
    .line 67
    const/4 v1, 0x0

    #@1
    .line 69
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 70
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    #@7
    .line 71
    const-string/jumbo v3, "user"

    #@a
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/os/UserManager;

    #@10
    .line 73
    .local v2, "userManager":Landroid/os/UserManager;
    const-string/jumbo v3, "no_usb_file_transfer"

    #@13
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_0

    #@19
    .line 74
    iget-object v3, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    #@1b
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    #@22
    move-result v4

    #@23
    invoke-direct {p0, v3, v4}, Landroid/mtp/MtpDevice;->native_open(Ljava/lang/String;I)Z

    #@26
    move-result v1

    #@27
    .line 78
    .end local v1    # "result":Z
    .end local v2    # "userManager":Landroid/os/UserManager;
    :cond_0
    if-nez v1, :cond_1

    #@29
    .line 79
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    #@2c
    .line 81
    :cond_1
    return v1
.end method

.method public readEvent(Landroid/os/CancellationSignal;)Landroid/mtp/MtpEvent;
    .locals 4
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 349
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_submit_event_request()I

    #@5
    move-result v0

    #@6
    .line 350
    .local v0, "handle":I
    if-ltz v0, :cond_0

    #@8
    const/4 v1, 0x1

    #@9
    :cond_0
    const-string/jumbo v2, "Other thread is reading an event."

    #@c
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@f
    .line 352
    if-eqz p1, :cond_1

    #@11
    .line 353
    new-instance v1, Landroid/mtp/MtpDevice$1;

    #@13
    invoke-direct {v1, p0, v0}, Landroid/mtp/MtpDevice$1;-><init>(Landroid/mtp/MtpDevice;I)V

    #@16
    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@19
    .line 362
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Landroid/mtp/MtpDevice;->native_reap_event_request(I)Landroid/mtp/MtpEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    .line 364
    if-eqz p1, :cond_2

    #@1f
    .line 365
    invoke-virtual {p1, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@22
    .line 362
    :cond_2
    return-object v1

    #@23
    .line 363
    :catchall_0
    move-exception v1

    #@24
    .line 364
    if-eqz p1, :cond_3

    #@26
    .line 365
    invoke-virtual {p1, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@29
    .line 363
    :cond_3
    throw v1
.end method

.method public sendObject(IJLandroid/os/ParcelFileDescriptor;)Z
    .locals 2
    .param p1, "objectHandle"    # I
    .param p2, "size"    # J
    .param p4, "descriptor"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 324
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/mtp/MtpDevice;->native_send_object(IJI)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public sendObjectInfo(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
    .locals 1
    .param p1, "info"    # Landroid/mtp/MtpObjectInfo;

    #@0
    .prologue
    .line 337
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_send_object_info(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
