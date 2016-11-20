.class public Landroid/hardware/usb/UsbDeviceConnection;
.super Ljava/lang/Object;
.source "UsbDeviceConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDeviceConnection"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:J


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mDevice:Landroid/hardware/usb/UsbDevice;

    #@5
    .line 45
    return-void
.end method

.method private static checkBounds([BII)V
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 261
    if-eqz p0, :cond_1

    #@2
    array-length v0, p0

    #@3
    .line 262
    .local v0, "bufferLength":I
    :goto_0
    if-ltz p1, :cond_0

    #@5
    add-int v1, p1, p2

    #@7
    if-le v1, v0, :cond_2

    #@9
    .line 263
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "Buffer start or length out of bounds."

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 261
    .end local v0    # "bufferLength":I
    :cond_1
    const/4 v0, 0x0

    #@13
    .restart local v0    # "bufferLength":I
    goto :goto_0

    #@14
    .line 260
    :cond_2
    return-void
.end method

.method private native native_bulk_request(I[BIII)I
.end method

.method private native native_claim_interface(IZ)Z
.end method

.method private native native_close()V
.end method

.method private native native_control_request(IIII[BIII)I
.end method

.method private native native_get_desc()[B
.end method

.method private native native_get_fd()I
.end method

.method private native native_get_serial()Ljava/lang/String;
.end method

.method private native native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method

.method private native native_release_interface(I)Z
.end method

.method private native native_request_wait()Landroid/hardware/usb/UsbRequest;
.end method

.method private native native_set_configuration(I)Z
.end method

.method private native native_set_interface(II)Z
.end method


# virtual methods
.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    .locals 6
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p2, "buffer"    # [B
    .param p3, "length"    # I
    .param p4, "timeout"    # I

    #@0
    .prologue
    .line 211
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    .locals 6
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "timeout"    # I

    #@0
    .prologue
    .line 228
    invoke-static {p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    #@3
    .line 229
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    #@6
    move-result v1

    #@7
    move-object v0, p0

    #@8
    move-object v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move v5, p5

    #@c
    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->native_bulk_request(I[BIII)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    .locals 1
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_claim_interface(IZ)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_close()V

    #@3
    .line 70
    return-void
.end method

.method public controlTransfer(IIII[BII)I
    .locals 9
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "length"    # I
    .param p7, "timeout"    # I

    #@0
    .prologue
    .line 163
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move v7, p6

    #@8
    move/from16 v8, p7

    #@a
    invoke-virtual/range {v0 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public controlTransfer(IIII[BIII)I
    .locals 1
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "offset"    # I
    .param p7, "length"    # I
    .param p8, "timeout"    # I

    #@0
    .prologue
    .line 188
    invoke-static {p5, p6, p7}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    #@3
    .line 189
    invoke-direct/range {p0 .. p8}, Landroid/hardware/usb/UsbDeviceConnection;->native_control_request(IIII[BIII)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getFileDescriptor()I
    .locals 1

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_fd()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getRawDescriptors()[B
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_desc()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 257
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_serial()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/Context;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 50
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    #@6
    .line 52
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 1
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    #@0
    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_release_interface(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public requestWait()Landroid/hardware/usb/UsbRequest;
    .locals 1

    #@0
    .prologue
    .line 243
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait()Landroid/hardware/usb/UsbRequest;

    #@3
    move-result-object v0

    #@4
    .line 244
    .local v0, "request":Landroid/hardware/usb/UsbRequest;
    if-eqz v0, :cond_0

    #@6
    .line 245
    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->dequeue()V

    #@9
    .line 247
    :cond_0
    return-object v0
.end method

.method public setConfiguration(Landroid/hardware/usb/UsbConfiguration;)Z
    .locals 1
    .param p1, "configuration"    # Landroid/hardware/usb/UsbConfiguration;

    #@0
    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_set_configuration(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 2
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    #@0
    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->native_set_interface(II)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
