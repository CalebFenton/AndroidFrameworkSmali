.class public Landroid/icu/impl/number/DecimalFormatProperties;
.super Ljava/lang/Object;
.source "DecimalFormatProperties.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT:Landroid/icu/impl/number/DecimalFormatProperties;

.field private static final whitelist serialVersionUID:J = 0x38d634ca98a9d27bL


# instance fields
.field private transient greylist-max-o compactCustomData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

.field private transient greylist-max-o currency:Landroid/icu/util/Currency;

.field private transient blacklist currencyAsDecimal:Z

.field private transient greylist-max-o currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

.field private transient greylist-max-o currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

.field private transient greylist-max-o decimalPatternMatchRequired:Z

.field private transient greylist-max-o decimalSeparatorAlwaysShown:Z

.field private transient greylist-max-o exponentSignAlwaysShown:Z

.field private transient greylist-max-o formatWidth:I

.field private transient greylist-max-o groupingSize:I

.field private transient blacklist groupingUsed:Z

.field private transient greylist-max-o magnitudeMultiplier:I

.field private transient greylist-max-o mathContext:Ljava/math/MathContext;

.field private transient greylist-max-o maximumFractionDigits:I

.field private transient greylist-max-o maximumIntegerDigits:I

.field private transient greylist-max-o maximumSignificantDigits:I

.field private transient greylist-max-o minimumExponentDigits:I

.field private transient greylist-max-o minimumFractionDigits:I

.field private transient greylist-max-o minimumGroupingDigits:I

.field private transient greylist-max-o minimumIntegerDigits:I

.field private transient greylist-max-o minimumSignificantDigits:I

.field private transient greylist-max-o multiplier:Ljava/math/BigDecimal;

.field private transient greylist-max-o negativePrefix:Ljava/lang/String;

.field private transient greylist-max-o negativePrefixPattern:Ljava/lang/String;

.field private transient greylist-max-o negativeSuffix:Ljava/lang/String;

.field private transient greylist-max-o negativeSuffixPattern:Ljava/lang/String;

.field private transient greylist-max-o padPosition:Landroid/icu/impl/number/Padder$PadPosition;

.field private transient greylist-max-o padString:Ljava/lang/String;

.field private transient greylist-max-o parseCaseSensitive:Z

.field private transient greylist-max-o parseIntegerOnly:Z

.field private transient blacklist parseMode:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

.field private transient greylist-max-o parseNoExponent:Z

.field private transient greylist-max-o parseToBigDecimal:Z

.field private transient greylist-max-o pluralRules:Landroid/icu/text/PluralRules;

.field private transient greylist-max-o positivePrefix:Ljava/lang/String;

.field private transient greylist-max-o positivePrefixPattern:Ljava/lang/String;

.field private transient greylist-max-o positiveSuffix:Ljava/lang/String;

.field private transient greylist-max-o positiveSuffixPattern:Ljava/lang/String;

.field private transient greylist-max-o roundingIncrement:Ljava/math/BigDecimal;

.field private transient greylist-max-o roundingMode:Ljava/math/RoundingMode;

.field private transient greylist-max-o secondaryGroupingSize:I

.field private transient greylist-max-o signAlwaysShown:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    sput-object v0, Landroid/icu/impl/number/DecimalFormatProperties;->DEFAULT:Landroid/icu/impl/number/DecimalFormatProperties;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->clear()Landroid/icu/impl/number/DecimalFormatProperties;

    .line 147
    return-void
.end method

.method private greylist-max-o _clear()Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 5

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    .line 166
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 167
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    .line 168
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 169
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    .line 171
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    .line 172
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    .line 173
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyAsDecimal:Z

    .line 174
    const/4 v2, -0x1

    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    .line 175
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    .line 176
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    .line 177
    iput v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    .line 178
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    .line 179
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    .line 180
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    .line 181
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    .line 182
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    .line 183
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    .line 184
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    .line 185
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    .line 186
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    .line 187
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    .line 188
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    .line 193
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    .line 194
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    .line 195
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    .line 196
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 197
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    .line 198
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    .line 199
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    .line 200
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    .line 204
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    .line 205
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    .line 206
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    .line 207
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    .line 208
    return-object p0
