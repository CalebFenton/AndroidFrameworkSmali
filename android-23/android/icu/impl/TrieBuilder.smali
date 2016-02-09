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
.field protected static final BMP_INDEX_LENGTH_:I = 0x800

.field public static final DATA_BLOCK_LENGTH:I = 0x20

.field protected static final DATA_GRANULARITY_:I = 0x4

.field protected static final INDEX_SHIFT_:I = 0x2

.field protected static final MASK_:I = 0x1f

.field private static final MAX_BUILD_TIME_DATA_LENGTH_:I = 0x110420

.field protected static final MAX_DATA_LENGTH_:I = 0x40000

.field protected static final MAX_INDEX_LENGTH_:I = 0x8800

.field protected static final OPTIONS_DATA_IS_32_BIT_:I = 0x100

.field protected static final OPTIONS_INDEX_SHIFT_:I = 0x4

.field protected static final OPTIONS_LATIN1_IS_LINEAR_:I = 0x200

.field protected static final SHIFT_:I = 0x5

.field protected static final SURROGATE_BLOCK_COUNT_:I = 0x20


# instance fields
.field protected m_dataCapacity_:I

.field protected m_dataLength_:I

.field protected m_indexLength_:I

.field protected m_index_:[I

.field protected m_isCompacted_:Z

.field protected m_isLatin1Linear_:Z

.field protected m_map_:[I


# direct methods
.method protected constructor <init>()V
    .locals 3

    #@0
    .prologue
    const v2, 0x8800

    #@3
    const/4 v1, 0x0

    #@4
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 176
    new-array v0, v2, [I

    #@9
    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@b
    .line 177
    const v0, 0x8821

    #@e
    new-array v0, v0, [I

    #@10
    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@12
    .line 178
    iput-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    #@14
    .line 179
    iput-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@16
    .line 180
    iput v2, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@18
    .line 174
    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/TrieBuilder;)V
    .locals 4
    .param p1, "table"    # Landroid/icu/impl/TrieBuilder;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 185
    const v0, 0x8800

    #@7
    new-array v0, v0, [I

    #@9
    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@b
    .line 186
    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@d
    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@f
    .line 187
    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@11
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@13
    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@15
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@18
    .line 188
    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    #@1a
    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    #@1c
    .line 189
    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@1e
    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@20
    .line 190
    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@22
    array-length v0, v0

    #@23
    new-array v0, v0, [I

    #@25
    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@27
    .line 191
    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@29
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@2b
    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@2d
    array-length v2, v2

    #@2e
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@31
    .line 192
    iget-boolean v0, p1, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    #@33
    iput-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    #@35
    .line 193
    iget-boolean v0, p1, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@37
    iput-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@39
    .line 183
    return-void
.end method

.method protected static final equal_int([IIII)Z
    .locals 3
    .param p0, "array"    # [I
    .param p1, "start1"    # I
    .param p2, "start2"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 202
    :goto_0
    if-lez p3, :cond_0

    #@3
    aget v1, p0, p1

    #@5
    aget v2, p0, p2

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 203
    add-int/lit8 p1, p1, 0x1

    #@b
    .line 204
    add-int/lit8 p2, p2, 0x1

    #@d
    .line 205
    add-int/lit8 p3, p3, -0x1

    #@f
    goto :goto_0

    #@10
    .line 207
    :cond_0
    if-nez p3, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    :cond_1
    return v0
.end method

.method protected static final findSameIndexBlock([III)I
    .locals 2
    .param p0, "index"    # [I
    .param p1, "indexLength"    # I
    .param p2, "otherBlock"    # I

    #@0
    .prologue
    .line 242
    const/16 v0, 0x800

    #@2
    .local v0, "block":I
    :goto_0
    if-ge v0, p1, :cond_1

    #@4
    .line 244
    const/16 v1, 0x20

    #@6
    invoke-static {p0, v0, p2, v1}, Landroid/icu/impl/TrieBuilder;->equal_int([IIII)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 245
    return v0

    #@d
    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x20

    #@f
    goto :goto_0

    #@10
    .line 248
    :cond_1
    return p1
.end method


# virtual methods
.method protected findUnusedBlocks()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 221
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@3
    const/16 v2, 0xff

    #@5
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    #@8
    .line 224
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 225
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@f
    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@11
    aget v2, v2, v0

    #@13
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@16
    move-result v2

    #@17
    shr-int/lit8 v2, v2, 0x5

    #@19
    aput v3, v1, v2

    #@1b
    .line 224
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 229
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@20
    aput v3, v1, v3

    #@22
    .line 218
    return-void
.end method

.method public isInZeroBlock(I)Z
    .locals 4
    .param p1, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 84
    iget-boolean v2, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@4
    if-nez v2, :cond_0

    #@6
    const v2, 0x10ffff

    #@9
    if-le p1, v2, :cond_1

    #@b
    .line 86
    :cond_0
    return v0

    #@c
    .line 85
    :cond_1
    if-ltz p1, :cond_0

    #@e
    .line 89
    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@10
    shr-int/lit8 v3, p1, 0x5

    #@12
    aget v2, v2, v3

    #@14
    if-nez v2, :cond_2

    #@16
    :goto_0
    return v0

    #@17
    :cond_2
    move v0, v1

    #@18
    goto :goto_0
.end method
