.class public final Landroid/icu/number/NumberFormatter;
.super Ljava/lang/Object;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;,
        Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;,
        Landroid/icu/number/NumberFormatter$SignDisplay;,
        Landroid/icu/number/NumberFormatter$GroupingStrategy;,
        Landroid/icu/number/NumberFormatter$UnitWidth;,
        Landroid/icu/number/NumberFormatter$RoundingPriority;
    }
.end annotation


# static fields
.field private static final blacklist BASE:Landroid/icu/number/UnlocalizedNumberFormatter;

.field static final blacklist DEFAULT_THRESHOLD:J = 0x3L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-direct {v0}, Landroid/icu/number/UnlocalizedNumberFormatter;-><init>()V

    sput-object v0, Landroid/icu/number/NumberFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberFormatter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    return-void
.end method

.method public static blacklist forSkeleton(Ljava/lang/String;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .registers 2
    .param p0, "skeleton"    # Ljava/lang/String;

    .line 532
    invoke-static {p0}, Landroid/icu/number/NumberSkeletonImpl;->getOrCreate(Ljava/lang/String;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromDecimalFormat(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .registers 4
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p2, "exportedProperties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 547
    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberPropertyMapper;->create(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api with()Landroid/icu/number/UnlocalizedNumberFormatter;
    .registers 1

    .line 491
    sget-object v0, Landroid/icu/number/NumberFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberFormatter;

    return-object v0
.end method

.method public static whitelist test-api withLocale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 515
    sget-object v0, Landroid/icu/number/NumberFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v0, p0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api withLocale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 503
    sget-object v0, Landroid/icu/number/NumberFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v0, p0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    return-object v0
.end method
