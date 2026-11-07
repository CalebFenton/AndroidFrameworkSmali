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
.field public static final whitelist test-api AM_PM_FIELD:I = 0xe

.field public static final whitelist test-api DATE_FIELD:I = 0x3

.field public static final whitelist test-api DAY_OF_WEEK_FIELD:I = 0x9

.field public static final whitelist test-api DAY_OF_WEEK_IN_MONTH_FIELD:I = 0xb

.field public static final whitelist test-api DAY_OF_YEAR_FIELD:I = 0xa

.field public static final whitelist test-api DEFAULT:I = 0x2

.field public static final whitelist test-api ERA_FIELD:I = 0x0

.field public static final whitelist test-api FULL:I = 0x0

.field public static final whitelist test-api HOUR0_FIELD:I = 0x10

.field public static final whitelist test-api HOUR1_FIELD:I = 0xf

.field public static final whitelist test-api HOUR_OF_DAY0_FIELD:I = 0x5

.field public static final whitelist test-api HOUR_OF_DAY1_FIELD:I = 0x4

.field public static final whitelist test-api LONG:I = 0x1

.field public static final whitelist test-api MEDIUM:I = 0x2

.field public static final whitelist test-api MILLISECOND_FIELD:I = 0x8

.field public static final whitelist test-api MINUTE_FIELD:I = 0x6

.field public static final whitelist test-api MONTH_FIELD:I = 0x2

.field public static final whitelist test-api SECOND_FIELD:I = 0x7

.field public static final whitelist test-api SHORT:I = 0x3

.field public static final whitelist test-api TIMEZONE_FIELD:I = 0x11

.field public static final whitelist test-api WEEK_OF_MONTH_FIELD:I = 0xd

.field public static final whitelist test-api WEEK_OF_YEAR_FIELD:I = 0xc

.field public static final whitelist test-api YEAR_FIELD:I = 0x1

.field public static greylist is24Hour:Ljava/lang/Boolean; = null

.field private static final whitelist serialVersionUID:J = 0x642ca1e4c22615fcL


# instance fields
.field protected whitelist test-api calendar:Ljava/util/Calendar;

.field protected whitelist test-api numberFormat:Ljava/text/NumberFormat;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 882
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method private static greylist-max-o get(IIILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 7
    .param p0, "timeStyle"    # I
    .param p1, "dateStyle"    # I
    .param p2, "flags"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    .line 847
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x3

    if-eqz v0, :cond_23

    .line 848
    if-ltz p0, :cond_a

    if-gt p0, v1, :cond_a

    goto :goto_24

    .line 849
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal time style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_23
    const/4 p0, -0x1

    .line 854
    :goto_24
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_46

    .line 855
    if-ltz p1, :cond_2d

    if-gt p1, v1, :cond_2d

    goto :goto_47

    .line 856
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal date style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_46
    const/4 p1, -0x1

    .line 872
    :goto_47
    :try_start_47
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1, p3}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V
    :try_end_4c
    .catch Ljava/util/MissingResourceException; {:try_start_47 .. :try_end_4c} :catch_4d

    return-object v0

    .line 873
    :catch_4d
    move-exception v0

    .line 874
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M/d/yy h:mm a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 681
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateInstance()Ljava/text/DateFormat;
    .registers 3

    .line 547
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateInstance(I)Ljava/text/DateFormat;
    .registers 4
    .param p0, "style"    # I

    .line 564
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, p0, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 4
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 578
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, v1, p1}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateTimeInstance()Ljava/text/DateFormat;
    .registers 3

    .line 593
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v1, v1, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateTimeInstance(II)Ljava/text/DateFormat;
    .registers 4
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    .line 613
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, p0, v1, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 4
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 627
    const/4 v0, 0x3

    invoke-static {p1, p0, v0, p2}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance()Ljava/text/DateFormat;
    .registers 1

    .line 637
    const/4 v0, 0x3

    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getTimeInstance()Ljava/text/DateFormat;
    .registers 4

    .line 501
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getTimeInstance(I)Ljava/text/DateFormat;
    .registers 4
    .param p0, "style"    # I

    .line 518
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 4
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 532
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist-max-o test-api set24HourTimePref(Ljava/lang/Boolean;)V
    .registers 1
    .param p0, "is24Hour"    # Ljava/lang/Boolean;

    .line 664
    sput-object p0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    .line 665
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 828
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 829
    .local v0, "other":Ljava/text/DateFormat;
    iget-object v1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 830
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/NumberFormat;

    iput-object v1, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 831
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 812
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 813
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5e

    .line 814
    :cond_12
    move-object v2, p1

    check-cast v2, Ljava/text/DateFormat;

    .line 815
    .local v2, "other":Ljava/text/DateFormat;
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 816
    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iget-object v4, v2, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 817
    invoke-virtual {v3}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    iget-object v4, v2, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 818
    invoke-virtual {v3}, Ljava/util/Calendar;->isLenient()Z

    move-result v3

    iget-object v4, v2, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isLenient()Z

    move-result v4

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 819
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    iget-object v4, v2, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v4, v2, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 820
    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v1

    .line 815
    :goto_5d
    return v0

    .line 813
    .end local v2    # "other":Ljava/text/DateFormat;
    :cond_5e
    :goto_5e
    return v1
.end method

.method public final whitelist test-api format(Ljava/util/Date;)Ljava/lang/String;
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 372
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {p0, p1, v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    return-object v0
.end method

.method public final whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 330
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_c

    .line 331
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 332
    :cond_c
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_21

    .line 333
    new-instance v0, Ljava/util/Date;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 336
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot format given Object as a Date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public whitelist test-api getCalendar()Ljava/util/Calendar;
    .registers 2

    .line 706
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public whitelist test-api getNumberFormat()Ljava/text/NumberFormat;
    .registers 2

    .line 725
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public whitelist test-api getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 759
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 804
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isLenient()Z
    .registers 2

    .line 797
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 398
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 399
    .local v1, "result":Ljava/util/Date;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-eqz v2, :cond_f

    .line 402
    return-object v1

    .line 400
    :cond_f
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public abstract whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 465
    invoke-virtual {p0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setCalendar(Ljava/util/Calendar;)V
    .registers 2
    .param p1, "newCalendar"    # Ljava/util/Calendar;

    .line 696
    iput-object p1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 697
    return-void
.end method

.method public whitelist test-api setLenient(Z)V
    .registers 3
    .param p1, "lenient"    # Z

    .line 781
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 782
    return-void
.end method

.method public whitelist test-api setNumberFormat(Ljava/text/NumberFormat;)V
    .registers 2
    .param p1, "newNumberFormat"    # Ljava/text/NumberFormat;

    .line 715
    iput-object p1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 716
    return-void
.end method

.method public whitelist test-api setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 745
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 746
    return-void
.end method
