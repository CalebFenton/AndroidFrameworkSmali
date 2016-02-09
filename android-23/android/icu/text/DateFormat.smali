.class public abstract Landroid/icu/text/DateFormat;
.super Landroid/icu/text/UFormat;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateFormat$BooleanAttribute;,
        Landroid/icu/text/DateFormat$Field;
    }
.end annotation


# static fields
.field public static final ABBR_GENERIC_TZ:Ljava/lang/String; = "v"

.field public static final ABBR_MONTH:Ljava/lang/String; = "MMM"

.field public static final ABBR_MONTH_DAY:Ljava/lang/String; = "MMMd"

.field public static final ABBR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MMMEd"

.field public static final ABBR_QUARTER:Ljava/lang/String; = "QQQ"

.field public static final ABBR_SPECIFIC_TZ:Ljava/lang/String; = "z"

.field public static final ABBR_STANDALONE_MONTH:Ljava/lang/String; = "LLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBR_UTC_TZ:Ljava/lang/String; = "ZZZZ"

.field public static final ABBR_WEEKDAY:Ljava/lang/String; = "E"

.field public static final AM_PM_FIELD:I = 0xe

.field public static final DATE_FIELD:I = 0x3

.field public static final DAY:Ljava/lang/String; = "d"

.field public static final DAY_OF_WEEK_FIELD:I = 0x9

.field public static final DAY_OF_WEEK_IN_MONTH_FIELD:I = 0xb

.field public static final DAY_OF_YEAR_FIELD:I = 0xa

.field public static final DEFAULT:I = 0x2

.field public static final DOW_LOCAL_FIELD:I = 0x13

.field public static final ERA_FIELD:I = 0x0

.field public static final EXTENDED_YEAR_FIELD:I = 0x14

.field public static final FIELD_COUNT:I = 0x24

.field public static final FRACTIONAL_SECOND_FIELD:I = 0x8

.field public static final FULL:I = 0x0

.field public static final GENERIC_TZ:Ljava/lang/String; = "vvvv"

.field public static final HOUR:Ljava/lang/String; = "j"

.field public static final HOUR0_FIELD:I = 0x10

.field public static final HOUR1_FIELD:I = 0xf

.field public static final HOUR24:Ljava/lang/String; = "H"

.field public static final HOUR24_MINUTE:Ljava/lang/String; = "Hm"

.field public static final HOUR24_MINUTE_SECOND:Ljava/lang/String; = "Hms"

.field public static final HOUR_GENERIC_TZ:Ljava/lang/String; = "jv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_MINUTE:Ljava/lang/String; = "jm"

.field public static final HOUR_MINUTE_GENERIC_TZ:Ljava/lang/String; = "jmv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_MINUTE_SECOND:Ljava/lang/String; = "jms"

.field public static final HOUR_MINUTE_TZ:Ljava/lang/String; = "jmz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY0_FIELD:I = 0x5

.field public static final HOUR_OF_DAY1_FIELD:I = 0x4

.field public static final HOUR_TZ:Ljava/lang/String; = "jz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JULIAN_DAY_FIELD:I = 0x15

.field public static final LOCATION_TZ:Ljava/lang/String; = "VVVV"

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final MILLISECONDS_IN_DAY_FIELD:I = 0x16

.field public static final MILLISECOND_FIELD:I = 0x8

.field public static final MINUTE:Ljava/lang/String; = "m"

.field public static final MINUTE_FIELD:I = 0x6

.field public static final MINUTE_SECOND:Ljava/lang/String; = "ms"

.field public static final MONTH:Ljava/lang/String; = "MMMM"

.field public static final MONTH_DAY:Ljava/lang/String; = "MMMMd"

.field public static final MONTH_FIELD:I = 0x2

.field public static final MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MMMMEEEEd"

.field public static final NONE:I = -0x1

.field public static final NUM_MONTH:Ljava/lang/String; = "M"

.field public static final NUM_MONTH_DAY:Ljava/lang/String; = "Md"

.field public static final NUM_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MEd"

.field public static final QUARTER:Ljava/lang/String; = "QQQQ"

.field public static final QUARTER_FIELD:I = 0x1b

.field static final RELATED_YEAR:I = 0x22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RELATIVE:I = 0x80

.field public static final RELATIVE_DEFAULT:I = 0x82

.field public static final RELATIVE_FULL:I = 0x80

.field public static final RELATIVE_LONG:I = 0x81

.field public static final RELATIVE_MEDIUM:I = 0x82

.field public static final RELATIVE_SHORT:I = 0x83

.field public static final SECOND:Ljava/lang/String; = "s"

