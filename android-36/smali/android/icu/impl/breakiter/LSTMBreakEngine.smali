.class public Landroid/icu/impl/breakiter/LSTMBreakEngine;
.super Landroid/icu/impl/breakiter/DictionaryBreakEngine;
.source "LSTMBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;,
        Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;,
        Landroid/icu/impl/breakiter/LSTMBreakEngine$CodePointsVectorizer;,
        Landroid/icu/impl/breakiter/LSTMBreakEngine$GraphemeClusterVectorizer;,
        Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;,
        Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist MIN_WORD:B = 0x2t

.field private static final blacklist MIN_WORD_SPAN:B = 0x4t


# instance fields
.field private final blacklist fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

.field private blacklist fScript:I

.field private final blacklist fVectorizer:Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmake1DArray([III)[F
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->make1DArray([III)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmake2DArray([IIII)[[F
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->make2DArray([IIII)[[F

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/icu/text/UnicodeSet;Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;)V
    .registers 5
    .param p1, "script"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;
    .param p3, "data"    # Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    .line 236
    invoke-direct {p0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine;-><init>()V

    .line 237
    invoke-virtual {p0, p2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    .line 238
    iput p1, p0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fScript:I

    .line 239
    iput-object p3, p0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    .line 240
    iget-object v0, p0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    invoke-direct {p0, v0}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->makeVectorizer(Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;)Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fVectorizer:Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;

    .line 241
    return-void
.end method

.method private static blacklist addDotProductTo([F[[F[F)V
    .registers 8
    .param p0, "a"    # [F
    .param p1, "b"    # [[F
    .param p2, "result"    # [F

    .line 254
    nop

    .line 255
    nop

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_1c

    .line 257
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 258
    aget v2, p2, v0

    aget v3, p0, v1

    aget-object v4, p1, v1

    aget v4, v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p2, v0

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 256
    .end local v1    # "j":I
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 261
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method private static blacklist addHadamardProductTo([F[F[F)V
    .registers 7
    .param p0, "a"    # [F
    .param p1, "b"    # [F
    .param p2, "result"    # [F

    .line 278
    nop

    .line 279
    nop

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_13

    .line 281
    aget v1, p2, v0

    aget v2, p0, v0

    aget v3, p1, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 283
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private static blacklist addTo([F[F)V
    .registers 5
    .param p0, "a"    # [F
    .param p1, "result"    # [F

    .line 264
    nop

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 266
    aget v1, p1, v0

    aget v2, p0, v0

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 268
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method private blacklist compute([[F[[F[F[F[F[F)[F
    .registers 13
    .param p1, "W"    # [[F
    .param p2, "U"    # [[F
    .param p3, "B"    # [F
    .param p4, "x"    # [F
    .param p5, "h"    # [F
    .param p6, "c"    # [F

    .line 328
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 329
    .local v0, "ifco":[F
    invoke-static {p4, p1, v0}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->addDotProductTo([F[[F[F)V

    .line 330
    array-length v1, p3

    new-array v1, v1, [F

    .line 331
    .local v1, "hU":[F
    invoke-static {p5, p2, v0}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->addDotProductTo([F[[F[F)V

    .line 333
    array-length v2, p3

    div-int/lit8 v2, v2, 0x4

    .line 334
    .local v2, "hunits":I
    mul-int/lit8 v3, v2, 0x0

    invoke-static {v0, v3, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->sigmoid([FII)V

    .line 335
    mul-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->sigmoid([FII)V

    .line 336
    mul-int/lit8 v3, v2, 0x2

    invoke-static {v0, v3, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->tanh([FII)V

    .line 337
    mul-int/lit8 v3, v2, 0x3

    invoke-static {v0, v3, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->sigmoid([FII)V

    .line 339
    mul-int/lit8 v3, v2, 0x2

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v3

    invoke-static {v3, p6}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->hadamardProductTo([F[F)V

    .line 340
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x3

    .line 341
    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v4

    .line 340
    invoke-static {v3, v4, p6}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->addHadamardProductTo([F[F[F)V

    .line 343
    array-length v3, p6

    invoke-static {p6, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p5

    .line 344
    array-length v3, p5

    const/4 v4, 0x0

    invoke-static {p5, v4, v3}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->tanh([FII)V

    .line 345
    mul-int/lit8 v3, v2, 0x3

    mul-int/lit8 v4, v2, 0x4

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v3

    invoke-static {v3, p5}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->hadamardProductTo([F[F)V

    .line 350
    return-object p5
.end method

.method public static blacklist create(ILandroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;)Landroid/icu/impl/breakiter/LSTMBreakEngine;
    .registers 5
    .param p0, "script"    # I
    .param p1, "data"    # Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":]&[:LineBreak=SA:]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "setExpr":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 450
    .local v1, "set":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    .line 451
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 452
    new-instance v2, Landroid/icu/impl/breakiter/LSTMBreakEngine;

    invoke-direct {v2, p0, v1, p1}, Landroid/icu/impl/breakiter/LSTMBreakEngine;-><init>(ILandroid/icu/text/UnicodeSet;Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;)V

    return-object v2
.end method

.method public static blacklist createData(I)Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;
    .registers 4
    .param p0, "script"    # I

    .line 435
    const/16 v0, 0x17

    if-eq p0, v0, :cond_12

    const/16 v0, 0x18

    if-eq p0, v0, :cond_12

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_12

    const/16 v0, 0x26

    if-eq p0, v0, :cond_12

    .line 436
    const/4 v0, 0x0

    return-object v0

    .line 438
    :cond_12
    invoke-static {p0}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->defaultLSTM(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "name":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 441
    const-string v1, "android/icu/impl/data/icudata/brkitr"

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v0, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 444
    .local v1, "rb":Landroid/icu/util/UResourceBundle;
    invoke-static {v1}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->createData(Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist createData(Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;
    .registers 2
    .param p0, "bundle"    # Landroid/icu/util/UResourceBundle;

    .line 426
    new-instance v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    invoke-direct {v0, p0}, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;-><init>(Landroid/icu/util/UResourceBundle;)V

    return-object v0
.end method

.method private static blacklist defaultLSTM(I)Ljava/lang/String;
    .registers 4
    .param p0, "script"    # I

    .line 430
    const-string v0, "android/icu/impl/data/icudata/brkitr"

    invoke-static {v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 431
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lstm/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist hadamardProductTo([F[F)V
    .registers 5
    .param p0, "a"    # [F
    .param p1, "result"    # [F

    .line 271
    nop

    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 273
    aget v1, p1, v0

    aget v2, p0, v0

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 275
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method private static blacklist make1DArray([III)[F
    .registers 9
    .param p0, "data"    # [I
    .param p1, "start"    # I
    .param p2, "d1"    # I

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 70
    .local v0, "bytes":[B
    new-array v1, p2, [F

    .line 71
    .local v1, "result":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, p2, :cond_36

    .line 72
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "start":I
    .local v3, "start":I
    aget p1, p0, p1

    .line 73
    .local p1, "d":I
    shr-int/lit8 v4, p1, 0x18

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v0, v5

    .line 74
    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v0, v5

    .line 75
    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v0, v5

    .line 76
    const/4 v4, 0x3

    int-to-byte v5, p1

    aput-byte v5, v0, v4

    .line 77
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v2

    .line 71
    .end local p1    # "d":I
    add-int/lit8 v2, v2, 0x1

    move p1, v3

    goto :goto_6

    .line 79
    .end local v2    # "i":I
    .end local v3    # "start":I
    .local p1, "start":I
    :cond_36
    return-object v1
.end method

.method private static blacklist make2DArray([IIII)[[F
    .registers 15
    .param p0, "data"    # [I
    .param p1, "start"    # I
    .param p2, "d1"    # I
    .param p3, "d2"    # I

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 54
    .local v0, "bytes":[B
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput p3, v2, v3

    const/4 v4, 0x0

    aput p2, v2, v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 55
    .local v2, "result":[[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, p2, :cond_4a

    .line 56
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_18
    if-ge v6, p3, :cond_47

    .line 57
    add-int/lit8 v7, p1, 0x1

    .end local p1    # "start":I
    .local v7, "start":I
    aget p1, p0, p1

    .line 58
    .local p1, "d":I
    shr-int/lit8 v8, p1, 0x18

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 59
    shr-int/lit8 v8, p1, 0x10

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 60
    shr-int/lit8 v8, p1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 61
    const/4 v8, 0x3

    int-to-byte v9, p1

    aput-byte v9, v0, v8

    .line 62
    aget-object v8, v2, v5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v9

    aput v9, v8, v6

    .line 56
    .end local p1    # "d":I
    add-int/lit8 v6, v6, 0x1

    move p1, v7

    goto :goto_18

    .line 55
    .end local v6    # "j":I
    .end local v7    # "start":I
    .local p1, "start":I
    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 65
    .end local v5    # "i":I
    :cond_4a
    return-object v2
.end method

.method private blacklist makeVectorizer(Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;)Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;
    .registers 4
    .param p1, "data"    # Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    .line 226
    iget-object v0, p1, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fType:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    invoke-virtual {v0}, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 230
    :pswitch_b
    new-instance v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$GraphemeClusterVectorizer;

    iget-object v1, p1, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fDict:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/breakiter/LSTMBreakEngine$GraphemeClusterVectorizer;-><init>(Landroid/icu/impl/breakiter/LSTMBreakEngine;Ljava/util/Map;)V

    return-object v0

    .line 228
    :pswitch_13
    new-instance v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$CodePointsVectorizer;

    iget-object v1, p1, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fDict:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/breakiter/LSTMBreakEngine$CodePointsVectorizer;-><init>(Landroid/icu/impl/breakiter/LSTMBreakEngine;Ljava/util/Map;)V

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method

.method private static blacklist maxIndex([F)I
    .registers 5
    .param p0, "data"    # [F

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "index":I
    const/4 v1, 0x0

    aget v1, p0, v1

    .line 304
    .local v1, "max":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_14

    .line 305
    aget v3, p0, v2

    cmpl-float v3, v3, v1

    if-lez v3, :cond_11

    .line 306
    aget v1, p0, v2

    .line 307
    move v0, v2

    .line 304
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 310
    .end local v2    # "i":I
    :cond_14
    return v0
.end method

.method private static blacklist sigmoid([FII)V
    .registers 8
    .param p0, "result"    # [F
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 286
    nop

    .line 287
    nop

    .line 288
    move v0, p1

    .local v0, "i":I
    :goto_3
    add-int v1, p1, p2

    if-ge v0, v1, :cond_19

    .line 289
    aget v1, p0, v0

    neg-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    div-double/2addr v3, v1

    double-to-float v1, v3

    aput v1, p0, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 291
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method private static blacklist tanh([FII)V
    .registers 6
    .param p0, "result"    # [F
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 294
    nop

    .line 295
    nop

    .line 296
    move v0, p1

    .local v0, "i":I
    :goto_3
    add-int v1, p1, p2

    if-ge v0, v1, :cond_14

    .line 297
    aget v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p0, v0

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 299
    .end local v0    # "i":I
    :cond_14
    return-void
.end method


# virtual methods
.method public blacklist divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;Z)I
    .registers 23
    .param p1, "fIter"    # Ljava/text/CharacterIterator;
    .param p2, "rangeStart"    # I
    .param p3, "rangeEnd"    # I
    .param p4, "foundBreaks"    # Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;
    .param p5, "isPhraseBreaking"    # Z

    .line 356
    move-object/from16 v0, p0

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->size()I

    move-result v7

    .line 358
    .local v7, "beginSize":I
    sub-int v1, p3, p2

    const/4 v2, 0x4

    const/4 v8, 0x0

    if-ge v1, v2, :cond_d

    .line 359
    return v8

    .line 361
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    sub-int v2, p3, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v1

    .line 362
    .local v13, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    sub-int v1, p3, p2

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    .local v14, "indicies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v9, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fVectorizer:Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;->vectorize(Ljava/text/CharacterIterator;IILjava/util/List;Ljava/util/List;)V

    .line 370
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    .line 371
    .local v9, "inputSeqLength":I
    iget-object v1, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v1, v1, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fForwardU:[[F

    array-length v10, v1

    .line 372
    .local v10, "hunits":I
    new-array v6, v10, [F

    .line 377
    .local v6, "c":[F
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v10, v1, v2

    aput v9, v1, v8

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [[F

    .line 378
    .local v11, "hBackward":[[F
    add-int/lit8 v1, v9, -0x1

    move v12, v1

    .local v12, "i":I
    :goto_46
    if-ltz v12, :cond_7d

    .line 379
    add-int/lit8 v1, v9, -0x1

    if-eq v12, v1, :cond_56

    .line 380
    add-int/lit8 v1, v12, 0x1

    aget-object v1, v11, v1

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    aput-object v1, v11, v12

    .line 383
    :cond_56
    iget-object v1, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v1, v1, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fBackwardW:[[F

    iget-object v2, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v2, v2, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fBackwardU:[[F

    iget-object v3, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v3, v3, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fBackwardB:[F

    iget-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v4, v4, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fEmbedding:[[F

    .line 384
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    aget-object v5, v11, v12

    .line 383
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->compute([[F[[F[F[F[F[F)[F

    move-result-object v1

    aput-object v1, v11, v12

    .line 378
    add-int/lit8 v12, v12, -0x1

    goto :goto_46

    .line 388
    .end local v12    # "i":I
    :cond_7d
    new-array v6, v10, [F

    .line 389
    new-array v1, v10, [F

    .line 390
    .local v1, "forwardH":[F
    mul-int/lit8 v2, v10, 0x2

    new-array v12, v2, [F

    .line 394
    .local v12, "both":[F
    const/4 v2, 0x0

    move-object v5, v1

    move v15, v2

    .end local v1    # "forwardH":[F
    .local v5, "forwardH":[F
    .local v15, "i":I
    :goto_88
    if-ge v15, v9, :cond_f5

    .line 396
    iget-object v1, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v1, v1, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fForwardW:[[F

    iget-object v2, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v2, v2, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fForwardU:[[F

    iget-object v3, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v3, v3, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fForwardB:[F

    iget-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v4, v4, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fEmbedding:[[F

    .line 397
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-object v4, v4, v16

    .line 396
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->compute([[F[[F[F[F[F[F)[F

    move-result-object v5

    .line 400
    invoke-static {v5, v8, v12, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    aget-object v1, v11, v15

    invoke-static {v1, v8, v12, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iget-object v1, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v1, v1, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fOutputB:[F

    iget-object v2, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v2, v2, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fOutputB:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 409
    .local v1, "logp":[F
    iget-object v2, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fData:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    iget-object v2, v2, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fOutputW:[[F

    invoke-static {v12, v2, v1}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->addDotProductTo([F[[F[F)V

    .line 411
    invoke-static {v1}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->maxIndex([F)I

    move-result v2

    .line 414
    .local v2, "current":I
    sget-object v3, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->BEGIN:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    invoke-virtual {v3}, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_de

    sget-object v3, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->SINGLE:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    .line 415
    invoke-virtual {v3}, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_db

    goto :goto_de

    :cond_db
    move-object/from16 v4, p4

    goto :goto_f2

    .line 416
    :cond_de
    :goto_de
    if-eqz v15, :cond_f0

    .line 417
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v4, p4

    invoke-virtual {v4, v3}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    goto :goto_f2

    .line 416
    :cond_f0
    move-object/from16 v4, p4

    .line 394
    .end local v1    # "logp":[F
    .end local v2    # "current":I
    :goto_f2
    add-int/lit8 v15, v15, 0x1

    goto :goto_88

    :cond_f5
    move-object/from16 v4, p4

    .line 422
    .end local v15    # "i":I
    invoke-virtual {v4}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->size()I

    move-result v1

    sub-int/2addr v1, v7

    return v1
.end method

.method public blacklist handles(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 250
    iget v0, p0, Landroid/icu/impl/breakiter/LSTMBreakEngine;->fScript:I

    const/16 v1, 0x100a

    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
