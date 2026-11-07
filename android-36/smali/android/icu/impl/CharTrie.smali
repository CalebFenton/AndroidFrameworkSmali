.class public Landroid/icu/impl/CharTrie;
.super Landroid/icu/impl/Trie;
.source "CharTrie.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o m_data_:[C

.field private greylist-max-o m_initialValue_:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(IILandroid/icu/impl/Trie$DataManipulate;)V
    .registers 11
    .param p1, "initialValue"    # I
    .param p2, "leadUnitValue"    # I
    .param p3, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    .line 63
    const/16 v0, 0x820

    new-array v0, v0, [C

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, p3}, Landroid/icu/impl/Trie;-><init>([CILandroid/icu/impl/Trie$DataManipulate;)V

    .line 71
    const/16 v0, 0x100

    move v1, v0

    .line 72
    .local v0, "dataLength":I
    .local v1, "latin1Length":I
    if-eq p2, p1, :cond_10

    .line 73
    add-int/lit8 v0, v0, 0x20

    .line 75
    :cond_10
    new-array v2, v0, [C

    iput-object v2, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    .line 76
    iput v0, p0, Landroid/icu/impl/CharTrie;->m_dataLength_:I

    .line 78
    int-to-char v2, p1

    iput-char v2, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    .line 85
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_24

    .line 86
    iget-object v3, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    int-to-char v4, p1

    aput-char v4, v3, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 89
    :cond_24
    if-eq p2, p1, :cond_43

    .line 91
    shr-int/lit8 v3, v1, 0x2

    int-to-char v3, v3

    .line 92
    .local v3, "block":C
    const/16 v2, 0x6c0

    .line 93
    const/16 v4, 0x6e0

    .line 94
    .local v4, "limit":I
    :goto_2d
    if-ge v2, v4, :cond_36

    .line 95
    iget-object v5, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    aput-char v3, v5, v2

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 99
    :cond_36
    add-int/lit8 v4, v1, 0x20

    .line 100
    move v2, v1

    :goto_39
    if-ge v2, v4, :cond_43

    .line 101
    iget-object v5, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    int-to-char v6, p2

    aput-char v6, v5, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 104
    .end local v3    # "block":C
    .end local v4    # "limit":I
    :cond_43
    return-void
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V
    .registers 5
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    .line 41
    invoke-virtual {p0}, Landroid/icu/impl/CharTrie;->isCharTrie()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    return-void

    .line 42
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data given does not belong to a char trie."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 220
    invoke-super {p0, p1}, Landroid/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 221
    .local v0, "result":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_16

    instance-of v2, p1, Landroid/icu/impl/CharTrie;

    if-eqz v2, :cond_16

    .line 222
    move-object v2, p1

    check-cast v2, Landroid/icu/impl/CharTrie;

    .line 223
    .local v2, "othertrie":Landroid/icu/impl/CharTrie;
    iget-char v3, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    iget-char v4, v2, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    if-ne v3, v4, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1

    .line 225
    .end local v2    # "othertrie":Landroid/icu/impl/CharTrie;
    :cond_16
    return v1
.end method

.method public final blacklist getBMPValue(C)C
    .registers 4
    .param p1, "ch"    # C

    .line 158
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getBMPOffset(C)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method public final blacklist getCodePointValue(I)C
    .registers 4
    .param p1, "ch"    # I

    .line 120
    if-ltz p1, :cond_17

    const v0, 0xd800

    if-ge p1, v0, :cond_17

    .line 122
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 124
    .local v0, "offset":I
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    aget-char v1, v1, v0

    return v1

    .line 128
    .end local v0    # "offset":I
    :cond_17
    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getCodePointOffset(I)I

    move-result v0

    .line 132
    .restart local v0    # "offset":I
    if-ltz v0, :cond_22

    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    aget-char v1, v1, v0

    goto :goto_24

    :cond_22
    iget-char v1, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    :goto_24
    return v1
.end method

.method protected final blacklist getInitialValue()I
    .registers 2

    .line 298
    iget-char v0, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    return v0
.end method

.method public final blacklist getLatin1LinearValue(C)C
    .registers 4
    .param p1, "ch"    # C

    .line 207
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    iget v1, p0, Landroid/icu/impl/CharTrie;->m_dataOffset_:I

    add-int/lit8 v1, v1, 0x20

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final blacklist getLeadValue(C)C
    .registers 4
    .param p1, "ch"    # C

    .line 146
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getLeadOffset(C)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method protected final blacklist getSurrogateOffset(CC)I
    .registers 5
    .param p1, "lead"    # C
    .param p2, "trail"    # C

    .line 260
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-eqz v0, :cond_1a

    .line 266
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getLeadValue(C)C

    move-result v1

    invoke-interface {v0, v1}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    .line 269
    .local v0, "offset":I
    if-lez v0, :cond_18

    .line 270
    and-int/lit16 v1, p2, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/CharTrie;->getRawOffset(IC)I

    move-result v1

    return v1

    .line 275
    :cond_18
    const/4 v1, -0x1

    return v1

    .line 261
    .end local v0    # "offset":I
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The field DataManipulate in this Trie is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist getSurrogateValue(CC)C
    .registers 5
    .param p1, "lead"    # C
    .param p2, "trail"    # C

    .line 168
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/CharTrie;->getSurrogateOffset(CC)I

    move-result v0

    .line 169
    .local v0, "offset":I
    if-lez v0, :cond_b

    .line 170
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    aget-char v1, v1, v0

    return v1

    .line 172
    :cond_b
    iget-char v1, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    return v1
.end method

.method public final blacklist getTrailValue(IC)C
    .registers 6
    .param p1, "leadvalue"    # I
    .param p2, "trail"    # C

    .line 186
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-eqz v0, :cond_1b

    .line 190
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    invoke-interface {v0, p1}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    .line 191
    .local v0, "offset":I
    if-lez v0, :cond_18

    .line 192
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    and-int/lit16 v2, p2, 0x3ff

    int-to-char v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/CharTrie;->getRawOffset(IC)I

    move-result v2

    aget-char v1, v1, v2

    return v1

    .line 195
    :cond_18
    iget-char v1, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    return v1

    .line 187
    .end local v0    # "offset":I
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The field DataManipulate in this Trie is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist getValue(I)I
    .registers 3
    .param p1, "index"    # I

    .line 288
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 230
    nop

    .line 231
    const/16 v0, 0x2a

    return v0
.end method

.method protected final blacklist unserialize(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 245
    iget v0, p0, Landroid/icu/impl/CharTrie;->m_dataOffset_:I

    iget v1, p0, Landroid/icu/impl/CharTrie;->m_dataLength_:I

    add-int/2addr v0, v1

    .line 246
    .local v0, "indexDataLength":I
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    .line 247
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    iput-object v1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    .line 248
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    iget v2, p0, Landroid/icu/impl/CharTrie;->m_dataOffset_:I

    aget-char v1, v1, v2

    iput-char v1, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    .line 249
    return-void
.end method
