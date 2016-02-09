.class final Landroid/icu/text/BreakIteratorFactory;
.super Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
.source "BreakIteratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakIteratorFactory$BFService;
    }
.end annotation


# static fields
.field private static final KIND_NAMES:[Ljava/lang/String;

.field static final service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "kind"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/text/BreakIteratorFactory;->createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 100
    new-instance v0, Landroid/icu/text/BreakIteratorFactory$BFService;

    #@2
    invoke-direct {v0}, Landroid/icu/text/BreakIteratorFactory$BFService;-><init>()V

    #@5
    sput-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    #@7
    .line 108
    const/4 v0, 0x5

    #@8
    new-array v0, v0, [Ljava/lang/String;

    #@a
    .line 109
    const-string/jumbo v1, "grapheme"

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "word"

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    const-string/jumbo v1, "line"

    #@19
    const/4 v2, 0x2

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "sentence"

    #@1f
    const/4 v2, 0x3

    #@20
    aput-object v1, v0, v2

    #@22
    const-string/jumbo v1, "title"

    #@25
    const/4 v2, 0x4

    #@26
    aput-object v1, v0, v2

    #@28
    .line 108
    sput-object v0, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    #@2a
    .line 32
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;-><init>()V

    #@3
    return-void
.end method

.method private static createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 16
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "kind"    # I

    #@0
    .prologue
    .line 115
    const/4 v5, 0x0

    #@1
    .line 117
    .local v5, "iter":Landroid/icu/text/RuleBasedBreakIterator;
    const-string/jumbo v12, "android/icu/impl/data/icudt55b/brkitr"

    #@4
    .line 118
    sget-object v13, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@6
    .line 116
    move-object/from16 v0, p0

    #@8
    invoke-static {v12, v0, v13}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@b
    move-result-object v7

    #@c
    check-cast v7, Landroid/icu/impl/ICUResourceBundle;

    #@e
    .line 123
    .local v7, "rb":Landroid/icu/impl/ICUResourceBundle;
    const/4 v2, 0x0

    #@f
    .line 124
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    #@10
    .line 125
    .local v10, "typeKeyExt":Ljava/lang/String;
    const/4 v12, 0x2

    #@11
    move/from16 v0, p1

    #@13
    if-ne v0, v12, :cond_1

    #@15
    .line 126
    const-string/jumbo v12, "lb"

    #@18
    move-object/from16 v0, p0

    #@1a
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    .line 127
    .local v6, "lbKeyValue":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@20
    const-string/jumbo v12, "strict"

    #@23
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v12

    #@27
    if-nez v12, :cond_0

    #@29
    const-string/jumbo v12, "normal"

    #@2c
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v12

    #@30
    if-nez v12, :cond_0

    #@32
    const-string/jumbo v12, "loose"

    #@35
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v12

    #@39
    if-eqz v12, :cond_1

    #@3b
    .line 128
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v13, "_"

    #@43
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v12

    #@47
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v12

    #@4b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v10

    #@4f
    .line 132
    .end local v6    # "lbKeyValue":Ljava/lang/String;
    .end local v10    # "typeKeyExt":Ljava/lang/String;
    :cond_1
    if-nez v10, :cond_2

    #@51
    :try_start_0
    sget-object v12, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    #@53
    aget-object v9, v12, p1

    #@55
    .line 133
    .local v9, "typeKey":Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v13, "boundaries/"

    #@5d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v12

    #@61
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v12

    #@65
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v12

    #@69
    invoke-virtual {v7, v12}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    .line 134
    .local v1, "brkfname":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v13, "brkitr/"

    #@75
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v12

    #@79
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v12

    #@7d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    .line 135
    .local v8, "rulesFileName":Ljava/lang/String;
    invoke-static {v8}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    move-result-object v2

    #@85
    .line 145
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    :try_start_1
    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;)Landroid/icu/text/RuleBasedBreakIterator;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@88
    move-result-object v5

    #@89
    .line 153
    .end local v5    # "iter":Landroid/icu/text/RuleBasedBreakIterator;
    :goto_1
    invoke-virtual {v7}, Landroid/icu/impl/ICUResourceBundle;->getLocale()Ljava/util/Locale;

    #@8c
    move-result-object v12

    #@8d
    invoke-static {v12}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@90
    move-result-object v11

    #@91
    .line 154
    .local v11, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v5, v11, v11}, Landroid/icu/text/RuleBasedBreakIterator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@94
    .line 155
    move/from16 v0, p1

    #@96
    invoke-virtual {v5, v0}, Landroid/icu/text/RuleBasedBreakIterator;->setBreakType(I)V

    #@99
    .line 157
    return-object v5

    #@9a
    .line 132
    .end local v1    # "brkfname":Ljava/lang/String;
    .end local v8    # "rulesFileName":Ljava/lang/String;
    .end local v9    # "typeKey":Ljava/lang/String;
    .end local v11    # "uloc":Landroid/icu/util/ULocale;
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    .restart local v5    # "iter":Landroid/icu/text/RuleBasedBreakIterator;
    :cond_2
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    sget-object v13, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    #@a1
    aget-object v13, v13, p1

    #@a3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v12

    #@a7
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v12

    #@ab
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@ae
    move-result-object v9

    #@af
    .restart local v9    # "typeKey":Ljava/lang/String;
    goto :goto_0

    #@b0
    .line 137
    .end local v9    # "typeKey":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@b1
    .line 138
    .local v4, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/util/MissingResourceException;

    #@b3
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@b6
    move-result-object v13

    #@b7
    const-string/jumbo v14, ""

    #@ba
    const-string/jumbo v15, ""

    #@bd
    invoke-direct {v12, v13, v14, v15}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c0
    throw v12

    #@c1
    .line 147
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "brkfname":Ljava/lang/String;
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    .restart local v8    # "rulesFileName":Ljava/lang/String;
    .restart local v9    # "typeKey":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@c2
    .line 150
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Landroid/icu/impl/Assert;->fail(Ljava/lang/Exception;)V

    #@c5
    goto :goto_1
.end method


# virtual methods
.method public createBreakIterator(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 64
    sget-object v2, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    #@3
    invoke-virtual {v2}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 65
    invoke-static {p1, p2}, Landroid/icu/text/BreakIteratorFactory;->createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@c
    move-result-object v2

    #@d
    return-object v2

    #@e
    .line 67
    :cond_0
    const/4 v2, 0x1

    #@f
    new-array v0, v2, [Landroid/icu/util/ULocale;

    #@11
    .line 68
    .local v0, "actualLoc":[Landroid/icu/util/ULocale;
    sget-object v2, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    #@13
    invoke-virtual {v2, p1, p2, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/icu/text/BreakIterator;

    #@19
    .line 69
    .local v1, "iter":Landroid/icu/text/BreakIterator;
    aget-object v2, v0, v3

    #@1b
    aget-object v3, v0, v3

    #@1d
    invoke-virtual {v1, v2, v3}, Landroid/icu/text/BreakIterator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@20
    .line 70
    return-object v1
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 48
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 50
    :cond_0
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    #@b
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 55
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 56
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 58
    :cond_0
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    #@b
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 2
    .param p1, "iter"    # Landroid/icu/text/BreakIterator;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "kind"    # I

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/text/StringCharacterIterator;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {p1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@b
    .line 36
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    #@d
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Factory;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public unregister(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 40
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 41
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 43
    :cond_0
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    #@c
    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    #@e
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method
