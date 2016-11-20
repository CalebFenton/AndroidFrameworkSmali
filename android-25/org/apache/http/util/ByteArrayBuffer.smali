.class public final Lorg/apache/http/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private buffer:[B

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    if-gez p1, :cond_0

    #@5
    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Buffer capacity may not be negative"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 58
    :cond_0
    new-array v0, p1, [B

    #@10
    iput-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@12
    .line 53
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newlen"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 62
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@3
    array-length v1, v1

    #@4
    shl-int/lit8 v1, v1, 0x1

    #@6
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 63
    .local v0, "newbuffer":[B
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@e
    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@10
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@13
    .line 64
    iput-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@15
    .line 61
    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 4
    .param p1, "b"    # I

    #@0
    .prologue
    .line 87
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@2
    add-int/lit8 v0, v1, 0x1

    #@4
    .line 88
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@6
    array-length v1, v1

    #@7
    if-le v0, v1, :cond_0

    #@9
    .line 89
    invoke-direct {p0, v0}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    #@c
    .line 91
    :cond_0
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@e
    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@10
    int-to-byte v3, p1

    #@11
    aput-byte v3, v1, v2

    #@13
    .line 92
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@15
    .line 86
    return-void
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 1
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 118
    if-nez p1, :cond_0

    #@2
    .line 119
    return-void

    #@3
    .line 121
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/ByteArrayBuffer;->append([CII)V

    #@a
    .line 117
    return-void
.end method

.method public append([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 68
    if-nez p1, :cond_0

    #@2
    .line 69
    return-void

    #@3
    .line 71
    :cond_0
    if-ltz p2, :cond_1

    #@5
    array-length v1, p1

    #@6
    if-le p2, v1, :cond_2

    #@8
    .line 73
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v1

    #@e
    .line 71
    :cond_2
    if-ltz p3, :cond_1

    #@10
    .line 72
    add-int v1, p2, p3

    #@12
    if-ltz v1, :cond_1

    #@14
    add-int v1, p2, p3

    #@16
    array-length v2, p1

    #@17
    if-gt v1, v2, :cond_1

    #@19
    .line 75
    if-nez p3, :cond_3

    #@1b
    .line 76
    return-void

    #@1c
    .line 78
    :cond_3
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@1e
    add-int v0, v1, p3

    #@20
    .line 79
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@22
    array-length v1, v1

    #@23
    if-le v0, v1, :cond_4

    #@25
    .line 80
    invoke-direct {p0, v0}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    #@28
    .line 82
    :cond_4
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@2a
    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@2c
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2f
    .line 83
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@31
    .line 67
    return-void
.end method

.method public append([CII)V
    .locals 6
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 96
    if-nez p1, :cond_0

    #@2
    .line 97
    return-void

    #@3
    .line 99
    :cond_0
    if-ltz p2, :cond_1

    #@5
    array-length v4, p1

    #@6
    if-le p2, v4, :cond_2

    #@8
    .line 101
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v4

    #@e
    .line 99
    :cond_2
    if-ltz p3, :cond_1

    #@10
    .line 100
    add-int v4, p2, p3

    #@12
    if-ltz v4, :cond_1

    #@14
    add-int v4, p2, p3

    #@16
    array-length v5, p1

    #@17
    if-gt v4, v5, :cond_1

    #@19
    .line 103
    if-nez p3, :cond_3

    #@1b
    .line 104
    return-void

    #@1c
    .line 106
    :cond_3
    iget v3, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@1e
    .line 107
    .local v3, "oldlen":I
    add-int v2, v3, p3

    #@20
    .line 108
    .local v2, "newlen":I
    iget-object v4, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@22
    array-length v4, v4

    #@23
    if-le v2, v4, :cond_4

    #@25
    .line 109
    invoke-direct {p0, v2}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    #@28
    .line 111
    :cond_4
    move v0, p2

    #@29
    .local v0, "i1":I
    move v1, v3

    #@2a
    .local v1, "i2":I
    :goto_0
    if-ge v1, v2, :cond_5

    #@2c
    .line 112
    iget-object v4, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@2e
    aget-char v5, p1, v0

    #@30
    int-to-byte v5, v5

    #@31
    aput-byte v5, v4, v1

    #@33
    .line 111
    add-int/lit8 v0, v0, 0x1

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 114
    :cond_5
    iput v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@3a
    .line 95
    return-void
.end method

.method public buffer()[B
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@2
    return-object v0
.end method

.method public byteAt(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@2
    aget-byte v0, v0, p1

    #@4
    return v0
.end method

.method public capacity()I
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 125
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@3
    .line 124
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 160
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isFull()Z
    .locals 2

    #@0
    .prologue
    .line 164
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@2
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@4
    array-length v1, v1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 145
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@2
    return v0
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 153
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@4
    array-length v0, v0

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v0

    #@d
    .line 156
    :cond_1
    iput p1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@f
    .line 152
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 129
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@3
    new-array v0, v1, [B

    #@5
    .line 130
    .local v0, "b":[B
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@7
    if-lez v1, :cond_0

    #@9
    .line 131
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    #@b
    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    #@d
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 133
    :cond_0
    return-object v0
.end method
