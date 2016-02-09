.class public Landroid/icu/impl/IntTrie;
.super Landroid/icu/impl/Trie;
.source "IntTrie.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private m_data_:[I

.field private m_initialValue_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/IntTrie;

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
    sput-boolean v0, Landroid/icu/impl/IntTrie;->-assertionsDisabled:Z

    #@b
    .line 22
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
    .line 61
    const/16 v4, 0x820

    #@2
    new-array v4, v4, [C

    #@4
    const/16 v5, 0x200

    #@6
    invoke-direct {p0, v4, v5, p3}, Landroid/icu/impl/Trie;-><init>([CILandroid/icu/impl/Trie$DataManipulate;)V

    #@9
    .line 69
    const/16 v1, 0x100

    #@b
    .line 70
    .local v1, "dataLength":I
    if-eq p2, p1, :cond_0

    #@d
    .line 71
    const/16 v1, 0x120

    #@f
    .line 73
    :cond_0
    new-array v4, v1, [I

    #@11
    iput-object v4, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@13
    .line 74
    iput v1, p0, Landroid/icu/impl/IntTrie;->m_dataLength_:I

    #@15
    .line 76
    iput p1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    #@17
    .line 83
    const/4 v2, 0x0

    #@18
    .line 69
    .local v2, "i":I
    :goto_0
    const/16 v4, 0x100

    #@1a
    .line 83
    if-ge v2, v4, :cond_1

    #@1c
    .line 84
    iget-object v4, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@1e
    aput p1, v4, v2

    #@20
    .line 83
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 87
    :cond_1
    if-eq p2, p1, :cond_3

    #@25
    .line 89
    const/16 v4, 0x40

    #@27
    int-to-char v0, v4

    #@28
    .line 90
    .local v0, "block":C
    const/16 v2, 0x6c0

    #@2a
    .line 91
    :goto_1
    const/16 v4, 0x6e0

    #@2c
    .line 92
    if-ge v2, v4, :cond_2

    #@2e
    .line 93
    iget-object v4, p0, Landroid/icu/impl/IntTrie;->m_index_:[C

    #@30
    aput-char v0, v4, v2

    #@32
    .line 92
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_1

    #@35
    .line 97
    :cond_2
    const/16 v3, 0x120

    #@37
    .line 69
    .local v3, "limit":I
    const/16 v2, 0x100

    #@39
    .line 98
    :goto_2
    if-ge v2, v3, :cond_3

    #@3b
    .line 99
    iget-object v4, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@3d
    aput p2, v4, v2

    #@3f
    .line 98
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_2

    #@42
    .line 60
    .end local v0    # "block":C
    .end local v3    # "limit":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    #@3
    .line 39
    invoke-virtual {p0}, Landroid/icu/impl/IntTrie;->isIntTrie()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    .line 41
    const-string/jumbo v1, "Data given does not belong to a int trie."

    #@e
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 36
    :cond_0
    return-void
.end method

.method constructor <init>([C[IIILandroid/icu/impl/Trie$DataManipulate;)V
    .locals 1
    .param p1, "index"    # [C
    .param p2, "data"    # [I
    .param p3, "initialvalue"    # I
    .param p4, "options"    # I
    .param p5, "datamanipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    #@0
    .prologue
    .line 317
    invoke-direct {p0, p1, p4, p5}, Landroid/icu/impl/Trie;-><init>([CILandroid/icu/impl/Trie$DataManipulate;)V

    #@3
    .line 318
    iput-object p2, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@5
    .line 319
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@7
    array-length v0, v0

    #@8
    iput v0, p0, Landroid/icu/impl/IntTrie;->m_dataLength_:I

    #@a
    .line 320
    iput p3, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    #@c
    .line 315
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 222
    invoke-super {p0, p1}, Landroid/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v1

    #@5
    .line 223
    .local v1, "result":Z
    if-eqz v1, :cond_1

    #@7
    instance-of v2, p1, Landroid/icu/impl/IntTrie;

    #@9
    if-eqz v2, :cond_1

    #@b
    move-object v0, p1

    #@c
    .line 224
    check-cast v0, Landroid/icu/impl/IntTrie;

    #@e
    .line 225
    .local v0, "othertrie":Landroid/icu/impl/IntTrie;
    iget v2, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    #@10
    iget v3, v0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    #@12
    if-ne v2, v3, :cond_0

    #@14
    .line 226
    iget-object v2, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@16
    iget-object v3, v0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@18
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 229
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 227
    :cond_0
    return v4

    #@21
    .line 231
    .end local v0    # "othertrie":Landroid/icu/impl/IntTrie;
    :cond_1
    return v4
.end method

.method public final getBMPValue(C)I
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@2
    invoke-virtual {p0, p1}, Landroid/icu/impl/IntTrie;->getBMPOffset(C)I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public final getCodePointValue(I)I
    .locals 3
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 118
    if-ltz p1, :cond_0

    #@2
    const v1, 0xd800

    #@5
    if-ge p1, v1, :cond_0

    #@7
    .line 120
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_index_:[C

    #@9
    shr-int/lit8 v2, p1, 0x5

    #@b
    aget-char v1, v1, v2

    #@d
    shl-int/lit8 v1, v1, 0x2

    #@f
    .line 121
    and-int/lit8 v2, p1, 0x1f

    #@11
    .line 120
    add-int v0, v1, v2

    #@13
    .line 122
    .local v0, "offset":I
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@15
    aget v1, v1, v0

    #@17
    return v1

    #@18
    .line 126
    .end local v0    # "offset":I
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/IntTrie;->getCodePointOffset(I)I

    #@1b
    move-result v0

    #@1c
    .line 127
    .restart local v0    # "offset":I
    if-ltz v0, :cond_1

    #@1e
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@20
    aget v1, v1, v0

    #@22
    :goto_0
    return v1

    #@23
    :cond_1
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    #@25
    goto :goto_0
.end method

.method protected final getInitialValue()I
    .locals 1

    #@0
    .prologue
    .line 301
    iget v0, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    #@2
    return v0
.end method

.method public final getLatin1LinearValue(C)I
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@2
    add-int/lit8 v1, p1, 0x20

    #@4
    aget v0, v0, v1

    #@6
    return v0
.end method

.method public final getLeadValue(C)I
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@2
    invoke-virtual {p0, p1}, Landroid/icu/impl/IntTrie;->getLeadOffset(C)I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method protected final getSurrogateOffset(CC)I
    .locals 3
    .param p1, "lead"    # C
    .param p2, "trail"    # C

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 267
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    .line 268
    const-string/jumbo v2, "The field DataManipulate in this Trie is null"

    #@9
    .line 267
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 271
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@f
    invoke-virtual {p0, p1}, Landroid/icu/impl/IntTrie;->getLeadValue(C)I

    #@12
    move-result v2

    #@13
    invoke-interface {v1, v2}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    #@16
    move-result v0

    #@17
    .line 274
    .local v0, "offset":I
    if-lez v0, :cond_1

    #@19
    .line 275
    and-int/lit16 v1, p2, 0x3ff

    #@1b
    int-to-char v1, v1

    #@1c
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/IntTrie;->getRawOffset(IC)I

    #@1f
    move-result v1

    #@20
    return v1

    #@21
    .line 280
    :cond_1
    const/4 v1, -0x1

    #@22
    return v1
.end method

.method public final getSurrogateValue(CC)I
    .locals 3
    .param p1, "lead"    # C
    .param p2, "trail"    # C

    #@0
    .prologue
    .line 163
    invoke-static {p1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-static {p2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 168
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/IntTrie;->getSurrogateOffset(CC)I

    #@f
    move-result v0

    #@10
    .line 171
    .local v0, "offset":I
    if-lez v0, :cond_1

    #@12
    .line 172
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@14
    aget v1, v1, v0

    #@16
    return v1

    #@17
    .line 164
    .end local v0    # "offset":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    .line 165
    const-string/jumbo v2, "Argument characters do not form a supplementary character"

    #@1c
    .line 164
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 176
    .restart local v0    # "offset":I
    :cond_1
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    #@22
    return v1
.end method

.method public final getTrailValue(IC)I
    .locals 3
    .param p1, "leadvalue"    # I
    .param p2, "trail"    # C

    #@0
    .prologue
    .line 189
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 190
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    .line 191
    const-string/jumbo v2, "The field DataManipulate in this Trie is null"

    #@9
    .line 190
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 193
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@f
    invoke-interface {v1, p1}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    #@12
    move-result v0

    #@13
    .line 194
    .local v0, "offset":I
    if-lez v0, :cond_1

    #@15
    .line 195
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@17
    .line 196
    and-int/lit16 v2, p2, 0x3ff

    #@19
    int-to-char v2, v2

    #@1a
    .line 195
    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/IntTrie;->getRawOffset(IC)I

    #@1d
    move-result v2

    #@1e
    aget v1, v1, v2

    #@20
    return v1

    #@21
    .line 198
    :cond_1
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    #@23
    return v1
.end method

.method protected final getValue(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 235
    sget-boolean v0, Landroid/icu/impl/IntTrie;->-assertionsDisabled:Z

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
    .line 236
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method protected final unserialize(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/icu/impl/Trie;->unserialize(Ljava/nio/ByteBuffer;)V

    #@3
    .line 251
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_dataLength_:I

    #@5
    new-array v1, v1, [I

    #@7
    iput-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@9
    .line 252
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/icu/impl/IntTrie;->m_dataLength_:I

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 253
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@13
    move-result v2

    #@14
    aput v2, v1, v0

    #@16
    .line 252
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 255
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/IntTrie;->m_data_:[I

    #@1b
    const/4 v2, 0x0

    #@1c
    aget v1, v1, v2

    #@1e
    iput v1, p0, Landroid/icu/impl/IntTrie;->m_initialValue_:I

    #@20
    .line 247
    return-void
.end method
