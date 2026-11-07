.class public Landroid/icu/impl/RelativeDateFormat;
.super Landroid/icu/text/DateFormat;
.source "RelativeDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/RelativeDateFormat$URelativeString;,
        Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0xfb59e5457c57c3bL


# instance fields
.field private transient blacklist capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private blacklist capitalizationInfoIsSet:Z

.field private blacklist capitalizationOfRelativeUnitsForListOrMenu:Z

.field private blacklist capitalizationOfRelativeUnitsForStandAlone:Z

.field private blacklist combinedFormatHasDateAtStart:Z

.field private blacklist fCombinedFormat:Landroid/icu/text/MessageFormat;

.field private blacklist fDateFormat:Landroid/icu/text/DateFormat;

.field private blacklist fDatePattern:Ljava/lang/String;

.field blacklist fDateStyle:I

.field private blacklist fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

.field private transient blacklist fDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/RelativeDateFormat$URelativeString;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fLocale:Landroid/icu/util/ULocale;

.field private blacklist fTimeFormat:Landroid/icu/text/DateFormat;

.field private blacklist fTimePattern:Ljava/lang/String;

.field blacklist fTimeStyle:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetfDates(Landroid/icu/impl/RelativeDateFormat;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStringForDay(Landroid/icu/impl/RelativeDateFormat;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/impl/RelativeDateFormat;->getStringForDay(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)V
    .registers 10
    .param p1, "timeStyle"    # I
    .param p2, "dateStyle"    # I
    .param p3, "locale"    # Landroid/icu/util/ULocale;
    .param p4, "cal"    # Landroid/icu/util/Calendar;

    .line 62
    invoke-direct {p0}, Landroid/icu/text/DateFormat;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    .line 218
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    .line 225
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    .line 228
    iput-boolean v1, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    .line 229
    iput-boolean v1, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    .line 230
    iput-boolean v1, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    .line 231
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 63
    iput-object p4, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 65
    iput-object p3, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    .line 66
    iput p1, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    .line 67
    iput p2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    .line 69
    iget v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5f

    .line 70
    iget v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    and-int/lit16 v1, v1, -0x81

    .line 71
    .local v1, "newStyle":I
    invoke-static {v1, p3}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 72
    .local v3, "df":Landroid/icu/text/DateFormat;
    instance-of v4, v3, Landroid/icu/text/SimpleDateFormat;

    if-eqz v4, :cond_57

    .line 73
    move-object v4, v3

    check-cast v4, Landroid/icu/text/SimpleDateFormat;

    iput-object v4, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    .line 77
    iget-object v4, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v4}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    .line 78
    iget v4, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    if-eq v4, v2, :cond_56

    .line 79
    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    and-int/lit16 v1, v2, -0x81

    .line 80
    invoke-static {v1, p3}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v2

    .line 81
    .end local v3    # "df":Landroid/icu/text/DateFormat;
    .local v2, "df":Landroid/icu/text/DateFormat;
    instance-of v3, v2, Landroid/icu/text/SimpleDateFormat;

    if-eqz v3, :cond_56

    .line 82
    move-object v3, v2

    check-cast v3, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    .line 85
    .end local v1    # "newStyle":I
    .end local v2    # "df":Landroid/icu/text/DateFormat;
    :cond_56
    goto :goto_78

    .line 75
    .restart local v1    # "newStyle":I
    .restart local v3    # "df":Landroid/icu/text/DateFormat;
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t create SimpleDateFormat for date style"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    .end local v1    # "newStyle":I
    .end local v3    # "df":Landroid/icu/text/DateFormat;
    :cond_5f
    iget v1, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    and-int/lit16 v1, v1, -0x81

    .line 88
    .restart local v1    # "newStyle":I
    invoke-static {v1, p3}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v2

    .line 89
    .restart local v2    # "df":Landroid/icu/text/DateFormat;
    instance-of v3, v2, Landroid/icu/text/SimpleDateFormat;

    if-eqz v3, :cond_88

    .line 90
    move-object v3, v2

    check-cast v3, Landroid/icu/text/SimpleDateFormat;

    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    .line 94
    iget-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    .line 97
    .end local v1    # "newStyle":I
    .end local v2    # "df":Landroid/icu/text/DateFormat;
    :goto_78
    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/RelativeDateFormat;->initializeCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    .line 98
    invoke-direct {p0}, Landroid/icu/impl/RelativeDateFormat;->loadDates()V

    .line 99
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/RelativeDateFormat;->initializeCombinedFormat(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/MessageFormat;

    .line 100
    return-void

    .line 92
    .restart local v1    # "newStyle":I
    .restart local v2    # "df":Landroid/icu/text/DateFormat;
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t create SimpleDateFormat for time style"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist dayDifference(Landroid/icu/util/Calendar;)I
    .registers 5
    .param p0, "until"    # Landroid/icu/util/Calendar;

    .line 312
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 313
    .local v0, "nowCal":Landroid/icu/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 314
    .local v1, "nowDate":Ljava/util/Date;
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clear()V

    .line 315
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 316
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v3, v2

    .line 317
    .local v3, "dayDiff":I
    return v3
.end method

.method private blacklist getStringForDay(I)Ljava/lang/String;
    .registers 5
    .param p1, "day"    # I

    .line 239
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    if-nez v0, :cond_7

    .line 240
    invoke-direct {p0}, Landroid/icu/impl/RelativeDateFormat;->loadDates()V

    .line 242
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/RelativeDateFormat$URelativeString;

    .line 243
    .local v1, "dayItem":Landroid/icu/impl/RelativeDateFormat$URelativeString;
    iget v2, v1, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    if-ne v2, p1, :cond_20

    .line 244
    iget-object v0, v1, Landroid/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    return-object v0

    .line 246
    .end local v1    # "dayItem":Landroid/icu/impl/RelativeDateFormat$URelativeString;
    :cond_20
    goto :goto_d

    .line 247
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V
    .registers 8
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 295
    const-string v0, "android/icu/impl/data/icudata"

    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 297
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    :try_start_8
    const-string v1, "contextTransforms/relative"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 298
    .local v1, "rdb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object v2

    .line 299
    .local v2, "intVector":[I
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_28

    .line 300
    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_1e

    move v4, v5

    goto :goto_1f

    :cond_1e
    move v4, v3

    :goto_1f
    iput-boolean v4, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    .line 301
    aget v4, v2, v5

    if-eqz v4, :cond_26

    move v3, v5

    :cond_26
    iput-boolean v3, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z
    :try_end_28
    .catch Ljava/util/MissingResourceException; {:try_start_8 .. :try_end_28} :catch_29

    .line 305
    .end local v1    # "rdb":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "intVector":[I
    :cond_28
    goto :goto_2a

    .line 303
    :catch_29
    move-exception v1

    .line 306
    :goto_2a
    return-void
.end method

.method private blacklist initializeCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .registers 4
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 328
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_13

    .line 329
    if-nez p1, :cond_d

    .line 330
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    goto :goto_13

    .line 332
    :cond_d
    invoke-static {p1, p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 335
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method private blacklist initializeCombinedFormat(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/MessageFormat;
    .registers 10
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 340
    const-string v0, "android/icu/impl/data/icudata"

    invoke-static {v0, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 342
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DateTimePatterns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "resourcePath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 344
    .local v2, "patternsRb":Landroid/icu/impl/ICUResourceBundle;
    if-nez v2, :cond_3d

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gregorian"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 346
    const-string v3, "calendar/gregorian/DateTimePatterns"

    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 349
    :cond_3d
    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    const/16 v4, 0x9

    if-ge v3, v4, :cond_48

    goto :goto_8e

    .line 353
    :cond_48
    const/16 v3, 0x8

    .line 354
    .local v3, "glueIndex":I
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v4

    const/16 v5, 0xd

    if-lt v4, v5, :cond_73

    .line 355
    iget v4, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    if-ltz v4, :cond_61

    iget v4, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_61

    .line 356
    iget v4, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    goto :goto_73

    .line 358
    :cond_61
    iget v4, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/16 v5, 0x80

    if-lt v4, v5, :cond_73

    iget v4, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/16 v6, 0x83

    if-gt v4, v6, :cond_73

    .line 360
    iget v4, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 363
    :cond_73
    :goto_73
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v4

    .line 364
    .local v4, "elementType":I
    const/16 v5, 0x8

    if-ne v4, v5, :cond_89

    .line 365
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "pattern":Ljava/lang/String;
    goto :goto_90

    .line 367
    .end local v5    # "pattern":Ljava/lang/String;
    :cond_89
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "pattern":Ljava/lang/String;
    goto :goto_90

    .line 351
    .end local v3    # "glueIndex":I
    .end local v4    # "elementType":I
    .end local v5    # "pattern":Ljava/lang/String;
    :cond_8e
    :goto_8e
    const-string v5, "{1} {0}"

    .line 370
    .restart local v5    # "pattern":Ljava/lang/String;
    :goto_90
    const-string v3, "{1}"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    .line 371
    new-instance v3, Landroid/icu/text/MessageFormat;

    invoke-direct {v3, v5, p2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    .line 372
    iget-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    return-object v3
.end method

.method private declared-synchronized blacklist loadDates()V
    .registers 4

    monitor-enter p0

    .line 283
    :try_start_1
    const-string v0, "android/icu/impl/data/icudata"

    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 286
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    .line 287
    new-instance v1, Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;-><init>(Landroid/icu/impl/RelativeDateFormat;Landroid/icu/impl/RelativeDateFormat-IA;)V

    .line 288
    .local v1, "sink":Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;
    const-string v2, "fields/day/relative"

    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 289
    monitor-exit p0

    return-void

    .line 282
    .end local v0    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "sink":Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;
    .end local p0    # "this":Landroid/icu/impl/RelativeDateFormat;
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method


# virtual methods
.method public whitelist test-api format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "relativeDayString":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v1}, Landroid/icu/impl/RelativeDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v1

    .line 117
    .local v1, "capitalizationContext":Landroid/icu/text/DisplayContext;
    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    .line 119
    invoke-static {p1}, Landroid/icu/impl/RelativeDateFormat;->dayDifference(Landroid/icu/util/Calendar;)I

    move-result v2

    .line 122
    .local v2, "dayDiff":I
    invoke-direct {p0, v2}, Landroid/icu/impl/RelativeDateFormat;->getStringForDay(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .end local v2    # "dayDiff":I
    :cond_14
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    const/4 v3, 0x0

    if-eqz v2, :cond_72

    .line 126
    if-eqz v0, :cond_6d

    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    if-eqz v2, :cond_2b

    iget-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    if-eqz v2, :cond_6d

    .line 129
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_65

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_65

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq v1, v2, :cond_4f

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne v1, v2, :cond_47

    iget-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    if-nez v2, :cond_4f

    :cond_47
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne v1, v2, :cond_65

    iget-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    if-eqz v2, :cond_65

    .line 133
    :cond_4f
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v2, :cond_5b

    .line 135
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 137
    :cond_5b
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    iget-object v4, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v5, 0x300

    invoke-static {v2, v0, v4, v5}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_65
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v2, v4}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    goto :goto_72

    .line 143
    :cond_6d
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 147
    :cond_72
    :goto_72
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v2, :cond_ed

    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-nez v2, :cond_7e

    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v2, :cond_ed

    .line 149
    :cond_7e
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-nez v2, :cond_8f

    .line 151
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_fc

    .line 153
    :cond_8f
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-nez v2, :cond_a6

    .line 155
    if-eqz v0, :cond_99

    .line 156
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_fc

    .line 158
    :cond_99
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_fc

    .line 162
    :cond_a6
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    .line 163
    .local v2, "datePattern":Ljava/lang/String;
    if-eqz v0, :cond_c7

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'\'"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    :cond_c7
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 168
    .local v4, "combinedPattern":Ljava/lang/StringBuffer;
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    iget-object v6, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/text/FieldPosition;

    invoke-direct {v7, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v5, v6, v4, v7}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 171
    .end local v2    # "datePattern":Ljava/lang/String;
    .end local v4    # "combinedPattern":Ljava/lang/StringBuffer;
    goto :goto_fc

    .line 172
    :cond_ed
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateFormat:Landroid/icu/text/DateFormat;

    if-eqz v2, :cond_fc

    .line 175
    if-eqz v0, :cond_f7

    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_fc

    .line 178
    :cond_f7
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 182
    :cond_fc
    :goto_fc
    return-object p2
.end method

.method public whitelist test-api parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cal"    # Landroid/icu/util/Calendar;
    .param p3, "pos"    # Ljava/text/ParsePosition;

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Relative Date parse is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setContext(Landroid/icu/text/DisplayContext;)V
    .registers 3
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    .line 200
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 201
    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    if-nez v0, :cond_17

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_f

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_17

    .line 203
    :cond_f
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/impl/RelativeDateFormat;->initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    .line 206
    :cond_17
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_37

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_2f

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_27

    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    if-nez v0, :cond_2f

    :cond_27
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_37

    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    if-eqz v0, :cond_37

    .line 209
    :cond_2f
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 211
    :cond_37
    return-void
.end method
