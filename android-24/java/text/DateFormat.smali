.class public abstract Ljava/text/DateFormat;
.super Ljava/text/Format;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DateFormat$DateFormatGetter;,
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
    .line 792
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    #@3
    return-void
.end method

.method private static get(IIILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 7
    .param p0, "timeStyle"    # I
    .param p1, "dateStyle"    # I
    .param p2, "flags"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 752
    and-int/lit8 v3, p2, 0x1

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 753
    if-ltz p0, :cond_0

    #@7
    if-le p0, v4, :cond_2

    #@9
    .line 754
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Illegal time style "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v3

    #@23
    .line 757
    :cond_1
    const/4 p0, -0x1

    #@24
    .line 759
    :cond_2
    and-int/lit8 v3, p2, 0x2

    #@26
    if-eqz v3, :cond_4

    #@28
    .line 760
    if-ltz p1, :cond_3

    #@2a
    if-le p1, v4, :cond_5

    #@2c
    .line 761
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "Illegal date style "

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v3

    #@46
    .line 764
    :cond_4
    const/4 p1, -0x1

    #@47
    .line 770
    :cond_5
    :try_start_0
    const-class v3, Ljava/text/spi/DateFormatProvider;

    #@49
    invoke-static {v3}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    #@4c
    move-result-object v1

    #@4d
    .line 771
    .local v1, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v1}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_6

    #@53
    .line 773
    invoke-static {}, Ljava/text/DateFormat$DateFormatGetter;->-get0()Ljava/text/DateFormat$DateFormatGetter;

    #@56
    move-result-object v3

    #@57
    .line 772
    const/4 v4, 0x3

    #@58
    new-array v4, v4, [Ljava/lang/Object;

    #@5a
    .line 775
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d
    move-result-object v5

    #@5e
    const/4 v6, 0x0

    #@5f
    aput-object v5, v4, v6

    #@61
    .line 776
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@64
    move-result-object v5

    #@65
    const/4 v6, 0x1

    #@66
    aput-object v5, v4, v6

    #@68
    .line 777
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b
    move-result-object v5

    #@6c
    const/4 v6, 0x2

    #@6d
    aput-object v5, v4, v6

    #@6f
    .line 772
    invoke-virtual {v1, v3, p3, v4}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v2

    #@73
    check-cast v2, Ljava/text/DateFormat;

    #@75
    .line 778
    .local v2, "providersInstance":Ljava/text/DateFormat;
    if-eqz v2, :cond_6

    #@77
    .line 779
    return-object v2

    #@78
    .line 783
    .end local v2    # "providersInstance":Ljava/text/DateFormat;
    :cond_6
    new-instance v3, Ljava/text/SimpleDateFormat;

    #@7a
    invoke-direct {v3, p0, p1, p3}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@7d
    return-object v3

    #@7e
    .line 784
    .end local v1    # "pool":Lsun/util/LocaleServiceProviderPool;
    :catch_0
    move-exception v0

    #@7f
    .line 785
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v3, Ljava/text/SimpleDateFormat;

    #@81
    const-string/jumbo v4, "M/d/yy h:mm a"

    #@84
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@87
    return-object v3
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    .line 585
    const-class v1, Ljava/text/spi/DateFormatProvider;

    #@2
    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    #@5
    move-result-object v0

    #@6
    .line 586
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->getAvailableLocales()[Ljava/util/Locale;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public static final getDateInstance()Ljava/text/DateFormat;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 483
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@3
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v1, v2, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final getDateInstance(I)Ljava/text/DateFormat;
    .locals 3
    .param p0, "style"    # I

    #@0
    .prologue
    .line 495
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x2

    #@8
    invoke-static {v1, p0, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 509
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x2

    #@2
    invoke-static {v0, p0, v1, p1}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final getDateTimeInstance()Ljava/text/DateFormat;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 519
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@3
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x3

    #@8
    invoke-static {v2, v2, v1, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final getDateTimeInstance(II)Ljava/text/DateFormat;
    .locals 2
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    #@0
    .prologue
    .line 534
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-static {p1, p0, v1, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static final getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 548
    const/4 v0, 0x3

    #@1
    invoke-static {p1, p0, v0, p2}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getInstance()Ljava/text/DateFormat;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 556
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getTimeInstance()Ljava/text/DateFormat;
    .locals 4

    #@0
    .prologue
    .line 447
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    const/4 v2, 0x0

    #@8
    const/4 v3, 0x1

    #@9
    invoke-static {v1, v2, v3, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static final getTimeInstance(I)Ljava/text/DateFormat;
    .locals 3
    .param p0, "style"    # I

    #@0
    .prologue
    .line 459
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x1

    #@8
    invoke-static {p0, v1, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 473
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-static {p0, v0, v1, p1}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final set24HourTimePref(Z)V
    .locals 1
    .param p0, "is24Hour"    # Z

    #@0
    .prologue
    .line 566
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    #@6
    .line 565
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 733
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/DateFormat;

    #@6
    .line 734
    .local v0, "other":Ljava/text/DateFormat;
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
    .line 735
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
    .line 736
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 717
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 718
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Ljava/text/DateFormat;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 719
    check-cast v0, Ljava/text/DateFormat;

    #@15
    .line 721
    .local v0, "other":Ljava/text/DateFormat;
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@17
    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@1a
    move-result v2

    #@1b
    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@1d
    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@20
    move-result v3

    #@21
    if-ne v2, v3, :cond_3

    #@23
    .line 722
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@25
    invoke-virtual {v2}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@28
    move-result v2

    #@29
    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2b
    invoke-virtual {v3}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@2e
    move-result v3

    #@2f
    if-ne v2, v3, :cond_3

    #@31
    .line 723
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@33
    invoke-virtual {v2}, Ljava/util/Calendar;->isLenient()Z

    #@36
    move-result v2

    #@37
    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@39
    invoke-virtual {v3}, Ljava/util/Calendar;->isLenient()Z

    #@3c
    move-result v3

    #@3d
    if-ne v2, v3, :cond_3

    #@3f
    .line 724
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@41
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@44
    move-result-object v2

    #@45
    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@47
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v2

    #@4f
    .line 721
    if-eqz v2, :cond_3

    #@51
    .line 725
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@53
    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@55
    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v1

    #@59
    .line 720
    :cond_3
    return v1
.end method

.method public final format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 338
    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    #@7
    .line 337
    invoke-virtual {p0, p1, v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 296
    instance-of v0, p1, Ljava/util/Date;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 297
    check-cast p1, Ljava/util/Date;

    #@6
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 298
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 299
    new-instance v0, Ljava/util/Date;

    #@11
    check-cast p1, Ljava/lang/Number;

    #@13
    .end local p1    # "obj":Ljava/lang/Object;
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
    .line 302
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "Cannot format given Object as a Date"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0
.end method

.method public abstract format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    #@0
    .prologue
    .line 611
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2
    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 664
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 709
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2
    invoke-virtual {v0}, Ljava/text/NumberFormat;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isLenient()Z
    .locals 1

    #@0
    .prologue
    .line 702
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
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 355
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 356
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@9
    move-result-object v1

    #@a
    .line 357
    .local v1, "result":Ljava/util/Date;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    #@c
    if-nez v2, :cond_0

    #@e
    .line 358
    new-instance v2, Ljava/text/ParseException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Unparseable date: \""

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, "\""

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 359
    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@2d
    .line 358
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@30
    throw v2

    #@31
    .line 360
    :cond_0
    return-object v1
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 416
    invoke-virtual {p0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "newCalendar"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 601
    iput-object p1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    .line 599
    return-void
.end method

.method public setLenient(Z)V
    .locals 1
    .param p1, "lenient"    # Z

    #@0
    .prologue
    .line 686
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setLenient(Z)V

    #@5
    .line 684
    return-void
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "newNumberFormat"    # Ljava/text/NumberFormat;

    #@0
    .prologue
    .line 620
    iput-object p1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2
    .line 618
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@5
    .line 648
    return-void
.end method
