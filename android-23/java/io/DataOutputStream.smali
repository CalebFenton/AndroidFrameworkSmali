.class public Ljava/io/DataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DataOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field private final scratch:[B

.field protected written:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 34
    const/16 v0, 0x8

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Ljava/io/DataOutputStream;->scratch:[B

    #@9
    .line 50
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    #@3
    .line 62
    return-void
.end method

.method public final size()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 73
    const v0, 0x7fffffff

    #@7
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    #@9
    .line 75
    :cond_0
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    #@b
    return v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 115
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    #@b
    .line 113
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    if-nez p1, :cond_0

    #@2
    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "buffer == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 98
    :cond_0
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@d
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@10
    .line 99
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    #@12
    add-int/2addr v0, p3

    #@13
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    #@15
    .line 94
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 2
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    iget-object v1, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    #@8
    .line 129
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    #@e
    .line 127
    return-void

    #@f
    .line 128
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 145
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    #@b
    .line 143
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 150
    return-void

    #@7
    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    new-array v0, v2, [B

    #@d
    .line 153
    .local v0, "bytes":[B
    const/4 v1, 0x0

    #@e
    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    if-ge v1, v2, :cond_1

    #@14
    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v2

    #@18
    int-to-byte v2, v2

    #@19
    aput-byte v2, v0, v1

    #@1b
    .line 153
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 156
    :cond_1
    iget-object v2, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@20
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    #@23
    .line 157
    iget v2, p0, Ljava/io/DataOutputStream;->written:I

    #@25
    array-length v3, v0

    #@26
    add-int/2addr v2, v3

    #@27
    iput v2, p0, Ljava/io/DataOutputStream;->written:I

    #@29
    .line 148
    return-void
.end method

.method public final writeChar(I)V
    .locals 0
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@3
    .line 160
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    const-string/jumbo v1, "UTF-16BE"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@6
    move-result-object v0

    #@7
    .line 166
    .local v0, "bytes":[B
    iget-object v1, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@9
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    #@c
    .line 167
    iget v1, p0, Ljava/io/DataOutputStream;->written:I

    #@e
    array-length v2, v0

    #@f
    add-int/2addr v1, v2

    #@10
    iput v1, p0, Ljava/io/DataOutputStream;->written:I

    #@12
    .line 164
    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .param p1, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@7
    .line 170
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@7
    .line 174
    return-void
.end method

.method public final writeInt(I)V
    .locals 4
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 179
    iget-object v0, p0, Ljava/io/DataOutputStream;->scratch:[B

    #@3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@5
    invoke-static {v0, v3, p1, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@8
    .line 180
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@a
    iget-object v1, p0, Ljava/io/DataOutputStream;->scratch:[B

    #@c
    const/4 v2, 0x4

    #@d
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@10
    .line 181
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    #@12
    add-int/lit8 v0, v0, 0x4

    #@14
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    #@16
    .line 178
    return-void
.end method

.method public final writeLong(J)V
    .locals 5
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 185
    iget-object v0, p0, Ljava/io/DataOutputStream;->scratch:[B

    #@3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@5
    invoke-static {v0, v3, p1, p2, v1}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    #@8
    .line 186
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@a
    iget-object v1, p0, Ljava/io/DataOutputStream;->scratch:[B

    #@c
    const/16 v2, 0x8

    #@e
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@11
    .line 187
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    #@13
    add-int/lit8 v0, v0, 0x8

    #@15
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    #@17
    .line 184
    return-void
.end method

.method public final writeShort(I)V
    .locals 4
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 191
    iget-object v0, p0, Ljava/io/DataOutputStream;->scratch:[B

    #@3
    int-to-short v1, p1

    #@4
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@6
    invoke-static {v0, v3, v1, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@9
    .line 192
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@b
    iget-object v1, p0, Ljava/io/DataOutputStream;->scratch:[B

    #@d
    const/4 v2, 0x2

    #@e
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@11
    .line 193
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    #@13
    add-int/lit8 v0, v0, 0x2

    #@15
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    #@17
    .line 190
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    invoke-static {p1}, Ljava/nio/charset/ModifiedUtf8;->encode(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    #@7
    .line 196
    return-void
.end method
