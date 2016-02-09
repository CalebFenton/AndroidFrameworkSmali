.class public abstract Ljava/text/DateFormat;
.super Ljava/text/Format;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DateFormat$Field;
    }
.end annotation


# static fields
.field public static final AM_PM_FIELD:I = 0xe

.field public static final DATE_FIELD:I = 0x3

.field public static final DAY_OF_WEEK_FIELD:I = 0x9

.field public static final DAY_OF_WEEK_IN_MONTH_FIELD:I = 0xb

.field public static final DAY_OF_YEAR_FIELD:I = 0xa

.field public static final DEFAULT:I = 0x2

.field public static final ERA_FIELD:I = 0x0

.field public static final FULL:I = 0x0

.field public static final HOUR0_FIELD:I = 0x10

.field public static final HOUR1_FIELD:I = 0xf

.field public static final HOUR_OF_DAY0_FIELD:I = 0x5

.field public static final HOUR_OF_DAY1_FIELD:I = 0x4

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final MILLISECOND_FIELD:I = 0x8

.field public static final MINUTE_FIELD:I = 0x6

.field public static final MONTH_FIELD:I = 0x2

.field public static final SECOND_FIELD:I = 0x7

.field public static final SHORT:I = 0x3

.field public static final TIMEZONE_FIELD:I = 0x11

.field public static final WEEK_OF_MONTH_FIELD:I = 0xd

.field public static final WEEK_OF_YEAR_FIELD:I = 0xc

.field public static final YEAR_FIELD:I = 0x1

.field public static is24Hour:Ljava/lang/Boolean; = null

.field private static final serialVersionUID:J = 0x642ca1e4c22615fcL


# instance fields
.field protected calendar:Ljava/util/Calendar;

.field protected numberFormat:Ljava/text/NumberFormat;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 228
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    #@3
    return-void
.end method

.method private static checkDateStyle(I)V
    .locals 3
    .param p0, "style"    # I

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 841
    const/4 v0, 0x3

    #@2
    if-eq p0, v0, :cond_0

    #@4
    if-eq p0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    if-eq p0, v0, :cond_0

    #@9
    .line 842
    if-eqz p0, :cond_0

    #@b
    if-eq p0, v1, :cond_0

    #@d
    .line 843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Illegal date style: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 840
    :cond_0
    return-void
.end method

