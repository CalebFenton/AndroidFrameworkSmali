.class final Landroid/icu/impl/breakiter/DictionaryData;
.super Ljava/lang/Object;
.source "DictionaryData.java"


# static fields
.field private static final blacklist DATA_FORMAT_ID:I = 0x44696374

.field public static final blacklist IX_COUNT:I = 0x8

.field public static final blacklist IX_RESERVED1_OFFSET:I = 0x1

.field public static final blacklist IX_RESERVED2_OFFSET:I = 0x2

.field public static final blacklist IX_RESERVED6:I = 0x6

.field public static final blacklist IX_RESERVED7:I = 0x7

.field public static final blacklist IX_STRING_TRIE_OFFSET:I = 0x0

.field public static final blacklist IX_TOTAL_SIZE:I = 0x3

.field public static final blacklist IX_TRANSFORM:I = 0x5

.field public static final blacklist IX_TRIE_TYPE:I = 0x4

.field public static final blacklist TRANSFORM_NONE:I = 0x0

.field public static final blacklist TRANSFORM_OFFSET_MASK:I = 0x1fffff

.field public static final blacklist TRANSFORM_TYPE_MASK:I = 0x7f000000

.field public static final blacklist TRANSFORM_TYPE_OFFSET:I = 0x1000000

.field public static final blacklist TRIE_HAS_VALUES:I = 0x8

.field public static final blacklist TRIE_TYPE_BYTES:I = 0x0

.field public static final blacklist TRIE_TYPE_MASK:I = 0x7

.field public static final blacklist TRIE_TYPE_UCHARS:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist loadDictionaryFor(Ljava/lang/String;)Landroid/icu/impl/breakiter/DictionaryMatcher;
    .registers 12
    .param p0, "dictType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const-string v0, "android/icu/impl/data/icudata/brkitr"

    invoke-static {v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 49
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dictionaries/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "dictFileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brkitr/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 52
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    const v3, 0x44696374

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    .line 53
    const/16 v3, 0x8

    new-array v4, v3, [I

    .line 55
    .local v4, "indexes":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_42
    if-ge v5, v3, :cond_4d

    .line 56
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v4, v5

    .line 55
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 58
    .end local v5    # "i":I
    :cond_4d
    const/4 v3, 0x0

    aget v5, v4, v3

    .line 59
    .local v5, "offset":I
    const/16 v6, 0x20

    const/4 v7, 0x1

    if-lt v5, v6, :cond_57

    move v8, v7

    goto :goto_58

    :cond_57
    move v8, v3

    :goto_58
    invoke-static {v8}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 60
    if-le v5, v6, :cond_62

    .line 61
    add-int/lit8 v6, v5, -0x20

    .line 62
    .local v6, "diff":I
    invoke-static {v2, v6}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 64
    .end local v6    # "diff":I
    :cond_62
    const/4 v6, 0x4

    aget v6, v4, v6

    and-int/lit8 v6, v6, 0x7

    .line 65
    .local v6, "trieType":I
    const/4 v8, 0x3

    aget v8, v4, v8

    sub-int/2addr v8, v5

    .line 66
    .local v8, "totalSize":I
    const/4 v9, 0x0

    .line 67
    .local v9, "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    if-nez v6, :cond_7c

    .line 68
    const/4 v3, 0x5

    aget v3, v4, v3

    .line 69
    .local v3, "transform":I
    new-array v7, v8, [B

    .line 70
    .local v7, "data":[B
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 71
    new-instance v10, Landroid/icu/impl/breakiter/BytesDictionaryMatcher;

    invoke-direct {v10, v7, v3}, Landroid/icu/impl/breakiter/BytesDictionaryMatcher;-><init>([BI)V

    .line 72
    .end local v3    # "transform":I
    .end local v7    # "data":[B
    .end local v9    # "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    .local v10, "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    goto :goto_96

    .end local v10    # "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    .restart local v9    # "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    :cond_7c
    if-ne v6, v7, :cond_95

    .line 73
    rem-int/lit8 v10, v8, 0x2

    if-nez v10, :cond_83

    move v3, v7

    :cond_83
    invoke-static {v3}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 74
    div-int/lit8 v3, v8, 0x2

    and-int/lit8 v7, v8, 0x1

    invoke-static {v2, v3, v7}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "data":Ljava/lang/String;
    new-instance v7, Landroid/icu/impl/breakiter/CharsDictionaryMatcher;

    invoke-direct {v7, v3}, Landroid/icu/impl/breakiter/CharsDictionaryMatcher;-><init>(Ljava/lang/CharSequence;)V

    move-object v10, v7

    .line 76
    .end local v3    # "data":Ljava/lang/String;
    .end local v9    # "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    .restart local v10    # "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    goto :goto_96

    .line 77
    .end local v10    # "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    .restart local v9    # "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    :cond_95
    const/4 v10, 0x0

    .line 79
    .end local v9    # "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    .restart local v10    # "m":Landroid/icu/impl/breakiter/DictionaryMatcher;
    :goto_96
    return-object v10
.end method
