.class public Landroid/icu/impl/number/parse/NumberParserImpl;
.super Ljava/lang/Object;
.source "NumberParserImpl.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist frozen:Z

.field private final blacklist matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/number/parse/NumberParseMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist parseFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "parseFlags"    # I

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    .line 283
    iput p1, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->parseFlags:I

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->frozen:Z

    .line 285
    return-void
.end method

.method public static blacklist createDefaultParserForLocale(Landroid/icu/util/ULocale;)Landroid/icu/impl/number/parse/NumberParserImpl;
    .registers 4
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    .line 119
    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 120
    .local v0, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    const-string v1, "0"

    invoke-static {v1}, Landroid/icu/impl/number/PatternStringParser;->parseToProperties(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v1

    .line 121
    .local v1, "properties":Landroid/icu/impl/number/DecimalFormatProperties;
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/icu/impl/number/parse/NumberParserImpl;->createParserFromProperties(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/NumberParserImpl;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist createParserFromProperties(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/NumberParserImpl;
    .registers 15
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p2, "parseCurrency"    # Z

    .line 141
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 142
    .local v0, "locale":Landroid/icu/util/ULocale;
    invoke-static {p0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->forProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/AffixPatternProvider;

    move-result-object v1

    .line 143
    .local v1, "affixProvider":Landroid/icu/impl/number/AffixPatternProvider;
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-static {v2, v0, p1}, Landroid/icu/impl/number/CustomSymbolCurrency;->resolve(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/util/Currency;

    move-result-object v2

    .line 144
    .local v2, "currency":Landroid/icu/util/Currency;
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseMode()Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    move-result-object v3

    .line 145
    .local v3, "parseMode":Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
    if-nez v3, :cond_18

    .line 146
    sget-object v3, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 148
    :cond_18
    invoke-static {p0}, Landroid/icu/impl/number/Grouper;->forProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Grouper;

    move-result-object v4

    .line 149
    .local v4, "grouper":Landroid/icu/impl/number/Grouper;
    const/4 v5, 0x0

    .line 150
    .local v5, "parseFlags":I
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseCaseSensitive()Z

    move-result v6

    if-nez v6, :cond_25

    .line 151
    or-int/lit8 v5, v5, 0x1

    .line 153
    :cond_25
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseIntegerOnly()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 154
    or-int/lit8 v5, v5, 0x10

    .line 156
    :cond_2d
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseToBigDecimal()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 157
    or-int/lit16 v5, v5, 0x1000

    .line 159
    :cond_35
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSignAlwaysShown()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 160
    or-int/lit16 v5, v5, 0x400

    .line 162
    :cond_3d
    sget-object v6, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->JAVA_COMPATIBILITY:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    if-ne v3, v6, :cond_4b

    .line 163
    or-int/lit8 v5, v5, 0x4

    .line 164
    or-int/lit16 v5, v5, 0x100

    .line 165
    or-int/lit16 v5, v5, 0x200

    .line 166
    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    goto :goto_5e

    .line 167
    :cond_4b
    sget-object v6, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->STRICT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    if-ne v3, v6, :cond_5c

    .line 168
    or-int/lit8 v5, v5, 0x8

    .line 169
    or-int/lit8 v5, v5, 0x4

    .line 170
    or-int/lit16 v5, v5, 0x100

    .line 171
    or-int/lit16 v5, v5, 0x200

    .line 172
    const v6, 0x8000

    or-int/2addr v5, v6

    goto :goto_5e

    .line 174
    :cond_5c
    or-int/lit16 v5, v5, 0x80

    .line 176
    :goto_5e
    invoke-virtual {v4}, Landroid/icu/impl/number/Grouper;->getPrimary()S

    move-result v6

    if-gtz v6, :cond_66

    .line 177
    or-int/lit8 v5, v5, 0x20

    .line 179
    :cond_66
    if-nez p2, :cond_6e

    invoke-interface {v1}, Landroid/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 180
    :cond_6e
    or-int/lit8 v5, v5, 0x2

    .line 182
    :cond_70
    if-nez p2, :cond_74

    .line 183
    or-int/lit16 v5, v5, 0x2000

    .line 186
    :cond_74
    new-instance v6, Landroid/icu/impl/number/parse/NumberParserImpl;

    invoke-direct {v6, v5}, Landroid/icu/impl/number/parse/NumberParserImpl;-><init>(I)V

    .line 187
    .local v6, "parser":Landroid/icu/impl/number/parse/NumberParserImpl;
    invoke-static {v5}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->getInstance(I)Landroid/icu/impl/number/parse/IgnorablesMatcher;

    move-result-object v7

    .line 189
    .local v7, "ignorables":Landroid/icu/impl/number/parse/IgnorablesMatcher;
    new-instance v8, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-direct {v8}, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;-><init>()V

    .line 190
    .local v8, "factory":Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;
    iput-object v2, v8, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->currency:Landroid/icu/util/Currency;

    .line 191
    iput-object p1, v8, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 192
    iput-object v7, v8, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    .line 193
    iput-object v0, v8, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->locale:Landroid/icu/util/ULocale;

    .line 194
    iput v5, v8, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->parseFlags:I

    .line 201
    invoke-static {v1, v6, v8, v7, v5}, Landroid/icu/impl/number/parse/AffixMatcher;->createMatchers(Landroid/icu/impl/number/AffixPatternProvider;Landroid/icu/impl/number/parse/NumberParserImpl;Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;Landroid/icu/impl/number/parse/IgnorablesMatcher;I)V

    .line 207
    if-nez p2, :cond_97

    invoke-interface {v1}, Landroid/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v9

    if-eqz v9, :cond_9e

    .line 208
    :cond_97
    invoke-static {v2, p1, v5}, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->getInstance(Landroid/icu/util/Currency;Landroid/icu/text/DecimalFormatSymbols;I)Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 217
    :cond_9e
    sget-object v9, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    if-ne v3, v9, :cond_b0

    const/4 v9, -0x4

    invoke-interface {v1, v9}, Landroid/icu/impl/number/AffixPatternProvider;->containsSymbolType(I)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 218
    invoke-static {p1}, Landroid/icu/impl/number/parse/PercentMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/parse/PercentMatcher;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 220
    :cond_b0
    sget-object v9, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    if-ne v3, v9, :cond_c2

    const/4 v9, -0x5

    invoke-interface {v1, v9}, Landroid/icu/impl/number/AffixPatternProvider;->containsSymbolType(I)Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 221
    invoke-static {p1}, Landroid/icu/impl/number/parse/PermilleMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/parse/PermilleMatcher;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 228
    :cond_c2
    sget-object v9, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    const/4 v10, 0x0

    if-ne v3, v9, :cond_d5

    .line 229
    invoke-static {p1, v10}, Landroid/icu/impl/number/parse/PlusSignMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/PlusSignMatcher;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 230
    invoke-static {p1, v10}, Landroid/icu/impl/number/parse/MinusSignMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/MinusSignMatcher;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 232
    :cond_d5
    invoke-static {p1, v5}, Landroid/icu/impl/number/parse/NanMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;I)Landroid/icu/impl/number/parse/NanMatcher;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 233
    invoke-static {p1}, Landroid/icu/impl/number/parse/InfinityMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/parse/InfinityMatcher;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 234
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v9

    .line 235
    .local v9, "padString":Ljava/lang/String;
    if-eqz v9, :cond_fa

    invoke-virtual {v7}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->getSet()Landroid/icu/text/UnicodeSet;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_fa

    .line 236
    invoke-static {v9}, Landroid/icu/impl/number/parse/PaddingMatcher;->getInstance(Ljava/lang/String;)Landroid/icu/impl/number/parse/PaddingMatcher;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 238
    :cond_fa
    invoke-virtual {v6, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 239
    invoke-static {p1, v4, v5}, Landroid/icu/impl/number/parse/DecimalMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;I)Landroid/icu/impl/number/parse/DecimalMatcher;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 241
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseNoExponent()Z

    move-result v11

    if-eqz v11, :cond_110

    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v11

    if-lez v11, :cond_117

    .line 242
    :cond_110
    invoke-static {p1, v4}, Landroid/icu/impl/number/parse/ScientificMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;)Landroid/icu/impl/number/parse/ScientificMatcher;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 249
    :cond_117
    new-instance v11, Landroid/icu/impl/number/parse/RequireNumberValidator;

    invoke-direct {v11}, Landroid/icu/impl/number/parse/RequireNumberValidator;-><init>()V

    invoke-virtual {v6, v11}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 250
    sget-object v11, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    if-eq v3, v11, :cond_12b

    .line 251
    new-instance v11, Landroid/icu/impl/number/parse/RequireAffixValidator;

    invoke-direct {v11}, Landroid/icu/impl/number/parse/RequireAffixValidator;-><init>()V

    invoke-virtual {v6, v11}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 253
    :cond_12b
    if-eqz p2, :cond_135

    .line 254
    new-instance v11, Landroid/icu/impl/number/parse/RequireCurrencyValidator;

    invoke-direct {v11}, Landroid/icu/impl/number/parse/RequireCurrencyValidator;-><init>()V

    invoke-virtual {v6, v11}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 256
    :cond_135
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalPatternMatchRequired()Z

    move-result v11

    if-eqz v11, :cond_14f

    .line 257
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v11

    if-nez v11, :cond_147

    .line 258
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v11

    if-eqz v11, :cond_148

    :cond_147
    const/4 v10, 0x1

    .line 259
    .local v10, "patternHasDecimalSeparator":Z
    :cond_148
    invoke-static {v10}, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;->getInstance(Z)Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 262
    .end local v10    # "patternHasDecimalSeparator":Z
    :cond_14f
    invoke-static {p0}, Landroid/icu/impl/number/RoundingUtils;->scaleFromProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/number/Scale;

    move-result-object v10

    .line 263
    .local v10, "multiplier":Landroid/icu/number/Scale;
    if-eqz v10, :cond_15d

    .line 264
    new-instance v11, Landroid/icu/impl/number/parse/MultiplierParseHandler;

    invoke-direct {v11, v10}, Landroid/icu/impl/number/parse/MultiplierParseHandler;-><init>(Landroid/icu/number/Scale;)V

    invoke-virtual {v6, v11}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 267
    :cond_15d
    invoke-virtual {v6}, Landroid/icu/impl/number/parse/NumberParserImpl;->freeze()V

    .line 268
    return-object v6
.end method

.method public static blacklist createSimpleParser(Landroid/icu/util/ULocale;Ljava/lang/String;I)Landroid/icu/impl/number/parse/NumberParserImpl;
    .registers 12
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "parseFlags"    # I

    .line 43
    new-instance v0, Landroid/icu/impl/number/parse/NumberParserImpl;

    invoke-direct {v0, p2}, Landroid/icu/impl/number/parse/NumberParserImpl;-><init>(I)V

    .line 44
    .local v0, "parser":Landroid/icu/impl/number/parse/NumberParserImpl;
    const-string v1, "USD"

    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v1

    .line 45
    .local v1, "currency":Landroid/icu/util/Currency;
    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    .line 46
    .local v2, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    invoke-static {p2}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->getInstance(I)Landroid/icu/impl/number/parse/IgnorablesMatcher;

    move-result-object v3

    .line 48
    .local v3, "ignorables":Landroid/icu/impl/number/parse/IgnorablesMatcher;
    new-instance v4, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-direct {v4}, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;-><init>()V

    .line 49
    .local v4, "factory":Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;
    iput-object v1, v4, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->currency:Landroid/icu/util/Currency;

    .line 50
    iput-object v2, v4, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 51
    iput-object v3, v4, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    .line 52
    iput-object p0, v4, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->locale:Landroid/icu/util/ULocale;

    .line 53
    iput p2, v4, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->parseFlags:I

    .line 55
    invoke-static {p1}, Landroid/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v5

    .line 56
    .local v5, "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    invoke-static {v5, v0, v4, v3, p2}, Landroid/icu/impl/number/parse/AffixMatcher;->createMatchers(Landroid/icu/impl/number/AffixPatternProvider;Landroid/icu/impl/number/parse/NumberParserImpl;Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;Landroid/icu/impl/number/parse/IgnorablesMatcher;I)V

    .line 58
    sget-object v6, Landroid/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v6}, Landroid/icu/impl/number/Grouper;->forStrategy(Landroid/icu/number/NumberFormatter$GroupingStrategy;)Landroid/icu/impl/number/Grouper;

    move-result-object v6

    invoke-virtual {v6, p0, v5}, Landroid/icu/impl/number/Grouper;->withLocaleData(Landroid/icu/util/ULocale;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;)Landroid/icu/impl/number/Grouper;

    move-result-object v6

    .line 60
    .local v6, "grouper":Landroid/icu/impl/number/Grouper;
    invoke-virtual {v0, v3}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 61
    invoke-static {v2, v6, p2}, Landroid/icu/impl/number/parse/DecimalMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;I)Landroid/icu/impl/number/parse/DecimalMatcher;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 62
    const/4 v7, 0x0

    invoke-static {v2, v7}, Landroid/icu/impl/number/parse/MinusSignMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/MinusSignMatcher;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 63
    invoke-static {v2, v7}, Landroid/icu/impl/number/parse/PlusSignMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/PlusSignMatcher;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 64
    invoke-static {v2}, Landroid/icu/impl/number/parse/PercentMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/parse/PercentMatcher;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 65
    invoke-static {v2}, Landroid/icu/impl/number/parse/PermilleMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/parse/PermilleMatcher;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 66
    invoke-static {v2, p2}, Landroid/icu/impl/number/parse/NanMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;I)Landroid/icu/impl/number/parse/NanMatcher;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 67
    invoke-static {v2}, Landroid/icu/impl/number/parse/InfinityMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/parse/InfinityMatcher;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 68
    const-string v7, "@"

    invoke-static {v7}, Landroid/icu/impl/number/parse/PaddingMatcher;->getInstance(Ljava/lang/String;)Landroid/icu/impl/number/parse/PaddingMatcher;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 69
    invoke-static {v2, v6}, Landroid/icu/impl/number/parse/ScientificMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;)Landroid/icu/impl/number/parse/ScientificMatcher;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 70
    invoke-static {v1, v2, p2}, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->getInstance(Landroid/icu/util/Currency;Landroid/icu/text/DecimalFormatSymbols;I)Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 71
    new-instance v7, Landroid/icu/impl/number/parse/RequireNumberValidator;

    invoke-direct {v7}, Landroid/icu/impl/number/parse/RequireNumberValidator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 73
    invoke-virtual {v0}, Landroid/icu/impl/number/parse/NumberParserImpl;->freeze()V

    .line 74
    return-object v0
