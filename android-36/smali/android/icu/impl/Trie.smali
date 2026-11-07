.class public abstract Landroid/icu/impl/Trie;
.super Ljava/lang/Object;
.source "Trie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Trie$DataManipulate;,
        Landroid/icu/impl/Trie$DefaultGetFoldingOffset;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field protected static final blacklist BMP_INDEX_LENGTH:I = 0x800

.field protected static final blacklist DATA_BLOCK_LENGTH:I = 0x20

.field protected static final blacklist HEADER_LENGTH_:I = 0x10

.field protected static final blacklist HEADER_OPTIONS_DATA_IS_32_BIT_:I = 0x100

.field protected static final blacklist HEADER_OPTIONS_INDEX_SHIFT_:I = 0x4

.field protected static final blacklist HEADER_OPTIONS_LATIN1_IS_LINEAR_MASK_:I = 0x200

.field private static final greylist-max-o HEADER_OPTIONS_SHIFT_MASK_:I = 0xf

.field protected static final blacklist HEADER_SIGNATURE_:I = 0x54726965

.field protected static final blacklist INDEX_STAGE_1_SHIFT_:I = 0x5

.field protected static final blacklist INDEX_STAGE_2_SHIFT_:I = 0x2

.field protected static final blacklist INDEX_STAGE_3_MASK_:I = 0x1f

.field protected static final blacklist LEAD_INDEX_OFFSET_:I = 0x140

.field protected static final blacklist SURROGATE_BLOCK_BITS:I = 0x5

.field protected static final blacklist SURROGATE_BLOCK_COUNT:I = 0x20

.field protected static final blacklist SURROGATE_MASK_:I = 0x3ff


# instance fields
.field protected blacklist m_dataLength_:I

.field protected blacklist m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

.field protected blacklist m_dataOffset_:I

.field protected blacklist m_index_:[C

.field private greylist-max-o m_isLatin1Linear_:Z

.field private greylist-max-o m_options_:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 48
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V
    .registers 6
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 155
    .local v0, "signature":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Trie;->m_options_:I

    .line 157
    invoke-direct {p0, v0}, Landroid/icu/impl/Trie;->checkHeader(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 161
    if-eqz p2, :cond_18

    .line 162
    iput-object p2, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    goto :goto_20

    .line 164
    :cond_18
    new-instance v1, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/Trie-IA;)V

    iput-object v1, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    .line 166
    :goto_20
    iget v1, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    iput-boolean v1, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    .line 169
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    .line 170
    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie;->unserialize(Ljava/nio/ByteBuffer;)V

    .line 171
    return-void

    .line 158
    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ICU data file error: Trie header authentication failed, please check if you have the most updated ICU data file"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor blacklist <init>([CILandroid/icu/impl/Trie$DataManipulate;)V
    .registers 6
    .param p1, "index"    # [C
    .param p2, "options"    # I
    .param p3, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p2, p0, Landroid/icu/impl/Trie;->m_options_:I

    .line 183
    if-eqz p3, :cond_a

    .line 184
    iput-object p3, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    goto :goto_12

    .line 186
    :cond_a
    new-instance v0, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/Trie-IA;)V

    iput-object v0, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    .line 188
    :goto_12
    iget v0, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    .line 190
    iput-object p1, p0, Landroid/icu/impl/Trie;->m_index_:[C

    .line 191
    iget-object v0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    array-length v0, v0

    iput v0, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    .line 192
    return-void
.end method

.method private final greylist-max-o checkHeader(I)Z
    .registers 5
    .param p1, "signature"    # I

    .line 447
    const v0, 0x54726965

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    .line 448
    return v1

    .line 451
    :cond_7
    iget v0, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1a

    iget v0, p0, Landroid/icu/impl/Trie;->m_options_:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    goto :goto_1a

    .line 458
    :cond_18
    const/4 v0, 0x1

    return v0

    .line 456
    :cond_1a
    :goto_1a
    return v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 104
    return v0

    .line 106
    :cond_4
    instance-of v1, p1, Landroid/icu/impl/Trie;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 107
    return v2

    .line 109
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/Trie;

    .line 110
    .local v1, "othertrie":Landroid/icu/impl/Trie;
    iget-boolean v3, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    iget-boolean v4, v1, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/icu/impl/Trie;->m_options_:I

    iget v4, v1, Landroid/icu/impl/Trie;->m_options_:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    iget v4, v1, Landroid/icu/impl/Trie;->m_dataLength_:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/icu/impl/Trie;->m_index_:[C

    iget-object v4, v1, Landroid/icu/impl/Trie;->m_index_:[C

    .line 113
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 110
    :goto_2b
    return v0
.end method

.method protected final blacklist getBMPOffset(C)I
    .registers 3
    .param p1, "ch"    # C

    .line 313
    const v0, 0xd800

    if-lt p1, v0, :cond_11

    const v0, 0xdbff

    if-gt p1, v0, :cond_11

    .line 315
    const/16 v0, 0x140

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    goto :goto_16

    .line 316
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    .line 313
    :goto_16
    return v0
.end method

.method protected final blacklist getCodePointOffset(I)I
    .registers 4
    .param p1, "ch"    # I

    .line 344
    const/4 v0, -0x1

    if-gez p1, :cond_4

    .line 345
    return v0

    .line 346
    :cond_4
    const v1, 0xd800

    if-ge p1, v1, :cond_10

    .line 348
    const/4 v0, 0x0

    int-to-char v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    return v0

    .line 349
    :cond_10
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_1a

    .line 351
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie;->getBMPOffset(C)I

    move-result v0

    return v0

    .line 352
    :cond_1a
    const v1, 0x10ffff

    if-gt p1, v1, :cond_2b

    .line 355
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    and-int/lit16 v1, p1, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/Trie;->getSurrogateOffset(CC)I

    move-result v0

    return v0

    .line 359
    :cond_2b
    return v0
.end method

.method protected abstract blacklist getInitialValue()I
.end method

.method protected final blacklist getLeadOffset(C)I
    .registers 3
    .param p1, "ch"    # C

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    return v0
.end method

.method protected final blacklist getRawOffset(IC)I
    .registers 5
    .param p1, "offset"    # I
    .param p2, "ch"    # C

    .line 300
    iget-object v0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v1, p2, 0x5

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p2, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getSerializedDataSize()I
    .registers 3

    .line 132
    const/16 v0, 0x10

    .line 133
    .local v0, "result":I
    iget v1, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 134
    invoke-virtual {p0}, Landroid/icu/impl/Trie;->isCharTrie()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 135
    iget v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1e

    .line 137
    :cond_13
    invoke-virtual {p0}, Landroid/icu/impl/Trie;->isIntTrie()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 138
    iget v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 140
    :cond_1e
    :goto_1e
    return v0
.end method

.method protected abstract blacklist getSurrogateOffset(CC)I
.end method

.method protected abstract blacklist getValue(I)I
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 118
    nop

    .line 119
    const/16 v0, 0x2a

    return v0
.end method

.method protected final blacklist isCharTrie()Z
    .registers 2

    .line 389
    iget v0, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected final blacklist isIntTrie()Z
    .registers 2

    .line 380
    iget v0, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final blacklist isLatin1Linear()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    return v0
.end method

.method protected blacklist unserialize(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 371
    iget v0, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    .line 372
    return-void
.end method
