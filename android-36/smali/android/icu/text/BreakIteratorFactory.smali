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
.field private static final blacklist KIND_NAMES:[Ljava/lang/String;

.field static final blacklist service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/text/BreakIteratorFactory;->createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 109
    new-instance v0, Landroid/icu/text/BreakIteratorFactory$BFService;

    invoke-direct {v0}, Landroid/icu/text/BreakIteratorFactory$BFService;-><init>()V

    sput-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    .line 117
    const-string v0, "sentence"

    const-string v1, "title"

    const-string v2, "grapheme"

    const-string v3, "word"

    const-string v4, "line"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;-><init>()V

    return-void
.end method

.method private static blacklist createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .registers 11
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "kind"    # I

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "iter":Landroid/icu/text/RuleBasedBreakIterator;
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    .line 126
    const-string v2, "android/icu/impl/data/icudata/brkitr"

    invoke-static {v2, p0, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 132
    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    const/4 v2, 0x0

    .line 133
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    const-string v3, ""

    .line 134
    .local v3, "typeKeyExt":Ljava/lang/String;
    const/4 v4, 0x2

    const-string v5, "phrase"

    if-ne p1, v4, :cond_7d

    .line 135
    const-string v4, "lb"

    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "keyValue":Ljava/lang/String;
    const-string v6, "_"

    if-eqz v4, :cond_44

    const-string v7, "strict"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    const-string v7, "normal"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    const-string v7, "loose"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 137
    :cond_33
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    :cond_44
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "language":Ljava/lang/String;
    if-eqz v7, :cond_7d

    const-string v8, "ja"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5a

    const-string v8, "ko"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 142
    :cond_5a
    const-string v8, "lw"

    invoke-virtual {p0, v8}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    if-eqz v4, :cond_7d

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .end local v4    # "keyValue":Ljava/lang/String;
    .end local v7    # "language":Ljava/lang/String;
    :cond_7d
    :try_start_7d
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_88

    sget-object v4, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    aget-object v4, v4, p1

    goto :goto_9d

    :cond_88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "typeKey":Ljava/lang/String;
    :goto_9d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "boundaries/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "brkfname":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "brkitr/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "rulesFileName":Ljava/lang/String;
    invoke-static {v7}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v8
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_cb} :catch_112

    .line 158
    .end local v2    # "bytes":Ljava/nio/ByteBuffer;
    .end local v4    # "typeKey":Ljava/lang/String;
    .end local v7    # "rulesFileName":Ljava/lang/String;
    .local v8, "bytes":Ljava/nio/ByteBuffer;
    nop

    .line 164
    if-eqz v6, :cond_d6

    :try_start_ce
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d6

    const/4 v2, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v2, 0x0

    .line 165
    .local v2, "isPhraseBreaking":Z
    :goto_d7
    invoke-static {v8, v2}, Landroid/icu/text/RuleBasedBreakIterator;->getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;Z)Landroid/icu/text/RuleBasedBreakIterator;

    move-result-object v4
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_db} :catch_dd

    move-object v0, v4

    .line 171
    .end local v2    # "isPhraseBreaking":Z
    goto :goto_e1

    .line 167
    :catch_dd
    move-exception v2

    .line 170
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Landroid/icu/impl/Assert;->fail(Ljava/lang/Exception;)V

    .line 173
    .end local v2    # "e":Ljava/io/IOException;
    :goto_e1
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 174
    .local v2, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v0, v2, v2}, Landroid/icu/text/RuleBasedBreakIterator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 177
    const/4 v4, 0x3

    if-ne p1, v4, :cond_111

    .line 178
    const-string v4, "ss"

    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "ssKeyword":Ljava/lang/String;
    if-eqz v4, :cond_111

    const-string v5, "standard"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_111

    .line 180
    new-instance v5, Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 181
    .local v5, "base":Landroid/icu/util/ULocale;
    invoke-static {v5}, Landroid/icu/text/FilteredBreakIteratorBuilder;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/FilteredBreakIteratorBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/icu/text/FilteredBreakIteratorBuilder;->wrapIteratorWithFilter(Landroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;

    move-result-object v7

    return-object v7

    .line 185
    .end local v4    # "ssKeyword":Ljava/lang/String;
    .end local v5    # "base":Landroid/icu/util/ULocale;
    :cond_111
    return-object v0

    .line 156
    .end local v6    # "brkfname":Ljava/lang/String;
    .end local v8    # "bytes":Ljava/nio/ByteBuffer;
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    :catch_112
    move-exception v4

    .line 157
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/util/MissingResourceException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v5, v6, v7, v7}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public blacklist createBreakIterator(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .registers 7
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I

    .line 72
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 73
    invoke-static {p1, p2}, Landroid/icu/text/BreakIteratorFactory;->createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0

    .line 75
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/icu/util/ULocale;

    .line 76
    .local v0, "actualLoc":[Landroid/icu/util/ULocale;
    sget-object v1, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1, p1, p2, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/BreakIterator;

    .line 77
    .local v1, "iter":Landroid/icu/text/BreakIterator;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v3, v2}, Landroid/icu/text/BreakIterator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 78
    return-object v1
.end method

.method public blacklist getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    .line 53
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    if-nez v0, :cond_9

    .line 54
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 56
    :cond_9
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 2

    .line 62
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    if-nez v0, :cond_9

    .line 63
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 65
    :cond_9
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .registers 6
    .param p1, "iter"    # Landroid/icu/text/BreakIterator;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "kind"    # I

    .line 39
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 40
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unregister(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 45
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_a
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result v0

    return v0
.end method