.method private static checkTimeStyle(I)V
    .locals 3
    .param p0, "style"    # I

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 848
    const/4 v0, 0x3

    #@2
    if-eq p0, v0, :cond_0

    #@4
    if-eq p0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    if-eq p0, v0, :cond_0

    #@9
    .line 849
    if-eqz p0, :cond_0

    #@b
    if-eq p0, v1, :cond_0

    #@d
    .line 850
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Illegal time style: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 847
    :cond_0
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 343
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getDateInstance()Ljava/text/DateFormat;
    .locals 1

    #@0
    .prologue
    .line 362
    const/4 v0, 0x2

    #@1
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getDateInstance(I)Ljava/text/DateFormat;
    .locals 1
    .param p0, "style"    # I

    #@0
    .prologue
    .line 378
    invoke-static {p0}, Ljava/text/DateFormat;->checkDateStyle(I)V

    #@3
    .line 379
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    invoke-static {p0, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static final getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 397
    invoke-static {p0}, Ljava/text/DateFormat;->checkDateStyle(I)V

    #@3
    .line 398
    if-nez p1, :cond_0

    #@5
    .line 399
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "locale == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 401
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@10
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@1b
    return-object v0
.end method

.method public static final getDateTimeInstance()Ljava/text/DateFormat;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    .line 411
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getDateTimeInstance(II)Ljava/text/DateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    #@0
    .prologue
    .line 429
    invoke-static {p1}, Ljava/text/DateFormat;->checkTimeStyle(I)V

    #@3
    .line 430
    invoke-static {p0}, Ljava/text/DateFormat;->checkDateStyle(I)V

    #@6
    .line 431
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@9
    move-result-object v0

    #@a
    invoke-static {p0, p1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static final getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 4
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 451
    invoke-static {p1}, Ljava/text/DateFormat;->checkTimeStyle(I)V

    #@3
    .line 452
    invoke-static {p0}, Ljava/text/DateFormat;->checkDateStyle(I)V

    #@6
    .line 453
    if-nez p2, :cond_0

    #@8
    .line 454
    new-instance v2, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v3, "locale == null"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 456
    :cond_0
    invoke-static {p2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@14
    move-result-object v0

    #@15
    .line 457
    .local v0, "localeData":Llibcore/icu/LocaleData;
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {v0, p0}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, p1}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    .line 458
    .local v1, "pattern":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@37
    invoke-direct {v2, v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@3a
    return-object v2
.end method

.method public static final getInstance()Ljava/text/DateFormat;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 469
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getTimeInstance()Ljava/text/DateFormat;
    .locals 1

    #@0
    .prologue
    .line 495
    const/4 v0, 0x2

    #@1
    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getTimeInstance(I)Ljava/text/DateFormat;
    .locals 1
    .param p0, "style"    # I

    #@0
    .prologue
    .line 511
    invoke-static {p0}, Ljava/text/DateFormat;->checkTimeStyle(I)V

    #@3
    .line 512
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    invoke-static {p0, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static final getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 530
    invoke-static {p0}, Ljava/text/DateFormat;->checkTimeStyle(I)V

    #@3
    .line 531
    if-nez p1, :cond_0

    #@5
    .line 532
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "locale == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 535
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@10
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@1b
    return-object v0
.end method

.method public static final set24HourTimePref(Z)V
    .locals 1
    .param p0, "is24Hour"    # Z

    #@0
    .prologue
    .line 476
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    #@6
    .line 475
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 236
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/DateFormat;

    #@6
    .line 237
    .local v0, "clone":Ljava/text/DateFormat;
    iget-object v1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@8
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/util/Calendar;

    #@e
    iput-object v1, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@10
    .line 238
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@12
    invoke-virtual {v1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/text/NumberFormat;

    #@18
    iput-object v1, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@1a
    .line 239
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 255
    if-ne p0, p1, :cond_0

    #@4
    .line 256
    return v1

    #@5
    .line 258
    :cond_0
    instance-of v3, p1, Ljava/text/DateFormat;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 259
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 261
    check-cast v0, Ljava/text/DateFormat;

    #@d
    .line 262
    .local v0, "dateFormat":Ljava/text/DateFormat;
    iget-object v3, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@f
    iget-object v4, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@11
    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 263
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@19
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@1c
    move-result-object v3

    #@1d
    .line 264
    iget-object v4, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@1f
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@22
    move-result-object v4

    #@23
    .line 263
    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    .line 262
    if-eqz v3, :cond_3

    #@29
    .line 265
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2b
    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@2e
    move-result v3

    #@2f
    iget-object v4, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@31
    invoke-virtual {v4}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@34
    move-result v4

    #@35
    if-ne v3, v4, :cond_3

    #@37
    .line 267
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@39
    invoke-virtual {v3}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@3c
    move-result v3

    #@3d
    iget-object v4, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@3f
    invoke-virtual {v4}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@42
    move-result v4

    #@43
    if-ne v3, v4, :cond_3

    #@45
    .line 269
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@47
    invoke-virtual {v3}, Ljava/util/Calendar;->isLenient()Z

    #@4a
    move-result v3

    #@4b
    iget-object v4, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@4d
    invoke-virtual {v4}, Ljava/util/Calendar;->isLenient()Z

    #@50
    move-result v4

    #@51
    if-ne v3, v4, :cond_2

    #@53
    .line 262
    :goto_0
    return v1

    #@54
    :cond_2
    move v1, v2

    #@55
    .line 269
    goto :goto_0

    #@56
    :cond_3
    move v1, v2

    #@57
    .line 262
    goto :goto_0
.end method

.method public final format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    invoke-virtual {p0, p1, v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 297
    instance-of v0, p1, Ljava/util/Date;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 298
    check-cast p1, Ljava/util/Date;

    #@6
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 300
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 301
    new-instance v0, Ljava/util/Date;

    #@11
    check-cast p1, Ljava/lang/Number;

    #@13
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    #@16
    move-result-wide v2

    #@17
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1a
    invoke-virtual {p0, v0, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 303
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Bad class: "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0
.end method

.method public abstract format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2
    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 544
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 549
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@5
    move-result v0

    #@6
    .line 550
    iget-object v1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@8
    invoke-virtual {v1}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@b
    move-result v1

    #@c
    .line 549
    add-int/2addr v0, v1

    #@d
    .line 551
    iget-object v1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@f
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/util/TimeZone;->hashCode()I

    #@16
    move-result v1

    #@17
    .line 549
    add-int/2addr v1, v0

    #@18
    .line 552
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@1a
    invoke-virtual {v0}, Ljava/util/Calendar;->isLenient()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    const/16 v0, 0x4cf

    #@22
    .line 549
    :goto_0
    add-int/2addr v0, v1

    #@23
    .line 553
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@25
    invoke-virtual {v1}, Ljava/text/NumberFormat;->hashCode()I

    #@28
    move-result v1

    #@29
    .line 549
    add-int/2addr v0, v1

    #@2a
    return v0

    #@2b
    .line 552
    :cond_0
    const/16 v0, 0x4d5

    #@2d
    goto :goto_0
.end method

.method public isLenient()Z
    .locals 1

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->isLenient()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 576
    new-instance v1, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 577
    .local v1, "position":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@9
    move-result-object v0

    #@a
    .line 578
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 579
    new-instance v2, Ljava/text/ParseException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Unparseable date: \""

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, "\""

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 580
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@30
    move-result v4

    #@31
    .line 579
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@34
    throw v2

    #@35
    .line 582
    :cond_0
    return-object v0
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 635
    invoke-virtual {p0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "cal"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 645
    iput-object p1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    .line 644
    return-void
.end method

.method public setLenient(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 659
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setLenient(Z)V

    #@5
    .line 658
    return-void
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    #@0
    .prologue
    .line 669
    iput-object p1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2
    .line 668
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timezone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 679
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@5
    .line 678
    return-void
.end method
