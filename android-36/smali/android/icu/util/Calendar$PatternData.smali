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
.field private blacklist atTimePatterns:[Ljava/lang/String;

.field private greylist-max-o overrides:[Ljava/lang/String;

.field private greylist-max-o patterns:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetoverrides(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDateAtTimePattern(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/util/Calendar$PatternData;->getDateAtTimePattern(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDateTimePattern(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/util/Calendar$PatternData;->getDateTimePattern(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmake(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->make(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmake(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->make(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "patterns"    # [Ljava/lang/String;
    .param p2, "overrides"    # [Ljava/lang/String;
    .param p3, "atTimePatterns"    # [Ljava/lang/String;

    .line 3707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3708
    iput-object p1, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    .line 3709
    iput-object p2, p0, Landroid/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;

    .line 3710
    iput-object p3, p0, Landroid/icu/util/Calendar$PatternData;->atTimePatterns:[Ljava/lang/String;

    .line 3711
    return-void
.end method

.method private blacklist getDateAtTimePattern(I)Ljava/lang/String;
    .registers 4
    .param p1, "dateStyle"    # I

    .line 3721
    iget-object v0, p0, Landroid/icu/util/Calendar$PatternData;->atTimePatterns:[Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/icu/util/Calendar$PatternData;->atTimePatterns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    .line 3722
    iget-object v0, p0, Landroid/icu/util/Calendar$PatternData;->atTimePatterns:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 3723
    .local v0, "dateTimePattern":Ljava/lang/String;
    return-object v0

    .line 3725
    .end local v0    # "dateTimePattern":Ljava/lang/String;
    :cond_f
    invoke-direct {p0, p1}, Landroid/icu/util/Calendar$PatternData;->getDateTimePattern(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getDateTimePattern(I)Ljava/lang/String;
    .registers 5
    .param p1, "dateStyle"    # I

    .line 3713
    const/16 v0, 0x8

    .line 3714
    .local v0, "glueIndex":I
    iget-object v1, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0xd

    if-lt v1, v2, :cond_c

    .line 3715
    add-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    .line 3717
    :cond_c
    iget-object v1, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 3718
    .local v1, "dateTimePattern":Ljava/lang/String;
    return-object v1
.end method

.method private static greylist-max-o make(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;
    .registers 3
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 3730
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/util/Calendar$PatternData;->make(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o make(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;
    .registers 10
    .param p0, "loc"    # Landroid/icu/util/ULocale;
    .param p1, "calType"    # Ljava/lang/String;

    .line 3735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3736
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3737
    .local v1, "patternData":Landroid/icu/util/Calendar$PatternData;
    const-string v2, "rg"

    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 3738
    const-string v2, "hours"

    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v2, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v2, 0x1

    .line 3739
    .local v2, "hasHourCycleKeywords":Z
    :goto_30
    if-nez v2, :cond_3d

    .line 3741
    invoke-static {}, Landroid/icu/util/Calendar;->-$$Nest$sfgetPATTERN_CACHE()Landroid/icu/impl/ICUCache;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/icu/util/Calendar$PatternData;

    .line 3743
    :cond_3d
    if-nez v1, :cond_5e

    .line 3746
    :try_start_3f
    invoke-static {p0, p1}, Landroid/icu/util/Calendar;->-$$Nest$smgetPatternData(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;

    move-result-object v3
    :try_end_43
    .catch Ljava/util/MissingResourceException; {:try_start_3f .. :try_end_43} :catch_45

    .line 3749
    .end local v1    # "patternData":Landroid/icu/util/Calendar$PatternData;
    .local v3, "patternData":Landroid/icu/util/Calendar$PatternData;
    move-object v1, v3

    goto :goto_55

    .line 3747
    .end local v3    # "patternData":Landroid/icu/util/Calendar$PatternData;
    .restart local v1    # "patternData":Landroid/icu/util/Calendar$PatternData;
    :catch_45
    move-exception v3

    .line 3748
    .local v3, "e":Ljava/util/MissingResourceException;
    new-instance v4, Landroid/icu/util/Calendar$PatternData;

    invoke-static {}, Landroid/icu/util/Calendar;->-$$Nest$sfgetDEFAULT_PATTERNS()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Landroid/icu/util/Calendar;->-$$Nest$sfgetDEFAULT_ATTIME_PATTERNS()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object v1, v4

    .line 3750
    .end local v3    # "e":Ljava/util/MissingResourceException;
    :goto_55
    if-nez v2, :cond_5e

    .line 3751
    invoke-static {}, Landroid/icu/util/Calendar;->-$$Nest$sfgetPATTERN_CACHE()Landroid/icu/impl/ICUCache;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3754
    :cond_5e
    return-object v1
.end method