.field public static final SECOND_FIELD:I = 0x7

.field public static final SHORT:I = 0x3

.field public static final SPECIFIC_TZ:Ljava/lang/String; = "zzzz"

.field public static final STANDALONE_DAY_FIELD:I = 0x19

.field public static final STANDALONE_MONTH:Ljava/lang/String; = "LLLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH_FIELD:I = 0x1a

.field public static final STANDALONE_QUARTER_FIELD:I = 0x1c

.field public static final TIMEZONE_FIELD:I = 0x11

.field public static final TIMEZONE_GENERIC_FIELD:I = 0x18

.field public static final TIMEZONE_ISO_FIELD:I = 0x20

.field public static final TIMEZONE_ISO_LOCAL_FIELD:I = 0x21

.field public static final TIMEZONE_LOCALIZED_GMT_OFFSET_FIELD:I = 0x1f

.field public static final TIMEZONE_RFC_FIELD:I = 0x17

.field public static final TIMEZONE_SPECIAL_FIELD:I = 0x1d

.field public static final TIME_SEPARATOR:I = 0x23

.field public static final WEEKDAY:Ljava/lang/String; = "EEEE"

.field public static final WEEK_OF_MONTH_FIELD:I = 0xd

.field public static final WEEK_OF_YEAR_FIELD:I = 0xc

.field public static final YEAR:Ljava/lang/String; = "y"

.field public static final YEAR_ABBR_MONTH:Ljava/lang/String; = "yMMM"

.field public static final YEAR_ABBR_MONTH_DAY:Ljava/lang/String; = "yMMMd"

.field public static final YEAR_ABBR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMMMEd"

.field public static final YEAR_ABBR_QUARTER:Ljava/lang/String; = "yQQQ"

.field public static final YEAR_FIELD:I = 0x1

.field public static final YEAR_MONTH:Ljava/lang/String; = "yMMMM"

.field public static final YEAR_MONTH_DAY:Ljava/lang/String; = "yMMMMd"

.field public static final YEAR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMMMMEEEEd"

.field public static final YEAR_NAME_FIELD:I = 0x1e

.field public static final YEAR_NUM_MONTH:Ljava/lang/String; = "yM"

.field public static final YEAR_NUM_MONTH_DAY:Ljava/lang/String; = "yMd"

.field public static final YEAR_NUM_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMEd"

.field public static final YEAR_QUARTER:Ljava/lang/String; = "yQQQQ"

.field public static final YEAR_WOY_FIELD:I = 0x12

.field static final currentSerialVersion:I = 0x1

.field private static final serialVersionUID:J = 0x642ca1e4c22615fcL


# instance fields
.field private booleanAttributes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/DateFormat$BooleanAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected calendar:Landroid/icu/util/Calendar;

.field private capitalizationSetting:Landroid/icu/text/DisplayContext;

.field protected numberFormat:Landroid/icu/text/NumberFormat;

.field private serialVersionOnStream:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1740
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@3
    .line 502
    const-class v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@5
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    #@b
    .line 510
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@d
    iput-object v0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@f
    .line 528
    const/4 v0, 0x1

    #@10
    iput v0, p0, Landroid/icu/text/DateFormat;->serialVersionOnStream:I

    #@12
    .line 1740
    return-void
.end method

