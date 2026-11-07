.class public Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;
.super Ljava/lang/Object;
.source "PatternStringParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/PatternStringParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedSubpatternInfo"
.end annotation


# instance fields
.field public blacklist exponentHasPlusSign:Z

.field public blacklist exponentZeros:I

.field public blacklist fractionHashSigns:I

.field public blacklist fractionNumerals:I

.field public blacklist fractionTotal:I

.field public blacklist groupingSizes:J

.field public blacklist hasCurrencyDecimal:Z

.field public blacklist hasCurrencySign:Z

.field public blacklist hasDecimal:Z

.field public blacklist hasMinusSign:Z

.field public blacklist hasPerMilleSign:Z

.field public blacklist hasPercentSign:Z

.field public blacklist hasPlusSign:Z

.field public blacklist integerAtSigns:I

.field public blacklist integerLeadingHashSigns:I

.field public blacklist integerNumerals:I

.field public blacklist integerTotal:I

.field public blacklist integerTrailingHashSigns:I

.field public blacklist paddingEndpoints:J

.field public blacklist paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

.field public blacklist prefixEndpoints:J

.field public blacklist rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

.field public blacklist suffixEndpoints:J

.field public blacklist widthExceptAffixes:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const-wide v0, 0xffffffff0000L

    iput-wide v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerLeadingHashSigns:I

    .line 193
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    .line 194
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    .line 195
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    .line 196
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    .line 197
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    .line 198
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    .line 199
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    .line 200
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasDecimal:Z

    .line 201
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

    .line 203
    iput-object v1, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 204
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentHasPlusSign:Z

    .line 205
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    .line 206
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPercentSign:Z

    .line 207
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPerMilleSign:Z

    .line 208
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    .line 209
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencyDecimal:Z

    .line 210
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasMinusSign:Z

    .line 211
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPlusSign:Z

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    .line 214
    iput-wide v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    .line 215
    iput-wide v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    return-void
.end method
