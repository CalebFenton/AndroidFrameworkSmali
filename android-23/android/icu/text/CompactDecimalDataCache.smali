.class Landroid/icu/text/CompactDecimalDataCache;
.super Ljava/lang/Object;
.source "CompactDecimalDataCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CompactDecimalDataCache$Data;,
        Landroid/icu/text/CompactDecimalDataCache$DataBundle;,
        Landroid/icu/text/CompactDecimalDataCache$QuoteState;,
        Landroid/icu/text/CompactDecimalDataCache$UResFlags;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_text_CompactDecimalDataCache$QuoteStateSwitchesValues:[I = null

.field private static synthetic -android_icu_text_CompactDecimalDataCache$UResFlagsSwitchesValues:[I = null

.field private static final LATIN_NUMBERING_SYSTEM:Ljava/lang/String; = "latn"

.field private static final LONG_STYLE:Ljava/lang/String; = "long"

.field static final MAX_DIGITS:I = 0xf

.field private static final NUMBER_ELEMENTS:Ljava/lang/String; = "NumberElements"

.field static final OTHER:Ljava/lang/String; = "other"

.field private static final PATTERNS_SHORT_PATH:Ljava/lang/String; = "patternsShort/decimalFormat"

.field private static final PATTERN_LONG_PATH:Ljava/lang/String; = "patternsLong/decimalFormat"

.field private static final SHORT_STYLE:Ljava/lang/String; = "short"


# instance fields
.field private final cache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/CompactDecimalDataCache$DataBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getandroid_icu_text_CompactDecimalDataCache$QuoteStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android_icu_text_CompactDecimalDataCache$QuoteStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android_icu_text_CompactDecimalDataCache$QuoteStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->values()[Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_EMPTY:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_FULL:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android_icu_text_CompactDecimalDataCache$QuoteStateSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method private static synthetic -getandroid_icu_text_CompactDecimalDataCache$UResFlagsSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android_icu_text_CompactDecimalDataCache$UResFlagsSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android_icu_text_CompactDecimalDataCache$UResFlagsSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->values()[Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android_icu_text_CompactDecimalDataCache$UResFlagsSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@5
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@8
    .line 42
    iput-object v0, p0, Landroid/icu/text/CompactDecimalDataCache;->cache:Landroid/icu/impl/ICUCache;

    #@a
    .line 24
    return-void
.end method

.method private static copyFromPreviousIndex(ILjava/util/Map;)V
    .locals 3
    .param p0, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 453
    .local p1, "units":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "byBase$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Landroid/icu/text/DecimalFormat$Unit;

    #@14
    .line 454
    .local v0, "byBase":[Landroid/icu/text/DecimalFormat$Unit;
    if-nez p0, :cond_0

    #@16
    .line 455
    sget-object v2, Landroid/icu/text/DecimalFormat;->NULL_UNIT:Landroid/icu/text/DecimalFormat$Unit;

    #@18
    aput-object v2, v0, p0

    #@1a
    goto :goto_0

    #@1b
    .line 457
    :cond_0
    add-int/lit8 v2, p0, -0x1

    #@1d
    aget-object v2, v0, v2

    #@1f
    aput-object v2, v0, p0

    #@21
    goto :goto_0

    #@22
    .line 452
    .end local v0    # "byBase":[Landroid/icu/text/DecimalFormat$Unit;
    :cond_1
    return-void
.end method

.method private static fillInMissing(Landroid/icu/text/CompactDecimalDataCache$Data;)V
    .locals 5
    .param p0, "result"    # Landroid/icu/text/CompactDecimalDataCache$Data;

    #@0
    .prologue
    .line 430
    const-wide/16 v2, 0x1

    #@2
    .line 431
    .local v2, "lastDivisor":J
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    #@5
    array-length v1, v1

    #@6
    if-ge v0, v1, :cond_1

    #@8
    .line 432
    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    #@a
    const-string/jumbo v4, "other"

    #@d
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, [Landroid/icu/text/DecimalFormat$Unit;

    #@13
    aget-object v1, v1, v0

    #@15
    if-nez v1, :cond_0

    #@17
    .line 433
    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    #@19
    aput-wide v2, v1, v0

    #@1b
    .line 434
    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    #@1d
    invoke-static {v0, v1}, Landroid/icu/text/CompactDecimalDataCache;->copyFromPreviousIndex(ILjava/util/Map;)V

    #@20
    .line 431
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 436
    :cond_0
    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    #@25
    aget-wide v2, v1, v0

    #@27
    .line 437
    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    #@29
    invoke-static {v0, v1}, Landroid/icu/text/CompactDecimalDataCache;->propagateOtherToMissing(ILjava/util/Map;)V

    #@2c
    goto :goto_1

    #@2d
    .line 428
    :cond_1
    return-void
.end method

.method private static findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;
    .locals 4
    .param p0, "r"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 180
    if-nez p0, :cond_0

    #@3
    .line 181
    return-object v1

    #@4
    .line 183
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@7
    move-result-object v0

    #@8
    .line 184
    .local v0, "result":Landroid/icu/impl/ICUResourceBundle;
    if-nez v0, :cond_1

    #@a
    .line 185
    return-object v1

    #@b
    .line 187
    :cond_1
    invoke-static {}, Landroid/icu/text/CompactDecimalDataCache;->-getandroid_icu_text_CompactDecimalDataCache$UResFlagsSwitchesValues()[I

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p2}, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ordinal()I

    #@12
    move-result v3

    #@13
    aget v2, v2, v3

    #@15
    packed-switch v2, :pswitch_data_0

    #@18
    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1a
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1d
    throw v1

    #@1e
    .line 189
    :pswitch_0
    invoke-static {v0}, Landroid/icu/text/CompactDecimalDataCache;->isRoot(Landroid/icu/impl/ICUResourceBundle;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    move-object v0, v1

    #@25
    .end local v0    # "result":Landroid/icu/impl/ICUResourceBundle;
    :cond_2
    return-object v0

    #@26
    .line 191
    .restart local v0    # "result":Landroid/icu/impl/ICUResourceBundle;
    :pswitch_1
    return-object v0

    #@27
    .line 187
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fixQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "prefixOrSuffix"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x27

    #@2
    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 372
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    .line 373
    .local v2, "len":I
    sget-object v4, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    #@d
    .line 374
    .local v4, "state":Landroid/icu/text/CompactDecimalDataCache$QuoteState;
    const/4 v1, 0x0

    #@e
    .local v1, "idx":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@10
    .line 375
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 376
    .local v0, "ch":C
    if-ne v0, v7, :cond_1

    #@16
    .line 377
    sget-object v5, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_EMPTY:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    #@18
    if-ne v4, v5, :cond_0

    #@1a
    .line 378
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 385
    :cond_0
    :goto_1
    invoke-static {}, Landroid/icu/text/CompactDecimalDataCache;->-getandroid_icu_text_CompactDecimalDataCache$QuoteStateSwitchesValues()[I

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v4}, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->ordinal()I

    #@24
    move-result v6

    #@25
    aget v5, v5, v6

    #@27
    packed-switch v5, :pswitch_data_0

    #@2a
    .line 394
    new-instance v5, Ljava/lang/IllegalStateException;

    #@2c
    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    #@2f
    throw v5

    #@30
    .line 381
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    goto :goto_1

    #@34
    .line 387
    :pswitch_0
    if-ne v0, v7, :cond_2

    #@36
    sget-object v4, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_EMPTY:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    #@38
    .line 374
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 387
    :cond_2
    sget-object v4, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    #@3d
    goto :goto_2

    #@3e
    .line 391
    :pswitch_1
    if-ne v0, v7, :cond_3

    #@40
    sget-object v4, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    #@42
    goto :goto_2

    #@43
    :cond_3
    sget-object v4, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_FULL:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    #@45
    goto :goto_2

    #@46
    .line 397
    .end local v0    # "ch":C
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    return-object v5

    #@4b
    .line 385
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getUnit(Ljava/util/Map;Ljava/lang/String;I)Landroid/icu/text/DecimalFormat$Unit;
    .locals 2
    .param p1, "variant"    # Ljava/lang/String;
    .param p2, "base"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/icu/text/DecimalFormat$Unit;"
        }
    .end annotation

    #@0
    .prologue
    .line 484
    .local p0, "units":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Landroid/icu/text/DecimalFormat$Unit;

    #@6
    .line 485
    .local v0, "byBase":[Landroid/icu/text/DecimalFormat$Unit;
    if-nez v0, :cond_0

    #@8
    .line 486
    const-string/jumbo v1, "other"

    #@b
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .end local v0    # "byBase":[Landroid/icu/text/DecimalFormat$Unit;
    check-cast v0, [Landroid/icu/text/DecimalFormat$Unit;

    #@11
    .line 488
    .restart local v0    # "byBase":[Landroid/icu/text/DecimalFormat$Unit;
    :cond_0
    aget-object v1, v0, p2

    #@13
    return-object v1
.end method

.method private static getWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;
    .locals 4
    .param p0, "r"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@0
    .prologue
    .line 203
    invoke-static {p0, p1, p2}, Landroid/icu/text/CompactDecimalDataCache;->findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    #@3
    move-result-object v0

    #@4
    .line 204
    .local v0, "result":Landroid/icu/impl/ICUResourceBundle;
    if-nez v0, :cond_0

    #@6
    .line 205
    new-instance v1, Ljava/util/MissingResourceException;

    #@8
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Cannot find "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 207
    const-class v3, Landroid/icu/impl/ICUResourceBundle;

    #@1e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 205
    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 210
    :cond_0
    return-object v0
.end method

.method private static isRoot(Landroid/icu/impl/ICUResourceBundle;)Z
    .locals 3
    .param p0, "r"    # Landroid/icu/impl/ICUResourceBundle;

    #@0
    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    .line 222
    .local v0, "bundleLocale":Landroid/icu/util/ULocale;
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@6
    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "root"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    :goto_0
    return v1

    #@18
    :cond_0
    const/4 v1, 0x1

    #@19
    goto :goto_0
.end method

.method private static load(Landroid/icu/util/ULocale;)Landroid/icu/text/CompactDecimalDataCache$DataBundle;
    .locals 10
    .param p0, "ulocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 135
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@3
    move-result-object v3

    #@4
    .line 137
    .local v3, "ns":Landroid/icu/text/NumberingSystem;
    const-string/jumbo v8, "android/icu/impl/data/icudt55b"

    #@7
    .line 136
    invoke-static {v8, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@a
    move-result-object v5

    #@b
    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    #@d
    .line 138
    .local v5, "r":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v8, "NumberElements"

    #@10
    invoke-virtual {v5, v8}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@13
    move-result-object v5

    #@14
    .line 139
    invoke-virtual {v3}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 141
    .local v4, "numberingSystemName":Ljava/lang/String;
    const/4 v7, 0x0

    #@19
    .line 142
    .local v7, "shortDataBundle":Landroid/icu/impl/ICUResourceBundle;
    const/4 v2, 0x0

    #@1a
    .line 143
    .local v2, "longDataBundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v8, "latn"

    #@1d
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v8

    #@21
    if-nez v8, :cond_0

    #@23
    .line 144
    sget-object v8, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@25
    invoke-static {v5, v4, v8}, Landroid/icu/text/CompactDecimalDataCache;->findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    #@28
    move-result-object v0

    #@29
    .line 145
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v8, "patternsShort/decimalFormat"

    #@2c
    sget-object v9, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@2e
    invoke-static {v0, v8, v9}, Landroid/icu/text/CompactDecimalDataCache;->findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    #@31
    move-result-object v7

    #@32
    .line 146
    .local v7, "shortDataBundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v8, "patternsLong/decimalFormat"

    #@35
    sget-object v9, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@37
    invoke-static {v0, v8, v9}, Landroid/icu/text/CompactDecimalDataCache;->findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    #@3a
    move-result-object v2

    #@3b
    .line 150
    .end local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "longDataBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v7    # "shortDataBundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_0
    if-nez v7, :cond_1

    #@3d
    .line 151
    const-string/jumbo v8, "latn"

    #@40
    sget-object v9, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@42
    invoke-static {v5, v8, v9}, Landroid/icu/text/CompactDecimalDataCache;->getWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    #@45
    move-result-object v0

    #@46
    .line 152
    .restart local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v8, "patternsShort/decimalFormat"

    #@49
    sget-object v9, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@4b
    invoke-static {v0, v8, v9}, Landroid/icu/text/CompactDecimalDataCache;->getWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    #@4e
    move-result-object v7

    #@4f
    .line 153
    .restart local v7    # "shortDataBundle":Landroid/icu/impl/ICUResourceBundle;
    if-nez v2, :cond_1

    #@51
    .line 154
    const-string/jumbo v8, "patternsLong/decimalFormat"

    #@54
    sget-object v9, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@56
    invoke-static {v0, v8, v9}, Landroid/icu/text/CompactDecimalDataCache;->findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    #@59
    move-result-object v2

    #@5a
    .line 155
    .local v2, "longDataBundle":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v2, :cond_1

    #@5c
    invoke-static {v2}, Landroid/icu/text/CompactDecimalDataCache;->isRoot(Landroid/icu/impl/ICUResourceBundle;)Z

    #@5f
    move-result v8

    #@60
    if-eqz v8, :cond_1

    #@62
    invoke-static {v7}, Landroid/icu/text/CompactDecimalDataCache;->isRoot(Landroid/icu/impl/ICUResourceBundle;)Z

    #@65
    move-result v8

    #@66
    if-eqz v8, :cond_2

    #@68
    .line 160
    .end local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "longDataBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v7    # "shortDataBundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_1
    :goto_0
    const-string/jumbo v8, "short"

    #@6b
    invoke-static {v7, p0, v8}, Landroid/icu/text/CompactDecimalDataCache;->loadStyle(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/CompactDecimalDataCache$Data;

    #@6e
    move-result-object v6

    #@6f
    .line 162
    .local v6, "shortData":Landroid/icu/text/CompactDecimalDataCache$Data;
    if-nez v2, :cond_3

    #@71
    .line 163
    move-object v1, v6

    #@72
    .line 167
    .local v1, "longData":Landroid/icu/text/CompactDecimalDataCache$Data;
    :goto_1
    new-instance v8, Landroid/icu/text/CompactDecimalDataCache$DataBundle;

    #@74
    invoke-direct {v8, v6, v1}, Landroid/icu/text/CompactDecimalDataCache$DataBundle;-><init>(Landroid/icu/text/CompactDecimalDataCache$Data;Landroid/icu/text/CompactDecimalDataCache$Data;)V

    #@77
    return-object v8

    #@78
    .line 156
    .end local v1    # "longData":Landroid/icu/text/CompactDecimalDataCache$Data;
    .end local v6    # "shortData":Landroid/icu/text/CompactDecimalDataCache$Data;
    .restart local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v2    # "longDataBundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v7    # "shortDataBundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_2
    const/4 v2, 0x0

    #@79
    .local v2, "longDataBundle":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_0

    #@7a
    .line 165
    .end local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "longDataBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v7    # "shortDataBundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v6    # "shortData":Landroid/icu/text/CompactDecimalDataCache$Data;
    :cond_3
    const-string/jumbo v8, "long"

    #@7d
    invoke-static {v2, p0, v8}, Landroid/icu/text/CompactDecimalDataCache;->loadStyle(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/CompactDecimalDataCache$Data;

    #@80
    move-result-object v1

    #@81
    .restart local v1    # "longData":Landroid/icu/text/CompactDecimalDataCache$Data;
    goto :goto_1
.end method

.method private static loadStyle(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/CompactDecimalDataCache$Data;
    .locals 5
    .param p0, "r"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # Ljava/lang/String;

    #@0
    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@3
    move-result v2

    #@4
    .line 236
    .local v2, "size":I
    new-instance v1, Landroid/icu/text/CompactDecimalDataCache$Data;

    #@6
    .line 237
    const/16 v3, 0xf

    #@8
    new-array v3, v3, [J

    #@a
    .line 238
    new-instance v4, Ljava/util/HashMap;

    #@c
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 236
    invoke-direct {v1, v3, v4}, Landroid/icu/text/CompactDecimalDataCache$Data;-><init>([JLjava/util/Map;)V

    #@12
    .line 239
    .local v1, "result":Landroid/icu/text/CompactDecimalDataCache$Data;
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@15
    .line 240
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@18
    move-result-object v3

    #@19
    invoke-static {v3, p1, p2, v1}, Landroid/icu/text/CompactDecimalDataCache;->populateData(Landroid/icu/util/UResourceBundle;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$Data;)V

    #@1c
    .line 239
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 242
    :cond_0
    invoke-static {v1}, Landroid/icu/text/CompactDecimalDataCache;->fillInMissing(Landroid/icu/text/CompactDecimalDataCache$Data;)V

    #@22
    .line 243
    return-object v1
.end method

.method private static localeAndStyle(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Ljava/lang/String;

    #@0
    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "locale \'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "\' style \'"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, "\'"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method private static populateData(Landroid/icu/util/UResourceBundle;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$Data;)V
    .locals 18
    .param p0, "divisorData"    # Landroid/icu/util/UResourceBundle;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/icu/text/CompactDecimalDataCache$Data;

    #@0
    .prologue
    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@7
    move-result-wide v12

    #@8
    .line 267
    .local v12, "magnitude":J
    long-to-double v6, v12

    #@9
    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    #@c
    move-result-wide v6

    #@d
    double-to-int v3, v6

    #@e
    .line 270
    .local v3, "thisIndex":I
    const/16 v5, 0xf

    #@10
    if-lt v3, v5, :cond_0

    #@12
    .line 271
    return-void

    #@13
    .line 274
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@16
    move-result v17

    #@17
    .line 280
    .local v17, "size":I
    const/4 v11, 0x0

    #@18
    .line 286
    .local v11, "numZeros":I
    const/4 v15, 0x0

    #@19
    .line 289
    .local v15, "otherVariantDefined":Z
    const/4 v10, 0x0

    #@1a
    .local v10, "i":I
    :goto_0
    move/from16 v0, v17

    #@1c
    if-ge v10, v0, :cond_4

    #@1e
    .line 290
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v10}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@23
    move-result-object v16

    #@24
    .line 291
    .local v16, "pluralVariantData":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 292
    .local v2, "pluralVariant":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 293
    .local v4, "template":Ljava/lang/String;
    const-string/jumbo v5, "other"

    #@2f
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_1

    #@35
    .line 294
    const/4 v15, 0x1

    #@36
    :cond_1
    move-object/from16 v5, p1

    #@38
    move-object/from16 v6, p2

    #@3a
    move-object/from16 v7, p3

    #@3c
    .line 296
    invoke-static/range {v2 .. v7}, Landroid/icu/text/CompactDecimalDataCache;->populatePrefixSuffix(Ljava/lang/String;ILjava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$Data;)I

    #@3f
    move-result v14

    #@40
    .line 298
    .local v14, "nz":I
    if-eq v14, v11, :cond_3

    #@42
    .line 299
    if-eqz v11, :cond_2

    #@44
    .line 300
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@46
    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v7, "Plural variant \'"

    #@4e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    const-string/jumbo v7, "\' template \'"

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    .line 302
    const-string/jumbo v7, "\' for 10^"

    #@64
    .line 301
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    .line 303
    const-string/jumbo v7, " has wrong number of zeros in "

    #@6f
    .line 301
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    .line 303
    invoke-static/range {p1 .. p2}, Landroid/icu/text/CompactDecimalDataCache;->localeAndStyle(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    .line 301
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v6

    #@7f
    .line 300
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@82
    throw v5

    #@83
    .line 305
    :cond_2
    move v11, v14

    #@84
    .line 289
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@86
    goto :goto_0

    #@87
    .line 309
    .end local v2    # "pluralVariant":Ljava/lang/String;
    .end local v4    # "template":Ljava/lang/String;
    .end local v14    # "nz":I
    .end local v16    # "pluralVariantData":Landroid/icu/util/UResourceBundle;
    :cond_4
    if-nez v15, :cond_5

    #@89
    .line 310
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@8b
    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v7, "No \'other\' plural variant defined for 10^"

    #@93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v6

    #@97
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v6

    #@9b
    .line 312
    const-string/jumbo v7, "in "

    #@9e
    .line 311
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v6

    #@a2
    .line 312
    invoke-static/range {p1 .. p2}, Landroid/icu/text/CompactDecimalDataCache;->localeAndStyle(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@a5
    move-result-object v7

    #@a6
    .line 311
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v6

    #@aa
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v6

    #@ae
    .line 310
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b1
    throw v5

    #@b2
    .line 321
    :cond_5
    move-wide v8, v12

    #@b3
    .line 322
    .local v8, "divisor":J
    const/4 v10, 0x1

    #@b4
    :goto_1
    if-ge v10, v11, :cond_6

    #@b6
    .line 323
    const-wide/16 v6, 0xa

    #@b8
    div-long/2addr v8, v6

    #@b9
    .line 322
    add-int/lit8 v10, v10, 0x1

    #@bb
    goto :goto_1

    #@bc
    .line 325
    :cond_6
    move-object/from16 v0, p3

    #@be
    iget-object v5, v0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    #@c0
    aput-wide v8, v5, v3

    #@c2
    .line 264
    return-void
.end method

.method private static populatePrefixSuffix(Ljava/lang/String;ILjava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$Data;)I
    .locals 8
    .param p0, "pluralVariant"    # Ljava/lang/String;
    .param p1, "idx"    # I
    .param p2, "template"    # Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;
    .param p4, "style"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/icu/text/CompactDecimalDataCache$Data;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 343
    const-string/jumbo v5, "0"

    #@4
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 344
    .local v0, "firstIdx":I
    const-string/jumbo v5, "0"

    #@b
    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@e
    move-result v2

    #@f
    .line 345
    .local v2, "lastIdx":I
    const/4 v5, -0x1

    #@10
    if-ne v0, v5, :cond_0

    #@12
    .line 346
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@14
    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v7, "Expect at least one zero in template \'"

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    .line 348
    const-string/jumbo v7, "\' for variant \'"

    #@27
    .line 347
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    .line 348
    const-string/jumbo v7, "\' for 10^"

    #@32
    .line 347
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    .line 349
    const-string/jumbo v7, " in "

    #@3d
    .line 347
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    .line 349
    invoke-static {p3, p4}, Landroid/icu/text/CompactDecimalDataCache;->localeAndStyle(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    .line 347
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 346
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v5

    #@51
    .line 351
    :cond_0
    invoke-virtual {p2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-static {v5}, Landroid/icu/text/CompactDecimalDataCache;->fixQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    .line 352
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    #@5b
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-static {v5}, Landroid/icu/text/CompactDecimalDataCache;->fixQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    .line 353
    .local v4, "suffix":Ljava/lang/String;
    new-instance v5, Landroid/icu/text/DecimalFormat$Unit;

    #@65
    invoke-direct {v5, v3, v4}, Landroid/icu/text/DecimalFormat$Unit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@68
    iget-object v6, p5, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    #@6a
    invoke-static {v5, p0, p1, v6}, Landroid/icu/text/CompactDecimalDataCache;->saveUnit(Landroid/icu/text/DecimalFormat$Unit;Ljava/lang/String;ILjava/util/Map;)V

    #@6d
    .line 358
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@74
    move-result v5

    #@75
    if-nez v5, :cond_1

    #@77
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@7e
    move-result v5

    #@7f
    if-nez v5, :cond_1

    #@81
    .line 359
    add-int/lit8 v5, p1, 0x1

    #@83
    return v5

    #@84
    .line 363
    :cond_1
    add-int/lit8 v1, v0, 0x1

    #@86
    .line 364
    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_2

    #@88
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@8b
    move-result v5

    #@8c
    const/16 v6, 0x30

    #@8e
    if-ne v5, v6, :cond_2

    #@90
    .line 365
    add-int/lit8 v1, v1, 0x1

    #@92
    goto :goto_0

    #@93
    .line 367
    :cond_2
    sub-int v5, v1, v0

    #@95
    return v5
.end method

.method private static propagateOtherToMissing(ILjava/util/Map;)V
    .locals 4
    .param p0, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 444
    .local p1, "units":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    const-string/jumbo v3, "other"

    #@3
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, [Landroid/icu/text/DecimalFormat$Unit;

    #@9
    aget-object v2, v3, p0

    #@b
    .line 445
    .local v2, "otherVariantValue":Landroid/icu/text/DecimalFormat$Unit;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@e
    move-result-object v3

    #@f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "byBase$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, [Landroid/icu/text/DecimalFormat$Unit;

    #@1f
    .line 446
    .local v0, "byBase":[Landroid/icu/text/DecimalFormat$Unit;
    aget-object v3, v0, p0

    #@21
    if-nez v3, :cond_0

    #@23
    .line 447
    aput-object v2, v0, p0

    #@25
    goto :goto_0

    #@26
    .line 443
    .end local v0    # "byBase":[Landroid/icu/text/DecimalFormat$Unit;
    :cond_1
    return-void
.end method

.method private static saveUnit(Landroid/icu/text/DecimalFormat$Unit;Ljava/lang/String;ILjava/util/Map;)V
    .locals 2
    .param p0, "unit"    # Landroid/icu/text/DecimalFormat$Unit;
    .param p1, "pluralVariant"    # Ljava/lang/String;
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DecimalFormat$Unit;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 465
    .local p3, "units":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Landroid/icu/text/DecimalFormat$Unit;

    #@6
    .line 466
    .local v0, "byBase":[Landroid/icu/text/DecimalFormat$Unit;
    if-nez v0, :cond_0

    #@8
    .line 467
    const/16 v1, 0xf

    #@a
    new-array v0, v1, [Landroid/icu/text/DecimalFormat$Unit;

    #@c
    .line 468
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 470
    :cond_0
    aput-object p0, v0, p2

    #@11
    .line 464
    return-void
.end method


# virtual methods
.method get(Landroid/icu/util/ULocale;)Landroid/icu/text/CompactDecimalDataCache$DataBundle;
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 114
    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache;->cache:Landroid/icu/impl/ICUCache;

    #@2
    invoke-interface {v1, p1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/CompactDecimalDataCache$DataBundle;

    #@8
    .line 115
    .local v0, "result":Landroid/icu/text/CompactDecimalDataCache$DataBundle;
    if-nez v0, :cond_0

    #@a
    .line 116
    invoke-static {p1}, Landroid/icu/text/CompactDecimalDataCache;->load(Landroid/icu/util/ULocale;)Landroid/icu/text/CompactDecimalDataCache$DataBundle;

    #@d
    move-result-object v0

    #@e
    .line 117
    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache;->cache:Landroid/icu/impl/ICUCache;

    #@10
    invoke-interface {v1, p1, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@13
    .line 119
    :cond_0
    return-object v0
.end method
