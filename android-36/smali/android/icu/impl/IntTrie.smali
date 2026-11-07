.class public Landroid/icu/impl/IntTrie;
.super Landroid/icu/impl/Trie;
.source "IntTrie.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist m_data_:[I

.field private blacklist m_initialValue_:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(IILandroid/icu/impl/Trie$DataManipulate;)V
    .registers 10
    .param p1, "initialValue"    # I
    .param p2, "leadUnitValue"    # I
    .param p3, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    .line 67
    const/16 v0, 0x820

    new-array v0, v0, [C

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, p3}, Landroid/icu/impl/Trie;-><init>([CILandroid/icu/impl/Trie$DataManipulate;)V

    .line 75
    const/16 v0, 0x100

    move v1, v0

    .line 76
    .local v0, "dataLength":I
    .local v1, "latin1Length":I
    if-eq p2, p1, :cond_10

    .line 77
    add-int/lit8 v0, v0, 0x20

    .line 79
    :cond_10
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    .line 80
    iput v0, p0, Landroid/icu/impl/IntTrie;->m_dataLength_:I

    .line 82
    iput p1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    .line 89
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_22

    .line 90
    iget-object v3, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aput p1, v3, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 93
    :cond_22
    if-eq p2, p1, :cond_40

    .line 95
    shr-int/lit8 v3, v1, 0x2

    int-to-char v3, v3

    .line 96
    .local v3, "block":C
    const/16 v2, 0x6c0

    .line 97
    const/16 v4, 0x6e0

    .line 98
    .local v4, "limit":I
    :goto_2b
    if-ge v2, v4, :cond_34

    .line 99
    iget-object v5, p0, Landroid/icu/impl/IntTrie;->m_index_:[C

    aput-char v3, v5, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 103
    :cond_34
    add-int/lit8 v4, v1, 0x20

    .line 104
    move v2, v1

    :goto_37
    if-ge v2, v4, :cond_40

    .line 105
    iget-object v5, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aput p2, v5, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 108
    .end local v3    # "block":C
    .end local v4    # "limit":I
    :cond_40
    return-void
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V
    .registers 5
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    .line 45
    invoke-virtual {p0}, Landroid/icu/impl/IntTrie;->isIntTrie()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    return-void

    .line 46
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data given does not belong to a int trie."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([C[IIILandroid/icu/impl/Trie$DataManipulate;)V
    .registers 7
    .param p1, "index"    # [C
    .param p2, "data"    # [I
    .param p3, "initialvalue"    # I
    .param p4, "options"    # I
    .param p5, "datamanipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    .line 326
    invoke-direct {p0, p1, p4, p5}, Landroid/icu/impl/Trie;-><init>([CILandroid/icu/impl/Trie$DataManipulate;)V

    .line 327
    iput-object p2, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    .line 328
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    array-length v0, v0

    iput v0, p0, Landroid/icu/impl/IntTrie;->m_dataLength_:I

    .line 329
    iput p3, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    .line 330
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 229
    invoke-super {p0, p1}, Landroid/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 230
    .local v0, "result":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_22

    instance-of v2, p1, Landroid/icu/impl/IntTrie;

    if-eqz v2, :cond_22

    .line 231
    move-object v2, p1

    check-cast v2, Landroid/icu/impl/IntTrie;

    .line 232
    .local v2, "othertrie":Landroid/icu/impl/IntTrie;
    iget v3, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    iget v4, v2, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    if-ne v3, v4, :cond_21

    iget-object v3, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    iget-object v4, v2, Landroid/icu/impl/IntTrie;->m_data_:[I

    .line 233
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_21

    .line 236
    :cond_1f
    const/4 v1, 0x1

    return v1

    .line 234
    :cond_21
    :goto_21
    return v1

    .line 238
    .end local v2    # "othertrie":Landroid/icu/impl/IntTrie;
    :cond_22
    return v1
.end method

.method public final blacklist getBMPValue(C)I
    .registers 4
    .param p1, "ch"    # C

    .line 159
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    invoke-virtual {p0, p1}, Landroid/icu/impl/IntTrie;->getBMPOffset(C)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final blacklist getCodePointValue(I)I
    .registers 4
    .param p1, "ch"    # I

    .line 124
    if-ltz p1, :cond_17

    const v0, 0xd800

    if-ge p1, v0, :cond_17

    .line 126
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_index_:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 128
    .local v0, "offset":I
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aget v1, v1, v0

    return v1

    .line 132
    .end local v0    # "offset":I
    :cond_17
    invoke-virtual {p0, p1}, Landroid/icu/impl/IntTrie;->getCodePointOffset(I)I

    move-result v0

    .line 133
    .restart local v0    # "offset":I
    if-ltz v0, :cond_22

    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aget v1, v1, v0

    goto :goto_24

    :cond_22
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    :goto_24
    return v1
.end method

.method protected final blacklist getInitialValue()I
    .registers 2

    .line 310
    iget v0, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    return v0
.end method

.method public final blacklist getLatin1LinearValue(C)I
    .registers 4
    .param p1, "ch"    # C

    .line 216
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    add-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    return v0
.end method

.method public final blacklist getLeadValue(C)I
    .registers 4
    .param p1, "ch"    # C

    .line 147
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    invoke-virtual {p0, p1}, Landroid/icu/impl/IntTrie;->getLeadOffset(C)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected final blacklist getSurrogateOffset(CC)I
    .registers 5
    .param p1, "lead"    # C
    .param p2, "trail"    # C

    .line 273
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-eqz v0, :cond_1a

    .line 278
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    invoke-virtual {p0, p1}, Landroid/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    .line 281
    .local v0, "offset":I
    if-lez v0, :cond_18

    .line 282
    and-int/lit16 v1, p2, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/IntTrie;->getRawOffset(IC)I

    move-result v1

    return v1

    .line 287
    :cond_18
    const/4 v1, -0x1

    return v1

    .line 274
    .end local v0    # "offset":I
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The field DataManipulate in this Trie is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist getSurrogateValue(CC)I
    .registers 5
    .param p1, "lead"    # C
    .param p2, "trail"    # C

    .line 169
    invoke-static {p1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 174
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/IntTrie;->getSurrogateOffset(CC)I

    move-result v0

    .line 177
    .local v0, "offset":I
    if-lez v0, :cond_17

    .line 178
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aget v1, v1, v0

    return v1

    .line 182
    :cond_17
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    return v1

    .line 170
    .end local v0    # "offset":I
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument characters do not form a supplementary character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist getTrailValue(IC)I
    .registers 6
    .param p1, "leadvalue"    # I
    .param p2, "trail"    # C

    .line 195
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-eqz v0, :cond_1b

    .line 199
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    invoke-interface {v0, p1}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    .line 200
    .local v0, "offset":I
    if-lez v0, :cond_18

    .line 201
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    and-int/lit16 v2, p2, 0x3ff

    int-to-char v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/IntTrie;->getRawOffset(IC)I

    move-result v2

    aget v1, v1, v2

    return v1

    .line 204
    :cond_18
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    return v1

    .line 196
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

    .line 300
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 243
    nop

    .line 244
    const/16 v0, 0x2a

    return v0
.end method

.method protected final blacklist unserialize(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 258
    invoke-super {p0, p1}, Landroid/icu/impl/Trie;->unserialize(Ljava/nio/ByteBuffer;)V

    .line 260
    iget v0, p0, Landroid/icu/impl/IntTrie;->m_dataLength_:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    .line 261
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    .line 262
    return-void
.end method
