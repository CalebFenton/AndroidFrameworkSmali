.class public Landroid/hardware/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SerialPort"


# instance fields
.field private greylist-max-o mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-r mNativeContext:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/hardware/SerialPort;->mName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private native greylist-max-o native_close()V
.end method

.method private native greylist-max-o native_open(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_read_array([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_read_direct(Ljava/nio/ByteBuffer;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_send_break()V
.end method

.method private native greylist-max-o native_write_array([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_write_direct(Ljava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public greylist-max-r close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_c

    .line 67
    iget-object v0, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 70
    :cond_c
    invoke-direct {p0}, Landroid/hardware/SerialPort;->native_close()V

    .line 71
    return-void
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/hardware/SerialPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o open(Landroid/os/ParcelFileDescriptor;I)V
    .registers 4
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/SerialPort;->native_open(Ljava/io/FileDescriptor;I)V

    .line 58
    iput-object p1, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 59
    return-void
.end method

.method public greylist-max-o read(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/SerialPort;->native_read_direct(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0

    .line 93
    :cond_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/SerialPort;->native_read_array([BI)I

    move-result v0

    return v0

    .line 96
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer is not direct and has no array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o sendBreak()V
    .registers 1

    .line 123
    invoke-direct {p0}, Landroid/hardware/SerialPort;->native_send_break()V

    .line 124
    return-void
.end method

.method public greylist-max-r write(Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/hardware/SerialPort;->native_write_direct(Ljava/nio/ByteBuffer;I)V

    goto :goto_17

    .line 112
    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/SerialPort;->native_write_array([BI)V

    .line 117
    :goto_17
    return-void

    .line 115
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer is not direct and has no array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