.method private static get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;
    .locals 6
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "loc"    # Landroid/icu/util/ULocale;
    .param p3, "cal"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, -0x1

    #@2
    .line 1686
    if-eq p1, v4, :cond_1

    #@4
    and-int/lit16 v3, p1, 0x80

    #@6
    if-lez v3, :cond_1

    #@8
    .line 1688
    :cond_0
    new-instance v1, Landroid/icu/impl/RelativeDateFormat;

    #@a
    invoke-direct {v1, p1, p0, p2, p3}, Landroid/icu/impl/RelativeDateFormat;-><init>(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)V

    #@d
    .line 1689
    .local v1, "r":Landroid/icu/impl/RelativeDateFormat;
    return-object v1

    #@e
    .line 1687
    .end local v1    # "r":Landroid/icu/impl/RelativeDateFormat;
    :cond_1
    if-eq p0, v4, :cond_2

    #@10
    and-int/lit16 v3, p0, 0x80

    #@12
    if-gtz v3, :cond_0

    #@14
    .line 1692
    :cond_2
    if-lt p1, v4, :cond_3

    #@16
    if-le p1, v5, :cond_4

    #@18
    .line 1693
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Illegal time style "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 1695
    :cond_4
    if-lt p0, v4, :cond_5

    #@34
    if-le p0, v5, :cond_6

    #@36
    .line 1696
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@38
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v5, "Illegal date style "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v3

    #@50
    .line 1699
    :cond_6
    if-nez p3, :cond_7

    #@52
    .line 1700
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@55
    move-result-object p3

    #@56
    .line 1704
    :cond_7
    :try_start_0
    invoke-virtual {p3, p0, p1, p2}, Landroid/icu/util/Calendar;->getDateTimeFormat(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@59
    move-result-object v2

    #@5a
    .line 1705
    .local v2, "result":Landroid/icu/text/DateFormat;
    sget-object v3, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@5c
    invoke-virtual {p3, v3}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@5f
    move-result-object v3

    #@60
    .line 1706
    sget-object v4, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@62
    invoke-virtual {p3, v4}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@65
    move-result-object v4

    #@66
    .line 1705
    invoke-virtual {v2, v3, v4}, Landroid/icu/text/DateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    .line 1707
    return-object v2

    #@6a
    .line 1708
    .end local v2    # "result":Landroid/icu/text/DateFormat;
    :catch_0
    move-exception v0

    #@6b
    .line 1711
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v3, Landroid/icu/text/SimpleDateFormat;

    #@6d
    const-string/jumbo v4, "M/d/yy h:mm a"

    #@70
    invoke-direct {v3, v4}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@73
    return-object v3
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 1428
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 1439
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getDateInstance()Landroid/icu/text/DateFormat;
    .locals 4

    #@0
    .prologue
    .line 1279
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    const/4 v2, -0x1

    #@8
    const/4 v3, 0x0

    #@9
    invoke-static {v1, v2, v0, v3}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static final getDateInstance(I)Landroid/icu/text/DateFormat;
    .locals 3
    .param p0, "style"    # I

    #@0
    .prologue
    .line 1297
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, -0x1

    #@7
    const/4 v2, 0x0

    #@8
    invoke-static {p0, v1, v0, v2}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1335
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v0, p1, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final getDateInstance(ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 3
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1316
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, -0x1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {p0, v1, v0, v2}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getDateInstance(Landroid/icu/util/Calendar;I)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I

    #@0
    .prologue
    .line 1938
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, p1, v0}, Landroid/icu/text/DateFormat;->getDateInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getDateInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1782
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0, p2}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getDateInstance(Landroid/icu/util/Calendar;ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 2
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1764
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, -0x1

    #@5
    invoke-static {p0, p1, v1, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static final getDateTimeInstance()Landroid/icu/text/DateFormat;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1347
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@3
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v2, v2, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final getDateTimeInstance(II)Landroid/icu/text/DateFormat;
    .locals 2
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    #@0
    .prologue
    .line 1369
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {p0, p1, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static final getDateTimeInstance(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1409
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getDateTimeInstance(IILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 2
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1389
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, p1, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static final getDateTimeInstance(Landroid/icu/util/Calendar;II)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    #@0
    .prologue
    .line 1982
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 2
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1884
    if-nez p0, :cond_0

    #@2
    .line 1885
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Calendar must be supplied"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1887
    :cond_0
    invoke-static {p1, p2, p3, p0}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static final getDateTimeInstance(Landroid/icu/util/Calendar;IILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1856
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, p2, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getInstance()Landroid/icu/text/DateFormat;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 1418
    invoke-static {v0, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(II)Landroid/icu/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    .line 1923
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/text/DateFormat;->getInstance(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 1912
    invoke-static {p0, v0, v0, p1}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 2
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 1899
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@4
    move-result-object v0

    #@5
    invoke-static {p0, v1, v1, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static final getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 3
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 2074
    invoke-static {p2}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@3
    move-result-object v2

    #@4
    .line 2075
    .local v2, "generator":Landroid/icu/text/DateTimePatternGenerator;
    invoke-virtual {v2, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 2076
    .local v0, "bestPattern":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    #@a
    invoke-direct {v1, v0, p2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@d
    .line 2077
    .local v1, "format":Landroid/icu/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Landroid/icu/text/SimpleDateFormat;->setCalendar(Landroid/icu/util/Calendar;)V

    #@10
    .line 2078
    return-object v1
.end method

.method public static final getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2053
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/icu/text/DateFormat;->getPatternInstance(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "skeleton"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1997
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getInstanceForSkeleton(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 3
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 2031
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@3
    move-result-object v1

    #@4
    .line 2032
    .local v1, "generator":Landroid/icu/text/DateTimePatternGenerator;
    invoke-virtual {v1, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 2033
    .local v0, "bestPattern":Ljava/lang/String;
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    #@a
    invoke-direct {v2, v0, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@d
    return-object v2
.end method

.method public static final getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2014
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getPatternInstance(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 2169
    invoke-static {p0, p1, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getPatternInstance(Landroid/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2148
    invoke-static {p0, p1, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getPatternInstance(Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "skeleton"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2094
    invoke-static {p0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getPatternInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 2128
    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getPatternInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2111
    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getTimeInstance()Landroid/icu/text/DateFormat;
    .locals 4

    #@0
    .prologue
    .line 1220
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, -0x1

    #@7
    const/4 v2, 0x2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-static {v1, v2, v0, v3}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static final getTimeInstance(I)Landroid/icu/text/DateFormat;
    .locals 3
    .param p0, "style"    # I

    #@0
    .prologue
    .line 1235
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, -0x1

    #@7
    const/4 v2, 0x0

    #@8
    invoke-static {v1, p0, v0, v2}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1267
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {v0, p0, p1, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final getTimeInstance(ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 3
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1251
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, -0x1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, p0, v0, v2}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getTimeInstance(Landroid/icu/util/Calendar;I)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "timeStyle"    # I

    #@0
    .prologue
    .line 1958
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, p1, v0}, Landroid/icu/text/DateFormat;->getTimeInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getTimeInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1828
    const/4 v0, -0x1

    #@1
    invoke-static {p0, v0, p1, p2}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getTimeInstance(Landroid/icu/util/Calendar;ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 2
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1805
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, -0x1

    #@5
    invoke-static {p0, v1, p1, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1728
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 1729
    iget v0, p0, Landroid/icu/text/DateFormat;->serialVersionOnStream:I

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 1731
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@a
    iput-object v0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@c
    .line 1733
    :cond_0
    iput v1, p0, Landroid/icu/text/DateFormat;->serialVersionOnStream:I

    #@e
    .line 1726
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 1667
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/DateFormat;

    #@6
    .line 1668
    .local v0, "other":Landroid/icu/text/DateFormat;
    iget-object v1, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@8
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/icu/util/Calendar;

    #@e
    iput-object v1, v0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@10
    .line 1669
    iget-object v1, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1670
    iget-object v1, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@16
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/icu/text/NumberFormat;

    #@1c
    iput-object v1, v0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@1e
    .line 1672
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1651
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 1652
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/icu/text/DateFormat;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 1653
    check-cast v0, Landroid/icu/text/DateFormat;

    #@15
    .line 1654
    .local v0, "other":Landroid/icu/text/DateFormat;
    iget-object v3, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@17
    if-nez v3, :cond_4

    #@19
    iget-object v3, v0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@1b
    if-nez v3, :cond_4

    #@1d
    .line 1656
    :cond_3
    iget-object v3, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@1f
    if-nez v3, :cond_6

    #@21
    iget-object v3, v0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@23
    if-nez v3, :cond_6

    #@25
    .line 1658
    :goto_0
    iget-object v3, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@27
    iget-object v4, v0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@29
    if-ne v3, v4, :cond_7

    #@2b
    .line 1654
    :goto_1
    return v1

    #@2c
    .line 1655
    :cond_4
    iget-object v3, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2e
    if-eqz v3, :cond_5

    #@30
    iget-object v3, v0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@32
    if-eqz v3, :cond_5

    #@34
    iget-object v3, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@36
    iget-object v4, v0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@38
    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    #@3b
    move-result v3

    #@3c
    .line 1654
    if-nez v3, :cond_3

    #@3e
    :cond_5
    move v1, v2

    #@3f
    goto :goto_1

    #@40
    .line 1657
    :cond_6
    iget-object v3, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@42
    if-eqz v3, :cond_5

    #@44
    iget-object v3, v0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@46
    if-eqz v3, :cond_5

    #@48
    iget-object v3, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@4a
    iget-object v4, v0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@4c
    invoke-virtual {v3, v4}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v3

    #@50
    .line 1654
    if-eqz v3, :cond_5

    #@52
    goto :goto_0

    #@53
    :cond_7
    move v1, v2

    #@54
    .line 1658
    goto :goto_1
.end method

.method public final format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 641
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    new-instance v1, Ljava/text/FieldPosition;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@d
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public abstract format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 561
    instance-of v0, p1, Landroid/icu/util/Calendar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 562
    check-cast p1, Landroid/icu/util/Calendar;

    #@6
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 563
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 564
    check-cast p1, Ljava/util/Date;

    #@11
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 565
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 566
    new-instance v0, Ljava/util/Date;

    #@1c
    check-cast p1, Ljava/lang/Number;

    #@1e
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    #@21
    move-result-wide v2

    #@22
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@25
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 569
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v2, "Cannot format given Object ("

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 570
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 569
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 570
    const-string/jumbo v2, ") as a Date"

    #@47
    .line 569
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 629
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@5
    .line 630
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@7
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z
    .locals 1
    .param p1, "key"    # Landroid/icu/text/DateFormat$BooleanAttribute;

    #@0
    .prologue
    .line 1604
    iget-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCalendar()Landroid/icu/util/Calendar;
    .locals 1

    #@0
    .prologue
    .line 1460
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    return-object v0
.end method

.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 1
    .param p1, "type"    # Landroid/icu/text/DisplayContext$Type;

    #@0
    .prologue
    .line 1630
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1631
    iget-object v0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@a
    .line 1630
    :goto_0
    return-object v0

    #@b
    .line 1631
    :cond_0
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@d
    goto :goto_0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 1485
    iget-object v0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@2
    return-object v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 1505
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1641
    iget-object v0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCalendarLenient()Z
    .locals 1

    #@0
    .prologue
    .line 1570
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->isLenient()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isLenient()Z
    .locals 1

    #@0
    .prologue
    .line 1544
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->isLenient()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1545
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@a
    invoke-virtual {p0, v0}, Landroid/icu/text/DateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@d
    move-result v0

    #@e
    .line 1544
    if-eqz v0, :cond_0

    #@10
    .line 1546
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@12
    invoke-virtual {p0, v0}, Landroid/icu/text/DateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    #@15
    move-result v0

    #@16
    .line 1544
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 680
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 681
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@9
    move-result-object v1

    #@a
    .line 682
    .local v1, "result":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 683
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
    .line 684
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@30
    move-result v4

    #@31
    .line 683
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@34
    throw v2

    #@35
    .line 685
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 764
    const/4 v1, 0x0

    #@1
    .line 765
    .local v1, "result":Ljava/util/Date;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@4
    move-result v2

    #@5
    .line 766
    .local v2, "start":I
    iget-object v4, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@7
    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@a
    move-result-object v3

    #@b
    .line 767
    .local v3, "tzsav":Landroid/icu/util/TimeZone;
    iget-object v4, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@d
    invoke-virtual {v4}, Landroid/icu/util/Calendar;->clear()V

    #@10
    .line 768
    iget-object v4, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@12
    invoke-virtual {p0, p1, v4, p2}, Landroid/icu/text/DateFormat;->parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V

    #@15
    .line 769
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@18
    move-result v4

    #@19
    if-eq v4, v2, :cond_0

    #@1b
    .line 771
    :try_start_0
    iget-object v4, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@1d
    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v1

    #@21
    .line 781
    .end local v1    # "result":Ljava/util/Date;
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@23
    invoke-virtual {v4, v3}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@26
    .line 782
    return-object v1

    #@27
    .line 772
    .restart local v1    # "result":Ljava/util/Date;
    :catch_0
    move-exception v0

    #@28
    .line 776
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    #@2b
    .line 777
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@2e
    goto :goto_0
.end method

.method public abstract parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 794
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;
    .locals 1
    .param p1, "key"    # Landroid/icu/text/DateFormat$BooleanAttribute;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 1582
    if-eqz p2, :cond_0

    #@2
    .line 1584
    iget-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@7
    .line 1591
    :goto_0
    return-object p0

    #@8
    .line 1588
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    #@d
    goto :goto_0
.end method

.method public setCalendar(Landroid/icu/util/Calendar;)V
    .locals 0
    .param p1, "newCalendar"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    .line 1450
    iput-object p1, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    .line 1448
    return-void
.end method

.method public setCalendarLenient(Z)V
    .locals 1
    .param p1, "lenient"    # Z

    #@0
    .prologue
    .line 1560
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setLenient(Z)V

    #@5
    .line 1558
    return-void
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 2
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 1616
    invoke-virtual {p1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1617
    iput-object p1, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@a
    .line 1615
    :cond_0
    return-void
.end method

.method public setLenient(Z)V
    .locals 1
    .param p1, "lenient"    # Z

    #@0
    .prologue
    .line 1532
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setLenient(Z)V

    #@5
    .line 1533
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@7
    invoke-virtual {p0, v0, p1}, Landroid/icu/text/DateFormat;->setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;

    #@a
    .line 1534
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@c
    invoke-virtual {p0, v0, p1}, Landroid/icu/text/DateFormat;->setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;

    #@f
    .line 1530
    return-void
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .locals 2
    .param p1, "newNumberFormat"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 1470
    iput-object p1, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@2
    .line 1474
    iget-object v0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setParseIntegerOnly(Z)V

    #@8
    .line 1468
    return-void
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 1495
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@5
    .line 1493
    return-void
.end method
