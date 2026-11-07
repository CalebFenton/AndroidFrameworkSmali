.class public final Landroid/icu/impl/Trie2_16;
.super Landroid/icu/impl/Trie2;
.source "Trie2_16.java"


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    .line 41
    return-void
.end method

.method public static blacklist createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;
    .registers 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-static {p0}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2_16;

    return-object v0
.end method


# virtual methods
.method public final blacklist get(I)I
    .registers 5
    .param p1, "codePoint"    # I

    .line 74
    if-ltz p1, :cond_63

    .line 75
    const v0, 0xd800

    if-lt p1, v0, :cond_53

    const v1, 0xdbff

    const v2, 0xffff

    if-le p1, v1, :cond_12

    if-gt p1, v2, :cond_12

    goto :goto_53

    .line 84
    :cond_12
    if-gt p1, v2, :cond_28

    .line 91
    iget-object v1, p0, Landroid/icu/impl/Trie2_16;->index:[C

    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x800

    aget-char v0, v1, v0

    .line 92
    .local v0, "ix":I
    shl-int/lit8 v1, v0, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v1, v2

    .line 93
    .end local v0    # "ix":I
    .local v1, "ix":I
    iget-object v0, p0, Landroid/icu/impl/Trie2_16;->index:[C

    aget-char v0, v0, v1

    .line 94
    .local v0, "value":I
    return v0

    .line 96
    .end local v0    # "value":I
    .end local v1    # "ix":I
    :cond_28
    iget v0, p0, Landroid/icu/impl/Trie2_16;->highStart:I

    if-ge p1, v0, :cond_47

    .line 98
    shr-int/lit8 v0, p1, 0xb

    add-int/lit16 v0, v0, 0x820

    .line 99
    .local v0, "ix":I
    iget-object v1, p0, Landroid/icu/impl/Trie2_16;->index:[C

    aget-char v0, v1, v0

    .line 100
    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    .line 101
    iget-object v1, p0, Landroid/icu/impl/Trie2_16;->index:[C

    aget-char v0, v1, v0

    .line 102
    shl-int/lit8 v1, v0, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v1, v2

    .line 103
    .end local v0    # "ix":I
    .restart local v1    # "ix":I
    iget-object v0, p0, Landroid/icu/impl/Trie2_16;->index:[C

    aget-char v0, v0, v1

    .line 104
    .local v0, "value":I
    return v0

    .line 106
    .end local v0    # "value":I
    .end local v1    # "ix":I
    :cond_47
    const v0, 0x10ffff

    if-gt p1, v0, :cond_63

    .line 107
    iget-object v0, p0, Landroid/icu/impl/Trie2_16;->index:[C

    iget v1, p0, Landroid/icu/impl/Trie2_16;->highValueIndex:I

    aget-char v0, v0, v1

    .line 108
    .restart local v0    # "value":I
    return v0

    .line 79
    .end local v0    # "value":I
    :cond_53
    :goto_53
    iget-object v0, p0, Landroid/icu/impl/Trie2_16;->index:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    .line 80
    .local v0, "ix":I
    shl-int/lit8 v1, v0, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v1, v2

    .line 81
    .end local v0    # "ix":I
    .restart local v1    # "ix":I
    iget-object v0, p0, Landroid/icu/impl/Trie2_16;->index:[C

    aget-char v0, v0, v1

    .line 82
    .local v0, "value":I
    return v0

    .line 113
    .end local v0    # "value":I
    .end local v1    # "ix":I
    :cond_63
    iget v0, p0, Landroid/icu/impl/Trie2_16;->errorValue:I

    return v0
.end method

.method public blacklist getFromU16SingleLead(C)I
    .registers 5
    .param p1, "codeUnit"    # C

    .line 137
    iget-object v0, p0, Landroid/icu/impl/Trie2_16;->index:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    .line 138
    .local v0, "ix":I
    shl-int/lit8 v1, v0, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v1, v2

    .line 139
    .end local v0    # "ix":I
    .local v1, "ix":I
    iget-object v0, p0, Landroid/icu/impl/Trie2_16;->index:[C

    aget-char v0, v0, v1

    .line 140
    .local v0, "value":I
    return v0
.end method

.method public blacklist getSerializedLength()I
    .registers 3

    .line 171
    iget-object v0, p0, Landroid/icu/impl/Trie2_16;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    iget v1, p0, Landroid/icu/impl/Trie2_16;->dataLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method greylist-max-o rangeEnd(III)I
    .registers 11
    .param p1, "startingCP"    # I
    .param p2, "limit"    # I
    .param p3, "value"    # I

    .line 185
    move v0, p1

    .line 186
    .local v0, "cp":I
    const/4 v1, 0x0

    .line 187
    .local v1, "block":I
    const/4 v2, 0x0

    .line 196
    .local v2, "index2Block":I
    :goto_3
    if-lt v0, p2, :cond_7

    .line 197
    goto/16 :goto_7c

    .line 199
    :cond_7
    const v3, 0xd800

    if-lt v0, v3, :cond_49

    const v4, 0xdbff

    const v5, 0xffff

    if-le v0, v4, :cond_17

    if-gt v0, v5, :cond_17

    goto :goto_49

    .line 205
    :cond_17
    if-ge v0, v5, :cond_27

    .line 207
    const/16 v2, 0x800

    .line 208
    iget-object v4, p0, Landroid/icu/impl/Trie2_16;->index:[C

    sub-int v3, v0, v3

    shr-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    shl-int/lit8 v1, v3, 0x2

    goto :goto_52

    .line 209
    :cond_27
    iget v3, p0, Landroid/icu/impl/Trie2_16;->highStart:I

    if-ge v0, v3, :cond_3f

    .line 211
    shr-int/lit8 v3, v0, 0xb

    add-int/lit16 v3, v3, 0x820

    .line 212
    .local v3, "ix":I
    iget-object v4, p0, Landroid/icu/impl/Trie2_16;->index:[C

    aget-char v2, v4, v3

    .line 213
    iget-object v4, p0, Landroid/icu/impl/Trie2_16;->index:[C

    shr-int/lit8 v5, v0, 0x5

    and-int/lit8 v5, v5, 0x3f

    add-int/2addr v5, v2

    aget-char v4, v4, v5

    shl-int/lit8 v1, v4, 0x2

    .line 214
    .end local v3    # "ix":I
    goto :goto_52

    .line 216
    :cond_3f
    iget-object v3, p0, Landroid/icu/impl/Trie2_16;->index:[C

    iget v4, p0, Landroid/icu/impl/Trie2_16;->highValueIndex:I

    aget-char v3, v3, v4

    if-ne p3, v3, :cond_7c

    .line 217
    move v0, p2

    goto :goto_7c

    .line 203
    :cond_49
    :goto_49
    const/4 v2, 0x0

    .line 204
    iget-object v3, p0, Landroid/icu/impl/Trie2_16;->index:[C

    shr-int/lit8 v4, v0, 0x5

    aget-char v3, v3, v4

    shl-int/lit8 v1, v3, 0x2

    .line 222
    :goto_52
    iget v3, p0, Landroid/icu/impl/Trie2_16;->index2NullOffset:I

    if-ne v2, v3, :cond_5e

    .line 223
    iget v3, p0, Landroid/icu/impl/Trie2_16;->initialValue:I

    if-eq p3, v3, :cond_5b

    .line 224
    goto :goto_7c

    .line 226
    :cond_5b
    add-int/lit16 v0, v0, 0x800

    goto :goto_3

    .line 227
    :cond_5e
    iget v3, p0, Landroid/icu/impl/Trie2_16;->dataNullOffset:I

    if-ne v1, v3, :cond_6a

    .line 232
    iget v3, p0, Landroid/icu/impl/Trie2_16;->initialValue:I

    if-eq p3, v3, :cond_67

    .line 233
    goto :goto_7c

    .line 235
    :cond_67
    add-int/lit8 v0, v0, 0x20

    goto :goto_3

    .line 239
    :cond_6a
    and-int/lit8 v3, v0, 0x1f

    add-int/2addr v3, v1

    .line 240
    .local v3, "startIx":I
    add-int/lit8 v4, v1, 0x20

    .line 241
    .local v4, "limitIx":I
    move v5, v3

    .local v5, "ix":I
    :goto_70
    if-ge v5, v4, :cond_85

    .line 242
    iget-object v6, p0, Landroid/icu/impl/Trie2_16;->index:[C

    aget-char v6, v6, v5

    if-eq v6, p3, :cond_82

    .line 245
    sub-int v6, v5, v3

    add-int/2addr v0, v6

    .line 246
    nop

    .line 254
    .end local v3    # "startIx":I
    .end local v4    # "limitIx":I
    .end local v5    # "ix":I
    :cond_7c
    :goto_7c
    if-le v0, p2, :cond_7f

    .line 255
    move v0, p2

    .line 258
    :cond_7f
    add-int/lit8 v3, v0, -0x1

    return v3

    .line 241
    .restart local v3    # "startIx":I
    .restart local v4    # "limitIx":I
    .restart local v5    # "ix":I
    :cond_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 251
    .end local v5    # "ix":I
    :cond_85
    sub-int v5, v4, v3

    add-int/2addr v0, v5

    .line 252
    .end local v3    # "startIx":I
    .end local v4    # "limitIx":I
    goto/16 :goto_3
.end method

.method public blacklist serialize(Ljava/io/OutputStream;)I
    .registers 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 157
    .local v0, "dos":Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .line 159
    .local v1, "bytesWritten":I
    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2_16;->serializeHeader(Ljava/io/DataOutputStream;)I

    move-result v2

    add-int/2addr v1, v2

    .line 160
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget v3, p0, Landroid/icu/impl/Trie2_16;->dataLength:I

    if-ge v2, v3, :cond_1d

    .line 161
    iget-object v3, p0, Landroid/icu/impl/Trie2_16;->index:[C

    iget v4, p0, Landroid/icu/impl/Trie2_16;->data16:I

    add-int/2addr v4, v2

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 163
    .end local v2    # "i":I
    :cond_1d
    iget v2, p0, Landroid/icu/impl/Trie2_16;->dataLength:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 164
    return v1
.end method