.end method

.method private greylist-max-o _copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 3
    .param p1, "other"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 212
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    .line 213
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 214
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    .line 215
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 216
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    .line 217
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    .line 218
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    .line 219
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    .line 220
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currencyAsDecimal:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyAsDecimal:Z

    .line 221
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    .line 222
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    .line 223
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    .line 224
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    .line 225
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    .line 226
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    .line 227
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    .line 228
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    .line 229
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    .line 230
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    .line 231
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    .line 232
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    .line 233
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    .line 234
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    .line 235
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    .line 236
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    .line 237
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    .line 238
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    .line 239
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    .line 240
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    .line 241
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    .line 242
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    .line 243
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 244
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    .line 245
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    .line 246
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    .line 247
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    .line 249
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    .line 250
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    .line 251
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    .line 252
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    .line 253
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    .line 254
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    .line 255
    return-object p0
.end method

.method private greylist-max-o _equals(Landroid/icu/impl/number/DecimalFormatProperties;)Z
    .registers 7
    .param p1, "other"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 259
    const/4 v0, 0x1

    .line 260
    .local v0, "eq":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v1

    goto :goto_12

    :cond_11
    move v3, v2

    .line 261
    .end local v0    # "eq":Z
    .local v3, "eq":Z
    :goto_12
    if-eqz v3, :cond_20

    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    .line 262
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_21
    if-eqz v0, :cond_2f

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move v3, v1

    goto :goto_30

    :cond_2f
    move v3, v2

    .line 263
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_30
    if-eqz v3, :cond_3e

    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v1

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 264
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_3f
    if-eqz v0, :cond_4d

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    move v3, v1

    goto :goto_4e

    :cond_4d
    move v3, v2

    .line 265
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_4e
    if-eqz v3, :cond_5c

    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    iget-boolean v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5c

    move v0, v1

    goto :goto_5d

    :cond_5c
    move v0, v2

    .line 266
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_5d
    if-eqz v0, :cond_6b

    iget-boolean v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    iget-boolean v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v3

    if-eqz v3, :cond_6b

    move v3, v1

    goto :goto_6c

    :cond_6b
    move v3, v2

    .line 267
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_6c
    if-eqz v3, :cond_7a

    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    iget-boolean v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7a

    move v0, v1

    goto :goto_7b

    :cond_7a
    move v0, v2

    .line 268
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_7b
    if-eqz v0, :cond_89

    iget-boolean v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyAsDecimal:Z

    iget-boolean v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currencyAsDecimal:Z

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v3

    if-eqz v3, :cond_89

    move v3, v1

    goto :goto_8a

    :cond_89
    move v3, v2

    .line 269
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_8a
    if-eqz v3, :cond_98

    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_98

    move v0, v1

    goto :goto_99

    :cond_98
    move v0, v2

    .line 270
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_99
    if-eqz v0, :cond_a7

    iget v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v3

    if-eqz v3, :cond_a7

    move v3, v1

    goto :goto_a8

    :cond_a7
    move v3, v2

    .line 271
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_a8
    if-eqz v3, :cond_b6

    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    iget-boolean v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_b6

    move v0, v1

    goto :goto_b7

    :cond_b6
    move v0, v2

    .line 272
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_b7
    if-eqz v0, :cond_c5

    iget v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v3

    if-eqz v3, :cond_c5

    move v3, v1

    goto :goto_c6

    :cond_c5
    move v3, v2

    .line 273
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_c6
    if-eqz v3, :cond_d4

    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    move v0, v1

    goto :goto_d5

    :cond_d4
    move v0, v2

    .line 274
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_d5
    if-eqz v0, :cond_e3

    iget v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v3

    if-eqz v3, :cond_e3

    move v3, v1

    goto :goto_e4

    :cond_e3
    move v3, v2

    .line 275
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_e4
    if-eqz v3, :cond_f2

    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_f2

    move v0, v1

    goto :goto_f3

    :cond_f2
    move v0, v2

    .line 276
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_f3
    if-eqz v0, :cond_101

    iget v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v3

    if-eqz v3, :cond_101

    move v3, v1

    goto :goto_102

    :cond_101
    move v3, v2

    .line 277
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_102
    if-eqz v3, :cond_110

    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_110

    move v0, v1

    goto :goto_111

    :cond_110
    move v0, v2

    .line 278
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_111
    if-eqz v0, :cond_11f

    iget v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v3

    if-eqz v3, :cond_11f

    move v3, v1

    goto :goto_120

    :cond_11f
    move v3, v2

    .line 279
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_120
    if-eqz v3, :cond_12e

    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_12e

    move v0, v1

    goto :goto_12f

    :cond_12e
    move v0, v2

    .line 280
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_12f
    if-eqz v0, :cond_13d

    iget v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v3

    if-eqz v3, :cond_13d

    move v3, v1

    goto :goto_13e

    :cond_13d
    move v3, v2

    .line 281
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_13e
    if-eqz v3, :cond_14c

    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_14c

    move v0, v1

    goto :goto_14d

    :cond_14c
    move v0, v2

    .line 282
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_14d
    if-eqz v0, :cond_15b

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15b

    move v3, v1

    goto :goto_15c

    :cond_15b
    move v3, v2

    .line 283
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_15c
    if-eqz v3, :cond_16a

    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a

    move v0, v1

    goto :goto_16b

    :cond_16a
    move v0, v2

    .line 284
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_16b
    if-eqz v0, :cond_179

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_179

    move v3, v1

    goto :goto_17a

    :cond_179
    move v3, v2

    .line 285
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_17a
    if-eqz v3, :cond_188

    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    move v0, v1

    goto :goto_189

    :cond_188
    move v0, v2

    .line 286
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_189
    if-eqz v0, :cond_197

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_197

    move v3, v1

    goto :goto_198

    :cond_197
    move v3, v2

    .line 287
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_198
    if-eqz v3, :cond_1a6

    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    move v0, v1

    goto :goto_1a7

    :cond_1a6
    move v0, v2

    .line 288
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_1a7
    if-eqz v0, :cond_1b5

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b5

    move v3, v1

    goto :goto_1b6

    :cond_1b5
    move v3, v2

    .line 289
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_1b6
    if-eqz v3, :cond_1c4

    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    iget-boolean v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1c4

    move v0, v1

    goto :goto_1c5

    :cond_1c4
    move v0, v2

    .line 290
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_1c5
    if-eqz v0, :cond_1d3

    iget-boolean v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    iget-boolean v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1d3

    move v3, v1

    goto :goto_1d4

    :cond_1d3
    move v3, v2

    .line 291
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_1d4
    if-eqz v3, :cond_1e2

    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    move v0, v1

    goto :goto_1e3

    :cond_1e2
    move v0, v2

    .line 292
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_1e3
    if-eqz v0, :cond_1f1

    iget-boolean v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    iget-boolean v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1f1

    move v3, v1

    goto :goto_1f2

    :cond_1f1
    move v3, v2

    .line 293
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_1f2
    if-eqz v3, :cond_200

    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    iget-boolean v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_200

    move v0, v1

    goto :goto_201

    :cond_200
    move v0, v2

    .line 294
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_201
    if-eqz v0, :cond_20f

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20f

    move v3, v1

    goto :goto_210

    :cond_20f
    move v3, v2

    .line 295
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_210
    if-eqz v3, :cond_21e

    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    move v0, v1

    goto :goto_21f

    :cond_21e
    move v0, v2

    .line 296
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_21f
    if-eqz v0, :cond_22d

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22d

    move v3, v1

    goto :goto_22e

    :cond_22d
    move v3, v2

    .line 297
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_22e
    if-eqz v3, :cond_23c

    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c

    move v0, v1

    goto :goto_23d

    :cond_23c
    move v0, v2

    .line 298
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_23d
    if-eqz v0, :cond_24b

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24b

    move v3, v1

    goto :goto_24c

    :cond_24b
    move v3, v2

    .line 299
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_24c
    if-eqz v3, :cond_25a

    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25a

    move v0, v1

    goto :goto_25b

    :cond_25a
    move v0, v2

    .line 300
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_25b
    if-eqz v0, :cond_269

    iget-object v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    iget-object v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_269

    move v3, v1

    goto :goto_26a

    :cond_269
    move v3, v2

    .line 301
    .end local v0    # "eq":Z
    .restart local v3    # "eq":Z
    :goto_26a
    if-eqz v3, :cond_278

    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    iget v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_278

    move v0, v1

    goto :goto_279

    :cond_278
    move v0, v2

    .line 302
    .end local v3    # "eq":Z
    .restart local v0    # "eq":Z
    :goto_279
    if-eqz v0, :cond_286

    iget-boolean v3, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    iget-boolean v4, p1, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v3

    if-eqz v3, :cond_286

    goto :goto_287

    :cond_286
    move v1, v2

    .line 303
    .end local v0    # "eq":Z
    .local v1, "eq":Z
    :goto_287
    return v1
