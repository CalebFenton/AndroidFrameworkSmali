.class final Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SortKeyLevel"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INITIAL_CAPACITY:I = 0x28


# instance fields
.field buffer:[B

.field len:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

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
    sput-boolean v0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->-assertionsDisabled:Z

    #@b
    .line 143
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 146
    const/16 v0, 0x28

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@9
    .line 147
    const/4 v0, 0x0

    #@a
    iput v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@c
    .line 150
    return-void
.end method

.method private ensureCapacity(I)Z
    .locals 6
    .param p1, "appendCapacity"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 239
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@3
    array-length v3, v3

    #@4
    mul-int/lit8 v1, v3, 0x2

    #@6
    .line 240
    .local v1, "newCapacity":I
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@8
    mul-int/lit8 v4, p1, 0x2

    #@a
    add-int v0, v3, v4

    #@c
    .line 241
    .local v0, "altCapacity":I
    if-ge v1, v0, :cond_0

    #@e
    .line 242
    move v1, v0

    #@f
    .line 244
    :cond_0
    const/16 v3, 0xc8

    #@11
    if-ge v1, v3, :cond_1

    #@13
    .line 245
    const/16 v1, 0xc8

    #@15
    .line 247
    :cond_1
    new-array v2, v1, [B

    #@17
    .line 248
    .local v2, "newbuf":[B
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@19
    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@1b
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1e
    .line 249
    iput-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@20
    .line 251
    const/4 v3, 0x1

    #@21
    return v3
.end method


# virtual methods
.method appendByte(I)V
    .locals 3
    .param p1, "b"    # I

    #@0
    .prologue
    .line 176
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 177
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@10
    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@12
    add-int/lit8 v2, v1, 0x1

    #@14
    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@16
    int-to-byte v2, p1

    #@17
    aput-byte v2, v0, v1

    #@19
    .line 175
    :cond_1
    return-void
.end method

.method appendReverseWeight16(I)V
    .locals 6
    .param p1, "w"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 214
    sget-boolean v4, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->-assertionsDisabled:Z

    #@3
    if-nez v4, :cond_1

    #@5
    const v4, 0xffff

    #@8
    and-int/2addr v4, p1

    #@9
    if-eqz v4, :cond_0

    #@b
    const/4 v3, 0x1

    #@c
    :cond_0
    if-nez v3, :cond_1

    #@e
    new-instance v3, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v3

    #@14
    .line 215
    :cond_1
    ushr-int/lit8 v3, p1, 0x8

    #@16
    int-to-byte v1, v3

    #@17
    .line 216
    .local v1, "b0":B
    int-to-byte v2, p1

    #@18
    .line 217
    .local v2, "b1":B
    if-nez v2, :cond_4

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 218
    .local v0, "appendLength":I
    :goto_0
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@1d
    add-int/2addr v3, v0

    #@1e
    iget-object v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@20
    array-length v4, v4

    #@21
    if-le v3, v4, :cond_2

    #@23
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_3

    #@29
    .line 219
    :cond_2
    if-nez v2, :cond_5

    #@2b
    .line 220
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@2d
    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@2f
    add-int/lit8 v5, v4, 0x1

    #@31
    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@33
    aput-byte v1, v3, v4

    #@35
    .line 213
    :cond_3
    :goto_1
    return-void

    #@36
    .line 217
    .end local v0    # "appendLength":I
    :cond_4
    const/4 v0, 0x2

    #@37
    .restart local v0    # "appendLength":I
    goto :goto_0

    #@38
    .line 222
    :cond_5
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@3a
    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@3c
    aput-byte v2, v3, v4

    #@3e
    .line 223
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@40
    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@42
    add-int/lit8 v4, v4, 0x1

    #@44
    aput-byte v1, v3, v4

    #@46
    .line 224
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@48
    add-int/lit8 v3, v3, 0x2

    #@4a
    iput v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@4c
    goto :goto_1
.end method

.method appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V
    .locals 4
    .param p1, "sink"    # Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 231
    sget-boolean v2, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->-assertionsDisabled:Z

    #@4
    if-nez v2, :cond_1

    #@6
    iget v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@8
    if-lez v2, :cond_0

    #@a
    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@c
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@e
    add-int/lit8 v3, v3, -0x1

    #@10
    aget-byte v2, v2, v3

    #@12
    if-ne v2, v0, :cond_0

    #@14
    :goto_0
    if-nez v0, :cond_1

    #@16
    new-instance v0, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v0

    #@1c
    :cond_0
    move v0, v1

    #@1d
    goto :goto_0

    #@1e
    .line 232
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@20
    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@22
    add-int/lit8 v1, v1, -0x1

    #@24
    invoke-virtual {p1, v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append([BI)V

    #@27
    .line 230
    return-void
.end method

.method appendWeight16(I)V
    .locals 6
    .param p1, "w"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 182
    sget-boolean v4, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->-assertionsDisabled:Z

    #@3
    if-nez v4, :cond_1

    #@5
    const v4, 0xffff

    #@8
    and-int/2addr v4, p1

    #@9
    if-eqz v4, :cond_0

    #@b
    const/4 v3, 0x1

    #@c
    :cond_0
    if-nez v3, :cond_1

    #@e
    new-instance v3, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v3

    #@14
    .line 183
    :cond_1
    ushr-int/lit8 v3, p1, 0x8

    #@16
    int-to-byte v1, v3

    #@17
    .line 184
    .local v1, "b0":B
    int-to-byte v2, p1

    #@18
    .line 185
    .local v2, "b1":B
    if-nez v2, :cond_4

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 186
    .local v0, "appendLength":I
    :goto_0
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@1d
    add-int/2addr v3, v0

    #@1e
    iget-object v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@20
    array-length v4, v4

    #@21
    if-le v3, v4, :cond_2

    #@23
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_3

    #@29
    .line 187
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@2b
    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@2d
    add-int/lit8 v5, v4, 0x1

    #@2f
    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@31
    aput-byte v1, v3, v4

    #@33
    .line 188
    if-eqz v2, :cond_3

    #@35
    .line 189
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@37
    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@39
    add-int/lit8 v5, v4, 0x1

    #@3b
    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@3d
    aput-byte v2, v3, v4

    #@3f
    .line 181
    :cond_3
    return-void

    #@40
    .line 185
    .end local v0    # "appendLength":I
    :cond_4
    const/4 v0, 0x2

    #@41
    .restart local v0    # "appendLength":I
    goto :goto_0
.end method

.method appendWeight32(J)V
    .locals 11
    .param p1, "w"    # J

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 195
    sget-boolean v2, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->-assertionsDisabled:Z

    #@6
    if-nez v2, :cond_1

    #@8
    const-wide/16 v6, 0x0

    #@a
    cmp-long v2, p1, v6

    #@c
    if-eqz v2, :cond_0

    #@e
    move v2, v3

    #@f
    :goto_0
    if-nez v2, :cond_1

    #@11
    new-instance v2, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v2

    #@17
    :cond_0
    move v2, v4

    #@18
    goto :goto_0

    #@19
    .line 196
    :cond_1
    const/4 v2, 0x4

    #@1a
    new-array v1, v2, [B

    #@1c
    const/16 v2, 0x18

    #@1e
    ushr-long v6, p1, v2

    #@20
    long-to-int v2, v6

    #@21
    int-to-byte v2, v2

    #@22
    aput-byte v2, v1, v4

    #@24
    const/16 v2, 0x10

    #@26
    ushr-long v6, p1, v2

    #@28
    long-to-int v2, v6

    #@29
    int-to-byte v2, v2

    #@2a
    aput-byte v2, v1, v3

    #@2c
    const/16 v2, 0x8

    #@2e
    ushr-long v6, p1, v2

    #@30
    long-to-int v2, v6

    #@31
    int-to-byte v2, v2

    #@32
    aput-byte v2, v1, v8

    #@34
    .line 197
    long-to-int v2, p1

    #@35
    int-to-byte v2, v2

    #@36
    aput-byte v2, v1, v9

    #@38
    .line 198
    .local v1, "bytes":[B
    aget-byte v2, v1, v3

    #@3a
    if-nez v2, :cond_4

    #@3c
    const/4 v0, 0x1

    #@3d
    .line 199
    .local v0, "appendLength":I
    :goto_1
    iget v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@3f
    add-int/2addr v2, v0

    #@40
    iget-object v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@42
    array-length v5, v5

    #@43
    if-le v2, v5, :cond_2

    #@45
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_3

    #@4b
    .line 200
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@4d
    iget v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@4f
    add-int/lit8 v6, v5, 0x1

    #@51
    iput v6, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@53
    aget-byte v4, v1, v4

    #@55
    aput-byte v4, v2, v5

    #@57
    .line 201
    aget-byte v2, v1, v3

    #@59
    if-eqz v2, :cond_3

    #@5b
    .line 202
    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@5d
    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@5f
    add-int/lit8 v5, v4, 0x1

    #@61
    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@63
    aget-byte v3, v1, v3

    #@65
    aput-byte v3, v2, v4

    #@67
    .line 203
    aget-byte v2, v1, v8

    #@69
    if-eqz v2, :cond_3

    #@6b
    .line 204
    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@6d
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@6f
    add-int/lit8 v4, v3, 0x1

    #@71
    iput v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@73
    aget-byte v4, v1, v8

    #@75
    aput-byte v4, v2, v3

    #@77
    .line 205
    aget-byte v2, v1, v9

    #@79
    if-eqz v2, :cond_3

    #@7b
    .line 206
    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@7d
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@7f
    add-int/lit8 v4, v3, 0x1

    #@81
    iput v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@83
    aget-byte v4, v1, v9

    #@85
    aput-byte v4, v2, v3

    #@87
    .line 194
    :cond_3
    return-void

    #@88
    .line 198
    .end local v0    # "appendLength":I
    :cond_4
    aget-byte v2, v1, v8

    #@8a
    if-nez v2, :cond_5

    #@8c
    const/4 v0, 0x2

    #@8d
    .restart local v0    # "appendLength":I
    goto :goto_1

    #@8e
    .end local v0    # "appendLength":I
    :cond_5
    aget-byte v2, v1, v9

    #@90
    if-nez v2, :cond_6

    #@92
    const/4 v0, 0x3

    #@93
    .restart local v0    # "appendLength":I
    goto :goto_1

    #@94
    .end local v0    # "appendLength":I
    :cond_6
    const/4 v0, 0x4

    #@95
    .restart local v0    # "appendLength":I
    goto :goto_1
.end method

.method data()[B
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@2
    return-object v0
.end method

.method getAt(I)B
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    #@2
    aget-byte v0, v0, p1

    #@4
    return v0
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 158
    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method length()I
    .locals 1

    #@0
    .prologue
    .line 162
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    #@2
    return v0
.end method
