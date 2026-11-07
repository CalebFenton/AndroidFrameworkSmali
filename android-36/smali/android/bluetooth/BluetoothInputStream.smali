.class final Landroid/bluetooth/BluetoothInputStream;
.super Ljava/io/InputStream;
.source "BluetoothInputStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSocket;)V
    .registers 2
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 46
    return-void
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 59
    .local v1, "b":[B
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/bluetooth/BluetoothSocket;->read([BII)I

    move-result v2

    .line 60
    .local v2, "ret":I
    if-ne v2, v0, :cond_11

    .line 61
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 63
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-eqz p1, :cond_19

    .line 85
    or-int v0, p2, p3

    if-ltz v0, :cond_11

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_11

    .line 88
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothSocket;->read([BII)I

    move-result v0

    return v0

    .line 86
    :cond_11
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "invalid offset or length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "byte array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