.end method

.method private greylist-max-o _equalsHelper(II)Z
    .registers 4
    .param p1, "mine"    # I
    .param p2, "theirs"    # I

    .line 311
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private greylist-max-o _equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "mine"    # Ljava/lang/Object;
    .param p2, "theirs"    # Ljava/lang/Object;

    .line 315
    if-ne p1, p2, :cond_4

    .line 316
    const/4 v0, 0x1

    return v0

    .line 317
    :cond_4
    if-nez p1, :cond_8

    .line 318
    const/4 v0, 0x0

    return v0

    .line 319
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o _equalsHelper(ZZ)Z
    .registers 4
    .param p1, "mine"    # Z
    .param p2, "theirs"    # Z

    .line 307
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private greylist-max-o _hashCode()I
    .registers 3

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "hashCode":I
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 325
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 326
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 327
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 328
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 329
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 330
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 331
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 332
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyAsDecimal:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 333
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 334
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 335
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 336
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 337
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 338
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 339
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 340
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 341
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 342
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 343
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 344
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 345
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 346
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 347
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 348
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 349
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 350
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 351
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 352
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 353
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 354
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 355
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 356
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 357
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 358
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 359
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 360
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 361
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 362
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 363
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 364
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 365
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 366
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 367
    return v0
.end method

