.class public final Lorg/apache/http/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private buffer:[C

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    if-gez p1, :cond_0

    #@5
    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Buffer capacity may not be negative"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 60
    :cond_0
    new-array v0, p1, [C

    #@10
    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@12
    .line 55
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newlen"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 64
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@3
    array-length v1, v1

    #@4
    shl-int/lit8 v1, v1, 0x1

    #@6
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v1

    #@a
    new-array v0, v1, [C

    #@c
    .line 65
    .local v0, "newbuffer":[C
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@e
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@10
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@13
    .line 66
    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@15
    .line 63
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 116
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@2
    add-int/lit8 v0, v1, 0x1

    #@4
    .line 117
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@6
    array-length v1, v1

    #@7
    if-le v0, v1, :cond_0

    #@9
    .line 118
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    #@c
    .line 120
    :cond_0
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@e
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@10
    aput-char p1, v1, v2

    #@12
    .line 121
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@14
    .line 115
    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 158
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@7
    .line 157
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    if-nez p1, :cond_0

    #@2
    .line 90
    const-string/jumbo p1, "null"

    #@5
    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    .line 93
    .local v1, "strlen":I
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@b
    add-int v0, v2, v1

    #@d
    .line 94
    .local v0, "newlen":I
    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@f
    array-length v2, v2

    #@10
    if-le v0, v2, :cond_1

    #@12
    .line 95
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    #@15
    .line 97
    :cond_1
    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@17
    iget v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-virtual {p1, v4, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@1d
    .line 98
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@1f
    .line 88
    return-void
.end method

.method public append(Lorg/apache/http/util/ByteArrayBuffer;II)V
    .locals 1
    .param p1, "b"    # Lorg/apache/http/util/ByteArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 151
    if-nez p1, :cond_0

    #@2
    .line 152
    return-void

    #@3
    .line 154
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    #@a
    .line 150
    return-void
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 3
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;

    #@0
    .prologue
    .line 109
    if-nez p1, :cond_0

    #@2
    .line 110
    return-void

    #@3
    .line 112
    :cond_0
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@5
    iget v1, p1, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    #@b
    .line 108
    return-void
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 1
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 102
    if-nez p1, :cond_0

    #@2
    .line 103
    return-void

    #@3
    .line 105
    :cond_0
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@5
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    #@8
    .line 101
    return-void
.end method

.method public append([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 125
    if-nez p1, :cond_0

    #@2
    .line 126
    return-void

    #@3
    .line 128
    :cond_0
    if-ltz p2, :cond_1

    #@5
    array-length v5, p1

    #@6
    if-le p2, v5, :cond_2

    #@8
    .line 130
    :cond_1
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v5

    #@e
    .line 128
    :cond_2
    if-ltz p3, :cond_1

    #@10
    .line 129
    add-int v5, p2, p3

    #@12
    if-ltz v5, :cond_1

    #@14
    add-int v5, p2, p3

    #@16
    array-length v6, p1

    #@17
    if-gt v5, v6, :cond_1

    #@19
    .line 132
    if-nez p3, :cond_3

    #@1b
    .line 133
    return-void

    #@1c
    .line 135
    :cond_3
    iget v4, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@1e
    .line 136
    .local v4, "oldlen":I
    add-int v3, v4, p3

    #@20
    .line 137
    .local v3, "newlen":I
    iget-object v5, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@22
    array-length v5, v5

    #@23
    if-le v3, v5, :cond_4

    #@25
    .line 138
    invoke-direct {p0, v3}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    #@28
    .line 140
    :cond_4
    move v1, p2

    #@29
    .local v1, "i1":I
    move v2, v4

    #@2a
    .local v2, "i2":I
    :goto_0
    if-ge v2, v3, :cond_6

    #@2c
    .line 141
    aget-byte v0, p1, v1

    #@2e
    .line 142
    .local v0, "ch":I
    if-gez v0, :cond_5

    #@30
    .line 143
    add-int/lit16 v0, v0, 0x100

    #@32
    .line 145
    :cond_5
    iget-object v5, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@34
    int-to-char v6, v0

    #@35
    aput-char v6, v5, v2

    #@37
    .line 140
    add-int/lit8 v1, v1, 0x1

    #@39
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 147
    .end local v0    # "ch":I
    :cond_6
    iput v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@3e
    .line 124
    return-void
.end method

.method public append([CII)V
    .locals 3
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 70
    if-nez p1, :cond_0

    #@2
    .line 71
    return-void

    #@3
    .line 73
    :cond_0
    if-ltz p2, :cond_1

    #@5
    array-length v1, p1

    #@6
    if-le p2, v1, :cond_2

    #@8
    .line 75
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v1

    #@e
    .line 73
    :cond_2
    if-ltz p3, :cond_1

    #@10
    .line 74
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
    .line 77
    if-nez p3, :cond_3

    #@1b
    .line 78
    return-void

    #@1c
    .line 80
    :cond_3
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@1e
    add-int v0, v1, p3

    #@20
    .line 81
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@22
    array-length v1, v1

    #@23
    if-le v0, v1, :cond_4

    #@25
    .line 82
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    #@28
    .line 84
    :cond_4
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@2a
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@2c
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2f
    .line 85
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@31
    .line 69
    return-void
.end method

.method public buffer()[C
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@2
    return-object v0
.end method

.method public capacity()I
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@2
    aget-char v0, v0, p1

    #@4
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 162
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@3
    .line 161
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "required"    # I

    #@0
    .prologue
    .line 190
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@2
    array-length v1, v1

    #@3
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@5
    sub-int v0, v1, v2

    #@7
    .line 191
    .local v0, "available":I
    if-le p1, v0, :cond_0

    #@9
    .line 192
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@b
    add-int/2addr v1, p1

    #@c
    invoke-direct {p0, v1}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    #@f
    .line 189
    :cond_0
    return-void
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 230
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public indexOf(III)I
    .locals 3
    .param p1, "ch"    # I
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 212
    if-gez p2, :cond_0

    #@3
    .line 213
    const/4 p2, 0x0

    #@4
    .line 215
    :cond_0
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@6
    if-le p3, v1, :cond_1

    #@8
    .line 216
    iget p3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@a
    .line 218
    :cond_1
    if-le p2, p3, :cond_2

    #@c
    .line 219
    return v2

    #@d
    .line 221
    :cond_2
    move v0, p2

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    #@10
    .line 222
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@12
    aget-char v1, v1, v0

    #@14
    if-ne v1, p1, :cond_3

    #@16
    .line 223
    return v0

    #@17
    .line 221
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 226
    :cond_4
    return v2
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 204
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

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
    .line 208
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@2
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

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
    .line 186
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@2
    return v0
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 197
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@4
    array-length v0, v0

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v0

    #@d
    .line 200
    :cond_1
    iput p1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@f
    .line 196
    return-void
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 234
    if-gez p1, :cond_0

    #@2
    .line 235
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@7
    throw v0

    #@8
    .line 237
    :cond_0
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@a
    if-le p2, v0, :cond_1

    #@c
    .line 238
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 240
    :cond_1
    if-le p1, p2, :cond_2

    #@14
    .line 241
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@16
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 243
    :cond_2
    new-instance v0, Ljava/lang/String;

    #@1c
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@1e
    sub-int v2, p2, p1

    #@20
    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    #@23
    return-object v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .locals 3
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 247
    if-gez p1, :cond_0

    #@2
    .line 248
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@7
    throw v0

    #@8
    .line 250
    :cond_0
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@a
    if-le p2, v0, :cond_1

    #@c
    .line 251
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 253
    :cond_1
    if-le p1, p2, :cond_2

    #@14
    .line 254
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@16
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 256
    :cond_2
    :goto_0
    if-ge p1, p2, :cond_3

    #@1c
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@1e
    aget-char v0, v0, p1

    #@20
    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 257
    add-int/lit8 p1, p1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 259
    :cond_3
    :goto_1
    if-le p2, p1, :cond_4

    #@2b
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@2d
    add-int/lit8 v1, p2, -0x1

    #@2f
    aget-char v0, v0, v1

    #@31
    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 260
    add-int/lit8 p2, p2, -0x1

    #@39
    goto :goto_1

    #@3a
    .line 262
    :cond_4
    new-instance v0, Ljava/lang/String;

    #@3c
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@3e
    sub-int v2, p2, p1

    #@40
    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    #@43
    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 166
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@3
    new-array v0, v1, [C

    #@5
    .line 167
    .local v0, "b":[C
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@7
    if-lez v1, :cond_0

    #@9
    .line 168
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@b
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@d
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 170
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 266
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    #@4
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    #@a
    return-object v0
.end method
