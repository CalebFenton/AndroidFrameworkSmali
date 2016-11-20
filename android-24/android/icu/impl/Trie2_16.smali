.class public final Landroid/icu/impl/Trie2_16;
.super Landroid/icu/impl/Trie2;
.source "Trie2_16.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    #@3
    return-void
.end method

.method public static createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;
    .locals 1
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    invoke-static {p0}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/impl/Trie2_16;

    #@6
    return-object v0
.end method


# virtual methods
.method public final get(I)I
    .locals 5
    .param p1, "codePoint"    # I

    #@0
    .prologue
    const v4, 0xffff

    #@3
    const v3, 0xd800

    #@6
    .line 72
    if-ltz p1, :cond_4

    #@8
    .line 73
    if-lt p1, v3, :cond_0

    #@a
    const v2, 0xdbff

    #@d
    if-le p1, v2, :cond_1

    #@f
    if-gt p1, v4, :cond_1

    #@11
    .line 77
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@13
    shr-int/lit8 v3, p1, 0x5

    #@15
    aget-char v0, v2, v3

    #@17
    .line 78
    .local v0, "ix":I
    shl-int/lit8 v2, v0, 0x2

    #@19
    and-int/lit8 v3, p1, 0x1f

    #@1b
    add-int v0, v2, v3

    #@1d
    .line 79
    iget-object v2, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@1f
    aget-char v1, v2, v0

    #@21
    .line 80
    .local v1, "value":I
    return v1

    #@22
    .line 82
    .end local v0    # "ix":I
    .end local v1    # "value":I
    :cond_1
    if-gt p1, v4, :cond_2

    #@24
    .line 89
    iget-object v2, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@26
    sub-int v3, p1, v3

    #@28
    shr-int/lit8 v3, v3, 0x5

    #@2a
    add-int/lit16 v3, v3, 0x800

    #@2c
    aget-char v0, v2, v3

    #@2e
    .line 90
    .restart local v0    # "ix":I
    shl-int/lit8 v2, v0, 0x2

    #@30
    and-int/lit8 v3, p1, 0x1f

    #@32
    add-int v0, v2, v3

    #@34
    .line 91
    iget-object v2, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@36
    aget-char v1, v2, v0

    #@38
    .line 92
    .restart local v1    # "value":I
    return v1

    #@39
    .line 94
    .end local v0    # "ix":I
    .end local v1    # "value":I
    :cond_2
    iget v2, p0, Landroid/icu/impl/Trie2_16;->highStart:I

    #@3b
    if-ge p1, v2, :cond_3

    #@3d
    .line 96
    shr-int/lit8 v2, p1, 0xb

    #@3f
    add-int/lit16 v0, v2, 0x820

    #@41
    .line 97
    .restart local v0    # "ix":I
    iget-object v2, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@43
    aget-char v0, v2, v0

    #@45
    .line 98
    shr-int/lit8 v2, p1, 0x5

    #@47
    and-int/lit8 v2, v2, 0x3f

    #@49
    add-int/2addr v0, v2

    #@4a
    .line 99
    iget-object v2, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@4c
    aget-char v0, v2, v0

    #@4e
    .line 100
    shl-int/lit8 v2, v0, 0x2

    #@50
    and-int/lit8 v3, p1, 0x1f

    #@52
    add-int v0, v2, v3

    #@54
    .line 101
    iget-object v2, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@56
    aget-char v1, v2, v0

    #@58
    .line 102
    .restart local v1    # "value":I
    return v1

    #@59
    .line 104
    .end local v0    # "ix":I
    .end local v1    # "value":I
    :cond_3
    const v2, 0x10ffff

    #@5c
    if-gt p1, v2, :cond_4

    #@5e
    .line 105
    iget-object v2, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@60
    iget v3, p0, Landroid/icu/impl/Trie2_16;->highValueIndex:I

    #@62
    aget-char v1, v2, v3

    #@64
    .line 106
    .restart local v1    # "value":I
    return v1

    #@65
    .line 111
    .end local v1    # "value":I
    :cond_4
    iget v2, p0, Landroid/icu/impl/Trie2_16;->errorValue:I

    #@67
    return v2
