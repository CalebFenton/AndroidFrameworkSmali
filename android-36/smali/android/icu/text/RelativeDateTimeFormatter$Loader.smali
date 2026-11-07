.class Landroid/icu/text/RelativeDateTimeFormatter$Loader;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final greylist-max-o ulocale:Landroid/icu/util/ULocale;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/icu/util/ULocale;)V
    .registers 2
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;

    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1467
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    .line 1468
    return-void
.end method

.method private blacklist getDateTimePattern()Ljava/lang/String;
    .registers 4

    .line 1471
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 1472
    .local v0, "cal":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/icu/util/Calendar;->getDateAtTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public greylist-max-o load()Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .registers 11

    .line 1477
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;

    invoke-direct {v0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;-><init>()V

    .line 1479
    .local v0, "sink":Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    .line 1480
    const-string v2, "android/icu/impl/data/icudata"

    invoke-static {v2, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 1481
    .local v1, "r":Landroid/icu/impl/ICUResourceBundle;
    const-string v2, "fields"

    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 1484
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_4e

    aget-object v5, v2, v4

    .line 1485
    .local v5, "testStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-$$Nest$sfgetfallbackCache()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v6

    invoke-virtual {v5}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    .line 1487
    .local v6, "newStyle1":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    if-eqz v6, :cond_4b

    .line 1488
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-$$Nest$sfgetfallbackCache()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v7

    invoke-virtual {v6}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    .line 1489
    .local v7, "newStyle2":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    if-eqz v7, :cond_4b

    .line 1491
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-$$Nest$sfgetfallbackCache()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v8

    invoke-virtual {v7}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    if-nez v8, :cond_43

    goto :goto_4b

    .line 1492
    :cond_43
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Style fallback too deep"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1484
    .end local v5    # "testStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .end local v6    # "newStyle1":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .end local v7    # "newStyle2":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_4b
    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1498
    :cond_4e
    new-instance v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    iget-object v3, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v4, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    .line 1500
    invoke-direct {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->getDateTimePattern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;)V

    .line 1498
    return-object v2
.end method
