.class public Landroid/hardware/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"


# instance fields
.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mName:Ljava/lang/String;

.field private mNativeContext:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Landroid/hardware/SerialPort;->mName:Ljava/lang/String;

    #@5
    .line 42
    return-void
.end method

.method private native native_close()V
.end method

.method private native native_open(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_read_array([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_read_direct(Ljava/nio/ByteBuffer;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_send_break()V
.end method

.method private native native_write_array([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_write_direct(Ljava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    iget-object v0, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 64
    iget-object v0, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    #@a
    .line 65
    iput-object v1, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@c
    .line 67
    :cond_0
    invoke-direct {p0}, Landroid/hardware/SerialPort;->native_close()V

    #@f
    .line 62
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/hardware/SerialPort;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public open(Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/hardware/SerialPort;->native_open(Ljava/io/FileDescriptor;I)V

    #@7
    .line 56
    iput-object p1, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@9
    .line 54
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@9
    move-result v0

    #@a
    invoke-direct {p0, p1, v0}, Landroid/hardware/SerialPort;->native_read_direct(Ljava/nio/ByteBuffer;I)I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@1c
    move-result v1

    #@1d
    invoke-direct {p0, v0, v1}, Landroid/hardware/SerialPort;->native_read_array([BI)I

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "buffer is not direct and has no array"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method public sendBreak()V
    .locals 0

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Landroid/hardware/SerialPort;->native_send_break()V

    #@3
    .line 118
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/hardware/SerialPort;->native_write_direct(Ljava/nio/ByteBuffer;I)V

    #@9
    .line 105
    :goto_0
    return-void

    #@a
    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0, p2}, Landroid/hardware/SerialPort;->native_write_array([BI)V

    #@17
    goto :goto_0

    #@18
    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "buffer is not direct and has no array"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method
