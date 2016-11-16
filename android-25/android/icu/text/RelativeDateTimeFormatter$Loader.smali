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
.field private final ulocale:Landroid/icu/util/ULocale;


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 948
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    #@5
    .line 947
    return-void
.end method


# virtual methods
.method public load()Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 11

    #@0
    .prologue
    .line 953
    new-instance v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    #@2
    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    #@4
    invoke-direct {v4, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;-><init>(Landroid/icu/util/ULocale;)V

    #@7
    .line 955
    .local v4, "sink":Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    #@a
    iget-object v7, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    #@c
    .line 954
    invoke-static {v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@12
    .line 958
    .local v3, "r":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v6, "fields"

    #@15
    invoke-virtual {v3, v6, v4}, Landroid/icu/impl/ICUResourceBundle;->getAllTableItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$TableSink;)V

    #@18
    .line 961
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@1b
    move-result-object v7

    #@1c
    const/4 v6, 0x0

    #@1d
    array-length v8, v7

    #@1e
    :goto_0
    if-ge v6, v8, :cond_1

    #@20
    aget-object v5, v7, v6

    #@22
    .line 962
    .local v5, "testStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@25
    move-result-object v9

    #@26
    invoke-virtual {v5}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@29
    move-result v10

    #@2a
    aget-object v1, v9, v10

    #@2c
    .line 964
    .local v1, "newStyle1":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    if-eqz v1, :cond_0

    #@2e
    .line 965
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@35
    move-result v10

    #@36
    aget-object v2, v9, v10

    #@38
    .line 966
    .local v2, "newStyle2":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    if-eqz v2, :cond_0

    #@3a
    .line 968
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v2}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@41
    move-result v10

    #@42
    aget-object v9, v9, v10

    #@44
    if-eqz v9, :cond_0

    #@46
    .line 969
    new-instance v6, Ljava/lang/IllegalStateException;

    #@48
    const-string/jumbo v7, "Style fallback too deep"

    #@4b
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v6

    #@4f
    .line 961
    .end local v2    # "newStyle2":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@51
    goto :goto_0

    #@52
    .line 976
    .end local v1    # "newStyle1":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .end local v5    # "testStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_1
    new-instance v0, Landroid/icu/impl/CalendarData;

    #@54
    .line 977
    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    #@56
    const-string/jumbo v7, "calendar/default"

    #@59
    invoke-virtual {v3, v7}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    .line 976
    invoke-direct {v0, v6, v7}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@60
    .line 979
    .local v0, "calData":Landroid/icu/impl/CalendarData;
    new-instance v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    #@62
    .line 980
    iget-object v7, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    #@64
    iget-object v8, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    #@66
    .line 981
    invoke-virtual {v0}, Landroid/icu/impl/CalendarData;->getDateTimePattern()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    .line 979
    invoke-direct {v6, v7, v8, v9}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;)V

    #@6d
    return-object v6
.end method
