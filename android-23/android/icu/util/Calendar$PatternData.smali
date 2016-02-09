.class Landroid/icu/util/Calendar$PatternData;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatternData"
.end annotation


# instance fields
.field private overrides:[Ljava/lang/String;

.field private patterns:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->make(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;
    .locals 1
    .param p1, "dateStyle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/util/Calendar$PatternData;->getDateTimePattern(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "patterns"    # [Ljava/lang/String;
    .param p2, "overrides"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3595
    iput-object p1, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    #@5
    .line 3596
    iput-object p2, p0, Landroid/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;

    #@7
    .line 3594
    return-void
.end method

.method private getDateTimePattern(I)Ljava/lang/String;
    .locals 4
    .param p1, "dateStyle"    # I

    #@0
    .prologue
    .line 3599
    const/16 v1, 0x8

    #@2
    .line 3600
    .local v1, "glueIndex":I
    iget-object v2, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    const/16 v3, 0xd

    #@7
    if-lt v2, v3, :cond_0

    #@9
    .line 3601
    add-int/lit8 v2, p1, 0x1

    #@b
    add-int/lit8 v1, v2, 0x8

    #@d
    .line 3603
    :cond_0
    iget-object v2, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    #@f
    aget-object v0, v2, v1

    #@11
    .line 3604
    .local v0, "dateTimePattern":Ljava/lang/String;
    return-object v0
.end method

.method private static make(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;
    .locals 8
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3608
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 3609
    .local v1, "calType":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@d
    move-result-object v6

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    const-string/jumbo v6, "+"

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 3610
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Landroid/icu/util/Calendar;->-get1()Landroid/icu/impl/ICUCache;

    #@24
    move-result-object v5

    #@25
    invoke-interface {v5, v3}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Landroid/icu/util/Calendar$PatternData;

    #@2b
    .line 3611
    .local v4, "patternData":Landroid/icu/util/Calendar$PatternData;
    if-nez v4, :cond_0

    #@2d
    .line 3614
    :try_start_0
    new-instance v0, Landroid/icu/impl/CalendarData;

    #@2f
    invoke-direct {v0, p1, v1}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@32
    .line 3615
    .local v0, "calData":Landroid/icu/impl/CalendarData;
    new-instance v4, Landroid/icu/util/Calendar$PatternData;

    #@34
    .end local v4    # "patternData":Landroid/icu/util/Calendar$PatternData;
    invoke-virtual {v0}, Landroid/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    .line 3616
    invoke-virtual {v0}, Landroid/icu/impl/CalendarData;->getOverrides()[Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    .line 3615
    invoke-direct {v4, v5, v6}, Landroid/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 3620
    .end local v0    # "calData":Landroid/icu/impl/CalendarData;
    .restart local v4    # "patternData":Landroid/icu/util/Calendar$PatternData;
    :goto_0
    invoke-static {}, Landroid/icu/util/Calendar;->-get1()Landroid/icu/impl/ICUCache;

    #@42
    move-result-object v5

    #@43
    invoke-interface {v5, v3, v4}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@46
    .line 3622
    :cond_0
    return-object v4

    #@47
    .line 3617
    .end local v4    # "patternData":Landroid/icu/util/Calendar$PatternData;
    :catch_0
    move-exception v2

    #@48
    .line 3618
    .local v2, "e":Ljava/util/MissingResourceException;
    new-instance v4, Landroid/icu/util/Calendar$PatternData;

    #@4a
    invoke-static {}, Landroid/icu/util/Calendar;->-get0()[Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-direct {v4, v5, v7}, Landroid/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    #@51
    .restart local v4    # "patternData":Landroid/icu/util/Calendar$PatternData;
    goto :goto_0
.end method
