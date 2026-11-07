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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INITIAL_CAPACITY:I = 0x28


# instance fields
.field blacklist buffer:[B

.field blacklist len:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 155
    const-class v0, Landroid/icu/impl/coll/CollationKeys;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/16 v0, 0x28

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    .line 163
    return-void
.end method

.method private blacklist ensureCapacity(I)Z
    .registers 8
    .param p1, "appendCapacity"    # I

    .line 251
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 252
    .local v0, "newCapacity":I
    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    .line 253
    .local v1, "altCapacity":I
    if-ge v0, v1, :cond_d

    .line 254
    move v0, v1

    .line 256
    :cond_d
    const/16 v2, 0xc8

    if-ge v0, v2, :cond_13

    .line 257
    const/16 v0, 0xc8

    .line 259
    :cond_13
    new-array v2, v0, [B

    .line 260
    .local v2, "newbuf":[B
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iput-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    .line 263
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method blacklist appendByte(I)V
    .registers 5
    .param p1, "b"    # I

    .line 188
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 189
    :cond_e
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 191
    :cond_19
    return-void
.end method

.method blacklist appendReverseWeight16(I)V
    .registers 9
    .param p1, "w"    # I

    .line 226
    nop

    .line 227
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 228
    .local v0, "b0":B
    int-to-byte v1, p1

    .line 229
    .local v1, "b1":B
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_b

    move v4, v3

    goto :goto_c

    :cond_b
    move v4, v2

    .line 230
    .local v4, "appendLength":I
    :goto_c
    iget v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr v5, v4

    iget-object v6, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v6, v6

    if-le v5, v6, :cond_1a

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 231
    :cond_1a
    if-nez v1, :cond_27

    .line 232
    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte v0, v2, v3

    goto :goto_39

    .line 234
    :cond_27
    iget-object v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v6, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte v1, v5, v6

    .line 235
    iget-object v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v6, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr v6, v3

    aput-byte v0, v5, v6

    .line 236
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    .line 239
    :cond_39
    :goto_39
    return-void
.end method

.method blacklist appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V
    .registers 4
    .param p1, "sink"    # Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;

    .line 243
    nop

    .line 244
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append([BI)V

    .line 245
    return-void
.end method

.method blacklist appendWeight16(I)V
    .registers 8
    .param p1, "w"    # I

    .line 194
    nop

    .line 195
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 196
    .local v0, "b0":B
    int-to-byte v1, p1

    .line 197
    .local v1, "b1":B
    if-nez v1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x2

    .line 198
    .local v2, "appendLength":I
    :goto_a
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr v3, v2

    iget-object v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v4, v4

    if-le v3, v4, :cond_18

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 199
    :cond_18
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte v0, v3, v4

    .line 200
    if-eqz v1, :cond_2e

    .line 201
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte v1, v3, v4

    .line 204
    :cond_2e
    return-void
.end method

.method blacklist appendWeight32(J)V
    .registers 12
    .param p1, "w"    # J

    .line 207
    nop

    .line 208
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    long-to-int v3, p1

    int-to-byte v3, v3

    const/4 v4, 0x4

    new-array v5, v4, [B

    const/4 v6, 0x0

    aput-byte v0, v5, v6

    const/4 v0, 0x1

    aput-byte v1, v5, v0

    const/4 v1, 0x2

    aput-byte v2, v5, v1

    const/4 v2, 0x3

    aput-byte v3, v5, v2

    .line 210
    .local v5, "bytes":[B
    aget-byte v3, v5, v0

    if-nez v3, :cond_2a

    move v4, v0

    goto :goto_35

    :cond_2a
    aget-byte v3, v5, v1

    if-nez v3, :cond_30

    move v4, v1

    goto :goto_35

    :cond_30
    aget-byte v3, v5, v2

    if-nez v3, :cond_35

    move v4, v2

    .line 211
    .local v4, "appendLength":I
    :cond_35
    :goto_35
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr v3, v4

    iget-object v7, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v7, v7

    if-le v3, v7, :cond_43

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 212
    :cond_43
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v7, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v6, v5, v6

    aput-byte v6, v3, v7

    .line 213
    aget-byte v3, v5, v0

    if-eqz v3, :cond_7f

    .line 214
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v6, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v0, v5, v0

    aput-byte v0, v3, v6

    .line 215
    aget-byte v0, v5, v1

    if-eqz v0, :cond_7f

    .line 216
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v1, v5, v1

    aput-byte v1, v0, v3

    .line 217
    aget-byte v0, v5, v2

    if-eqz v0, :cond_7f

    .line 218
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v2, v5, v2

    aput-byte v2, v0, v1

    .line 223
    :cond_7f
    return-void
.end method

.method blacklist data()[B
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    return-object v0
.end method

.method blacklist getAt(I)B
    .registers 3
    .param p1, "index"    # I

    .line 180
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method blacklist isEmpty()Z
    .registers 2

    .line 170
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist length()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    return v0
.end method