.method private greylist-max-o _hashCodeHelper(I)I
    .registers 3
    .param p1, "value"    # I

    .line 375
    mul-int/lit8 v0, p1, 0xd

    return v0
.end method

.method private greylist-max-o _hashCodeHelper(Ljava/lang/Object;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 379
    if-nez p1, :cond_4

    .line 380
    const/4 v0, 0x0

    return v0

    .line 381
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method private greylist-max-o _hashCodeHelper(Z)I
    .registers 2
    .param p1, "value"    # Z

    .line 371
    return p1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 603
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->readObjectImpl(Ljava/io/ObjectInputStream;)V

    .line 604
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1423
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->writeObjectImpl(Ljava/io/ObjectOutputStream;)V

    .line 1424
    return-void
.end method


# virtual methods
.method public blacklist clear()Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2

    .line 385
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->_clear()Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clone()Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 3

    .line 393
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/DecimalFormatProperties;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 394
    :catch_7
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->clone()Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 3
    .param p1, "other"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 408
    invoke-direct {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->_copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 413
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 414
    return v0

    .line 415
    :cond_4
    if-ne p0, p1, :cond_8

    .line 416
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_8
    instance-of v1, p1, Landroid/icu/impl/number/DecimalFormatProperties;

    if-nez v1, :cond_d

    .line 418
    return v0

    .line 419
    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->_equals(Landroid/icu/impl/number/DecimalFormatProperties;)Z

    move-result v0

    return v0
.end method

.method public blacklist getCompactCustomData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getCompactStyle()Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .registers 2

    .line 429
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    return-object v0
.end method

.method public blacklist getCurrency()Landroid/icu/util/Currency;
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    return-object v0
.end method

.method public blacklist getCurrencyAsDecimal()Z
    .registers 2

    .line 457
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyAsDecimal:Z

    return v0
.end method

.method public blacklist getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;
    .registers 2

    .line 437
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    return-object v0
.end method

.method public blacklist getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;
    .registers 2

    .line 441
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method

.method public blacklist getDecimalPatternMatchRequired()Z
    .registers 2

    .line 445
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    return v0
.end method

.method public blacklist getDecimalSeparatorAlwaysShown()Z
    .registers 2

    .line 449
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    return v0
.end method

.method public blacklist getExponentSignAlwaysShown()Z
    .registers 2

    .line 453
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    return v0
.end method

.method public blacklist getFormatWidth()I
    .registers 2

    .line 461
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    return v0
.end method

.method public blacklist getGroupingSize()I
    .registers 2

    .line 465
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    return v0
.end method

.method public blacklist getGroupingUsed()Z
    .registers 2

    .line 469
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    return v0
.end method

.method public blacklist getMagnitudeMultiplier()I
    .registers 2

    .line 473
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    return v0
.end method

.method public blacklist getMathContext()Ljava/math/MathContext;
    .registers 2

    .line 477
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method public blacklist getMaximumFractionDigits()I
    .registers 2

    .line 481
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    return v0
.end method

.method public blacklist getMaximumIntegerDigits()I
    .registers 2

    .line 485
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    return v0
.end method

.method public blacklist getMaximumSignificantDigits()I
    .registers 2

    .line 489
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    return v0
.end method

.method public blacklist getMinimumExponentDigits()I
    .registers 2

    .line 493
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    return v0
.end method

.method public blacklist getMinimumFractionDigits()I
    .registers 2

    .line 497
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    return v0
.end method

.method public blacklist getMinimumGroupingDigits()I
    .registers 2

    .line 501
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    return v0
.end method

.method public blacklist getMinimumIntegerDigits()I
    .registers 2

    .line 505
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    return v0
.end method

.method public blacklist getMinimumSignificantDigits()I
    .registers 2

    .line 509
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    return v0
.end method

.method public blacklist getMultiplier()Ljava/math/BigDecimal;
    .registers 2

    .line 513
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public blacklist getNegativePrefix()Ljava/lang/String;
    .registers 2

    .line 517
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNegativePrefixPattern()Ljava/lang/String;
    .registers 2

    .line 521
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNegativeSuffix()Ljava/lang/String;
    .registers 2

    .line 525
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNegativeSuffixPattern()Ljava/lang/String;
    .registers 2

    .line 529
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPadPosition()Landroid/icu/impl/number/Padder$PadPosition;
    .registers 2

    .line 533
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    return-object v0
.end method

.method public blacklist getPadString()Ljava/lang/String;
    .registers 2

    .line 537
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParseCaseSensitive()Z
    .registers 2

    .line 541
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    return v0
.end method

.method public blacklist getParseIntegerOnly()Z
    .registers 2

    .line 545
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    return v0
.end method

.method public blacklist getParseMode()Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
    .registers 2

    .line 549
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    return-object v0
.end method

.method public blacklist getParseNoExponent()Z
    .registers 2

    .line 553
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    return v0
.end method

.method public blacklist getParseToBigDecimal()Z
    .registers 2

    .line 557
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    return v0
.end method

.method public blacklist getPluralRules()Landroid/icu/text/PluralRules;
    .registers 2

    .line 561
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    return-object v0
.end method

.method public blacklist getPositivePrefix()Ljava/lang/String;
    .registers 2

    .line 565
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPositivePrefixPattern()Ljava/lang/String;
    .registers 2

    .line 569
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPositiveSuffix()Ljava/lang/String;
    .registers 2

    .line 573
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPositiveSuffixPattern()Ljava/lang/String;
    .registers 2

    .line 577
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRoundingIncrement()Ljava/math/BigDecimal;
    .registers 2

    .line 581
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public blacklist getRoundingMode()Ljava/math/RoundingMode;
    .registers 2

    .line 585
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public blacklist getSecondaryGroupingSize()I
    .registers 2

    .line 589
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    return v0
.end method

.method public blacklist getSignAlwaysShown()Z
    .registers 2

    .line 593
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 598
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCode()I

    move-result v0

    return v0
.end method

.method greylist-max-o readObjectImpl(Ljava/io/ObjectInputStream;)V
    .registers 9
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 608
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 611
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->clear()Landroid/icu/impl/number/DecimalFormatProperties;

    .line 614
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 617
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 620
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_40

    .line 621
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 622
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 625
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 627
    .local v4, "field":Ljava/lang/reflect/Field;
    :try_start_1b
    const-class v5, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_21} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_21} :catch_34

    .line 634
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .local v5, "field":Ljava/lang/reflect/Field;
    nop

    .line 641
    :try_start_22
    invoke-virtual {v5, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_25} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_25} :catch_26

    .line 648
    goto :goto_3d

    .line 645
    :catch_26
    move-exception v4

    .line 647
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 642
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_2d
    move-exception v4

    .line 644
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 631
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .local v4, "field":Ljava/lang/reflect/Field;
    :catch_34
    move-exception v5

    .line 633
    .local v5, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 628
    .end local v5    # "e":Ljava/lang/SecurityException;
    :catch_3b
    move-exception v5

    .line 630
    .local v5, "e":Ljava/lang/NoSuchFieldException;
    nop

    .line 620
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "e":Ljava/lang/NoSuchFieldException;
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 650
    .end local v1    # "i":I
    :cond_40
    return-void
