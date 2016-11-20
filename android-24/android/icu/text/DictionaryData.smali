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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;
    .locals 15
    .param p0, "dictType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    const-string/jumbo v13, "android/icu/impl/data/icudt56b/brkitr"

    #@3
    invoke-static {v13}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v9

    #@7
    check-cast v9, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 47
    .local v9, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v13, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v14, "dictionaries/"

    #@11
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v13

    #@15
    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v13

    #@19
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v13

    #@1d
    invoke-virtual {v9, v13}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 48
    .local v3, "dictFileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v14, "brkitr/"

    #@29
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v13

    #@2d
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v13

    #@31
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 49
    invoke-static {v3}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@38
    move-result-object v0

    #@39
    .line 50
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    const v13, 0x44696374

    #@3c
    const/4 v14, 0x0

    #@3d
    invoke-static {v0, v13, v14}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@40
    .line 51
    const/16 v13, 0x8

    #@42
    new-array v6, v13, [I

    #@44
    .line 53
    .local v6, "indexes":[I
    const/4 v5, 0x0

    #@45
    .local v5, "i":I
    :goto_0
    const/16 v13, 0x8

    #@47
    if-ge v5, v13, :cond_0

    #@49
    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    #@4c
    move-result v13

    #@4d
    aput v13, v6, v5

    #@4f
    .line 53
    add-int/lit8 v5, v5, 0x1

    #@51
    goto :goto_0

    #@52
    .line 56
    :cond_0
    const/4 v13, 0x0

    #@53
    aget v8, v6, v13

    #@55
    .line 57
    .local v8, "offset":I
    const/16 v13, 0x20

    #@57
    if-lt v8, v13, :cond_2

    #@59
    const/4 v13, 0x1

    #@5a
    :goto_1
    invoke-static {v13}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@5d
    .line 58
    const/16 v13, 0x20

    #@5f
    if-le v8, v13, :cond_1

    #@61
    .line 59
    add-int/lit8 v4, v8, -0x20

    #@63
    .line 60
    .local v4, "diff":I
    invoke-static {v0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@66
    .line 62
    .end local v4    # "diff":I
    :cond_1
    const/4 v13, 0x4

    #@67
    aget v13, v6, v13

    #@69
    and-int/lit8 v12, v13, 0x7

    #@6b
    .line 63
    .local v12, "trieType":I
    const/4 v13, 0x3

    #@6c
    aget v13, v6, v13

    #@6e
    sub-int v10, v13, v8

    #@70
    .line 64
    .local v10, "totalSize":I
    const/4 v7, 0x0

    #@71
    .line 65
    .local v7, "m":Landroid/icu/text/DictionaryMatcher;
    if-nez v12, :cond_3

    #@73
    .line 66
    const/4 v13, 0x5

    #@74
    aget v11, v6, v13

    #@76
    .line 67
    .local v11, "transform":I
    new-array v2, v10, [B

    #@78
    .line 68
    .local v2, "data":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@7b
    .line 69
    new-instance v7, Landroid/icu/text/BytesDictionaryMatcher;

    #@7d
    .end local v7    # "m":Landroid/icu/text/DictionaryMatcher;
    invoke-direct {v7, v2, v11}, Landroid/icu/text/BytesDictionaryMatcher;-><init>([BI)V

    #@80
    .line 77
    .end local v2    # "data":[B
    .end local v11    # "transform":I
    :goto_2
    return-object v7

    #@81
    .line 57
    .end local v10    # "totalSize":I
    .end local v12    # "trieType":I
    :cond_2
    const/4 v13, 0x0

    #@82
    goto :goto_1

    #@83
    .line 70
    .restart local v7    # "m":Landroid/icu/text/DictionaryMatcher;
    .restart local v10    # "totalSize":I
    .restart local v12    # "trieType":I
    :cond_3
    const/4 v13, 0x1

    #@84
    if-ne v12, v13, :cond_5

    #@86
    .line 71
    rem-int/lit8 v13, v10, 0x2

    #@88
    if-nez v13, :cond_4

    #@8a
    const/4 v13, 0x1

    #@8b
    :goto_3
    invoke-static {v13}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@8e
    .line 72
    div-int/lit8 v13, v10, 0x2

    #@90
    and-int/lit8 v14, v10, 0x1

    #@92
    invoke-static {v0, v13, v14}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    .line 73
    .local v1, "data":Ljava/lang/String;
    new-instance v7, Landroid/icu/text/CharsDictionaryMatcher;

    #@98
    .end local v7    # "m":Landroid/icu/text/DictionaryMatcher;
    invoke-direct {v7, v1}, Landroid/icu/text/CharsDictionaryMatcher;-><init>(Ljava/lang/CharSequence;)V

    #@9b
    .local v7, "m":Landroid/icu/text/DictionaryMatcher;
    goto :goto_2

    #@9c
    .line 71
    .end local v1    # "data":Ljava/lang/String;
    .local v7, "m":Landroid/icu/text/DictionaryMatcher;
    :cond_4
    const/4 v13, 0x0

    #@9d
    goto :goto_3

    #@9e
    .line 75
    :cond_5
    const/4 v7, 0x0

    #@9f
    goto :goto_2
.end method
