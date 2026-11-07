.class public final Landroid/icu/util/BytesTrieBuilder;
.super Landroid/icu/util/StringTrieBuilder;
.source "BytesTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o bytes:[B

.field private greylist-max-o bytesLength:I

.field private final greylist-max-o intBytes:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 26
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder;-><init>()V

    .line 213
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    .line 30
    return-void
.end method

.method private greylist-max-o buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V
    .registers 3
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    .line 108
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    if-nez v0, :cond_a

    .line 109
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    .line 111
    :cond_a
    invoke-virtual {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V

    .line 112
    return-void
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 8
    .param p1, "length"    # I

    .line 161
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v0, v0

    if-le p1, v0, :cond_21

    .line 162
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v0, v0

    .line 164
    .local v0, "newCapacity":I
    :cond_8
    mul-int/lit8 v0, v0, 0x2

    .line 165
    if-le v0, p1, :cond_8

    .line 166
    new-array v1, v0, [B

    .line 167
    .local v1, "newBytes":[B
    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v3, v3

    iget v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v3, v4

    array-length v4, v1

    iget v5, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    .line 171
    .end local v0    # "newCapacity":I
    .end local v1    # "newBytes":[B
    :cond_21
    return-void
.end method

.method public static final blacklist internalEncodeDelta(I[B)I
    .registers 6
    .param p0, "i"    # I
    .param p1, "intBytes"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    nop

    .line 291
    const/16 v0, 0xbf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p0, v0, :cond_b

    .line 292
    int-to-byte v0, p0

    aput-byte v0, p1, v2

    .line 293
    return v1

    .line 295
    :cond_b
    const/4 v0, 0x1

    .line 296
    .local v0, "length":I
    const/16 v3, 0x2fff

    if-gt p0, v3, :cond_18

    .line 297
    shr-int/lit8 v1, p0, 0x8

    add-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    goto :goto_47

    .line 299
    :cond_18
    const v3, 0xdffff

    if-gt p0, v3, :cond_25

    .line 300
    shr-int/lit8 v1, p0, 0x10

    add-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    goto :goto_3f

    .line 302
    :cond_25
    const v3, 0xffffff

    if-gt p0, v3, :cond_2e

    .line 303
    const/4 v1, -0x2

    aput-byte v1, p1, v2

    goto :goto_37

    .line 305
    :cond_2e
    const/4 v3, -0x1

    aput-byte v3, p1, v2

    .line 306
    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 307
    const/4 v0, 0x2

    .line 309
    :goto_37
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "length":I
    .local v1, "length":I
    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v0, v1

    .line 311
    .end local v1    # "length":I
    .restart local v0    # "length":I
    :goto_3f
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "length":I
    .restart local v1    # "length":I
    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v0, v1

    .line 313
    .end local v1    # "length":I
    .restart local v0    # "length":I
    :goto_47
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "length":I
    .restart local v1    # "length":I
    int-to-byte v2, p0

    aput-byte v2, p1, v0

    .line 314
    return v1
.end method

.method private greylist-max-o write([BI)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "length"    # I

    .line 205
    iget v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int/2addr v0, p2

    .line 206
    .local v0, "newLength":I
    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    .line 207
    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    .line 208
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v2, v2

    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    return v1
.end method


# virtual methods
.method public greylist-max-o add([BII)Landroid/icu/util/BytesTrieBuilder;
    .registers 5
    .param p1, "sequence"    # [B
    .param p2, "length"    # I
    .param p3, "value"    # I

    .line 60
    new-instance v0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;-><init>([BI)V

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/BytesTrieBuilder;->addImpl(Ljava/lang/CharSequence;I)V

    .line 61
    return-object p0
.end method

.method public greylist-max-o build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/BytesTrie;
    .registers 6
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    .line 79
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V

    .line 80
    new-instance v0, Landroid/icu/util/BytesTrie;

    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v2, v2

    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    return-object v0
.end method

.method public greylist-max-o buildByteBuffer(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    .line 102
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V

    .line 103
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v1

    iget v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o clear()Landroid/icu/util/BytesTrieBuilder;
    .registers 2

    .line 120
    invoke-virtual {p0}, Landroid/icu/util/BytesTrieBuilder;->clearImpl()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    .line 123
    return-object p0
.end method

.method protected greylist-max-o getMaxBranchLinearSubNodeLength()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    const/4 v0, 0x5

    return v0
.end method

.method protected greylist-max-o getMaxLinearMatchLength()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    const/16 v0, 0x10

    return v0
.end method

.method protected greylist-max-o getMinLinearMatch()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    const/16 v0, 0x10

    return v0
.end method

.method protected greylist-max-o matchNodesCanHaveValues()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o write(I)I
    .registers 6
    .param p1, "b"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int/lit8 v0, v0, 0x1

    .line 181
    .local v0, "newLength":I
    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    .line 182
    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    .line 183
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v2, v2

    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v2, v3

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 184
    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    return v1
.end method

.method protected greylist-max-o write(II)I
    .registers 9
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iget v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int/2addr v0, p2

    .line 195
    .local v0, "newLength":I
    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    .line 196
    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    .line 197
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v1

    iget v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v1, v2

    .line 198
    .local v1, "bytesOffset":I
    :goto_e
    if-lez p2, :cond_24

    .line 199
    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "bytesOffset":I
    .local v3, "bytesOffset":I
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->strings:Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, 0x1

    .end local p1    # "offset":I
    .local v5, "offset":I
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    .line 200
    add-int/lit8 p2, p2, -0x1

    move v1, v3

    move p1, v5

    goto :goto_e

    .line 202
    .end local v3    # "bytesOffset":I
    .end local v5    # "offset":I
    .restart local v1    # "bytesOffset":I
    .restart local p1    # "offset":I
    :cond_24
    iget v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    return v2
.end method

.method protected greylist-max-o writeDeltaTo(I)I
    .registers 5
    .param p1, "jumpTarget"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    iget v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v0, p1

    .line 277
    .local v0, "i":I
    nop

    .line 278
    const/16 v1, 0xbf

    if-gt v0, v1, :cond_d

    .line 279
    invoke-virtual {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    move-result v1

    return v1

    .line 281
    :cond_d
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    invoke-static {v0, v2}, Landroid/icu/util/BytesTrieBuilder;->internalEncodeDelta(I[B)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/icu/util/BytesTrieBuilder;->write([BI)I

    move-result v1

    return v1
.end method

.method protected greylist-max-o writeValueAndFinal(IZ)I
    .registers 9
    .param p1, "i"    # I
    .param p2, "isFinal"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    const/4 v0, 0x1

    if-ltz p1, :cond_11

    const/16 v1, 0x40

    if-gt p1, v1, :cond_11

    .line 224
    add-int/lit8 v1, p1, 0x10

    shl-int/lit8 v0, v1, 0x1

    or-int/2addr v0, p2

    invoke-virtual {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    move-result v0

    return v0

    .line 226
    :cond_11
    const/4 v1, 0x1

    .line 227
    .local v1, "length":I
    const/4 v2, 0x0

    if-ltz p1, :cond_58

    const v3, 0xffffff

    if-le p1, v3, :cond_1b

    goto :goto_58

    .line 237
    :cond_1b
    const/16 v3, 0x1aff

    if-gt p1, v3, :cond_29

    .line 238
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v4, p1, 0x8

    add-int/lit8 v4, v4, 0x51

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    goto :goto_50

    .line 240
    :cond_29
    const v3, 0x11ffff

    if-gt p1, v3, :cond_38

    .line 241
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v4, p1, 0x10

    add-int/lit8 v4, v4, 0x6c

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    goto :goto_46

    .line 243
    :cond_38
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/16 v4, 0x7e

    aput-byte v4, v3, v2

    .line 244
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 245
    const/4 v1, 0x2

    .line 247
    :goto_46
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "length":I
    .local v4, "length":I
    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    move v1, v4

    .line 249
    .end local v4    # "length":I
    .restart local v1    # "length":I
    :goto_50
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "length":I
    .restart local v4    # "length":I
    int-to-byte v5, p1

    aput-byte v5, v3, v1

    goto :goto_7c

    .line 228
    .end local v4    # "length":I
    .restart local v1    # "length":I
    :cond_58
    :goto_58
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/16 v4, 0x7f

    aput-byte v4, v3, v2

    .line 229
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v4, p1, 0x18

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 230
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    .line 231
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v3, v5

    .line 232
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/4 v4, 0x4

    int-to-byte v5, p1

    aput-byte v5, v3, v4

    .line 233
    const/4 v4, 0x5

    .line 251
    .end local v1    # "length":I
    .restart local v4    # "length":I
    :goto_7c
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    aget-byte v3, v3, v2

    shl-int/lit8 v0, v3, 0x1

    or-int/2addr v0, p2

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 252
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    invoke-direct {p0, v0, v4}, Landroid/icu/util/BytesTrieBuilder;->write([BI)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o writeValueAndType(ZII)I
    .registers 6
    .param p1, "hasValue"    # Z
    .param p2, "value"    # I
    .param p3, "node"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    invoke-virtual {p0, p3}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    move-result v0

    .line 263
    .local v0, "offset":I
    if-eqz p1, :cond_b

    .line 264
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/icu/util/BytesTrieBuilder;->writeValueAndFinal(IZ)I

    move-result v0

    .line 266
    :cond_b
    return v0
.end method