.end method

.method public blacklist setCompactCustomData(Ljava/util/Map;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/icu/impl/number/DecimalFormatProperties;"
        }
    .end annotation

    .line 679
    .local p1, "compactCustomData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    .line 680
    return-object p0
.end method

.method public blacklist setCompactStyle(Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "compactStyle"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 693
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 694
    return-object p0
.end method

.method public blacklist setCurrency(Landroid/icu/util/Currency;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "currency"    # Landroid/icu/util/Currency;

    .line 705
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    .line 706
    return-object p0
.end method

.method public blacklist setCurrencyAsDecimal(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "currencyAsDecimal"    # Z

    .line 794
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyAsDecimal:Z

    .line 795
    return-object p0
.end method

.method public blacklist setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 3
    .param p1, "currencyPluralInfo"    # Landroid/icu/text/CurrencyPluralInfo;

    .line 719
    if-eqz p1, :cond_9

    .line 720
    invoke-virtual {p1}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/icu/text/CurrencyPluralInfo;

    .line 722
    :cond_9
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 723
    return-object p0
.end method

.method public blacklist setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "currencyUsage"    # Landroid/icu/util/Currency$CurrencyUsage;

    .line 739
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    .line 740
    return-object p0
.end method

.method public blacklist setDecimalPatternMatchRequired(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "decimalPatternMatchRequired"    # Z

    .line 754
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    .line 755
    return-object p0
.end method

.method public blacklist setDecimalSeparatorAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "alwaysShowDecimal"    # Z

    .line 768
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    .line 769
    return-object p0
.end method

.method public blacklist setExponentSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "exponentSignAlwaysShown"    # Z

    .line 782
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    .line 783
    return-object p0
.end method

.method public blacklist setFormatWidth(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "paddingWidth"    # I

    .line 817
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    .line 818
    return-object p0
.end method

.method public blacklist setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "groupingSize"    # I

    .line 831
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    .line 832
    return-object p0
.end method

.method public blacklist setGroupingUsed(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "groupingUsed"    # Z

    .line 843
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    .line 844
    return-object p0
.end method

.method public blacklist setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "magnitudeMultiplier"    # I

    .line 857
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    .line 858
    return-object p0
.end method

.method public blacklist setMathContext(Ljava/math/MathContext;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "mathContext"    # Ljava/math/MathContext;

    .line 872
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    .line 873
    return-object p0
.end method

.method public blacklist setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "maximumFractionDigits"    # I

    .line 889
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    .line 890
    return-object p0
.end method

.method public blacklist setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "maximumIntegerDigits"    # I

    .line 905
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    .line 906
    return-object p0
.end method

.method public blacklist setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "maximumSignificantDigits"    # I

    .line 931
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    .line 932
    return-object p0
.end method

.method public blacklist setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "minimumExponentDigits"    # I

    .line 945
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    .line 946
    return-object p0
.end method

.method public blacklist setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "minimumFractionDigits"    # I

    .line 960
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    .line 961
    return-object p0
.end method

.method public blacklist setMinimumGroupingDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "minimumGroupingDigits"    # I

    .line 975
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    .line 976
    return-object p0
.end method

.method public blacklist setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "minimumIntegerDigits"    # I

    .line 990
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    .line 991
    return-object p0
.end method

.method public blacklist setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "minimumSignificantDigits"    # I

    .line 1017
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    .line 1018
    return-object p0
.end method

.method public blacklist setMultiplier(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "multiplier"    # Ljava/math/BigDecimal;

    .line 1030
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    .line 1031
    return-object p0
.end method

.method public blacklist setNegativePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "negativePrefix"    # Ljava/lang/String;

    .line 1049
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    .line 1050
    return-object p0
.end method

.method public blacklist setNegativePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "negativePrefixPattern"    # Ljava/lang/String;

    .line 1067
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    .line 1068
    return-object p0
.end method

.method public blacklist setNegativeSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "negativeSuffix"    # Ljava/lang/String;

    .line 1087
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    .line 1088
    return-object p0
.end method

.method public blacklist setNegativeSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "negativeSuffixPattern"    # Ljava/lang/String;

    .line 1105
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    .line 1106
    return-object p0
.end method

.method public blacklist setPadPosition(Landroid/icu/impl/number/Padder$PadPosition;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "paddingLocation"    # Landroid/icu/impl/number/Padder$PadPosition;

    .line 1122
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    .line 1123
    return-object p0
.end method

.method public blacklist setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "paddingString"    # Ljava/lang/String;

    .line 1139
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    .line 1140
    return-object p0
.end method

.method public blacklist setParseCaseSensitive(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "parseCaseSensitive"    # Z

    .line 1158
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    .line 1159
    return-object p0
.end method

.method public blacklist setParseIntegerOnly(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "parseIntegerOnly"    # Z

    .line 1171
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    .line 1172
    return-object p0
.end method

.method public blacklist setParseMode(Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "parseMode"    # Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 1184
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 1185
    return-object p0
.end method

.method public blacklist setParseNoExponent(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "parseNoExponent"    # Z

    .line 1197
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    .line 1198
    return-object p0
.end method

.method public blacklist setParseToBigDecimal(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "parseToBigDecimal"    # Z

    .line 1211
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    .line 1212
    return-object p0
.end method

.method public blacklist setPluralRules(Landroid/icu/text/PluralRules;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "pluralRules"    # Landroid/icu/text/PluralRules;

    .line 1223
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    .line 1224
    return-object p0
.end method

.method public blacklist setPositivePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "positivePrefix"    # Ljava/lang/String;

    .line 1241
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    .line 1242
    return-object p0
.end method

.method public blacklist setPositivePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "positivePrefixPattern"    # Ljava/lang/String;

    .line 1259
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    .line 1260
    return-object p0
.end method

.method public blacklist setPositiveSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "positiveSuffix"    # Ljava/lang/String;

    .line 1277
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    .line 1278
    return-object p0
.end method

.method public blacklist setPositiveSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "positiveSuffixPattern"    # Ljava/lang/String;

    .line 1295
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    .line 1296
    return-object p0
.end method

.method public blacklist setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "roundingIncrement"    # Ljava/math/BigDecimal;

    .line 1316
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    .line 1317
    return-object p0
.end method

.method public blacklist setRoundingMode(Ljava/math/RoundingMode;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1335
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    .line 1336
    return-object p0
.end method

.method public blacklist setSecondaryGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "secondaryGroupingSize"    # I

    .line 1353
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    .line 1354
    return-object p0
.end method

.method public blacklist setSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p1, "signAlwaysShown"    # Z

    .line 1377
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    .line 1378
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1384
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "<Properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->toStringBare(Ljava/lang/StringBuilder;)V

    .line 1386
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toStringBare(Ljava/lang/StringBuilder;)V
    .registers 11
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .line 1395
    const-class v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1396
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_7a

    aget-object v3, v0, v2

    .line 1399
    .local v3, "field":Ljava/lang/reflect/Field;
    :try_start_c
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1400
    .local v4, "myValue":Ljava/lang/Object;
    sget-object v5, Landroid/icu/impl/number/DecimalFormatProperties;->DEFAULT:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_16} :catch_72
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_16} :catch_6d

    .line 1407
    .local v5, "defaultValue":Ljava/lang/Object;
    nop

    .line 1408
    if-nez v4, :cond_1c

    if-nez v5, :cond_1c

    .line 1409
    goto :goto_77

    .line 1410
    :cond_1c
    const-string v6, ":"

    const-string v7, " "

    if-eqz v4, :cond_4c

    if-nez v5, :cond_25

    goto :goto_4c

    .line 1412
    :cond_25
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_77

    .line 1413
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 1411
    :cond_4c
    :goto_4c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 1404
    .end local v4    # "myValue":Ljava/lang/Object;
    .end local v5    # "defaultValue":Ljava/lang/Object;
    :catch_6d
    move-exception v4

    .line 1405
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 1406
    goto :goto_77

    .line 1401
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_72
    move-exception v4

    .line 1402
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1403
    nop

    .line 1396
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_77
    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1416
    :cond_7a
    return-void
.end method

.method greylist-max-o writeObjectImpl(Ljava/io/ObjectOutputStream;)V
    .registers 11
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1427
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1430
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    .local v1, "fieldsToSerialize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1434
    .local v2, "valuesToSerialize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-class v3, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1435
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v4, v3

    :goto_18
    if-ge v0, v4, :cond_52

    aget-object v5, v3, v0

    .line 1436
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1437
    goto :goto_41

    .line 1440
    :cond_27
    :try_start_27
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1441
    .local v6, "myValue":Ljava/lang/Object;
    if-nez v6, :cond_2e

    .line 1443
    goto :goto_41

    .line 1445
    :cond_2e
    sget-object v7, Landroid/icu/impl/number/DecimalFormatProperties;->DEFAULT:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1446
    .local v7, "defaultValue":Ljava/lang/Object;
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    .line 1447
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_40} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_40} :catch_44

    .line 1456
    .end local v6    # "myValue":Ljava/lang/Object;
    .end local v7    # "defaultValue":Ljava/lang/Object;
    :cond_40
    nop

    .line 1435
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1453
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    :catch_44
    move-exception v0

    .line 1455
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1450
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4b
    move-exception v0

    .line 1452
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1460
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1461
    .local v0, "count":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1464
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5a
    if-ge v4, v0, :cond_73

    .line 1465
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    .line 1466
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1467
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1468
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1464
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 1470
    .end local v4    # "i":I
    :cond_73
    return-void
.end method
