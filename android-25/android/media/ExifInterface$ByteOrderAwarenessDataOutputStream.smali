.class Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteOrderAwarenessDataOutputStream"
.end annotation


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 2732
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 2733
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@5
    .line 2734
    iput-object p2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@7
    .line 2731
    return-void
.end method


# virtual methods
.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 2738
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@2
    .line 2737
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2742
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    #@5
    .line 2741
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2746
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@5
    .line 2745
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2750
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 2749
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2764
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@4
    if-ne v0, v1, :cond_1

    #@6
    .line 2765
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@8
    ushr-int/lit8 v1, p1, 0x0

    #@a
    and-int/lit16 v1, v1, 0xff

    #@c
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@f
    .line 2766
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@11
    ushr-int/lit8 v1, p1, 0x8

    #@13
    and-int/lit16 v1, v1, 0xff

    #@15
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@18
    .line 2767
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@1a
    ushr-int/lit8 v1, p1, 0x10

    #@1c
    and-int/lit16 v1, v1, 0xff

    #@1e
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@21
    .line 2768
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@23
    ushr-int/lit8 v1, p1, 0x18

    #@25
    and-int/lit16 v1, v1, 0xff

    #@27
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@2a
    .line 2763
    :cond_0
    :goto_0
    return-void

    #@2b
    .line 2769
    :cond_1
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@2d
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2f
    if-ne v0, v1, :cond_0

    #@31
    .line 2770
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@33
    ushr-int/lit8 v1, p1, 0x18

    #@35
    and-int/lit16 v1, v1, 0xff

    #@37
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@3a
    .line 2771
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@3c
    ushr-int/lit8 v1, p1, 0x10

    #@3e
    and-int/lit16 v1, v1, 0xff

    #@40
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@43
    .line 2772
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@45
    ushr-int/lit8 v1, p1, 0x8

    #@47
    and-int/lit16 v1, v1, 0xff

    #@49
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@4c
    .line 2773
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@4e
    ushr-int/lit8 v1, p1, 0x0

    #@50
    and-int/lit16 v1, v1, 0xff

    #@52
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@55
    goto :goto_0
.end method

.method public writeShort(S)V
    .locals 2
    .param p1, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2754
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@4
    if-ne v0, v1, :cond_1

    #@6
    .line 2755
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@8
    ushr-int/lit8 v1, p1, 0x0

    #@a
    and-int/lit16 v1, v1, 0xff

    #@c
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@f
    .line 2756
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@11
    ushr-int/lit8 v1, p1, 0x8

    #@13
    and-int/lit16 v1, v1, 0xff

    #@15
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@18
    .line 2753
    :cond_0
    :goto_0
    return-void

    #@19
    .line 2757
    :cond_1
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    #@1b
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@1d
    if-ne v0, v1, :cond_0

    #@1f
    .line 2758
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@21
    ushr-int/lit8 v1, p1, 0x8

    #@23
    and-int/lit16 v1, v1, 0xff

    #@25
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@28
    .line 2759
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    #@2a
    ushr-int/lit8 v1, p1, 0x0

    #@2c
    and-int/lit16 v1, v1, 0xff

    #@2e
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@31
    goto :goto_0
.end method

.method public writeUnsignedInt(J)V
    .locals 1
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2782
    long-to-int v0, p1

    #@1
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeInt(I)V

    #@4
    .line 2781
    return-void
.end method

.method public writeUnsignedShort(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2778
    int-to-short v0, p1

    #@1
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeShort(S)V

    #@4
    .line 2777
    return-void
.end method
