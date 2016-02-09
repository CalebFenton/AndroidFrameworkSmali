.class public Landroid/icu/impl/RelativeDateFormat;
.super Landroid/icu/text/DateFormat;
.source "RelativeDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/RelativeDateFormat$URelativeString;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xfb59e5457c57c3bL


# instance fields
.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private capitalizationInfoIsSet:Z

.field private capitalizationOfRelativeUnitsForListOrMenu:Z

.field private capitalizationOfRelativeUnitsForStandAlone:Z

.field private combinedFormatHasDateAtStart:Z

.field private fCombinedFormat:Landroid/icu/text/MessageFormat;

.field private fDateFormat:Landroid/icu/text/DateFormat;

.field private fDatePattern:Ljava/lang/String;

.field fDateStyle:I

.field private fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

.field private transient fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

.field fLocale:Landroid/icu/util/ULocale;

.field private fTimeFormat:Landroid/icu/text/DateFormat;

.field private fTimePattern:Ljava/lang/String;

.field fTimeStyle:I


# direct methods
.method public constructor <init>(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)V
    .locals 5
    .param p1, "timeStyle"    # I
    .param p2, "dateStyle"    # I
    .param p3, "locale"    # Landroid/icu/util/ULocale;
    .param p4, "cal"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 59
    invoke-direct {p0}, Landroid/icu/text/DateFormat;-><init>()V

    #@6
    .line 211
    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@8
    .line 212
    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    #@a
    .line 213
    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    #@c
    .line 219
    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@e
    .line 221
    iput-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    #@10
    .line 222
    iput-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    #@12
    .line 223
    iput-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    #@14
    .line 224
    iput-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    #@16
    .line 225
    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@18
    .line 60
    iput-object p4, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@1a
    .line 62
    iput-object p3, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    #@1c
    .line 63
    iput p1, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    #@1e
    .line 64
    iput p2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    #@20
    .line 66
    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    #@22
    if-eq v2, v4, :cond_2

    #@24
    .line 67
    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    #@26
    and-int/lit16 v1, v2, -0x81

    #@28
    .line 68
    .local v1, "newStyle":I
    invoke-static {v1, p3}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@2b
    move-result-object v0

    #@2c
    .line 69
    .local v0, "df":Landroid/icu/text/DateFormat;
    instance-of v2, v0, Landroid/icu/text/SimpleDateFormat;

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 70
    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    #@32
    .end local v0    # "df":Landroid/icu/text/DateFormat;
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@34
    .line 74
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@36
    invoke-virtual {v2}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    iput-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    #@3c
    .line 75
    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    #@3e
    if-eq v2, v4, :cond_0

    #@40
    .line 76
    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    #@42
    and-int/lit16 v1, v2, -0x81

    #@44
    .line 77
    invoke-static {v1, p3}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@47
    move-result-object v0

    #@48
    .line 78
    .restart local v0    # "df":Landroid/icu/text/DateFormat;
    instance-of v2, v0, Landroid/icu/text/SimpleDateFormat;

    #@4a
    if-eqz v2, :cond_0

    #@4c
    .line 79
    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    #@4e
    .end local v0    # "df":Landroid/icu/text/DateFormat;
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    iput-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    #@54
    .line 94
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    #@56
    invoke-direct {p0, v3, v2}, Landroid/icu/impl/RelativeDateFormat;->initializeCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@59
    .line 95
    invoke-direct {p0}, Landroid/icu/impl/RelativeDateFormat;->loadDates()V

    #@5c
    .line 96
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@5e
    iget-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    #@60
    invoke-direct {p0, v2, v3}, Landroid/icu/impl/RelativeDateFormat;->initializeCombinedFormat(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/MessageFormat;

    #@63
    .line 59
    return-void

    #@64
    .line 72
    .restart local v0    # "df":Landroid/icu/text/DateFormat;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@66
    const-string/jumbo v3, "Can\'t create SimpleDateFormat for date style"

    #@69
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v2

    #@6d
    .line 84
    .end local v0    # "df":Landroid/icu/text/DateFormat;
    .end local v1    # "newStyle":I
    :cond_2
    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    #@6f
    and-int/lit16 v1, v2, -0x81

    #@71
    .line 85
    .restart local v1    # "newStyle":I
    invoke-static {v1, p3}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@74
    move-result-object v0

    #@75
    .line 86
    .restart local v0    # "df":Landroid/icu/text/DateFormat;
    instance-of v2, v0, Landroid/icu/text/SimpleDateFormat;

    #@77
    if-eqz v2, :cond_3

    #@79
    .line 87
    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    #@7b
    .end local v0    # "df":Landroid/icu/text/DateFormat;
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@7d
    .line 91
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@7f
    invoke-virtual {v2}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    iput-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    #@85
    goto :goto_0

    #@86
    .line 89
    .restart local v0    # "df":Landroid/icu/text/DateFormat;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@88
    const-string/jumbo v3, "Can\'t create SimpleDateFormat for time style"

    #@8b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v2
.end method

.method private static dayDifference(Landroid/icu/util/Calendar;)I
    .locals 7
    .param p0, "until"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/16 v6, 0x14

    #@2
    .line 297
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/icu/util/Calendar;

    #@8
    .line 298
    .local v1, "nowCal":Landroid/icu/util/Calendar;
    new-instance v2, Ljava/util/Date;

    #@a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    move-result-wide v4

    #@e
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@11
    .line 299
    .local v2, "nowDate":Ljava/util/Date;
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clear()V

    #@14
    .line 300
    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@17
    .line 301
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {v1, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@1e
    move-result v4

    #@1f
    sub-int v0, v3, v4

    #@21
    .line 302
    .local v0, "dayDiff":I
    return v0
.end method

.method private getStringForDay(I)Ljava/lang/String;
    .locals 3
    .param p1, "day"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 234
    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 235
    invoke-direct {p0}, Landroid/icu/impl/RelativeDateFormat;->loadDates()V

    #@8
    .line 237
    :cond_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_2

    #@e
    .line 238
    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@10
    aget-object v1, v1, v0

    #@12
    iget v1, v1, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    #@14
    if-ne v1, p1, :cond_1

    #@16
    .line 239
    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@18
    aget-object v1, v1, v0

    #@1a
    iget-object v1, v1, Landroid/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    #@1c
    return-object v1

    #@1d
    .line 237
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 242
    :cond_2
    return-object v2
.end method

.method private initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V
    .locals 8
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 280
    const-string/jumbo v6, "android/icu/impl/data/icudt55b"

    #@5
    invoke-static {v6, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@b
    .line 282
    .local v2, "rb":Landroid/icu/impl/ICUResourceBundle;
    :try_start_0
    const-string/jumbo v6, "contextTransforms/relative"

    #@e
    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@11
    move-result-object v3

    #@12
    .line 283
    .local v3, "rdb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    #@15
    move-result-object v1

    #@16
    .line 284
    .local v1, "intVector":[I
    array-length v6, v1

    #@17
    const/4 v7, 0x2

    #@18
    if-lt v6, v7, :cond_0

    #@1a
    .line 285
    const/4 v6, 0x0

    #@1b
    aget v6, v1, v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    move v6, v4

    #@20
    :goto_0
    iput-boolean v6, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    #@22
    .line 286
    const/4 v6, 0x1

    #@23
    aget v6, v1, v6

    #@25
    if-eqz v6, :cond_2

    #@27
    :goto_1
    iput-boolean v4, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 279
    .end local v1    # "intVector":[I
    .end local v3    # "rdb":Landroid/icu/impl/ICUResourceBundle;
    :cond_0
    :goto_2
    return-void

    #@2a
    .restart local v1    # "intVector":[I
    .restart local v3    # "rdb":Landroid/icu/impl/ICUResourceBundle;
    :cond_1
    move v6, v5

    #@2b
    .line 285
    goto :goto_0

    #@2c
    :cond_2
    move v4, v5

    #@2d
    .line 286
    goto :goto_1

    #@2e
    .line 288
    .end local v1    # "intVector":[I
    .end local v3    # "rdb":Landroid/icu/impl/ICUResourceBundle;
    :catch_0
    move-exception v0

    #@2f
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_2
.end method

.method private initializeCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 314
    if-nez p1, :cond_1

    #@6
    .line 315
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@c
    .line 320
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@e
    return-object v0

    #@f
    .line 317
    :cond_1
    invoke-static {p1, p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    #@15
    goto :goto_0
.end method

.method private initializeCombinedFormat(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/MessageFormat;
    .locals 7
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 324
    const-string/jumbo v3, "{1} {0}"

    #@3
    .line 326
    .local v3, "pattern":Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/icu/impl/CalendarData;

    #@5
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    invoke-direct {v0, p2, v5}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@c
    .line 327
    .local v0, "calData":Landroid/icu/impl/CalendarData;
    invoke-virtual {v0}, Landroid/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 328
    .local v4, "patterns":[Ljava/lang/String;
    if-eqz v4, :cond_1

    #@12
    array-length v5, v4

    #@13
    const/16 v6, 0x9

    #@15
    if-lt v5, v6, :cond_1

    #@17
    .line 329
    const/16 v2, 0x8

    #@19
    .line 330
    .local v2, "glueIndex":I
    array-length v5, v4

    #@1a
    const/16 v6, 0xd

    #@1c
    if-lt v5, v6, :cond_0

    #@1e
    .line 332
    iget v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    #@20
    sparse-switch v5, :sswitch_data_0

    #@23
    .line 354
    :cond_0
    :goto_0
    aget-object v3, v4, v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 359
    .end local v0    # "calData":Landroid/icu/impl/CalendarData;
    .end local v2    # "glueIndex":I
    .end local v4    # "patterns":[Ljava/lang/String;
    :cond_1
    :goto_1
    const-string/jumbo v5, "{1}"

    #@28
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v5

    #@2c
    iput-boolean v5, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    #@2e
    .line 360
    new-instance v5, Landroid/icu/text/MessageFormat;

    #@30
    invoke-direct {v5, v3, p2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@33
    iput-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    #@35
    .line 361
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    #@37
    return-object v5

    #@38
    .line 336
    .restart local v0    # "calData":Landroid/icu/impl/CalendarData;
    .restart local v2    # "glueIndex":I
    .restart local v4    # "patterns":[Ljava/lang/String;
    :sswitch_0
    const/16 v2, 0x9

    #@3a
    .line 337
    goto :goto_0

    #@3b
    .line 340
    :sswitch_1
    const/16 v2, 0xa

    #@3d
    .line 341
    goto :goto_0

    #@3e
    .line 344
    :sswitch_2
    const/16 v2, 0xb

    #@40
    .line 345
    goto :goto_0

    #@41
    .line 348
    :sswitch_3
    const/16 v2, 0xc

    #@43
    .line 349
    goto :goto_0

    #@44
    .line 356
    .end local v0    # "calData":Landroid/icu/impl/CalendarData;
    .end local v2    # "glueIndex":I
    .end local v4    # "patterns":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@45
    .local v1, "e":Ljava/util/MissingResourceException;
    goto :goto_1

    #@46
    .line 332
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x83 -> :sswitch_3
    .end sparse-switch
.end method

.method private declared-synchronized loadDates()V
    .locals 10

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 249
    :try_start_0
    const-string/jumbo v8, "android/icu/impl/data/icudt55b"

    #@4
    iget-object v9, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    #@6
    invoke-static {v8, v9}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@9
    move-result-object v4

    #@a
    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    #@c
    .line 250
    .local v4, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v8, "fields/day/relative"

    #@f
    invoke-virtual {v4, v8}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@12
    move-result-object v5

    #@13
    .line 252
    .local v5, "rdb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v0, Ljava/util/TreeSet;

    #@15
    new-instance v8, Landroid/icu/impl/RelativeDateFormat$1;

    #@17
    invoke-direct {v8, p0}, Landroid/icu/impl/RelativeDateFormat$1;-><init>(Landroid/icu/impl/RelativeDateFormat;)V

    #@1a
    invoke-direct {v0, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@1d
    .line 265
    .local v0, "datesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;>;"
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "i":Landroid/icu/util/UResourceBundleIterator;
    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_0

    #@27
    .line 266
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@2a
    move-result-object v3

    #@2b
    .line 268
    .local v3, "line":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 269
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    .line 270
    .local v7, "v":Ljava/lang/String;
    new-instance v6, Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@35
    invoke-direct {v6, v2, v7}, Landroid/icu/impl/RelativeDateFormat$URelativeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 271
    .local v6, "rs":Landroid/icu/impl/RelativeDateFormat$URelativeString;
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .end local v0    # "datesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;>;"
    .end local v1    # "i":Landroid/icu/util/UResourceBundleIterator;
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "line":Landroid/icu/util/UResourceBundle;
    .end local v4    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "rdb":Landroid/icu/impl/ICUResourceBundle;
    .end local v6    # "rs":Landroid/icu/impl/RelativeDateFormat$URelativeString;
    .end local v7    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v8

    #@3d
    monitor-exit p0

    #@3e
    throw v8

    #@3f
    .line 273
    .restart local v0    # "datesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;>;"
    .restart local v1    # "i":Landroid/icu/util/UResourceBundleIterator;
    .restart local v4    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .restart local v5    # "rdb":Landroid/icu/impl/ICUResourceBundle;
    :cond_0
    const/4 v8, 0x0

    #@40
    :try_start_1
    new-array v8, v8, [Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@42
    invoke-interface {v0, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@45
    move-result-object v8

    #@46
    check-cast v8, [Landroid/icu/impl/RelativeDateFormat$URelativeString;

    #@48
    iput-object v8, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    monitor-exit p0

    #@4b
    .line 248
    return-void
.end method


# virtual methods
.method public format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 110
    const/4 v4, 0x0

    #@2
    .line 111
    .local v4, "relativeDayString":Ljava/lang/String;
    sget-object v5, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@4
    invoke-virtual {p0, v5}, Landroid/icu/impl/RelativeDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    #@7
    move-result-object v0

    #@8
    .line 113
    .local v0, "capitalizationContext":Landroid/icu/text/DisplayContext;
    iget v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    #@a
    const/4 v6, -0x1

    #@b
    if-eq v5, v6, :cond_0

    #@d
    .line 115
    invoke-static {p1}, Landroid/icu/impl/RelativeDateFormat;->dayDifference(Landroid/icu/util/Calendar;)I

    #@10
    move-result v3

    #@11
    .line 118
    .local v3, "dayDiff":I
    invoke-direct {p0, v3}, Landroid/icu/impl/RelativeDateFormat;->getStringForDay(I)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 121
    .end local v3    # "dayDiff":I
    .end local v4    # "relativeDayString":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@17
    if-eqz v5, :cond_6

    #@19
    .line 122
    if-eqz v4, :cond_a

    #@1b
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    #@1d
    if-eqz v5, :cond_a

    #@1f
    .line 123
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    #@21
    if-eqz v5, :cond_1

    #@23
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    #@25
    if-nez v5, :cond_9

    #@27
    .line 125
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2a
    move-result v5

    #@2b
    if-lez v5, :cond_5

    #@2d
    invoke-virtual {v4, v8}, Ljava/lang/String;->codePointAt(I)I

    #@30
    move-result v5

    #@31
    invoke-static {v5}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_5

    #@37
    .line 126
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@39
    if-eq v0, v5, :cond_3

    #@3b
    .line 127
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@3d
    if-ne v0, v5, :cond_2

    #@3f
    iget-boolean v5, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    #@41
    .line 126
    if-nez v5, :cond_3

    #@43
    .line 128
    :cond_2
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@45
    if-ne v0, v5, :cond_5

    #@47
    iget-boolean v5, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    #@49
    .line 125
    if-eqz v5, :cond_5

    #@4b
    .line 129
    :cond_3
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@4d
    if-nez v5, :cond_4

    #@4f
    .line 131
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    #@51
    invoke-static {v5}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@54
    move-result-object v5

    #@55
    iput-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@57
    .line 133
    :cond_4
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    #@59
    iget-object v6, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@5b
    .line 134
    const/16 v7, 0x300

    #@5d
    .line 133
    invoke-static {v5, v4, v6, v7}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    .line 136
    :cond_5
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@63
    sget-object v6, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@65
    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    #@68
    .line 143
    :cond_6
    :goto_0
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@6a
    if-eqz v5, :cond_f

    #@6c
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    #@6e
    if-nez v5, :cond_7

    #@70
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    #@72
    if-eqz v5, :cond_f

    #@74
    .line 145
    :cond_7
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    #@76
    if-nez v5, :cond_b

    #@78
    .line 147
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@7a
    iget-object v6, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    #@7c
    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@7f
    .line 148
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@81
    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@84
    .line 178
    :cond_8
    :goto_1
    return-object p2

    #@85
    .line 123
    :cond_9
    iget-boolean v5, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    #@87
    .line 122
    if-nez v5, :cond_1

    #@89
    .line 139
    :cond_a
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@8b
    invoke-virtual {v5, v0}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    #@8e
    goto :goto_0

    #@8f
    .line 149
    :cond_b
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    #@91
    if-nez v5, :cond_d

    #@93
    .line 151
    if-eqz v4, :cond_c

    #@95
    .line 152
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@98
    goto :goto_1

    #@99
    .line 154
    :cond_c
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@9b
    iget-object v6, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    #@9d
    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@a0
    .line 155
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@a2
    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@a5
    goto :goto_1

    #@a6
    .line 158
    :cond_d
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    #@a8
    .line 159
    .local v2, "datePattern":Ljava/lang/String;
    if-eqz v4, :cond_e

    #@aa
    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v6, "\'"

    #@b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    const-string/jumbo v6, "\'"

    #@b9
    const-string/jumbo v7, "\'\'"

    #@bc
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@bf
    move-result-object v6

    #@c0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    const-string/jumbo v6, "\'"

    #@c7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v2

    #@cf
    .line 163
    :cond_e
    new-instance v1, Ljava/lang/StringBuffer;

    #@d1
    const-string/jumbo v5, ""

    #@d4
    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@d7
    .line 164
    .local v1, "combinedPattern":Ljava/lang/StringBuffer;
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    #@d9
    const/4 v6, 0x2

    #@da
    new-array v6, v6, [Ljava/lang/Object;

    #@dc
    iget-object v7, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    #@de
    aput-object v7, v6, v8

    #@e0
    const/4 v7, 0x1

    #@e1
    aput-object v2, v6, v7

    #@e3
    new-instance v7, Ljava/text/FieldPosition;

    #@e5
    invoke-direct {v7, v8}, Ljava/text/FieldPosition;-><init>(I)V

    #@e8
    invoke-virtual {v5, v6, v1, v7}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@eb
    .line 165
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@ed
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@f0
    move-result-object v6

    #@f1
    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    #@f4
    .line 166
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    #@f6
    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@f9
    goto :goto_1

    #@fa
    .line 168
    .end local v1    # "combinedPattern":Ljava/lang/StringBuffer;
    .end local v2    # "datePattern":Ljava/lang/String;
    :cond_f
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateFormat:Landroid/icu/text/DateFormat;

    #@fc
    if-eqz v5, :cond_8

    #@fe
    .line 171
    if-eqz v4, :cond_10

    #@100
    .line 172
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@103
    goto :goto_1

    #@104
    .line 174
    :cond_10
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateFormat:Landroid/icu/text/DateFormat;

    #@106
    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@109
    goto/16 :goto_1
.end method

.method public parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cal"    # Landroid/icu/util/Calendar;
    .param p3, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Relative Date parse is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 1
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    #@3
    .line 195
    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    #@5
    if-nez v0, :cond_1

    #@7
    .line 196
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@9
    if-eq p1, v0, :cond_0

    #@b
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@d
    if-ne p1, v0, :cond_1

    #@f
    .line 197
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    #@11
    invoke-direct {p0, v0}, Landroid/icu/impl/RelativeDateFormat;->initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V

    #@14
    .line 198
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    #@17
    .line 200
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@19
    if-nez v0, :cond_4

    #@1b
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@1d
    if-eq p1, v0, :cond_3

    #@1f
    .line 201
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@21
    if-ne p1, v0, :cond_2

    #@23
    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    #@25
    .line 200
    if-nez v0, :cond_3

    #@27
    .line 202
    :cond_2
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@29
    if-ne p1, v0, :cond_4

    #@2b
    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    #@2d
    .line 200
    if-eqz v0, :cond_4

    #@2f
    .line 203
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    #@31
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@37
    .line 193
    :cond_4
    return-void
.end method
