.class final Landroid/icu/text/DictionaryData;
.super Ljava/lang/Object;
.source "DictionaryData.java"


# static fields
.field private static final DATA_FORMAT_ID:I = 0x44696374

.field public static final IX_COUNT:I = 0x8

.field public static final IX_RESERVED1_OFFSET:I = 0x1

.field public static final IX_RESERVED2_OFFSET:I = 0x2

.field public static final IX_RESERVED6:I = 0x6

.field public static final IX_RESERVED7:I = 0x7

.field public static final IX_STRING_TRIE_OFFSET:I = 0x0

.field public static final IX_TOTAL_SIZE:I = 0x3

.field public static final IX_TRANSFORM:I = 0x5

.field public static final IX_TRIE_TYPE:I = 0x4

.field public static final TRANSFORM_NONE:I = 0x0

.field public static final TRANSFORM_OFFSET_MASK:I = 0x1fffff

.field public static final TRANSFORM_TYPE_MASK:I = 0x7f000000

.field public static final TRANSFORM_TYPE_OFFSET:I = 0x1000000

.field public static final TRIE_HAS_VALUES:I = 0x8

.field public static final TRIE_TYPE_BYTES:I = 0x0

.field public static final TRIE_TYPE_MASK:I = 0x7

.field public static final TRIE_TYPE_UCHARS:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;
    .locals 17
    .param p0, "dictType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    const-string/jumbo v15, "android/icu/impl/data/icudt55b/brkitr"

    #@3
    invoke-static {v15}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v11

    #@7
    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 46
    .local v11, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v15, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v16, "dictionaries/"

    #@11
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v15

    #@15
    move-object/from16 v0, p0

    #@17
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v15

    #@1b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v15

    #@1f
    invoke-virtual {v11, v15}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 47
    .local v4, "dictFileName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v16, "brkitr/"

    #@2b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v15

    #@2f
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v15

    #@33
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 48
    invoke-static {v4}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@3a
    move-result-object v1

    #@3b
    .line 49
    .local v1, "bytes":Ljava/nio/ByteBuffer;
    const v15, 0x44696374

    #@3e
    const/16 v16, 0x0

    #@40
    move-object/from16 v0, v16

    #@42
    invoke-static {v1, v15, v0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@45
    .line 50
    const/16 v15, 0x8

    #@47
    new-array v7, v15, [I

    #@49
    .line 52
    .local v7, "indexes":[I
    const/4 v6, 0x0

    #@4a
    .local v6, "i":I
    :goto_0
    const/16 v15, 0x8

    #@4c
    if-ge v6, v15, :cond_0

    #@4e
    .line 53
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    #@51
    move-result v15

    #@52
    aput v15, v7, v6

    #@54
    .line 52
    add-int/lit8 v6, v6, 0x1

    #@56
    goto :goto_0

    #@57
    .line 55
    :cond_0
    const/4 v15, 0x0

    #@58
    aget v10, v7, v15

    #@5a
    .line 56
    .local v10, "offset":I
    const/16 v15, 0x20

    #@5c
    if-lt v10, v15, :cond_2

    #@5e
    const/4 v15, 0x1

    #@5f
    :goto_1
    invoke-static {v15}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@62
    .line 57
    const/16 v15, 0x20

    #@64
    if-le v10, v15, :cond_1

    #@66
    .line 58
    add-int/lit8 v5, v10, -0x20

    #@68
    .line 59
    .local v5, "diff":I
    invoke-static {v1, v5}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@6b
    .line 61
    .end local v5    # "diff":I
    :cond_1
    const/4 v15, 0x4

    #@6c
    aget v15, v7, v15

    #@6e
    and-int/lit8 v14, v15, 0x7

    #@70
    .line 62
    .local v14, "trieType":I
    const/4 v15, 0x3

    #@71
    aget v15, v7, v15

    #@73
    sub-int v12, v15, v10

    #@75
    .line 63
    .local v12, "totalSize":I
    const/4 v8, 0x0

    #@76
    .line 64
    .local v8, "m":Landroid/icu/text/DictionaryMatcher;
    if-nez v14, :cond_5

    #@78
    .line 65
    const/4 v15, 0x5

    #@79
    aget v13, v7, v15

    #@7b
    .line 66
    .local v13, "transform":I
    new-array v2, v12, [B

    #@7d
    .line 68
    .local v2, "data":[B
    const/4 v6, 0x0

    #@7e
    :goto_2
    array-length v15, v2

    #@7f
    if-ge v6, v15, :cond_3

    #@81
    .line 69
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    #@84
    move-result v15

    #@85
    aput-byte v15, v2, v6

    #@87
    .line 68
    add-int/lit8 v6, v6, 0x1

    #@89
    goto :goto_2

    #@8a
    .line 56
    .end local v2    # "data":[B
    .end local v8    # "m":Landroid/icu/text/DictionaryMatcher;
    .end local v12    # "totalSize":I
    .end local v13    # "transform":I
    .end local v14    # "trieType":I
    :cond_2
    const/4 v15, 0x0

    #@8b
    goto :goto_1

    #@8c
    .line 71
    .restart local v2    # "data":[B
    .restart local v8    # "m":Landroid/icu/text/DictionaryMatcher;
    .restart local v12    # "totalSize":I
    .restart local v13    # "transform":I
    .restart local v14    # "trieType":I
    :cond_3
    if-ne v6, v12, :cond_4

    #@8e
    const/4 v15, 0x1

    #@8f
    :goto_3
    invoke-static {v15}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@92
    .line 72
    new-instance v8, Landroid/icu/text/BytesDictionaryMatcher;

    #@94
    .end local v8    # "m":Landroid/icu/text/DictionaryMatcher;
    invoke-direct {v8, v2, v13}, Landroid/icu/text/BytesDictionaryMatcher;-><init>([BI)V

    #@97
    .line 84
    .end local v2    # "data":[B
    .end local v13    # "transform":I
    :goto_4
    return-object v8

    #@98
    .line 71
    .restart local v2    # "data":[B
    .restart local v8    # "m":Landroid/icu/text/DictionaryMatcher;
    .restart local v13    # "transform":I
    :cond_4
    const/4 v15, 0x0

    #@99
    goto :goto_3

    #@9a
    .line 73
    .end local v2    # "data":[B
    .end local v13    # "transform":I
    :cond_5
    const/4 v15, 0x1

    #@9b
    if-ne v14, v15, :cond_8

    #@9d
    .line 74
    rem-int/lit8 v15, v12, 0x2

    #@9f
    if-nez v15, :cond_6

    #@a1
    const/4 v15, 0x1

    #@a2
    :goto_5
    invoke-static {v15}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@a5
    .line 75
    div-int/lit8 v9, v12, 0x2

    #@a7
    .line 76
    .local v9, "num":I
    div-int/lit8 v15, v12, 0x2

    #@a9
    new-array v3, v15, [C

    #@ab
    .line 77
    .local v3, "data":[C
    const/4 v6, 0x0

    #@ac
    :goto_6
    if-ge v6, v9, :cond_7

    #@ae
    .line 78
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    #@b1
    move-result v15

    #@b2
    aput-char v15, v3, v6

    #@b4
    .line 77
    add-int/lit8 v6, v6, 0x1

    #@b6
    goto :goto_6

    #@b7
    .line 74
    .end local v3    # "data":[C
    .end local v9    # "num":I
    :cond_6
    const/4 v15, 0x0

    #@b8
    goto :goto_5

    #@b9
    .line 80
    .restart local v3    # "data":[C
    .restart local v9    # "num":I
    :cond_7
    new-instance v8, Landroid/icu/text/CharsDictionaryMatcher;

    #@bb
    .end local v8    # "m":Landroid/icu/text/DictionaryMatcher;
    new-instance v15, Ljava/lang/String;

    #@bd
    invoke-direct {v15, v3}, Ljava/lang/String;-><init>([C)V

    #@c0
    invoke-direct {v8, v15}, Landroid/icu/text/CharsDictionaryMatcher;-><init>(Ljava/lang/CharSequence;)V

    #@c3
    .local v8, "m":Landroid/icu/text/DictionaryMatcher;
    goto :goto_4

    #@c4
    .line 82
    .end local v3    # "data":[C
    .end local v9    # "num":I
    .local v8, "m":Landroid/icu/text/DictionaryMatcher;
    :cond_8
    const/4 v8, 0x0

    #@c5
    goto :goto_4
.end method