.end method

.method public getFromU16SingleLead(C)I
    .locals 4
    .param p1, "codeUnit"    # C

    #@0
    .prologue
    .line 135
    iget-object v2, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@2
    shr-int/lit8 v3, p1, 0x5

    #@4
    aget-char v0, v2, v3

    #@6
    .line 136
    .local v0, "ix":I
    shl-int/lit8 v2, v0, 0x2

    #@8
    and-int/lit8 v3, p1, 0x1f

    #@a
    add-int v0, v2, v3

    #@c
    .line 137
    iget-object v2, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@e
    aget-char v1, v2, v0

    #@10
    .line 138
    .local v1, "value":I
    return v1
.end method

.method public getSerializedLength()I
    .locals 2

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Landroid/icu/impl/Trie2_16;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@2
    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@4
    iget v1, p0, Landroid/icu/impl/Trie2_16;->dataLength:I

    #@6
    add-int/2addr v0, v1

    #@7
    mul-int/lit8 v0, v0, 0x2

    #@9
    add-int/lit8 v0, v0, 0x10

    #@b
    return v0
.end method

.method rangeEnd(III)I
    .locals 10
    .param p1, "startingCP"    # I
    .param p2, "limit"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    const v9, 0xffff

    #@3
    const v8, 0xd800

    #@6
    .line 183
    move v1, p1

    #@7
    .line 184
    .local v1, "cp":I
    const/4 v0, 0x0

    #@8
    .line 185
    .local v0, "block":I
    const/4 v2, 0x0

    #@9
    .line 194
    .local v2, "index2Block":I
    :goto_0
    if-lt v1, p2, :cond_2

    #@b
    .line 252
    :cond_0
    :goto_1
    if-le v1, p2, :cond_1

    #@d
    .line 253
    move v1, p2

    #@e
    .line 256
    :cond_1
    add-int/lit8 v6, v1, -0x1

    #@10
    return v6

    #@11
    .line 197
    :cond_2
    if-lt v1, v8, :cond_3

    #@13
    const v6, 0xdbff

    #@16
    if-le v1, v6, :cond_4

    #@18
    if-gt v1, v9, :cond_4

    #@1a
    .line 201
    :cond_3
    const/4 v2, 0x0

    #@1b
    .line 202
    iget-object v6, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@1d
    shr-int/lit8 v7, v1, 0x5

    #@1f
    aget-char v6, v6, v7

    #@21
    shl-int/lit8 v0, v6, 0x2

    #@23
    .line 220
    :goto_2
    iget v6, p0, Landroid/icu/impl/Trie2_16;->index2NullOffset:I

    #@25
    if-ne v2, v6, :cond_7

    #@27
    .line 221
    iget v6, p0, Landroid/icu/impl/Trie2_16;->initialValue:I

    #@29
    if-ne p3, v6, :cond_0

    #@2b
    .line 224
    add-int/lit16 v1, v1, 0x800

    #@2d
    goto :goto_0

    #@2e
    .line 203
    :cond_4
    if-ge v1, v9, :cond_5

    #@30
    .line 205
    const/16 v2, 0x800

    #@32
    .line 206
    iget-object v6, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@34
    sub-int v7, v1, v8

    #@36
    shr-int/lit8 v7, v7, 0x5

    #@38
    add-int/lit16 v7, v7, 0x800

    #@3a
    aget-char v6, v6, v7

    #@3c
    shl-int/lit8 v0, v6, 0x2

    #@3e
    goto :goto_2

    #@3f
    .line 207
    :cond_5
    iget v6, p0, Landroid/icu/impl/Trie2_16;->highStart:I

    #@41
    if-ge v1, v6, :cond_6

    #@43
    .line 209
    shr-int/lit8 v6, v1, 0xb

    #@45
    add-int/lit16 v3, v6, 0x820

    #@47
    .line 210
    .local v3, "ix":I
    iget-object v6, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@49
    aget-char v2, v6, v3

    #@4b
    .line 211
    iget-object v6, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@4d
    shr-int/lit8 v7, v1, 0x5

    #@4f
    and-int/lit8 v7, v7, 0x3f

    #@51
    add-int/2addr v7, v2

    #@52
    aget-char v6, v6, v7

    #@54
    shl-int/lit8 v0, v6, 0x2

    #@56
    goto :goto_2

    #@57
    .line 214
    .end local v3    # "ix":I
    :cond_6
    iget-object v6, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@59
    iget v7, p0, Landroid/icu/impl/Trie2_16;->highValueIndex:I

    #@5b
    aget-char v6, v6, v7

    #@5d
    if-ne p3, v6, :cond_0

    #@5f
    .line 215
    move v1, p2

    #@60
    goto :goto_1

    #@61
    .line 225
    :cond_7
    iget v6, p0, Landroid/icu/impl/Trie2_16;->dataNullOffset:I

    #@63
    if-ne v0, v6, :cond_8

    #@65
    .line 230
    iget v6, p0, Landroid/icu/impl/Trie2_16;->initialValue:I

    #@67
    if-ne p3, v6, :cond_0

    #@69
    .line 233
    add-int/lit8 v1, v1, 0x20

    #@6b
    goto :goto_0

    #@6c
    .line 237
    :cond_8
    and-int/lit8 v6, v1, 0x1f

    #@6e
    add-int v5, v0, v6

    #@70
    .line 238
    .local v5, "startIx":I
    add-int/lit8 v4, v0, 0x20

    #@72
    .line 239
    .local v4, "limitIx":I
    move v3, v5

    #@73
    .restart local v3    # "ix":I
    :goto_3
    if-ge v3, v4, :cond_a

    #@75
    .line 240
    iget-object v6, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@77
    aget-char v6, v6, v3

    #@79
    if-eq v6, p3, :cond_9

    #@7b
    .line 243
    sub-int v6, v3, v5

    #@7d
    add-int/2addr v1, v6

    #@7e
    .line 244
    goto :goto_1

    #@7f
    .line 239
    :cond_9
    add-int/lit8 v3, v3, 0x1

    #@81
    goto :goto_3

    #@82
    .line 249
    :cond_a
    sub-int v6, v4, v5

    #@84
    add-int/2addr v1, v6

    #@85
    goto :goto_0
.end method

.method public serialize(Ljava/io/OutputStream;)I
    .locals 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    new-instance v1, Ljava/io/DataOutputStream;

    #@2
    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@5
    .line 157
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {p0, v1}, Landroid/icu/impl/Trie2_16;->serializeHeader(Ljava/io/DataOutputStream;)I

    #@8
    move-result v3

    #@9
    add-int/lit8 v0, v3, 0x0

    #@b
    .line 158
    .local v0, "bytesWritten":I
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/icu/impl/Trie2_16;->dataLength:I

    #@e
    if-ge v2, v3, :cond_0

    #@10
    .line 159
    iget-object v3, p0, Landroid/icu/impl/Trie2_16;->index:[C

    #@12
    iget v4, p0, Landroid/icu/impl/Trie2_16;->data16:I

    #@14
    add-int/2addr v4, v2

    #@15
    aget-char v3, v3, v4

    #@17
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@1a
    .line 158
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 161
    :cond_0
    iget v3, p0, Landroid/icu/impl/Trie2_16;->dataLength:I

    #@1f
    mul-int/lit8 v3, v3, 0x2

    #@21
    add-int/2addr v0, v3

    #@22
    .line 162
    return v0
.end method
