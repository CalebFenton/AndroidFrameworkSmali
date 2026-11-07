.class final Landroid/bluetooth/BluetoothOutputStream;
.super Ljava/io/OutputStream;
.source "BluetoothOutputStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSocket;)V
    .registers 2
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    .line 35
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 42
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 54
    .local v1, "b":[B
    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 55
    iget-object v2, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v1, v3, v0}, Landroid/bluetooth/BluetoothSocket;->write([BII)I

    .line 56
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    if-eqz p1, :cond_18

    .line 74
    or-int v0, p2, p3

    if-ltz v0, :cond_10

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_10

    .line 77
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothSocket;->write([BII)I

    .line 78
    return-void

    .line 75
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid offset or length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
