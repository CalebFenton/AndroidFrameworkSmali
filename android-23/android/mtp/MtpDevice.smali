.class public final Landroid/mtp/MtpDevice;
.super Ljava/lang/Object;
.source "MtpDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    #@5
    .line 43
    return-void
.end method

.method private native native_close()V
.end method

.method private native native_delete_object(I)Z
.end method

.method private native native_get_device_info()Landroid/mtp/MtpDeviceInfo;
.end method

.method private native native_get_object(II)[B
.end method

.method private native native_get_object_handles(III)[I
.end method

.method private native native_get_object_info(I)Landroid/mtp/MtpObjectInfo;
.end method

.method private native native_get_parent(I)J
.end method

.method private native native_get_storage_id(I)J
.end method

.method private native native_get_storage_ids()[I
.end method

.method private native native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;
.end method

.method private native native_get_thumbnail(I)[B
.end method

.method private native native_import_file(ILjava/lang/String;)Z
.end method

.method private native native_open(Ljava/lang/String;I)Z
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V

    #@3
    .line 69
    return-void
.end method

.method public deleteObject(I)Z
    .locals 1
    .param p1, "objectHandle"    # I

    #@0
    .prologue
    .line 200
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
    .line 76
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 74
    return-void

    #@7
    .line 77
    :catchall_0
    move-exception v0

    #@8
    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 77
    throw v0
.end method

.method public getDeviceId()I
    .locals 1

    #@0
    .prologue
    .line 101
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
    .line 115
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
    .line 90
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getObject(II)[B
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "objectSize"    # I

    #@0
    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_get_object(II)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getObjectHandles(III)[I
    .locals 1
    .param p1, "storageId"    # I
    .param p2, "format"    # I
    .param p3, "objectHandle"    # I

    #@0
    .prologue
    .line 140
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
    .line 188
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_object_info(I)Landroid/mtp/MtpObjectInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getParent(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    #@0
    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_parent(I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getStorageId(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    #@0
    .prologue
    .line 220
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_id(I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getStorageIds()[I
    .locals 1

    #@0
    .prologue
    .line 125
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
    .line 178
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
    .line 168
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_thumbnail(I)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public importFile(ILjava/lang/String;)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "destPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(ILjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 3
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    #@0
    .prologue
    .line 57
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    #@2
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    #@9
    move-result v2

    #@a
    invoke-direct {p0, v1, v2}, Landroid/mtp/MtpDevice;->native_open(Ljava/lang/String;I)Z

    #@d
    move-result v0

    #@e
    .line 58
    .local v0, "result":Z
    if-nez v0, :cond_0

    #@10
    .line 59
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    #@13
    .line 61
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