.end method

.method private blacklist parseGreedy(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 7
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 345
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 347
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 348
    return-void

    .line 350
    :cond_10
    iget-object v1, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/number/parse/NumberParseMatcher;

    .line 351
    .local v1, "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    invoke-interface {v1, p1}, Landroid/icu/impl/number/parse/NumberParseMatcher;->smokeTest(Landroid/icu/impl/StringSegment;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 353
    add-int/lit8 v0, v0, 0x1

    .line 354
    goto :goto_1

    .line 356
    :cond_21
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v2

    .line 357
    .local v2, "initialOffset":I
    invoke-interface {v1, p1, p2}, Landroid/icu/impl/number/parse/NumberParseMatcher;->match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z

    .line 358
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v3

    if-eq v3, v2, :cond_30

    .line 360
    const/4 v0, 0x0

    .line 361
    goto :goto_1

    .line 364
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 365
    goto :goto_1

    .line 370
    .end local v0    # "i":I
    .end local v1    # "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    .end local v2    # "initialOffset":I
    :cond_33
    return-void
.end method

.method private blacklist parseLongestRecursive(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;I)V
    .registers 12
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;
    .param p3, "recursionLevels"    # I

    .line 374
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 375
    return-void

    .line 379
    :cond_7
    if-nez p3, :cond_a

    .line 380
    return-void

    .line 384
    :cond_a
    new-instance v0, Landroid/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v0}, Landroid/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 385
    .local v0, "initial":Landroid/icu/impl/number/parse/ParsedNumber;
    invoke-virtual {v0, p2}, Landroid/icu/impl/number/parse/ParsedNumber;->copyFrom(Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 386
    new-instance v1, Landroid/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v1}, Landroid/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 388
    .local v1, "candidate":Landroid/icu/impl/number/parse/ParsedNumber;
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v2

    .line 389
    .local v2, "initialOffset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    iget-object v4, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6f

    .line 390
    iget-object v4, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/number/parse/NumberParseMatcher;

    .line 391
    .local v4, "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    invoke-interface {v4, p1}, Landroid/icu/impl/number/parse/NumberParseMatcher;->smokeTest(Landroid/icu/impl/StringSegment;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 392
    goto :goto_6c

    .line 396
    :cond_33
    const/4 v5, 0x0

    .local v5, "charsToConsume":I
    :goto_34
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v6

    if-ge v5, v6, :cond_6c

    .line 397
    invoke-virtual {p1, v5}, Landroid/icu/impl/StringSegment;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 400
    invoke-virtual {v1, v0}, Landroid/icu/impl/number/parse/ParsedNumber;->copyFrom(Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 401
    invoke-virtual {p1, v5}, Landroid/icu/impl/StringSegment;->setLength(I)V

    .line 402
    invoke-interface {v4, p1, v1}, Landroid/icu/impl/number/parse/NumberParseMatcher;->match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z

    move-result v6

    .line 403
    .local v6, "maybeMore":Z
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->resetLength()V

    .line 406
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v7

    sub-int/2addr v7, v2

    if-ne v7, v5, :cond_65

    .line 407
    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, p1, v1, v7}, Landroid/icu/impl/number/parse/NumberParserImpl;->parseLongestRecursive(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;I)V

    .line 408
    invoke-virtual {v1, p2}, Landroid/icu/impl/number/parse/ParsedNumber;->isBetterThan(Landroid/icu/impl/number/parse/ParsedNumber;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 409
    invoke-virtual {p2, v1}, Landroid/icu/impl/number/parse/ParsedNumber;->copyFrom(Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 415
    :cond_65
    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 418
    if-nez v6, :cond_6b

    .line 419
    goto :goto_6c

    .line 421
    .end local v6    # "maybeMore":Z
    :cond_6b
    goto :goto_34

    .line 389
    .end local v4    # "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    .end local v5    # "charsToConsume":I
    :cond_6c
    :goto_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 423
    .end local v3    # "i":I
    :cond_6f
    return-void
.end method

.method public static blacklist parseStatic(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/Number;
    .registers 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "ppos"    # Ljava/text/ParsePosition;
    .param p2, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .param p3, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 85
    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/icu/impl/number/parse/NumberParserImpl;->createParserFromProperties(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/NumberParserImpl;

    move-result-object v0

    .line 86
    .local v0, "parser":Landroid/icu/impl/number/parse/NumberParserImpl;
    new-instance v1, Landroid/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v1}, Landroid/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 87
    .local v1, "result":Landroid/icu/impl/number/parse/ParsedNumber;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/icu/impl/number/parse/NumberParserImpl;->parse(Ljava/lang/String;ZLandroid/icu/impl/number/parse/ParsedNumber;)V

    .line 88
    invoke-virtual {v1}, Landroid/icu/impl/number/parse/ParsedNumber;->success()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 89
    iget v2, v1, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 90
    invoke-virtual {v1}, Landroid/icu/impl/number/parse/ParsedNumber;->getNumber()Ljava/lang/Number;

    move-result-object v2

    return-object v2

    .line 92
    :cond_1e
    iget v2, v1, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 93
    const/4 v2, 0x0

    return-object v2
.end method

.method public static blacklist parseStaticCurrency(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/util/CurrencyAmount;
    .registers 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "ppos"    # Ljava/text/ParsePosition;
    .param p2, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .param p3, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 105
    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Landroid/icu/impl/number/parse/NumberParserImpl;->createParserFromProperties(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/NumberParserImpl;

    move-result-object v1

    .line 106
    .local v1, "parser":Landroid/icu/impl/number/parse/NumberParserImpl;
    new-instance v2, Landroid/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v2}, Landroid/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 107
    .local v2, "result":Landroid/icu/impl/number/parse/ParsedNumber;
    invoke-virtual {v1, p0, v0, v2}, Landroid/icu/impl/number/parse/NumberParserImpl;->parse(Ljava/lang/String;ZLandroid/icu/impl/number/parse/ParsedNumber;)V

    .line 108
    invoke-virtual {v2}, Landroid/icu/impl/number/parse/ParsedNumber;->success()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 109
    iget v0, v2, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 110
    nop

    .line 111
    new-instance v0, Landroid/icu/util/CurrencyAmount;

    invoke-virtual {v2}, Landroid/icu/impl/number/parse/ParsedNumber;->getNumber()Ljava/lang/Number;

    move-result-object v3

    iget-object v4, v2, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    return-object v0

    .line 113
    :cond_29
    iget v0, v2, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V
    .registers 3
    .param p1, "matcher"    # Landroid/icu/impl/number/parse/NumberParseMatcher;

    .line 288
    nop

    .line 289
    iget-object v0, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public blacklist addMatchers(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/icu/impl/number/parse/NumberParseMatcher;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p1, "matchers":Ljava/util/Collection;, "Ljava/util/Collection<+Landroid/icu/impl/number/parse/NumberParseMatcher;>;"
    nop

    .line 294
    iget-object v0, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    return-void
.end method

.method public blacklist freeze()V
    .registers 2

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->frozen:Z

    .line 299
    return-void
.end method

.method public blacklist getParseFlags()I
    .registers 2

    .line 302
    iget v0, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->parseFlags:I

    return v0
.end method

.method public blacklist parse(Ljava/lang/String;IZLandroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 8
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "greedy"    # Z
    .param p4, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 323
    nop

    .line 324
    nop

    .line 325
    new-instance v0, Landroid/icu/impl/StringSegment;

    iget v1, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->parseFlags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-direct {v0, p1, v1}, Landroid/icu/impl/StringSegment;-><init>(Ljava/lang/String;Z)V

    .line 327
    .local v0, "segment":Landroid/icu/impl/StringSegment;
    invoke-virtual {v0, p2}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 328
    if-eqz p3, :cond_19

    .line 329
    invoke-direct {p0, v0, p4}, Landroid/icu/impl/number/parse/NumberParserImpl;->parseGreedy(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)V

    goto :goto_28

    .line 330
    :cond_19
    iget v1, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->parseFlags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_23

    .line 332
    invoke-direct {p0, v0, p4, v2}, Landroid/icu/impl/number/parse/NumberParserImpl;->parseLongestRecursive(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;I)V

    goto :goto_28

    .line 335
    :cond_23
    const/16 v1, -0x64

    invoke-direct {p0, v0, p4, v1}, Landroid/icu/impl/number/parse/NumberParserImpl;->parseLongestRecursive(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;I)V

    .line 337
    :goto_28
    iget-object v1, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/number/parse/NumberParseMatcher;

    .line 338
    .local v2, "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    invoke-interface {v2, p4}, Landroid/icu/impl/number/parse/NumberParseMatcher;->postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 339
    .end local v2    # "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    goto :goto_2e

    .line 340
    :cond_3e
    invoke-virtual {p4}, Landroid/icu/impl/number/parse/ParsedNumber;->postProcess()V

    .line 341
    return-void
.end method

.method public blacklist parse(Ljava/lang/String;ZLandroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "greedy"    # Z
    .param p3, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/impl/number/parse/NumberParserImpl;->parse(Ljava/lang/String;IZLandroid/icu/impl/number/parse/ParsedNumber;)V

    .line 307
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<NumberParserImpl matchers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
