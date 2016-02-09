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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private bytes:[B

.field private bytesLength:I

.field private final intBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/util/BytesTrieBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/util/BytesTrieBuilder;->-assertionsDisabled:Z

    #@b
    .line 23
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder;-><init>()V

    #@3
    .line 212
    const/4 v0, 0x5

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@8
    .line 28
    return-void
.end method

.method private buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V
    .locals 1
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 107
    const/16 v0, 0x400

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@a
    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V

    #@d
    .line 104
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6
    .param p1, "length"    # I

    #@0
    .prologue
    .line 160
    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@2
    array-length v2, v2

    #@3
    if-le p1, v2, :cond_1

    #@5
    .line 161
    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@7
    array-length v1, v2

    #@8
    .line 163
    .local v1, "newCapacity":I
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    #@a
    .line 164
    if-le v1, p1, :cond_0

    #@c
    .line 165
    new-array v0, v1, [B

    #@e
    .line 166
    .local v0, "newBytes":[B
    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@10
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@12
    array-length v3, v3

    #@13
    iget v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@15
    sub-int/2addr v3, v4

    #@16
    .line 167
    array-length v4, v0

    #@17
    iget v5, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@19
    sub-int/2addr v4, v5

    #@1a
    iget v5, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@1c
    .line 166
    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1f
    .line 168
    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@21
    .line 159
    .end local v0    # "newBytes":[B
    .end local v1    # "newCapacity":I
    :cond_1
    return-void
.end method

.method private write([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    .line 204
    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@2
    add-int v0, v1, p2

    #@4
    .line 205
    .local v0, "newLength":I
    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    #@7
    .line 206
    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@9
    .line 207
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@b
    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@d
    array-length v2, v2

    #@e
    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@10
    sub-int/2addr v2, v3

    #@11
    const/4 v3, 0x0

    #@12
    invoke-static {p1, v3, v1, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@15
    .line 208
    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@17
    return v1
.end method


# virtual methods
.method public add([BII)Landroid/icu/util/BytesTrieBuilder;
    .locals 1
    .param p1, "sequence"    # [B
    .param p2, "length"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 56
    new-instance v0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;-><init>([BI)V

    #@5
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/BytesTrieBuilder;->addImpl(Ljava/lang/CharSequence;I)V

    #@8
    .line 57
    return-object p0
.end method

.method public build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/BytesTrie;
    .locals 4
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V

    #@3
    .line 77
    new-instance v0, Landroid/icu/util/BytesTrie;

    #@5
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@7
    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@9
    array-length v2, v2

    #@a
    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@c
    sub-int/2addr v2, v3

    #@d
    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    #@10
    return-object v0
.end method

.method public buildByteBuffer(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    #@0
    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V

    #@3
    .line 101
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@5
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@7
    array-length v1, v1

    #@8
    iget v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@a
    sub-int/2addr v1, v2

    #@b
    iget v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@d
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public clear()Landroid/icu/util/BytesTrieBuilder;
    .locals 1

    #@0
    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/icu/util/BytesTrieBuilder;->clearImpl()V

    #@3
    .line 120
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@6
    .line 121
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@9
    .line 122
    return-object p0
.end method

.method protected getMaxBranchLinearSubNodeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 141
    const/4 v0, 0x5

    #@1
    return v0
.end method

.method protected getMaxLinearMatchLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 157
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method protected getMinLinearMatch()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 149
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method protected matchNodesCanHaveValues()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 132
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected write(I)I
    .locals 4
    .param p1, "b"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 179
    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@2
    add-int/lit8 v0, v1, 0x1

    #@4
    .line 180
    .local v0, "newLength":I
    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    #@7
    .line 181
    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@9
    .line 182
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@b
    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@d
    array-length v2, v2

    #@e
    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@10
    sub-int/2addr v2, v3

    #@11
    int-to-byte v3, p1

    #@12
    aput-byte v3, v1, v2

    #@14
    .line 183
    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@16
    return v1
.end method

.method protected write(II)I
    .locals 6
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 193
    iget v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@2
    add-int v2, v4, p2

    #@4
    .line 194
    .local v2, "newLength":I
    invoke-direct {p0, v2}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    #@7
    .line 195
    iput v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@9
    .line 196
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@b
    array-length v4, v4

    #@c
    iget v5, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@e
    sub-int v0, v4, v5

    #@10
    .local v0, "bytesOffset":I
    move v1, v0

    #@11
    .end local v0    # "bytesOffset":I
    .local v1, "bytesOffset":I
    move v3, p1

    #@12
    .line 197
    .end local p1    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-lez p2, :cond_0

    #@14
    .line 198
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    #@16
    add-int/lit8 v0, v1, 0x1

    #@18
    .end local v1    # "bytesOffset":I
    .restart local v0    # "bytesOffset":I
    iget-object v5, p0, Landroid/icu/util/BytesTrieBuilder;->strings:Ljava/lang/StringBuilder;

    #@1a
    add-int/lit8 p1, v3, 0x1

    #@1c
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@1f
    move-result v5

    #@20
    int-to-byte v5, v5

    #@21
    aput-byte v5, v4, v1

    #@23
    .line 199
    add-int/lit8 p2, p2, -0x1

    #@25
    move v1, v0

    #@26
    .end local v0    # "bytesOffset":I
    .restart local v1    # "bytesOffset":I
    move v3, p1

    #@27
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    #@28
    .line 201
    :cond_0
    iget v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@2a
    return v4
.end method

.method protected writeDeltaTo(I)I
    .locals 7
    .param p1, "jumpTarget"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 275
    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    #@4
    sub-int v0, v3, p1

    #@6
    .line 276
    .local v0, "i":I
    sget-boolean v3, Landroid/icu/util/BytesTrieBuilder;->-assertionsDisabled:Z

    #@8
    if-nez v3, :cond_1

    #@a
    if-ltz v0, :cond_0

    #@c
    move v3, v4

    #@d
    :goto_0
    if-nez v3, :cond_1

    #@f
    new-instance v3, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v3

    #@15
    :cond_0
    move v3, v5

    #@16
    goto :goto_0

    #@17
    .line 277
    :cond_1
    const/16 v3, 0xbf

    #@19
    if-gt v0, v3, :cond_2

    #@1b
    .line 278
    invoke-virtual {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    #@1e
    move-result v3

    #@1f
    return v3

    #@20
    .line 281
    :cond_2
    const/16 v3, 0x2fff

    #@22
    if-gt v0, v3, :cond_3

    #@24
    .line 282
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@26
    shr-int/lit8 v4, v0, 0x8

    #@28
    add-int/lit16 v4, v4, 0xc0

    #@2a
    int-to-byte v4, v4

    #@2b
    aput-byte v4, v3, v5

    #@2d
    .line 283
    const/4 v1, 0x1

    #@2e
    .line 301
    .local v1, "length":I
    :goto_1
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@30
    add-int/lit8 v2, v1, 0x1

    #@32
    .end local v1    # "length":I
    .local v2, "length":I
    int-to-byte v4, v0

    #@33
    aput-byte v4, v3, v1

    #@35
    .line 302
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@37
    invoke-direct {p0, v3, v2}, Landroid/icu/util/BytesTrieBuilder;->write([BI)I

    #@3a
    move-result v3

    #@3b
    return v3

    #@3c
    .line 285
    .end local v2    # "length":I
    :cond_3
    const v3, 0xdffff

    #@3f
    if-gt v0, v3, :cond_4

    #@41
    .line 286
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@43
    shr-int/lit8 v6, v0, 0x10

    #@45
    add-int/lit16 v6, v6, 0xf0

    #@47
    int-to-byte v6, v6

    #@48
    aput-byte v6, v3, v5

    #@4a
    .line 287
    const/4 v1, 0x2

    #@4b
    .line 299
    .restart local v1    # "length":I
    :goto_2
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@4d
    shr-int/lit8 v5, v0, 0x8

    #@4f
    int-to-byte v5, v5

    #@50
    aput-byte v5, v3, v4

    #@52
    goto :goto_1

    #@53
    .line 289
    .end local v1    # "length":I
    :cond_4
    const v3, 0xffffff

    #@56
    if-gt v0, v3, :cond_5

    #@58
    .line 290
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@5a
    const/4 v6, -0x2

    #@5b
    aput-byte v6, v3, v5

    #@5d
    .line 291
    const/4 v1, 0x3

    #@5e
    .line 297
    .restart local v1    # "length":I
    :goto_3
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@60
    shr-int/lit8 v5, v0, 0x10

    #@62
    int-to-byte v5, v5

    #@63
    aput-byte v5, v3, v4

    #@65
    goto :goto_2

    #@66
    .line 293
    .end local v1    # "length":I
    :cond_5
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@68
    const/4 v6, -0x1

    #@69
    aput-byte v6, v3, v5

    #@6b
    .line 294
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@6d
    shr-int/lit8 v5, v0, 0x18

    #@6f
    int-to-byte v5, v5

    #@70
    aput-byte v5, v3, v4

    #@72
    .line 295
    const/4 v1, 0x4

    #@73
    .restart local v1    # "length":I
    goto :goto_3
.end method

.method protected writeValueAndFinal(IZ)I
    .locals 7
    .param p1, "i"    # I
    .param p2, "isFinal"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 222
    if-ltz p1, :cond_1

    #@4
    const/16 v4, 0x40

    #@6
    if-gt p1, v4, :cond_1

    #@8
    .line 223
    add-int/lit8 v4, p1, 0x10

    #@a
    shl-int/lit8 v4, v4, 0x1

    #@c
    if-eqz p2, :cond_0

    #@e
    :goto_0
    or-int/2addr v2, v4

    #@f
    invoke-virtual {p0, v2}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    #@12
    move-result v2

    #@13
    return v2

    #@14
    :cond_0
    move v2, v3

    #@15
    goto :goto_0

    #@16
    .line 225
    :cond_1
    const/4 v0, 0x1

    #@17
    .line 226
    .local v0, "length":I
    if-ltz p1, :cond_2

    #@19
    const v4, 0xffffff

    #@1c
    if-le p1, v4, :cond_3

    #@1e
    .line 227
    :cond_2
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@20
    const/16 v5, 0x7f

    #@22
    aput-byte v5, v4, v3

    #@24
    .line 228
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@26
    shr-int/lit8 v5, p1, 0x18

    #@28
    int-to-byte v5, v5

    #@29
    aput-byte v5, v4, v2

    #@2b
    .line 229
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@2d
    shr-int/lit8 v5, p1, 0x10

    #@2f
    int-to-byte v5, v5

    #@30
    const/4 v6, 0x2

    #@31
    aput-byte v5, v4, v6

    #@33
    .line 230
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@35
    shr-int/lit8 v5, p1, 0x8

    #@37
    int-to-byte v5, v5

    #@38
    const/4 v6, 0x3

    #@39
    aput-byte v5, v4, v6

    #@3b
    .line 231
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@3d
    int-to-byte v5, p1

    #@3e
    const/4 v6, 0x4

    #@3f
    aput-byte v5, v4, v6

    #@41
    .line 232
    const/4 v0, 0x5

    #@42
    .line 250
    :goto_1
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@44
    iget-object v5, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@46
    aget-byte v5, v5, v3

    #@48
    shl-int/lit8 v5, v5, 0x1

    #@4a
    if-eqz p2, :cond_6

    #@4c
    :goto_2
    or-int/2addr v2, v5

    #@4d
    int-to-byte v2, v2

    #@4e
    aput-byte v2, v4, v3

    #@50
    .line 251
    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@52
    invoke-direct {p0, v2, v0}, Landroid/icu/util/BytesTrieBuilder;->write([BI)I

    #@55
    move-result v2

    #@56
    return v2

    #@57
    .line 236
    :cond_3
    const/16 v4, 0x1aff

    #@59
    if-gt p1, v4, :cond_4

    #@5b
    .line 237
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@5d
    shr-int/lit8 v5, p1, 0x8

    #@5f
    add-int/lit8 v5, v5, 0x51

    #@61
    int-to-byte v5, v5

    #@62
    aput-byte v5, v4, v3

    #@64
    .line 248
    :goto_3
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@66
    add-int/lit8 v1, v0, 0x1

    #@68
    .end local v0    # "length":I
    .local v1, "length":I
    int-to-byte v5, p1

    #@69
    aput-byte v5, v4, v0

    #@6b
    move v0, v1

    #@6c
    .end local v1    # "length":I
    .restart local v0    # "length":I
    goto :goto_1

    #@6d
    .line 239
    :cond_4
    const v4, 0x11ffff

    #@70
    if-gt p1, v4, :cond_5

    #@72
    .line 240
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@74
    shr-int/lit8 v5, p1, 0x10

    #@76
    add-int/lit8 v5, v5, 0x6c

    #@78
    int-to-byte v5, v5

    #@79
    aput-byte v5, v4, v3

    #@7b
    .line 246
    :goto_4
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@7d
    add-int/lit8 v1, v0, 0x1

    #@7f
    .end local v0    # "length":I
    .restart local v1    # "length":I
    shr-int/lit8 v5, p1, 0x8

    #@81
    int-to-byte v5, v5

    #@82
    aput-byte v5, v4, v0

    #@84
    move v0, v1

    #@85
    .end local v1    # "length":I
    .restart local v0    # "length":I
    goto :goto_3

    #@86
    .line 242
    :cond_5
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@88
    const/16 v5, 0x7e

    #@8a
    aput-byte v5, v4, v3

    #@8c
    .line 243
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    #@8e
    shr-int/lit8 v5, p1, 0x10

    #@90
    int-to-byte v5, v5

    #@91
    aput-byte v5, v4, v2

    #@93
    .line 244
    const/4 v0, 0x2

    #@94
    goto :goto_4

    #@95
    :cond_6
    move v2, v3

    #@96
    .line 250
    goto :goto_2
.end method

.method protected writeValueAndType(ZII)I
    .locals 2
    .param p1, "hasValue"    # Z
    .param p2, "value"    # I
    .param p3, "node"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 261
    invoke-virtual {p0, p3}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    #@3
    move-result v0

    #@4
    .line 262
    .local v0, "offset":I
    if-eqz p1, :cond_0

    #@6
    .line 263
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, p2, v1}, Landroid/icu/util/BytesTrieBuilder;->writeValueAndFinal(IZ)I

    #@a
    move-result v0

    #@b
    .line 265
    :cond_0
    return v0
.end method
