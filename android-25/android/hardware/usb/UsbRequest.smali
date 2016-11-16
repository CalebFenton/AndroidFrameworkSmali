.class public Landroid/hardware/usb/UsbRequest;
.super Ljava/lang/Object;
.source "UsbRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbRequest"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mClientData:Ljava/lang/Object;

.field private mEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mLength:I

.field private mNativeContext:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private native native_cancel()Z
.end method

.method private native native_close()V
.end method

.method private native native_dequeue_array([BIZ)I
.end method

.method private native native_dequeue_direct()I
.end method

.method private native native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z
.end method

.method private native native_queue_array([BIZ)Z
.end method

.method private native native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_cancel()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    #@3
    .line 72
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_close()V

    #@6
    .line 70
    return-void
.end method

.method dequeue()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 154
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    #@3
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    const/4 v1, 0x1

    #@a
    .line 156
    .local v1, "out":Z
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    .line 157
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    #@15
    move-result v0

    #@16
    .line 161
    .local v0, "bytesRead":I
    :goto_1
    if-ltz v0, :cond_0

    #@18
    .line 162
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    #@1a
    iget v3, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    #@1c
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result v3

    #@20
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@23
    .line 164
    :cond_0
    const/4 v2, 0x0

    #@24
    iput-object v2, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    #@26
    .line 165
    iput v4, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    #@28
    .line 153
    return-void

    #@29
    .line 154
    .end local v0    # "bytesRead":I
    .end local v1    # "out":Z
    :cond_1
    const/4 v1, 0x0

    #@2a
    .restart local v1    # "out":Z
    goto :goto_0

    #@2b
    .line 159
    :cond_2
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    #@2d
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    #@30
    move-result-object v2

    #@31
    iget v3, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    #@33
    invoke-direct {p0, v2, v3, v1}, Landroid/hardware/usb/UsbRequest;->native_dequeue_array([BIZ)I

    #@36
    move-result v0

    #@37
    .restart local v0    # "bytesRead":I
    goto :goto_1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 79
    const-string/jumbo v0, "UsbRequest"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "endpoint still open in finalize(): "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 80
    invoke-virtual {p0}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 83
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@24
    .line 76
    return-void

    #@25
    .line 82
    :catchall_0
    move-exception v0

    #@26
    .line 83
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@29
    .line 82
    throw v0
.end method

.method public getClientData()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    #@2
    return-object v0
.end method

.method public initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z
    .locals 6
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .param p2, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;

    #@0
    .prologue
    .line 62
    iput-object p2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    #@2
    .line 63
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    #@5
    move-result v2

    #@6
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    #@9
    move-result v3

    #@a
    .line 64
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    #@d
    move-result v4

    #@e
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    #@11
    move-result v5

    #@12
    move-object v0, p0

    #@13
    move-object v1, p1

    #@14
    .line 63
    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbRequest;->native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public queue(Ljava/nio/ByteBuffer;I)Z
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 136
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    #@2
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    const/4 v0, 0x1

    #@9
    .line 138
    .local v0, "out":Z
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 139
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/usb/UsbRequest;->native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z

    #@12
    move-result v1

    #@13
    .line 145
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_0

    #@15
    .line 147
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    #@17
    .line 148
    iput p2, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    #@19
    .line 150
    :cond_0
    return v1

    #@1a
    .line 136
    .end local v0    # "out":Z
    .end local v1    # "result":Z
    :cond_1
    const/4 v0, 0x0

    #@1b
    .restart local v0    # "out":Z
    goto :goto_0

    #@1c
    .line 140
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 141
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@25
    move-result-object v2

    #@26
    invoke-direct {p0, v2, p2, v0}, Landroid/hardware/usb/UsbRequest;->native_queue_array([BIZ)Z

    #@29
    move-result v1

    #@2a
    .restart local v1    # "result":Z
    goto :goto_1

    #@2b
    .line 143
    .end local v1    # "result":Z
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v3, "buffer is not direct and has no array"

    #@30
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2
.end method

.method public setClientData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 119
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    #@2
    .line 118
    return-void
.end method
