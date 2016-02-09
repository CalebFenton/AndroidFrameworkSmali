.class Landroid/icu/text/BreakCTDictionary;
.super Ljava/lang/Object;
.source "BreakCTDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;,
        Landroid/icu/text/BreakCTDictionary$CompactTrieNodeFlags;,
        Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;,
        Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;,
        Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;
    }
.end annotation


# static fields
.field private static final DATA_FORMAT_ID:I = 0x54724463


# instance fields
.field private fData:Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

.field private nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 107
    const v0, 0x54724463

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@a
    .line 110
    new-instance v0, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

    #@c
    invoke-direct {v0}, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/text/BreakCTDictionary;->fData:Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

    #@11
    .line 111
    iget-object v0, p0, Landroid/icu/text/BreakCTDictionary;->fData:Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

    #@13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@16
    move-result v1

    #@17
    iput v1, v0, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->size:I

    #@19
    .line 112
    iget-object v0, p0, Landroid/icu/text/BreakCTDictionary;->fData:Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

    #@1b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@1e
    move-result v1

    #@1f
    iput v1, v0, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->magic:I

    #@21
    .line 113
    iget-object v0, p0, Landroid/icu/text/BreakCTDictionary;->fData:Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

    #@23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->nodeCount:I

    #@29
    .line 114
    iget-object v0, p0, Landroid/icu/text/BreakCTDictionary;->fData:Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

    #@2b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@2e
    move-result v1

    #@2f
    iput v1, v0, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->root:I

    #@31
    .line 116
    invoke-direct {p0, p1}, Landroid/icu/text/BreakCTDictionary;->loadBreakCTDictionary(Ljava/nio/ByteBuffer;)V

    #@34
    .line 106
    return-void
.end method

