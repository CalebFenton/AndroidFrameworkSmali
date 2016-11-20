.class final Landroid/bluetooth/BluetoothInputStream;
.super Ljava/io/InputStream;
.source "BluetoothInputStream.java"


# instance fields
.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@5
    .line 32
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->available()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    #@5
    .line 43
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 59
    new-array v0, v3, [B

    #@4
    .line 60
    .local v0, "b":[B
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@6
    invoke-virtual {v2, v0, v4, v3}, Landroid/bluetooth/BluetoothSocket;->read([BII)I

    #@9
    move-result v1

    #@a
    .line 61
    .local v1, "ret":I
    if-ne v1, v3, :cond_0

    #@c
    .line 62
    aget-byte v2, v0, v4

    #@e
    and-int/lit16 v2, v2, 0xff

    #@10
    return v2

    #@11
    .line 64
    :cond_0
    const/4 v2, -0x1

    #@12
    return v2
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    if-nez p1, :cond_0

    #@2
    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "byte array is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 93
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
    .line 94
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@15
    const-string/jumbo v1, "invalid offset or length"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 96
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@1e
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothSocket;->read([BII)I

    #@21
    move-result v0

    #@22
    return v0
.end method
