.class final Landroid/bluetooth/BluetoothOutputStream;
.super Ljava/io/OutputStream;
.source "BluetoothOutputStream.java"


# instance fields
.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@5
    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    #@5
    .line 39
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->flush()V

    #@5
    .line 95
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 54
    new-array v0, v3, [B

    #@4
    .line 55
    .local v0, "b":[B
    int-to-byte v1, p1

    #@5
    aput-byte v1, v0, v2

    #@7
    .line 56
    iget-object v1, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@9
    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothSocket;->write([BII)I

    #@c
    .line 53
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    if-nez p1, :cond_0

    #@2
    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "buffer is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 82
    :cond_0
    or-int v0, p2, p3

    #@d
    if-ltz v0, :cond_1

    #@f
    array-length v0, p1

    #@10
    sub-int/2addr v0, p2

    #@11
    if-le p3, v0, :cond_2

    #@13
    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@15
    const-string/jumbo v1, "invalid offset or length"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 85
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@1e
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothSocket;->write([BII)I

    #@21
    .line 78
    return-void
.end method