.method private getCompactTrieNode(I)Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method private loadBreakCTDictionary(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 122
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->fData:Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

    #@4
    iget v6, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->nodeCount:I

    #@6
    if-ge v1, v6, :cond_0

    #@8
    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@b
    .line 122
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 127
    :cond_0
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->fData:Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

    #@10
    iget v6, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->nodeCount:I

    #@12
    new-array v6, v6, [Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@14
    iput-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@16
    .line 128
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@18
    new-instance v7, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@1a
    invoke-direct {v7}, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;-><init>()V

    #@1d
    aput-object v7, v6, v8

    #@1f
    .line 131
    const/4 v3, 0x1

    #@20
    .local v3, "j":I
    :goto_1
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->fData:Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

    #@22
    iget v6, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->nodeCount:I

    #@24
    if-ge v3, v6, :cond_4

    #@26
    .line 132
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@28
    new-instance v7, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@2a
    invoke-direct {v7}, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;-><init>()V

    #@2d
    aput-object v7, v6, v3

    #@2f
    .line 133
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@31
    aget-object v6, v6, v3

    #@33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@36
    move-result v7

    #@37
    iput-short v7, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->flagscount:S

    #@39
    .line 135
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@3b
    aget-object v6, v6, v3

    #@3d
    iget-short v6, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->flagscount:S

    #@3f
    and-int/lit16 v0, v6, 0xfff

    #@41
    .line 137
    .local v0, "count":I
    if-eqz v0, :cond_3

    #@43
    .line 138
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@45
    aget-object v6, v6, v3

    #@47
    iget-short v6, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->flagscount:S

    #@49
    and-int/lit16 v6, v6, 0x1000

    #@4b
    if-eqz v6, :cond_1

    #@4d
    const/4 v2, 0x1

    #@4e
    .line 141
    .local v2, "isVerticalNode":Z
    :goto_2
    if-eqz v2, :cond_2

    #@50
    .line 142
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@52
    aget-object v6, v6, v3

    #@54
    new-instance v7, Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;

    #@56
    invoke-direct {v7}, Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;-><init>()V

    #@59
    iput-object v7, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->vnode:Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;

    #@5b
    .line 143
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@5d
    aget-object v6, v6, v3

    #@5f
    iget-object v6, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->vnode:Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;

    #@61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@64
    move-result v7

    #@65
    iput v7, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;->equal:I

    #@67
    .line 145
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@69
    aget-object v6, v6, v3

    #@6b
    iget-object v6, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->vnode:Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;

    #@6d
    new-array v7, v0, [C

    #@6f
    iput-object v7, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;->chars:[C

    #@71
    .line 146
    const/4 v4, 0x0

    #@72
    .local v4, "l":I
    :goto_3
    if-ge v4, v0, :cond_3

    #@74
    .line 147
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@76
    aget-object v6, v6, v3

    #@78
    iget-object v6, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->vnode:Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;

    #@7a
    iget-object v6, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;->chars:[C

    #@7c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@7f
    move-result v7

    #@80
    aput-char v7, v6, v4

    #@82
    .line 146
    add-int/lit8 v4, v4, 0x1

    #@84
    goto :goto_3

    #@85
    .line 138
    .end local v2    # "isVerticalNode":Z
    .end local v4    # "l":I
    :cond_1
    const/4 v2, 0x0

    #@86
    .restart local v2    # "isVerticalNode":Z
    goto :goto_2

    #@87
    .line 150
    :cond_2
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@89
    aget-object v6, v6, v3

    #@8b
    new-array v7, v0, [Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;

    #@8d
    iput-object v7, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->hnode:[Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;

    #@8f
    .line 151
    const/4 v5, 0x0

    #@90
    .local v5, "n":I
    :goto_4
    if-ge v5, v0, :cond_3

    #@92
    .line 152
    iget-object v6, p0, Landroid/icu/text/BreakCTDictionary;->nodes:[Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@94
    aget-object v6, v6, v3

    #@96
    iget-object v6, v6, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->hnode:[Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;

    #@98
    new-instance v7, Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;

    #@9a
    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@9d
    move-result v8

    #@9e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@a1
    move-result v9

    #@a2
    .line 152
    invoke-direct {v7, v8, v9}, Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;-><init>(CI)V

    #@a5
    aput-object v7, v6, v5

    #@a7
    .line 151
    add-int/lit8 v5, v5, 0x1

    #@a9
    goto :goto_4

    #@aa
    .line 131
    .end local v2    # "isVerticalNode":Z
    .end local v5    # "n":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@ac
    goto/16 :goto_1

    #@ae
    .line 120
    .end local v0    # "count":I
    :cond_4
    return-void
.end method


# virtual methods
.method public matches(Ljava/text/CharacterIterator;I[I[II)I
    .locals 15
    .param p1, "text"    # Ljava/text/CharacterIterator;
    .param p2, "maxLength"    # I
    .param p3, "lengths"    # [I
    .param p4, "count"    # [I
    .param p5, "limit"    # I

    #@0
    .prologue
    .line 174
    iget-object v14, p0, Landroid/icu/text/BreakCTDictionary;->fData:Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;

    #@2
    iget v14, v14, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->root:I

    #@4
    invoke-direct {p0, v14}, Landroid/icu/text/BreakCTDictionary;->getCompactTrieNode(I)Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@7
    move-result-object v10

    #@8
    .line 175
    .local v10, "node":Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;
    const/4 v8, 0x0

    #@9
    .line 177
    .local v8, "mycount":I
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@c
    move-result v12

    #@d
    .line 178
    .local v12, "uc":C
    const/4 v4, 0x0

    #@e
    .line 179
    .local v4, "i":I
    const/4 v1, 0x0

    #@f
    .local v1, "exitFlag":Z
    move v9, v8

    #@10
    .line 181
    .end local v8    # "mycount":I
    .end local v10    # "node":Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;
    .local v9, "mycount":I
    :goto_0
    if-eqz v10, :cond_9

    #@12
    .line 183
    if-lez p5, :cond_1

    #@14
    .line 184
    iget-short v14, v10, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->flagscount:S

    #@16
    and-int/lit16 v14, v14, 0x2000

    #@18
    if-eqz v14, :cond_1

    #@1a
    .line 185
    add-int/lit8 v8, v9, 0x1

    #@1c
    .end local v9    # "mycount":I
    .restart local v8    # "mycount":I
    aput v4, p3, v9

    #@1e
    .line 186
    add-int/lit8 p5, p5, -0x1

    #@20
    .line 193
    :goto_1
    move/from16 v0, p2

    #@22
    if-lt v4, v0, :cond_2

    #@24
    .line 247
    :cond_0
    :goto_2
    const/4 v14, 0x0

    #@25
    aput v8, p4, v14

    #@27
    .line 248
    return v4

    #@28
    .end local v8    # "mycount":I
    .restart local v9    # "mycount":I
    :cond_1
    move v8, v9

    #@29
    .line 184
    .end local v9    # "mycount":I
    .restart local v8    # "mycount":I
    goto :goto_1

    #@2a
    .line 197
    :cond_2
    iget-short v14, v10, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->flagscount:S

    #@2c
    and-int/lit16 v11, v14, 0xfff

    #@2e
    .line 198
    .local v11, "nodeCount":I
    if-eqz v11, :cond_0

    #@30
    .line 202
    iget-short v14, v10, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->flagscount:S

    #@32
    and-int/lit16 v14, v14, 0x1000

    #@34
    if-eqz v14, :cond_6

    #@36
    .line 204
    iget-object v13, v10, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->vnode:Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;

    #@38
    .line 205
    .local v13, "vnode":Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;
    const/4 v5, 0x0

    #@39
    .local v5, "j":I
    :goto_3
    if-ge v5, v11, :cond_3

    #@3b
    move/from16 v0, p2

    #@3d
    if-ge v4, v0, :cond_3

    #@3f
    .line 206
    iget-object v14, v13, Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;->chars:[C

    #@41
    aget-char v14, v14, v5

    #@43
    if-eq v12, v14, :cond_5

    #@45
    .line 208
    const/4 v1, 0x1

    #@46
    .line 215
    :cond_3
    if-nez v1, :cond_0

    #@48
    .line 221
    iget v14, v13, Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;->equal:I

    #@4a
    invoke-direct {p0, v14}, Landroid/icu/text/BreakCTDictionary;->getCompactTrieNode(I)Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@4d
    move-result-object v10

    #@4e
    .end local v5    # "j":I
    .end local v13    # "vnode":Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;
    :cond_4
    :goto_4
    move v9, v8

    #@4f
    .end local v8    # "mycount":I
    .restart local v9    # "mycount":I
    goto :goto_0

    #@50
    .line 211
    .end local v9    # "mycount":I
    .restart local v5    # "j":I
    .restart local v8    # "mycount":I
    .restart local v13    # "vnode":Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@53
    .line 212
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@56
    move-result v12

    #@57
    .line 213
    add-int/lit8 v4, v4, 0x1

    #@59
    .line 205
    add-int/lit8 v5, v5, 0x1

    #@5b
    goto :goto_3

    #@5c
    .line 224
    .end local v5    # "j":I
    .end local v13    # "vnode":Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;
    :cond_6
    iget-object v3, v10, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->hnode:[Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;

    #@5e
    .line 225
    .local v3, "hnode":[Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;
    const/4 v6, 0x0

    #@5f
    .line 226
    .local v6, "low":I
    add-int/lit8 v2, v11, -0x1

    #@61
    .line 228
    .local v2, "high":I
    const/4 v10, 0x0

    #@62
    .line 229
    .local v10, "node":Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;
    :goto_5
    if-lt v2, v6, :cond_4

    #@64
    .line 230
    add-int v14, v2, v6

    #@66
    ushr-int/lit8 v7, v14, 0x1

    #@68
    .line 231
    .local v7, "middle":I
    aget-object v14, v3, v7

    #@6a
    iget-char v14, v14, Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;->ch:C

    #@6c
    if-ne v12, v14, :cond_7

    #@6e
    .line 233
    aget-object v14, v3, v7

    #@70
    iget v14, v14, Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;->equal:I

    #@72
    invoke-direct {p0, v14}, Landroid/icu/text/BreakCTDictionary;->getCompactTrieNode(I)Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;

    #@75
    move-result-object v10

    #@76
    .line 234
    .local v10, "node":Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@79
    .line 235
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@7c
    move-result v12

    #@7d
    .line 236
    add-int/lit8 v4, v4, 0x1

    #@7f
    .line 237
    goto :goto_4

    #@80
    .line 238
    .local v10, "node":Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;
    :cond_7
    aget-object v14, v3, v7

    #@82
    iget-char v14, v14, Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;->ch:C

    #@84
    if-ge v12, v14, :cond_8

    #@86
    .line 239
    add-int/lit8 v2, v7, -0x1

    #@88
    goto :goto_5

    #@89
    .line 241
    :cond_8
    add-int/lit8 v6, v7, 0x1

    #@8b
    goto :goto_5

    #@8c
    .end local v2    # "high":I
    .end local v3    # "hnode":[Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;
    .end local v6    # "low":I
    .end local v7    # "middle":I
    .end local v8    # "mycount":I
    .end local v10    # "node":Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;
    .end local v11    # "nodeCount":I
    .restart local v9    # "mycount":I
    :cond_9
    move v8, v9

    #@8d
    .end local v9    # "mycount":I
    .restart local v8    # "mycount":I
    goto :goto_2
.end method
