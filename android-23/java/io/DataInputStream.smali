.class public Ljava/io/DataInputStream;
.super Ljava/io/FilterInputStream;
.source "DataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final scratch:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 37
    const/16 v0, 0x8

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    #@9
    .line 53
    return-void
.end method

.method private static decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;
    .locals 3
    .param p0, "utfSize"    # I
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 177
    new-array v0, p0, [B

    #@3
    .line 178
    .local v0, "buf":[B
    invoke-interface {p1, v0, v2, p0}, Ljava/io/DataInput;->readFully([BII)V

    #@6
    .line 179
    new-array v1, p0, [C

    #@8
    invoke-static {v0, v1, v2, p0}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static final readUTF(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p0}, Ljava/io/DataInputStream;->decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method decodeUTF(I)Ljava/lang/String;
    .locals 1
    .param p1, "utfSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    invoke-static {p1, p0}, Ljava/io/DataInputStream;->decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 67
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@3
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@6
    move-result v0

    #@7
    .line 68
    .local v0, "temp":I
    if-gez v0, :cond_0

    #@9
    .line 69
    new-instance v1, Ljava/io/EOFException;

    #@b
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@e
    throw v1

    #@f
    .line 71
    :cond_0
    if-eqz v0, :cond_1

    #@11
    const/4 v1, 0x1

    #@12
    :cond_1
    return v1
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 76
    .local v0, "temp":I
    if-gez v0, :cond_0

    #@8
    .line 77
    new-instance v1, Ljava/io/EOFException;

    #@a
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@d
    throw v1

    #@e
    .line 79
    :cond_0
    int-to-byte v1, v0

    #@f
    return v1
.end method

.method public final readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    #@3
    move-result v0

    #@4
    int-to-char v0, v0

    #@5
    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    #@5
    .line 94
    return-void
.end method

.method public final readFully([BII)V
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-static {v0, p1, p2, p3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@5
    .line 98
    return-void
.end method

.method public final readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 103
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@3
    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    #@5
    const/4 v2, 0x4

    #@6
    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@9
    .line 104
    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    #@b
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@d
    invoke-static {v0, v3, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v3, 0x50

    #@4
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 114
    .local v1, "line":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@8
    .line 116
    .local v0, "foundTerminator":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    #@d
    move-result v2

    #@e
    .line 117
    .local v2, "nextByte":I
    sparse-switch v2, :sswitch_data_0

    #@11
    .line 137
    if-eqz v0, :cond_4

    #@13
    .line 138
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@15
    check-cast v3, Ljava/io/PushbackInputStream;

    #@17
    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    #@1a
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 119
    :sswitch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_1

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 122
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    return-object v3

    #@2c
    .line 120
    :cond_2
    const/4 v3, 0x0

    #@2d
    return-object v3

    #@2e
    .line 124
    :sswitch_1
    if-eqz v0, :cond_3

    #@30
    .line 125
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@32
    check-cast v3, Ljava/io/PushbackInputStream;

    #@34
    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    #@37
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    return-object v3

    #@3c
    .line 128
    :cond_3
    const/4 v0, 0x1

    #@3d
    .line 130
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@3f
    invoke-virtual {v3}, Ljava/io/InputStream;->getClass()Ljava/lang/Class;

    #@42
    move-result-object v3

    #@43
    const-class v4, Ljava/io/PushbackInputStream;

    #@45
    if-eq v3, v4, :cond_0

    #@47
    .line 131
    new-instance v3, Ljava/io/PushbackInputStream;

    #@49
    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@4b
    invoke-direct {v3, v4}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    #@4e
    iput-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@50
    goto :goto_0

    #@51
    .line 135
    :sswitch_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    return-object v3

    #@56
    .line 141
    :cond_4
    int-to-char v3, v2

    #@57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_0

    #@5b
    .line 117
    nop

    #@5c
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 147
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@3
    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    #@5
    const/16 v2, 0x8

    #@7
    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@a
    .line 148
    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    #@c
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@e
    invoke-static {v0, v3, v1}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    #@11
    move-result-wide v0

    #@12
    return-wide v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 152
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@3
    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    #@5
    const/4 v2, 0x2

    #@6
    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@9
    .line 153
    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    #@b
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@d
    invoke-static {v0, v3, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 158
    .local v0, "temp":I
    if-gez v0, :cond_0

    #@8
    .line 159
    new-instance v1, Ljava/io/EOFException;

    #@a
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@d
    throw v1

    #@e
    .line 161
    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    #@3
    move-result v0

    #@4
    const v1, 0xffff

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method

.method public final skipBytes(I)I
    .locals 6
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    const/4 v2, 0x0

    #@1
    .line 204
    .local v2, "skipped":I
    :goto_0
    if-ge v2, p1, :cond_0

    #@3
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@5
    sub-int v4, p1, v2

    #@7
    int-to-long v4, v4

    #@8
    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    #@b
    move-result-wide v0

    #@c
    .local v0, "skip":J
    const-wide/16 v4, 0x0

    #@e
    cmp-long v3, v0, v4

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 205
    int-to-long v4, v2

    #@13
    add-long/2addr v4, v0

    #@14
    long-to-int v2, v4

    #@15
    goto :goto_0

    #@16
    .line 207
    .end local v0    # "skip":J
    :cond_0
    return v2
.end method
