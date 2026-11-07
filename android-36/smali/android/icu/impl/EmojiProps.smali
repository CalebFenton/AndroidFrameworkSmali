.class public final Landroid/icu/impl/EmojiProps;
.super Ljava/lang/Object;
.source "EmojiProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/EmojiProps$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BIT_BASIC_EMOJI:I = 0x6

.field private static final blacklist BIT_EMOJI:I = 0x0

.field private static final blacklist BIT_EMOJI_COMPONENT:I = 0x4

.field private static final blacklist BIT_EMOJI_MODIFIER:I = 0x2

.field private static final blacklist BIT_EMOJI_MODIFIER_BASE:I = 0x3

.field private static final blacklist BIT_EMOJI_PRESENTATION:I = 0x1

.field private static final blacklist BIT_EXTENDED_PICTOGRAPHIC:I = 0x5

.field private static final blacklist DATA_FORMAT:I = 0x456d6f6a

.field public static final blacklist INSTANCE:Landroid/icu/impl/EmojiProps;

.field private static final blacklist IS_ACCEPTABLE:Landroid/icu/impl/EmojiProps$IsAcceptable;

.field private static final blacklist IX_BASIC_EMOJI_TRIE_OFFSET:I = 0x4

.field private static final blacklist IX_CPTRIE_OFFSET:I = 0x0

.field private static final blacklist IX_RGI_EMOJI_ZWJ_SEQUENCE_TRIE_OFFSET:I = 0x9

