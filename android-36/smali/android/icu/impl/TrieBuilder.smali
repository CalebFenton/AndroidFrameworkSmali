.class public Landroid/icu/impl/TrieBuilder;
.super Ljava/lang/Object;
.source "TrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TrieBuilder$DataManipulate;
    }
.end annotation


# static fields
.field protected static final blacklist BMP_INDEX_LENGTH_:I = 0x800

.field public static final blacklist DATA_BLOCK_LENGTH:I = 0x20

.field protected static final blacklist DATA_GRANULARITY_:I = 0x4

.field protected static final blacklist INDEX_SHIFT_:I = 0x2

.field protected static final blacklist MASK_:I = 0x1f

.field private static final blacklist MAX_BUILD_TIME_DATA_LENGTH_:I = 0x110420

.field protected static final blacklist MAX_DATA_LENGTH_:I = 0x40000

.field protected static final blacklist MAX_INDEX_LENGTH_:I = 0x8800

.field protected static final blacklist OPTIONS_DATA_IS_32_BIT_:I = 0x100

.field protected static final blacklist OPTIONS_INDEX_SHIFT_:I = 0x4

.field protected static final blacklist OPTIONS_LATIN1_IS_LINEAR_:I = 0x200

.field protected static final blacklist SHIFT_:I = 0x5

.field protected static final blacklist SURROGATE_BLOCK_COUNT_:I = 0x20


# instance fields
.field protected blacklist m_dataCapacity_:I

.field protected blacklist m_dataLength_:I

.field protected blacklist m_indexLength_:I

.field protected blacklist m_index_:[I

.field protected blacklist m_isCompacted_:Z

.field protected blacklist m_isLatin1Linear_:Z

.field protected blacklist m_map_:[I


# direct methods
.method protected constructor blacklist <init>()V
    .registers 3

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const v0, 0x8800

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    .line 182
    const v1, 0x8821

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    .line 184
    iput-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    .line 185
    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    .line 186
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/icu/impl/TrieBuilder;)V
    .registers 6
    .param p1, "table"    # Landroid/icu/impl/TrieBuilder;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const v0, 0x8800

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    .line 191
    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    .line 192
    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    .line 194
    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    .line 195
    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    .line 196
    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget-boolean v0, p1, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    iput-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    .line 198
    iget-boolean v0, p1, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    iput-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    .line 199
    return-void
.end method

.method protected static final blacklist equal_int([IIII)Z
    .registers 6
    .param p0, "array"    # [I
    .param p1, "start1"    # I
    .param p2, "start2"    # I
    .param p3, "length"    # I

    .line 207
    nop

    :goto_1
    if-lez p3, :cond_10

    aget v0, p0, p1

    aget v1, p0, p2

    if-ne v0, v1, :cond_10

    .line 208
    add-int/lit8 p1, p1, 0x1

    .line 209
    add-int/lit8 p2, p2, 0x1

    .line 210
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 212
    :cond_10
    if-nez p3, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method protected static final blacklist findSameIndexBlock([III)I
    .registers 5
    .param p0, "index"    # [I
    .param p1, "indexLength"    # I
    .param p2, "otherBlock"    # I

    .line 247
    const/16 v0, 0x800

    .local v0, "block":I
    :goto_2
    if-ge v0, p1, :cond_10

    .line 249
    const/16 v1, 0x20

    invoke-static {p0, v0, p2, v1}, Landroid/icu/impl/TrieBuilder;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 250
    return v0

    .line 248
    :cond_d
    add-int/lit8 v0, v0, 0x20

    goto :goto_2

    .line 253
    .end local v0    # "block":I
    :cond_10
    return p1
.end method


# virtual methods
.method protected blacklist findUnusedBlocks()V
    .registers 5

    .line 226
    iget-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1e

    .line 230
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iget-object v3, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    shr-int/lit8 v3, v3, 0x5

    aput v2, v1, v3

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 234
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    aput v2, v0, v2

    .line 235
    return-void
.end method

.method public blacklist isInZeroBlock(I)Z
    .registers 5
    .param p1, "ch"    # I

    .line 89
    iget-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x1

    if-nez v0, :cond_18

    const v0, 0x10ffff

    if-gt p1, v0, :cond_18

    if-gez p1, :cond_d

    goto :goto_18

    .line 94
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    shr-int/lit8 v2, p1, 0x5

    aget v0, v0, v2

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1

    .line 91
    :cond_18
    :goto_18
    return v1
.end method
