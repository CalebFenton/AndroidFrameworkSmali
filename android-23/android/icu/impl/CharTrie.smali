.class public Landroid/icu/impl/CharTrie;
.super Landroid/icu/impl/Trie;
.source "CharTrie.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private m_data_:[C

.field private m_initialValue_:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/CharTrie;

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
    sput-boolean v0, Landroid/icu/impl/CharTrie;->-assertionsDisabled:Z

    #@b
    .line 23
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(IILandroid/icu/impl/Trie$DataManipulate;)V
    .locals 6
    .param p1, "initialValue"    # I
    .param p2, "leadUnitValue"    # I
    .param p3, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    #@0
    .prologue
    .line 60
    const/16 v4, 0x820

    #@2
    new-array v4, v4, [C

    #@4
    const/16 v5, 0x200

    #@6
    invoke-direct {p0, v4, v5, p3}, Landroid/icu/impl/Trie;-><init>([CILandroid/icu/impl/Trie$DataManipulate;)V

    #@9
    .line 68
    const/16 v1, 0x100

    #@b
    .line 69
    .local v1, "dataLength":I
    if-eq p2, p1, :cond_0

    #@d
    .line 70
    const/16 v1, 0x120

    #@f
    .line 72
    :cond_0
    new-array v4, v1, [C

    #@11
    iput-object v4, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@13
    .line 73
    iput v1, p0, Landroid/icu/impl/CharTrie;->m_dataLength_:I

    #@15
    .line 75
    int-to-char v4, p1

    #@16
    iput-char v4, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    #@18
    .line 82
    const/4 v2, 0x0

    #@19
    .line 68
    .local v2, "i":I
    :goto_0
    const/16 v4, 0x100

    #@1b
    .line 82
    if-ge v2, v4, :cond_1

    #@1d
    .line 83
    iget-object v4, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@1f
    int-to-char v5, p1

    #@20
    aput-char v5, v4, v2

    #@22
    .line 82
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 86
    :cond_1
    if-eq p2, p1, :cond_3

    #@27
    .line 88
    const/16 v4, 0x40

    #@29
    int-to-char v0, v4

    #@2a
    .line 89
    .local v0, "block":C
    const/16 v2, 0x6c0

    #@2c
    .line 90
    :goto_1
    const/16 v4, 0x6e0

    #@2e
    .line 91
    if-ge v2, v4, :cond_2

    #@30
    .line 92
    iget-object v4, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    #@32
    aput-char v0, v4, v2

    #@34
    .line 91
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_1

    #@37
    .line 96
    :cond_2
    const/16 v3, 0x120

    #@39
    .line 68
    .local v3, "limit":I
    const/16 v2, 0x100

    #@3b
    .line 97
    :goto_2
    if-ge v2, v3, :cond_3

    #@3d
    .line 98
    iget-object v4, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@3f
    int-to-char v5, p2

    #@40
    aput-char v5, v4, v2

    #@42
    .line 97
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_2

    #@45
    .line 59
    .end local v0    # "block":C
    .end local v3    # "limit":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    #@3
    .line 38
    invoke-virtual {p0}, Landroid/icu/impl/CharTrie;->isCharTrie()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    .line 40
    const-string/jumbo v1, "Data given does not belong to a char trie."

    #@e
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 216
    invoke-super {p0, p1}, Landroid/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v1

    #@5
    .line 217
    .local v1, "result":Z
    if-eqz v1, :cond_1

    #@7
    instance-of v3, p1, Landroid/icu/impl/CharTrie;

    #@9
    if-eqz v3, :cond_1

    #@b
    move-object v0, p1

    #@c
    .line 218
    check-cast v0, Landroid/icu/impl/CharTrie;

    #@e
    .line 219
    .local v0, "othertrie":Landroid/icu/impl/CharTrie;
    iget-char v3, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    #@10
    iget-char v4, v0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    #@12
    if-ne v3, v4, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    return v2

    #@16
    .line 221
    .end local v0    # "othertrie":Landroid/icu/impl/CharTrie;
    :cond_1
    return v2
.end method

.method public final getBMPValue(C)C
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@2
    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getBMPOffset(C)I

    #@5
    move-result v1

    #@6
    aget-char v0, v0, v1

    #@8
    return v0
.end method

.method public final getCodePointValue(I)C
    .locals 3
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 117
    if-ltz p1, :cond_0

    #@2
    const v1, 0xd800

    #@5
    if-ge p1, v1, :cond_0

    #@7
    .line 119
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    #@9
    shr-int/lit8 v2, p1, 0x5

    #@b
    aget-char v1, v1, v2

    #@d
    shl-int/lit8 v1, v1, 0x2

    #@f
    .line 120
    and-int/lit8 v2, p1, 0x1f

    #@11
    .line 119
    add-int v0, v1, v2

    #@13
    .line 121
    .local v0, "offset":I
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@15
    aget-char v1, v1, v0

    #@17
    return v1

    #@18
    .line 125
    .end local v0    # "offset":I
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getCodePointOffset(I)I

    #@1b
    move-result v0

    #@1c
    .line 129
    .restart local v0    # "offset":I
    if-ltz v0, :cond_1

    #@1e
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@20
    aget-char v1, v1, v0

    #@22
    :goto_0
    return v1

    #@23
    :cond_1
    iget-char v1, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    #@25
    goto :goto_0
.end method

.method protected final getInitialValue()I
    .locals 1

    #@0
    .prologue
    .line 292
    iget-char v0, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    #@2
    return v0
.end method

.method public final getLatin1LinearValue(C)C
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@2
    iget v1, p0, Landroid/icu/impl/CharTrie;->m_dataOffset_:I

    #@4
    add-int/lit8 v1, v1, 0x20

    #@6
    add-int/2addr v1, p1

    #@7
    aget-char v0, v0, v1

    #@9
    return v0
.end method

.method public final getLeadValue(C)C
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@2
    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getLeadOffset(C)I

    #@5
    move-result v1

    #@6
    aget-char v0, v0, v1

    #@8
    return v0
.end method

.method protected final getSurrogateOffset(CC)I
    .locals 3
    .param p1, "lead"    # C
    .param p2, "trail"    # C

    #@0
    .prologue
    .line 256
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 257
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    .line 258
    const-string/jumbo v2, "The field DataManipulate in this Trie is null"

    #@9
    .line 257
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 262
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@f
    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getLeadValue(C)C

    #@12
    move-result v2

    #@13
    invoke-interface {v1, v2}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    #@16
    move-result v0

    #@17
    .line 265
    .local v0, "offset":I
    if-lez v0, :cond_1

    #@19
    .line 266
    and-int/lit16 v1, p2, 0x3ff

    #@1b
    int-to-char v1, v1

    #@1c
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/CharTrie;->getRawOffset(IC)I

    #@1f
    move-result v1

    #@20
    return v1

    #@21
    .line 271
    :cond_1
    const/4 v1, -0x1

    #@22
    return v1
.end method

.method public final getSurrogateValue(CC)C
    .locals 2
    .param p1, "lead"    # C
    .param p2, "trail"    # C

    #@0
    .prologue
    .line 165
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/CharTrie;->getSurrogateOffset(CC)I

    #@3
    move-result v0

    #@4
    .line 166
    .local v0, "offset":I
    if-lez v0, :cond_0

    #@6
    .line 167
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@8
    aget-char v1, v1, v0

    #@a
    return v1

    #@b
    .line 169
    :cond_0
    iget-char v1, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    #@d
    return v1
.end method

.method public final getTrailValue(IC)C
    .locals 3
    .param p1, "leadvalue"    # I
    .param p2, "trail"    # C

    #@0
    .prologue
    .line 183
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 184
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    .line 185
    const-string/jumbo v2, "The field DataManipulate in this Trie is null"

    #@9
    .line 184
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 187
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@f
    invoke-interface {v1, p1}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    #@12
    move-result v0

    #@13
    .line 188
    .local v0, "offset":I
    if-lez v0, :cond_1

    #@15
    .line 189
    iget-object v1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@17
    .line 190
    and-int/lit16 v2, p2, 0x3ff

    #@19
    int-to-char v2, v2

    #@1a
    .line 189
    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/CharTrie;->getRawOffset(IC)I

    #@1d
    move-result v2

    #@1e
    aget-char v1, v1, v2

    #@20
    return v1

    #@21
    .line 192
    :cond_1
    iget-char v1, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    #@23
    return v1
.end method

.method protected final getValue(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@2
    aget-char v0, v0, p1

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 225
    sget-boolean v0, Landroid/icu/impl/CharTrie;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "hashCode not designed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 226
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method protected final unserialize(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 239
    iget v2, p0, Landroid/icu/impl/CharTrie;->m_dataOffset_:I

    #@2
    iget v3, p0, Landroid/icu/impl/CharTrie;->m_dataLength_:I

    #@4
    add-int v1, v2, v3

    #@6
    .line 240
    .local v1, "indexDataLength":I
    new-array v2, v1, [C

    #@8
    iput-object v2, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    #@a
    .line 241
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@d
    .line 242
    iget-object v2, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    #@f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@12
    move-result v3

    #@13
    aput-char v3, v2, v0

    #@15
    .line 241
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 244
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    #@1a
    iput-object v2, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@1c
    .line 245
    iget-object v2, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    #@1e
    iget v3, p0, Landroid/icu/impl/CharTrie;->m_dataOffset_:I

    #@20
    aget-char v2, v2, v3

    #@22
    iput-char v2, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    #@24
    .line 237
    return-void
.end method
