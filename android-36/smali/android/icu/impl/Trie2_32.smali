.class public Landroid/icu/impl/Trie2_32;
.super Landroid/icu/impl/Trie2;
.source "Trie2_32.java"


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    .line 40
    return-void
.end method

.method public static blacklist createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_32;
    .registers 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {p0}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2_32;

    return-object v0
.end method


# virtual methods
.method public final blacklist get(I)I
    .registers 5
    .param p1, "codePoint"    # I

    .line 73
    if-ltz p1, :cond_63

    .line 74
    const v0, 0xd800

    if-lt p1, v0, :cond_53

    const v1, 0xdbff

    const v2, 0xffff

    if-le p1, v1, :cond_12

    if-gt p1, v2, :cond_12

    goto :goto_53

    .line 83
    :cond_12
    if-gt p1, v2, :cond_28

    .line 90
    iget-object v1, p0, Landroid/icu/impl/Trie2_32;->index:[C

    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x800

    aget-char v0, v1, v0

    .line 91
    .local v0, "ix":I
    shl-int/lit8 v1, v0, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v1, v2

    .line 92
    .end local v0    # "ix":I
    .local v1, "ix":I
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v0, v0, v1

    .line 93
    .local v0, "value":I
    return v0

    .line 95
    .end local v0    # "value":I
    .end local v1    # "ix":I
    :cond_28
    iget v0, p0, Landroid/icu/impl/Trie2_32;->highStart:I

    if-ge p1, v0, :cond_47

    .line 97
    shr-int/lit8 v0, p1, 0xb

    add-int/lit16 v0, v0, 0x820

    .line 98
    .local v0, "ix":I
    iget-object v1, p0, Landroid/icu/impl/Trie2_32;->index:[C

    aget-char v0, v1, v0

    .line 99
    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    .line 100
    iget-object v1, p0, Landroid/icu/impl/Trie2_32;->index:[C

    aget-char v0, v1, v0

    .line 101
    shl-int/lit8 v1, v0, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v1, v2

    .line 102
    .end local v0    # "ix":I
    .restart local v1    # "ix":I
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v0, v0, v1

    .line 103
    .local v0, "value":I
    return v0

    .line 105
    .end local v0    # "value":I
    .end local v1    # "ix":I
    :cond_47
    const v0, 0x10ffff

    if-gt p1, v0, :cond_63

    .line 106
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    iget v1, p0, Landroid/icu/impl/Trie2_32;->highValueIndex:I

    aget v0, v0, v1

    .line 107
    .restart local v0    # "value":I
    return v0

    .line 78
    .end local v0    # "value":I
    :cond_53
    :goto_53
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    .line 79
    .local v0, "ix":I
    shl-int/lit8 v1, v0, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v1, v2

    .line 80
    .end local v0    # "ix":I
    .restart local v1    # "ix":I
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v0, v0, v1

    .line 81
    .local v0, "value":I
    return v0

    .line 112
    .end local v0    # "value":I
    .end local v1    # "ix":I
    :cond_63
    iget v0, p0, Landroid/icu/impl/Trie2_32;->errorValue:I

    return v0
.end method

.method public blacklist getFromU16SingleLead(C)I
    .registers 5
    .param p1, "codeUnit"    # C

    .line 134
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    .line 135
    .local v0, "ix":I
    shl-int/lit8 v1, v0, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v1, v2

    .line 136
    .end local v0    # "ix":I
    .local v1, "ix":I
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v0, v0, v1

    .line 137
    .local v0, "value":I
    return v0
.end method

.method public blacklist getSerializedLength()I
    .registers 3

    .line 168
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    iget v1, p0, Landroid/icu/impl/Trie2_32;->dataLength:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o rangeEnd(III)I
    .registers 11
    .param p1, "startingCP"    # I
    .param p2, "limit"    # I
    .param p3, "value"    # I

    .line 182
    move v0, p1

    .line 183
    .local v0, "cp":I
    const/4 v1, 0x0

    .line 184
    .local v1, "block":I
    const/4 v2, 0x0

    .line 193
    .local v2, "index2Block":I
    :goto_3
    if-lt v0, p2, :cond_7

    .line 194
    goto/16 :goto_7c

    .line 196
    :cond_7
    const v3, 0xd800

    if-lt v0, v3, :cond_49

    const v4, 0xdbff

    const v5, 0xffff

    if-le v0, v4, :cond_17

    if-gt v0, v5, :cond_17

    goto :goto_49

    .line 202
    :cond_17
    if-ge v0, v5, :cond_27

    .line 204
    const/16 v2, 0x800

    .line 205
    iget-object v4, p0, Landroid/icu/impl/Trie2_32;->index:[C

    sub-int v3, v0, v3

    shr-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    shl-int/lit8 v1, v3, 0x2

    goto :goto_52

    .line 206
    :cond_27
    iget v3, p0, Landroid/icu/impl/Trie2_32;->highStart:I

    if-ge v0, v3, :cond_3f

    .line 208
    shr-int/lit8 v3, v0, 0xb

    add-int/lit16 v3, v3, 0x820

    .line 209
    .local v3, "ix":I
    iget-object v4, p0, Landroid/icu/impl/Trie2_32;->index:[C

    aget-char v2, v4, v3

    .line 210
    iget-object v4, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v5, v0, 0x5

    and-int/lit8 v5, v5, 0x3f

    add-int/2addr v5, v2

    aget-char v4, v4, v5

    shl-int/lit8 v1, v4, 0x2

    .line 211
    .end local v3    # "ix":I
    goto :goto_52

    .line 213
    :cond_3f
    iget-object v3, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    iget v4, p0, Landroid/icu/impl/Trie2_32;->highValueIndex:I

    aget v3, v3, v4

    if-ne p3, v3, :cond_7c

    .line 214
    move v0, p2

    goto :goto_7c

    .line 200
    :cond_49
    :goto_49
    const/4 v2, 0x0

    .line 201
    iget-object v3, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v4, v0, 0x5

    aget-char v3, v3, v4

    shl-int/lit8 v1, v3, 0x2

    .line 219
    :goto_52
    iget v3, p0, Landroid/icu/impl/Trie2_32;->index2NullOffset:I

    if-ne v2, v3, :cond_5e

    .line 220
    iget v3, p0, Landroid/icu/impl/Trie2_32;->initialValue:I

    if-eq p3, v3, :cond_5b

    .line 221
    goto :goto_7c

    .line 223
    :cond_5b
    add-int/lit16 v0, v0, 0x800

    goto :goto_3

    .line 224
    :cond_5e
    iget v3, p0, Landroid/icu/impl/Trie2_32;->dataNullOffset:I

    if-ne v1, v3, :cond_6a

    .line 229
    iget v3, p0, Landroid/icu/impl/Trie2_32;->initialValue:I

    if-eq p3, v3, :cond_67

    .line 230
    goto :goto_7c

    .line 232
    :cond_67
    add-int/lit8 v0, v0, 0x20

    goto :goto_3

    .line 236
    :cond_6a
    and-int/lit8 v3, v0, 0x1f

    add-int/2addr v3, v1

    .line 237
    .local v3, "startIx":I
    add-int/lit8 v4, v1, 0x20

    .line 238
    .local v4, "limitIx":I
    move v5, v3

    .local v5, "ix":I
    :goto_70
    if-ge v5, v4, :cond_85

    .line 239
    iget-object v6, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v6, v6, v5

    if-eq v6, p3, :cond_82

    .line 242
    sub-int v6, v5, v3

    add-int/2addr v0, v6

    .line 243
    nop

    .line 251
    .end local v3    # "startIx":I
    .end local v4    # "limitIx":I
    .end local v5    # "ix":I
    :cond_7c
    :goto_7c
    if-le v0, p2, :cond_7f

    .line 252
    move v0, p2

    .line 255
    :cond_7f
    add-int/lit8 v3, v0, -0x1

    return v3

    .line 238
    .restart local v3    # "startIx":I
    .restart local v4    # "limitIx":I
    .restart local v5    # "ix":I
    :cond_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 248
    .end local v5    # "ix":I
    :cond_85
    sub-int v5, v4, v3

    add-int/2addr v0, v5

    .line 249
    .end local v3    # "startIx":I
    .end local v4    # "limitIx":I
    goto/16 :goto_3
.end method

.method public blacklist serialize(Ljava/io/OutputStream;)I
    .registers 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 154
    .local v0, "dos":Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .line 156
    .local v1, "bytesWritten":I
    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2_32;->serializeHeader(Ljava/io/DataOutputStream;)I

    move-result v2

    add-int/2addr v1, v2

    .line 157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget v3, p0, Landroid/icu/impl/Trie2_32;->dataLength:I

    if-ge v2, v3, :cond_1a

    .line 158
    iget-object v3, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 160
    .end local v2    # "i":I
    :cond_1a
    iget v2, p0, Landroid/icu/impl/Trie2_32;->dataLength:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 161
    return v1
.end method
