.class public final Landroid/icu/impl/DayPeriodRules;
.super Ljava/lang/Object;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/DayPeriodRules$DayPeriod;,
        Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;,
        Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;,
        Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;,
        Landroid/icu/impl/DayPeriodRules$CutoffType;
    }
.end annotation


# static fields
.field private static final greylist-max-o DATA:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;


# instance fields
.field private greylist-max-o dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field private greylist-max-o hasMidnight:Z

.field private greylist-max-o hasNoon:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdayPeriodForHour(Landroid/icu/impl/DayPeriodRules;)[Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputhasMidnight(Landroid/icu/impl/DayPeriodRules;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/icu/impl/DayPeriodRules;->hasMidnight:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputhasNoon(Landroid/icu/impl/DayPeriodRules;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/icu/impl/DayPeriodRules;->hasNoon:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$madd(Landroid/icu/impl/DayPeriodRules;IILandroid/icu/impl/DayPeriodRules$DayPeriod;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/DayPeriodRules;->add(IILandroid/icu/impl/DayPeriodRules$DayPeriod;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseSetNum(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/DayPeriodRules;->parseSetNum(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 233
    invoke-static {}, Landroid/icu/impl/DayPeriodRules;->loadData()Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/DayPeriodRules;->DATA:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/DayPeriodRules;->hasMidnight:Z

    .line 241
    iput-boolean v0, p0, Landroid/icu/impl/DayPeriodRules;->hasNoon:Z

    .line 242
    const/16 v0, 0x18

    new-array v0, v0, [Landroid/icu/impl/DayPeriodRules$DayPeriod;

    iput-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 243
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/DayPeriodRules-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/DayPeriodRules;-><init>()V

    return-void
.end method

.method private greylist-max-o add(IILandroid/icu/impl/DayPeriodRules$DayPeriod;)V
    .registers 6
    .param p1, "startHour"    # I
    .param p2, "limitHour"    # I
    .param p3, "period"    # Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 367
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-eq v0, p2, :cond_f

    .line 368
    const/16 v1, 0x18

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    .line 369
    :cond_8
    iget-object v1, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aput-object p3, v1, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method private greylist-max-o getEndHourForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)I
    .registers 4
    .param p1, "dayPeriod"    # Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 337
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    .line 338
    :cond_6
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-ne p1, v0, :cond_d

    const/16 v0, 0xc

    return v0

    .line 340
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_2b

    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_2b

    .line 342
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1c
    const/16 v1, 0x16

    if-gt v0, v1, :cond_2a

    .line 343
    iget-object v1, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_27

    .line 345
    return v0

    .line 342
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .end local v0    # "i":I
    :cond_2a
    goto :goto_3b

    .line 349
    :cond_2b
    const/16 v0, 0x17

    .restart local v0    # "i":I
    :goto_2d
    if-ltz v0, :cond_3b

    .line 350
    iget-object v1, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_38

    .line 351
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 349
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 357
    .end local v0    # "i":I
    :cond_3b
    :goto_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/DayPeriodRules;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 252
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "localeCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "root"

    .line 255
    :cond_c
    const/4 v1, 0x0

    .line 256
    .local v1, "ruleSetNum":Ljava/lang/Integer;
    :cond_d
    if-nez v1, :cond_27

    .line 257
    sget-object v2, Landroid/icu/impl/DayPeriodRules;->DATA:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v2, v2, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->localesToRuleSetNumMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    .line 258
    if-nez v1, :cond_27

    .line 259
    invoke-static {v0}, Landroid/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 262
    nop

    .line 269
    :cond_27
    if-eqz v1, :cond_41

    sget-object v2, Landroid/icu/impl/DayPeriodRules;->DATA:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v2, v2, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    if-nez v2, :cond_36

    goto :goto_41

    .line 274
    :cond_36
    sget-object v2, Landroid/icu/impl/DayPeriodRules;->DATA:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v2, v2, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    return-object v2

    .line 271
    :cond_41
    :goto_41
    const/4 v2, 0x0

    return-object v2
.end method

.method private greylist-max-o getStartHourForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)I
    .registers 5
    .param p1, "dayPeriod"    # Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 314
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    .line 315
    :cond_6
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-ne p1, v0, :cond_d

    const/16 v0, 0xc

    return v0

    .line 317
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, v1

    const/16 v1, 0x17

    if-ne v0, p1, :cond_2d

    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_2d

    .line 319
    const/16 v0, 0x16

    .local v0, "i":I
    :goto_1d
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2c

    .line 320
    iget-object v1, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_29

    .line 321
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 319
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .end local v0    # "i":I
    :cond_2c
    goto :goto_3a

    .line 325
    :cond_2d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2e
    if-gt v0, v1, :cond_3a

    .line 326
    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_37

    .line 327
    return v0

    .line 325
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 333
    .end local v0    # "i":I
    :cond_3a
    :goto_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o loadData()Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;
    .registers 6

    .line 296
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;-><init>(Landroid/icu/impl/DayPeriodRules-IA;)V

    .line 297
    .local v0, "data":Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v3, "android/icu/impl/data/icudata"

    const-string v4, "dayPeriods"

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 303
    .local v2, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v3, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;

    invoke-direct {v3, v0, v1}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;-><init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;Landroid/icu/impl/DayPeriodRules-IA;)V

    .line 304
    .local v3, "countSink":Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;
    const-string v4, "rules"

    invoke-virtual {v2, v4, v3}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 306
    iget v4, v0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->maxRuleSetNum:I

    add-int/2addr v4, v5

    new-array v4, v4, [Landroid/icu/impl/DayPeriodRules;

    iput-object v4, v0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    .line 307
    new-instance v4, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;

    invoke-direct {v4, v0, v1}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;-><init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;Landroid/icu/impl/DayPeriodRules-IA;)V

    .line 308
    .local v4, "sink":Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;
    const-string v1, ""

    invoke-virtual {v2, v1, v4}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 310
    return-object v0
.end method

.method private static greylist-max-o parseSetNum(Ljava/lang/String;)I
    .registers 3
    .param p0, "setNumStr"    # Ljava/lang/String;

    .line 374
    const-string v0, "set"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 378
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "numStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 375
    .end local v0    # "numStr":Ljava/lang/String;
    :cond_12
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v1, "Set number should start with \"set\"."

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getDayPeriodForHour(I)Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .registers 3
    .param p1, "hour"    # I

    .line 363
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getMidPointForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)D
    .registers 9
    .param p1, "dayPeriod"    # Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 278
    invoke-direct {p0, p1}, Landroid/icu/impl/DayPeriodRules;->getStartHourForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)I

    move-result v0

    .line 279
    .local v0, "startHour":I
    invoke-direct {p0, p1}, Landroid/icu/impl/DayPeriodRules;->getEndHourForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)I

    move-result v1

    .line 281
    .local v1, "endHour":I
    add-int v2, v0, v1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 283
    .local v2, "midPoint":D
    if-le v0, v1, :cond_1a

    .line 286
    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    add-double/2addr v2, v4

    .line 287
    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_1a

    .line 288
    sub-double/2addr v2, v4

    .line 292
    :cond_1a
    return-wide v2
.end method

.method public blacklist hasMidnight()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Landroid/icu/impl/DayPeriodRules;->hasMidnight:Z

    return v0
.end method

.method public blacklist hasNoon()Z
    .registers 2

    .line 362
    iget-boolean v0, p0, Landroid/icu/impl/DayPeriodRules;->hasNoon:Z

    return v0
.end method