.field private static final blacklist bitFlags:[B


# instance fields
.field private blacklist cpTrie:Landroid/icu/util/CodePointTrie$Fast8;

.field private blacklist stringTries:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 24
    nop

    .line 31
    new-instance v0, Landroid/icu/impl/EmojiProps$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/EmojiProps$IsAcceptable;-><init>(Landroid/icu/impl/EmojiProps-IA;)V

    sput-object v0, Landroid/icu/impl/EmojiProps;->IS_ACCEPTABLE:Landroid/icu/impl/EmojiProps$IsAcceptable;

    .line 58
    new-instance v0, Landroid/icu/impl/EmojiProps;

    invoke-direct {v0}, Landroid/icu/impl/EmojiProps;-><init>()V

    sput-object v0, Landroid/icu/impl/EmojiProps;->INSTANCE:Landroid/icu/impl/EmojiProps;

    .line 125
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/icu/impl/EmojiProps;->bitFlags:[B

    return-void

    :array_1a
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        -0x1t
        -0x1t
        0x5t
        0x6t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x6t
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 15

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/EmojiProps;->cpTrie:Landroid/icu/util/CodePointTrie$Fast8;

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/EmojiProps;->stringTries:[Ljava/lang/String;

    .line 69
    const-string v0, "uemoji.icu"

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    :try_start_11
    sget-object v1, Landroid/icu/impl/EmojiProps;->IS_ACCEPTABLE:Landroid/icu/impl/EmojiProps$IsAcceptable;

    const v2, 0x456d6f6a

    invoke-static {v0, v2, v1}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 74
    .local v1, "startPos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 75
    .local v2, "cpTrieOffset":I
    div-int/lit8 v3, v2, 0x4

    .line 76
    .local v3, "indexesLength":I
    const/16 v4, 0x9

    if-le v3, v4, :cond_7b

    .line 81
    new-array v5, v3, [I

    .line 82
    .local v5, "inIndexes":[I
    const/4 v6, 0x0

    aput v2, v5, v6

    .line 83
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2d
    if-ge v7, v3, :cond_38

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    aput v8, v5, v7

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 87
    .end local v7    # "i":I
    :cond_38
    const/4 v7, 0x0

    .line 88
    .restart local v7    # "i":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget v7, v5, v7

    .line 89
    .local v7, "offset":I
    aget v9, v5, v8

    .line 90
    .local v9, "nextOffset":I
    invoke-static {v0}, Landroid/icu/util/CodePointTrie$Fast8;->fromBinary(Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie$Fast8;

    move-result-object v10

    iput-object v10, p0, Landroid/icu/impl/EmojiProps;->cpTrie:Landroid/icu/util/CodePointTrie$Fast8;

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    sub-int/2addr v10, v1

    .line 92
    .local v10, "pos":I
    nop

    .line 93
    sub-int v11, v9, v10

    invoke-static {v0, v11}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 95
    move v7, v9

    .line 96
    const/4 v11, 0x4

    aget v11, v5, v11

    .line 97
    .end local v9    # "nextOffset":I
    .local v11, "nextOffset":I
    sub-int v9, v11, v7

    invoke-static {v0, v9}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 99
    const/4 v8, 0x4

    :goto_5a
    if-gt v8, v4, :cond_79

    .line 100
    aget v9, v5, v8

    move v7, v9

    .line 101
    add-int/lit8 v9, v8, 0x1

    aget v9, v5, v9

    move v11, v9

    .line 103
    if-le v11, v7, :cond_76

    .line 104
    iget-object v9, p0, Landroid/icu/impl/EmojiProps;->stringTries:[Ljava/lang/String;

    invoke-static {v8}, Landroid/icu/impl/EmojiProps;->getStringTrieIndex(I)I

    move-result v12

    sub-int v13, v11, v7

    div-int/lit8 v13, v13, 0x2

    .line 105
    invoke-static {v0, v13, v6}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    .line 99
    :cond_76
    add-int/lit8 v8, v8, 0x1

    goto :goto_5a

    .line 110
    .end local v1    # "startPos":I
    .end local v2    # "cpTrieOffset":I
    .end local v3    # "indexesLength":I
    .end local v5    # "inIndexes":[I
    .end local v7    # "offset":I
    .end local v8    # "i":I
    .end local v10    # "pos":I
    .end local v11    # "nextOffset":I
    :cond_79
    nop

    .line 111
    return-void

    .line 77
    .restart local v1    # "startPos":I
    .restart local v2    # "cpTrieOffset":I
    .restart local v3    # "indexesLength":I
    :cond_7b
    new-instance v4, Landroid/icu/util/ICUUncheckedIOException;

    const-string v5, "Emoji properties data: not enough indexes"

    invoke-direct {v4, v5}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytes":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/icu/impl/EmojiProps;
    throw v4
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_83} :catch_83

    .line 108
    .end local v1    # "startPos":I
    .end local v2    # "cpTrieOffset":I
    .end local v3    # "indexesLength":I
    .restart local v0    # "bytes":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Landroid/icu/impl/EmojiProps;
    :catch_83
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v2, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist getStringTrieIndex(I)I
    .registers 2
    .param p0, "i"    # I

    .line 65
    add-int/lit8 v0, p0, -0x4

    return v0
.end method


# virtual methods
.method public blacklist addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 6
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 115
    new-instance v0, Landroid/icu/util/CodePointMap$Range;

    invoke-direct {v0}, Landroid/icu/util/CodePointMap$Range;-><init>()V

    .line 116
    .local v0, "range":Landroid/icu/util/CodePointMap$Range;
    const/4 v1, 0x0

    .line 117
    .local v1, "start":I
    :goto_6
    iget-object v2, p0, Landroid/icu/impl/EmojiProps;->cpTrie:Landroid/icu/util/CodePointTrie$Fast8;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/icu/util/CodePointTrie$Fast8;->getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 118
    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 119
    invoke-virtual {v0}, Landroid/icu/util/CodePointMap$Range;->getEnd()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    .line 121
    :cond_19
    return-object p1
.end method

.method public blacklist addStrings(ILandroid/icu/text/UnicodeSet;)V
    .registers 11
    .param p1, "which"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    .line 182
    const/16 v0, 0x41

    if-lt p1, v0, :cond_3c

    const/16 v0, 0x47

    if-ge v0, p1, :cond_9

    goto :goto_3c

    .line 185
    :cond_9
    move v1, p1

    .local v1, "firstProp":I
    move v2, p1

    .line 186
    .local v2, "lastProp":I
    if-ne p1, v0, :cond_11

    .line 188
    const/16 v1, 0x41

    .line 189
    const/16 v2, 0x46

    .line 191
    :cond_11
    move v0, v1

    .local v0, "prop":I
    :goto_12
    if-gt v0, v2, :cond_3b

    .line 192
    iget-object v3, p0, Landroid/icu/impl/EmojiProps;->stringTries:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x41

    aget-object v3, v3, v4

    .line 193
    .local v3, "trieUChars":Ljava/lang/String;
    if-eqz v3, :cond_38

    .line 194
    new-instance v4, Landroid/icu/util/CharsTrie;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 195
    .local v4, "trie":Landroid/icu/util/CharsTrie;
    invoke-virtual {v4}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/CharsTrie$Entry;

    .line 196
    .local v6, "entry":Landroid/icu/util/CharsTrie$Entry;
    iget-object v7, v6, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-virtual {p2, v7}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 197
    .end local v6    # "entry":Landroid/icu/util/CharsTrie$Entry;
    goto :goto_26

    .line 191
    .end local v3    # "trieUChars":Ljava/lang/String;
    .end local v4    # "trie":Landroid/icu/util/CharsTrie;
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 200
    .end local v0    # "prop":I
    :cond_3b
    return-void

    .line 183
    .end local v1    # "firstProp":I
    .end local v2    # "lastProp":I
    :cond_3c
    :goto_3c
    return-void
.end method

.method public blacklist hasBinaryProperty(II)Z
    .registers 8
    .param p1, "c"    # I
    .param p2, "which"    # I

    .line 144
    const/16 v0, 0x39

    const/4 v1, 0x0

    if-lt p2, v0, :cond_21

    const/16 v0, 0x47

    if-ge v0, p2, :cond_a

    goto :goto_21

    .line 147
    :cond_a
    sget-object v0, Landroid/icu/impl/EmojiProps;->bitFlags:[B

    add-int/lit8 v2, p2, -0x39

    aget-byte v0, v0, v2

    .line 148
    .local v0, "bit":I
    if-gez v0, :cond_13

    .line 149
    return v1

    .line 151
    :cond_13
    iget-object v2, p0, Landroid/icu/impl/EmojiProps;->cpTrie:Landroid/icu/util/CodePointTrie$Fast8;

    invoke-virtual {v2, p1}, Landroid/icu/util/CodePointTrie$Fast8;->get(I)I

    move-result v2

    .line 152
    .local v2, "bits":I
    shr-int v3, v2, v0

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_20

    move v1, v4

    :cond_20
    return v1

    .line 145
    .end local v0    # "bit":I
    .end local v2    # "bits":I
    :cond_21
    :goto_21
    return v1
.end method

.method public blacklist hasBinaryProperty(Ljava/lang/CharSequence;I)Z
    .registers 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "which"    # I

    .line 156
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 157
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 159
    :cond_8
    const/16 v2, 0x41

    if-lt p2, v2, :cond_39

    const/16 v2, 0x47

    if-ge v2, p2, :cond_11

    goto :goto_39

    .line 162
    :cond_11
    move v3, p2

    .local v3, "firstProp":I
    move v4, p2

    .line 163
    .local v4, "lastProp":I
    if-ne p2, v2, :cond_19

    .line 165
    const/16 v3, 0x41

    .line 166
    const/16 v4, 0x46

    .line 168
    :cond_19
    move v2, v3

    .local v2, "prop":I
    :goto_1a
    if-gt v2, v4, :cond_38

    .line 169
    iget-object v5, p0, Landroid/icu/impl/EmojiProps;->stringTries:[Ljava/lang/String;

    add-int/lit8 v6, v2, -0x41

    aget-object v5, v5, v6

    .line 170
    .local v5, "trieUChars":Ljava/lang/String;
    if-eqz v5, :cond_35

    .line 171
    new-instance v6, Landroid/icu/util/CharsTrie;

    invoke-direct {v6, v5, v1}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 172
    .local v6, "trie":Landroid/icu/util/CharsTrie;
    invoke-virtual {v6, p1, v1, v0}, Landroid/icu/util/CharsTrie;->next(Ljava/lang/CharSequence;II)Landroid/icu/util/BytesTrie$Result;

    move-result-object v7

    .line 173
    .local v7, "result":Landroid/icu/util/BytesTrie$Result;
    invoke-virtual {v7}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 174
    const/4 v1, 0x1

    return v1

    .line 168
    .end local v5    # "trieUChars":Ljava/lang/String;
    .end local v6    # "trie":Landroid/icu/util/CharsTrie;
    .end local v7    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 178
    .end local v2    # "prop":I
    :cond_38
    return v1

    .line 160
    .end local v3    # "firstProp":I
    .end local v4    # "lastProp":I
    :cond_39
    :goto_39
    return v1
.end method
