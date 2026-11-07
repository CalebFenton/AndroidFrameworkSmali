.class public final Landroid/icu/text/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RelativeDateTimeFormatter$Style;,
        Landroid/icu/text/RelativeDateTimeFormatter$Cache;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;,
        Landroid/icu/text/RelativeDateTimeFormatter$Direction;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;,
        Landroid/icu/text/RelativeDateTimeFormatter$Field;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$Loader;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;
    }
.end annotation


# static fields
.field private static final greylist-max-o cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

.field private static final greylist-max-o fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;


# instance fields
.field private final greylist-max-o breakIterator:Landroid/icu/text/BreakIterator;

.field private final greylist-max-o capitalizationContext:Landroid/icu/text/DisplayContext;

.field private final greylist-max-o combinedDateAndTime:Ljava/lang/String;

.field private final greylist-max-o dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private final greylist-max-o locale:Landroid/icu/util/ULocale;

.field private final greylist-max-o numberFormat:Landroid/icu/text/NumberFormat;

.field private final greylist-max-o patternMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o pluralRules:Landroid/icu/text/PluralRules;

.field private final greylist-max-o qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field private greylist-max-o styleToDateFormatSymbolsWidth:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetfallbackCache()[Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .registers 1

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smkeyToDirection(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .registers 1

    invoke-static {p0}, Landroid/icu/text/RelativeDateTimeFormatter;->keyToDirection(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1097
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 1504
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;-><init>(Landroid/icu/text/RelativeDateTimeFormatter-IA;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;)V
    .registers 13
    .param p3, "combinedDateAndTime"    # Ljava/lang/String;
    .param p4, "pluralRules"    # Landroid/icu/text/PluralRules;
    .param p5, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p6, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p7, "capitalizationContext"    # Landroid/icu/text/DisplayContext;
    .param p8, "breakIterator"    # Landroid/icu/text/BreakIterator;
    .param p9, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules;",
            "Landroid/icu/text/NumberFormat;",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Landroid/icu/text/DisplayContext;",
            "Landroid/icu/text/BreakIterator;",
            "Landroid/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    .line 1034
    .local p1, "qualitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;>;"
    .local p2, "patternMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;[[Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->styleToDateFormatSymbolsWidth:[I

    .line 1035
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    .line 1036
    iput-object p2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->patternMap:Ljava/util/EnumMap;

    .line 1037
    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Ljava/lang/String;

    .line 1038
    iput-object p4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    .line 1039
    iput-object p5, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 1040
    iput-object p6, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 1041
    invoke-virtual {p7}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne v0, v1, :cond_2e

    .line 1044
    iput-object p7, p0, Landroid/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Landroid/icu/text/DisplayContext;

    .line 1045
    iput-object p8, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    .line 1046
    iput-object p9, p0, Landroid/icu/text/RelativeDateTimeFormatter;->locale:Landroid/icu/util/ULocale;

    .line 1047
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0, p9}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 1048
    return-void

    .line 1042
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "originalFormattedString"    # Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    .line 1007
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_28

    .line 1010
    :cond_16
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    monitor-enter v0

    .line 1011
    :try_start_19
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->locale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    const/16 v3, 0x300

    invoke-static {v1, p1, v2, v3}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1016
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_25

    throw v1

    .line 1008
    :cond_28
    :goto_28
    return-object p1
.end method

.method private blacklist checkNoAdjustForContext()V
    .registers 3

    .line 1020
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_5

    .line 1023
    return-void

    .line 1021
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Capitalization context is not supported in formatV"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist formatAbsoluteImpl(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    .registers 8
    .param p1, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 799
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    if-ne p2, v0, :cond_11

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 800
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NOW can only accept direction PLAIN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_11
    :goto_11
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p1, v0, :cond_4d

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_4d

    .line 805
    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v0

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_4d

    .line 807
    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v0

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 808
    .local v0, "dateSymbolsDayOrdinal":I
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->styleToDateFormatSymbolsWidth:[I

    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 810
    invoke-virtual {v4}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v4

    aget v3, v3, v4

    .line 809
    invoke-virtual {v2, v1, v3}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "dayNames":[Ljava/lang/String;
    aget-object v0, v1, v0

    .line 812
    .end local v1    # "dayNames":[Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    goto :goto_53

    .line 814
    .end local v0    # "result":Ljava/lang/String;
    :cond_4d
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {p0, v0, p2, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->getAbsoluteUnitString(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/text/RelativeDateTimeFormatter$Direction;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .restart local v0    # "result":Ljava/lang/String;
    :goto_53
    return-object v0
.end method

.method private blacklist formatImpl(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Landroid/icu/impl/FormattedStringBuilder;
    .registers 13
    .param p1, "quantity"    # D
    .param p3, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p4, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 649
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-eq p3, v0, :cond_11

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p3, v0, :cond_9

    goto :goto_11

    .line 650
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be NEXT or LAST"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_11
    :goto_11
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    move v0, v1

    .line 654
    .local v0, "pastFutureIndex":I
    :goto_19
    new-instance v2, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v2}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 656
    .local v2, "output":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v3, v3, Landroid/icu/text/DecimalFormat;

    if-eqz v3, :cond_3b

    .line 657
    new-instance v3, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v3, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    .line 658
    .local v3, "dq":Landroid/icu/impl/number/DecimalQuantity;
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v4, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormat;->toNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 659
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v4, v3}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "pluralKeyword":Ljava/lang/String;
    goto :goto_4c

    .line 661
    .end local v3    # "pluralKeyword":Ljava/lang/String;
    :cond_3b
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v3, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    .line 663
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v4, p1, p2}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 665
    .local v3, "pluralKeyword":Ljava/lang/String;
    :goto_4c
    invoke-static {v3}, Landroid/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v4

    .line 667
    .local v4, "pluralForm":Landroid/icu/impl/StandardPlural;
    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {p0, v5, p4, v0, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPluralPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v5

    .line 668
    .local v5, "compiledPattern":Ljava/lang/String;
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Landroid/icu/text/RelativeDateTimeFormatter$Field;

    invoke-virtual {v2}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v7

    invoke-static {v5, v6, v1, v7, v2}, Landroid/icu/impl/SimpleFormatterImpl;->formatPrefixSuffix(Ljava/lang/String;Ljava/text/Format$Field;IILandroid/icu/impl/FormattedStringBuilder;)I

    .line 669
    return-object v2
.end method

.method private blacklist formatNumericImpl(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Landroid/icu/impl/FormattedStringBuilder;
    .registers 8
    .param p1, "offset"    # D
    .param p3, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 723
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 724
    .local v0, "relunit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    invoke-virtual {p3}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    goto :goto_34

    .line 739
    :pswitch_a
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SATURDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 738
    :pswitch_d
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->FRIDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 737
    :pswitch_10
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->THURSDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 736
    :pswitch_13
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEDNESDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 735
    :pswitch_16
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->TUESDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 734
    :pswitch_19
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 733
    :pswitch_1c
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SUNDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 732
    :pswitch_1f
    goto :goto_34

    .line 731
    :pswitch_20
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 730
    :pswitch_23
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 729
    :pswitch_26
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 728
    :pswitch_29
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 727
    :pswitch_2c
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 726
    :pswitch_2f
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_34

    .line 725
    :pswitch_32
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 741
    :goto_34
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 742
    .local v1, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gez v2, :cond_41

    .line 743
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 744
    neg-double p1, p1

    .line 746
    :cond_41
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->formatImpl(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v2

    return-object v2

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist formatRelativeImpl(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "offset"    # D
    .param p3, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 878
    const/4 v0, 0x1

    .line 879
    .local v0, "useNumeric":Z
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 880
    .local v1, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    const-wide v2, -0x3fff333333333333L    # -2.1

    cmpl-double v2, p1, v2

    if-lez v2, :cond_3b

    const-wide v2, 0x4000cccccccccccdL    # 2.1

    cmpg-double v2, p1, v2

    if-gez v2, :cond_3b

    .line 882
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p1

    .line 883
    .local v2, "offsetx100":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-gez v4, :cond_24

    sub-double v4, v2, v5

    double-to-int v4, v4

    goto :goto_26

    :cond_24
    add-double/2addr v5, v2

    double-to-int v4, v5

    .line 884
    .local v4, "intoffsetx100":I
    :goto_26
    sparse-switch v4, :sswitch_data_8c

    goto :goto_3b

    .line 889
    :sswitch_2a
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v0, 0x0

    goto :goto_3b

    .line 888
    :sswitch_2e
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v0, 0x0

    goto :goto_3b

    .line 887
    :sswitch_32
    const/4 v0, 0x0

    goto :goto_3b

    .line 886
    :sswitch_34
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v0, 0x0

    goto :goto_3b

    .line 885
    :sswitch_38
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v0, 0x0

    .line 893
    .end local v2    # "offsetx100":D
    .end local v4    # "intoffsetx100":I
    :cond_3b
    :goto_3b
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 894
    .local v2, "absunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    invoke-virtual {p3}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_a2

    .line 919
    const/4 v0, 0x1

    goto :goto_78

    .line 906
    :pswitch_46
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 905
    :pswitch_49
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 904
    :pswitch_4c
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 903
    :pswitch_4f
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 902
    :pswitch_52
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 901
    :pswitch_55
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 900
    :pswitch_58
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 910
    :pswitch_5b
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne v1, v3, :cond_62

    .line 912
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 913
    goto :goto_78

    .line 916
    :cond_62
    const/4 v0, 0x1

    .line 917
    goto :goto_78

    .line 908
    :pswitch_64
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 907
    :pswitch_67
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 899
    :pswitch_6a
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 898
    :pswitch_6d
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 897
    :pswitch_70
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 896
    :pswitch_73
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_78

    .line 895
    :pswitch_76
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 922
    :goto_78
    if-nez v0, :cond_87

    .line 923
    invoke-direct {p0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->formatAbsoluteImpl(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_87

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_87

    .line 925
    return-object v3

    .line 929
    .end local v3    # "result":Ljava/lang/String;
    :cond_87
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/RelativeDateTimeFormatter;->formatNumericImpl(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v3

    return-object v3

    :sswitch_data_8c
    .sparse-switch
        -0xc8 -> :sswitch_38
        -0x64 -> :sswitch_34
        0x0 -> :sswitch_32
        0x64 -> :sswitch_2e
        0xc8 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
    .end packed-switch
.end method

.method private greylist-max-o getAbsoluteUnitString(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/text/RelativeDateTimeFormatter$Direction;)Ljava/lang/String;
    .registers 7
    .param p1, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .param p3, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 940
    nop

    :cond_1
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    .line 941
    .local v0, "unitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_1c

    .line 942
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    .line 943
    .local v1, "dirMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    if-eqz v1, :cond_1c

    .line 944
    invoke-virtual {v1, p3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 945
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_1c

    .line 946
    return-object v2

    .line 954
    .end local v1    # "dirMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    .end local v2    # "result":Ljava/lang/String;
    :cond_1c
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {p1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    move-object p1, v1

    if-nez v1, :cond_1

    .line 955
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist test-api getInstance()Landroid/icu/text/RelativeDateTimeFormatter;
    .registers 4

    .line 521
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 531
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "nf"    # Landroid/icu/text/NumberFormat;

    .line 554
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-static {p0, p1, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;
    .registers 15
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "nf"    # Landroid/icu/text/NumberFormat;
    .param p2, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p3, "capitalizationContext"    # Landroid/icu/text/DisplayContext;

    .line 572
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    invoke-virtual {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object v0

    .line 573
    .local v0, "data":Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    if-nez p1, :cond_e

    .line 574
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    move-object v6, p1

    goto :goto_16

    .line 576
    :cond_e
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Landroid/icu/text/NumberFormat;

    move-object v6, p1

    .line 578
    .end local p1    # "nf":Landroid/icu/text/NumberFormat;
    .local v6, "nf":Landroid/icu/text/NumberFormat;
    :goto_16
    new-instance v1, Landroid/icu/text/RelativeDateTimeFormatter;

    iget-object v2, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v3, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->relUnitPatternMap:Ljava/util/EnumMap;

    iget-object v4, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->dateTimePattern:Ljava/lang/String;

    .line 583
    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v5

    .line 587
    sget-object p1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-ne p3, p1, :cond_2b

    .line 588
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    move-object v9, p1

    move-object v10, p0

    move-object v7, p2

    move-object v8, p3

    .end local p0    # "locale":Landroid/icu/util/ULocale;
    .end local p2    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .end local p3    # "capitalizationContext":Landroid/icu/text/DisplayContext;
    .local v7, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .local v8, "capitalizationContext":Landroid/icu/text/DisplayContext;
    .local v10, "locale":Landroid/icu/util/ULocale;
    invoke-direct/range {v1 .. v10}, Landroid/icu/text/RelativeDateTimeFormatter;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;)V

    .line 578
    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/RelativeDateTimeFormatter;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 541
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "nf"    # Landroid/icu/text/NumberFormat;

    .line 602
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;
    .registers 9
    .param p1, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .param p3, "pastFutureIndex"    # I
    .param p4, "pluralForm"    # Landroid/icu/impl/StandardPlural;

    .line 1063
    invoke-virtual {p4}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    .line 1065
    .local v0, "pluralIndex":I
    :cond_4
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->patternMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    .line 1066
    .local v1, "unitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;[[Ljava/lang/String;>;"
    if-eqz v1, :cond_21

    .line 1067
    invoke-virtual {v1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 1068
    .local v2, "spfCompiledPatterns":[[Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 1069
    aget-object v3, v2, p3

    aget-object v3, v3, v0

    if-eqz v3, :cond_21

    .line 1070
    aget-object v3, v2, p3

    aget-object v3, v3, v0

    return-object v3

    .line 1078
    .end local v1    # "unitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;[[Ljava/lang/String;>;"
    .end local v2    # "spfCompiledPatterns":[[Ljava/lang/String;
    :cond_21
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {p1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    move-object p1, v1

    if-nez v1, :cond_4

    .line 1079
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getRelativeUnitPluralPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;
    .registers 6
    .param p1, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .param p3, "pastFutureIndex"    # I
    .param p4, "pluralForm"    # Landroid/icu/impl/StandardPlural;

    .line 1052
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    if-eq p4, v0, :cond_b

    .line 1053
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "formatter":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 1055
    return-object v0

    .line 1058
    .end local v0    # "formatter":Ljava/lang/String;
    :cond_b
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o keyToDirection(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .registers 2
    .param p0, "key"    # Landroid/icu/impl/UResource$Key;

    .line 1131
    const-string v0, "-2"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1132
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0

    .line 1134
    :cond_b
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1135
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0

    .line 1137
    :cond_16
    const-string v0, "0"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1138
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0

    .line 1140
    :cond_21
    const-string v0, "1"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1141
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0

    .line 1143
    :cond_2c
    const-string v0, "2"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1144
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0

    .line 1146
    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "relativeDateString"    # Ljava/lang/String;
    .param p2, "timeString"    # Ljava/lang/String;

    .line 969
    new-instance v0, Landroid/icu/text/MessageFormat;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 970
    .local v0, "msgFmt":Landroid/icu/text/MessageFormat;
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Ljava/lang/String;

    sget-object v2, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V

    .line 971
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 972
    .local v1, "combinedDateTimeBuffer":Ljava/lang/StringBuffer;
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 973
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 972
    return-object v2
.end method

.method public whitelist test-api format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;
    .registers 7
    .param p1, "quantity"    # D
    .param p3, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p4, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 622
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/RelativeDateTimeFormatter;->formatImpl(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v0

    .line 623
    .local v0, "output":Landroid/icu/impl/FormattedStringBuilder;
    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api format(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/String;
    .registers 5
    .param p1, "offset"    # D
    .param p3, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 836
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/RelativeDateTimeFormatter;->formatRelativeImpl(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    .registers 5
    .param p1, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 768
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter;->formatAbsoluteImpl(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist test-api formatNumeric(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/String;
    .registers 6
    .param p1, "offset"    # D
    .param p3, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 689
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/RelativeDateTimeFormatter;->formatNumericImpl(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v0

    .line 690
    .local v0, "output":Landroid/icu/impl/FormattedStringBuilder;
    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api formatNumericToValue(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;
    .registers 7
    .param p1, "offset"    # D
    .param p3, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 710
    invoke-direct {p0}, Landroid/icu/text/RelativeDateTimeFormatter;->checkNoAdjustForContext()V

    .line 711
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/RelativeDateTimeFormatter;->formatNumericImpl(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/RelativeDateTimeFormatter-IA;)V

    return-object v0
.end method

.method public whitelist test-api formatToValue(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;
    .registers 8
    .param p1, "quantity"    # D
    .param p3, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p4, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 643
    invoke-direct {p0}, Landroid/icu/text/RelativeDateTimeFormatter;->checkNoAdjustForContext()V

    .line 644
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/RelativeDateTimeFormatter;->formatImpl(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/RelativeDateTimeFormatter-IA;)V

    return-object v0
.end method

.method public whitelist test-api formatToValue(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;
    .registers 8
    .param p1, "offset"    # D
    .param p3, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 856
    invoke-direct {p0}, Landroid/icu/text/RelativeDateTimeFormatter;->checkNoAdjustForContext()V

    .line 857
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/RelativeDateTimeFormatter;->formatRelativeImpl(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 859
    .local v0, "cs":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/icu/impl/FormattedStringBuilder;

    if-eqz v1, :cond_f

    .line 860
    move-object v1, v0

    check-cast v1, Landroid/icu/impl/FormattedStringBuilder;

    .local v1, "nsb":Landroid/icu/impl/FormattedStringBuilder;
    goto :goto_19

    .line 862
    .end local v1    # "nsb":Landroid/icu/impl/FormattedStringBuilder;
    :cond_f
    new-instance v1, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 863
    .restart local v1    # "nsb":Landroid/icu/impl/FormattedStringBuilder;
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Landroid/icu/text/RelativeDateTimeFormatter$Field;

    invoke-virtual {v1, v0, v2}, Landroid/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    .line 865
    :goto_19
    new-instance v2, Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/RelativeDateTimeFormatter-IA;)V

    return-object v2
.end method

.method public whitelist test-api formatToValue(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;
    .registers 7
    .param p1, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 787
    invoke-direct {p0}, Landroid/icu/text/RelativeDateTimeFormatter;->checkNoAdjustForContext()V

    .line 788
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter;->formatAbsoluteImpl(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 790
    return-object v1

    .line 792
    :cond_b
    new-instance v2, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v2}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 793
    .local v2, "nsb":Landroid/icu/impl/FormattedStringBuilder;
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Landroid/icu/text/RelativeDateTimeFormatter$Field;

    invoke-virtual {v2, v0, v3}, Landroid/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    .line 794
    new-instance v3, Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;

    invoke-direct {v3, v2, v1}, Landroid/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/RelativeDateTimeFormatter-IA;)V

    return-object v3
.end method

.method public whitelist test-api getCapitalizationContext()Landroid/icu/text/DisplayContext;
    .registers 2

    .line 994
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Landroid/icu/text/DisplayContext;

    return-object v0
.end method

.method public whitelist test-api getFormatStyle()Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .registers 2

    .line 1002
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method

.method public whitelist test-api getNumberFormat()Landroid/icu/text/NumberFormat;
    .registers 3

    .line 984
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    monitor-enter v0

    .line 985
    :try_start_3
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    monitor-exit v0

    return-object v1

    .line 986
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
