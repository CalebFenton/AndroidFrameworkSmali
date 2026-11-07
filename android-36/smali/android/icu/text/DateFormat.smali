.class public abstract Landroid/icu/text/DateFormat;
.super Landroid/icu/text/UFormat;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateFormat$BooleanAttribute;,
        Landroid/icu/text/DateFormat$Field;,
        Landroid/icu/text/DateFormat$HourCycle;
    }
.end annotation


# static fields
.field public static final whitelist test-api ABBR_GENERIC_TZ:Ljava/lang/String; = "v"

.field public static final whitelist test-api ABBR_MONTH:Ljava/lang/String; = "MMM"

.field public static final whitelist test-api ABBR_MONTH_DAY:Ljava/lang/String; = "MMMd"

.field public static final whitelist test-api ABBR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MMMEd"

.field public static final whitelist test-api ABBR_QUARTER:Ljava/lang/String; = "QQQ"

.field public static final whitelist test-api ABBR_SPECIFIC_TZ:Ljava/lang/String; = "z"

.field public static final greylist-max-o ABBR_STANDALONE_MONTH:Ljava/lang/String; = "LLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api ABBR_UTC_TZ:Ljava/lang/String; = "ZZZZ"

.field public static final whitelist test-api ABBR_WEEKDAY:Ljava/lang/String; = "E"

.field public static final whitelist test-api AM_PM_FIELD:I = 0xe

.field public static final whitelist test-api AM_PM_MIDNIGHT_NOON_FIELD:I = 0x23

.field public static final whitelist test-api DATE_FIELD:I = 0x3

.field public static final greylist-max-o DATE_SKELETONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api DAY:Ljava/lang/String; = "d"

.field public static final whitelist test-api DAY_OF_WEEK_FIELD:I = 0x9

.field public static final whitelist test-api DAY_OF_WEEK_IN_MONTH_FIELD:I = 0xb

.field public static final whitelist test-api DAY_OF_YEAR_FIELD:I = 0xa

.field public static final whitelist test-api DEFAULT:I = 0x2

.field public static final whitelist test-api DOW_LOCAL_FIELD:I = 0x13

.field public static final whitelist test-api ERA_FIELD:I = 0x0

.field public static final whitelist test-api EXTENDED_YEAR_FIELD:I = 0x14

.field public static final greylist-max-o FIELD_COUNT:I = 0x26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api FLEXIBLE_DAY_PERIOD_FIELD:I = 0x24

.field public static final whitelist test-api FRACTIONAL_SECOND_FIELD:I = 0x8

.field public static final whitelist test-api FULL:I = 0x0

.field public static final whitelist test-api GENERIC_TZ:Ljava/lang/String; = "vvvv"

.field public static final whitelist test-api HOUR:Ljava/lang/String; = "j"

.field public static final whitelist test-api HOUR0_FIELD:I = 0x10

.field public static final whitelist test-api HOUR1_FIELD:I = 0xf

.field public static final whitelist test-api HOUR24:Ljava/lang/String; = "H"

.field public static final whitelist test-api HOUR24_MINUTE:Ljava/lang/String; = "Hm"

.field public static final whitelist test-api HOUR24_MINUTE_SECOND:Ljava/lang/String; = "Hms"

.field public static final greylist-max-o HOUR_GENERIC_TZ:Ljava/lang/String; = "jv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api HOUR_MINUTE:Ljava/lang/String; = "jm"

.field public static final greylist-max-o HOUR_MINUTE_GENERIC_TZ:Ljava/lang/String; = "jmv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api HOUR_MINUTE_SECOND:Ljava/lang/String; = "jms"

.field public static final greylist-max-o HOUR_MINUTE_TZ:Ljava/lang/String; = "jmz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api HOUR_OF_DAY0_FIELD:I = 0x5

.field public static final whitelist test-api HOUR_OF_DAY1_FIELD:I = 0x4

.field public static final greylist-max-o HOUR_TZ:Ljava/lang/String; = "jz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist JP_ERA_2019_JA:Ljava/lang/String; = "\u4ee4\u548c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist JP_ERA_2019_NARROW:Ljava/lang/String; = "R"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist JP_ERA_2019_ROOT:Ljava/lang/String; = "Reiwa"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api JULIAN_DAY_FIELD:I = 0x15

.field public static final whitelist test-api LOCATION_TZ:Ljava/lang/String; = "VVVV"

.field public static final whitelist test-api LONG:I = 0x1

.field public static final whitelist test-api MEDIUM:I = 0x2

.field public static final whitelist test-api MILLISECONDS_IN_DAY_FIELD:I = 0x16

.field public static final whitelist test-api MILLISECOND_FIELD:I = 0x8

.field public static final whitelist test-api MINUTE:Ljava/lang/String; = "m"

.field public static final whitelist test-api MINUTE_FIELD:I = 0x6

.field public static final whitelist test-api MINUTE_SECOND:Ljava/lang/String; = "ms"

.field public static final whitelist test-api MONTH:Ljava/lang/String; = "MMMM"

.field public static final whitelist test-api MONTH_DAY:Ljava/lang/String; = "MMMMd"

.field public static final whitelist test-api MONTH_FIELD:I = 0x2

.field public static final whitelist test-api MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MMMMEEEEd"

.field public static final whitelist test-api NONE:I = -0x1

.field public static final whitelist test-api NUM_MONTH:Ljava/lang/String; = "M"

.field public static final whitelist test-api NUM_MONTH_DAY:Ljava/lang/String; = "Md"

.field public static final whitelist test-api NUM_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MEd"

.field public static final whitelist test-api QUARTER:Ljava/lang/String; = "QQQQ"

.field public static final whitelist test-api QUARTER_FIELD:I = 0x1b

.field static final greylist-max-o RELATED_YEAR:I = 0x22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api RELATIVE:I = 0x80

.field public static final whitelist test-api RELATIVE_DEFAULT:I = 0x82

.field public static final whitelist test-api RELATIVE_FULL:I = 0x80

.field public static final whitelist test-api RELATIVE_LONG:I = 0x81

.field public static final whitelist test-api RELATIVE_MEDIUM:I = 0x82

.field public static final whitelist test-api RELATIVE_SHORT:I = 0x83

.field public static final whitelist test-api SECOND:Ljava/lang/String; = "s"

.field public static final whitelist test-api SECOND_FIELD:I = 0x7

.field public static final whitelist test-api SHORT:I = 0x3

.field public static final whitelist test-api SPECIFIC_TZ:Ljava/lang/String; = "zzzz"

.field public static final whitelist test-api STANDALONE_DAY_FIELD:I = 0x19

.field public static final greylist-max-o STANDALONE_MONTH:Ljava/lang/String; = "LLLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api STANDALONE_MONTH_FIELD:I = 0x1a

.field public static final whitelist test-api STANDALONE_QUARTER_FIELD:I = 0x1c

.field public static final whitelist test-api TIMEZONE_FIELD:I = 0x11

.field public static final whitelist test-api TIMEZONE_GENERIC_FIELD:I = 0x18

.field public static final whitelist test-api TIMEZONE_ISO_FIELD:I = 0x20

.field public static final whitelist test-api TIMEZONE_ISO_LOCAL_FIELD:I = 0x21

.field public static final whitelist test-api TIMEZONE_LOCALIZED_GMT_OFFSET_FIELD:I = 0x1f

.field public static final whitelist test-api TIMEZONE_RFC_FIELD:I = 0x17

.field public static final whitelist test-api TIMEZONE_SPECIAL_FIELD:I = 0x1d

.field public static final greylist-max-o TIME_SEPARATOR:I = 0x25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TIME_SKELETONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api WEEKDAY:Ljava/lang/String; = "EEEE"

.field public static final whitelist test-api WEEK_OF_MONTH_FIELD:I = 0xd

.field public static final whitelist test-api WEEK_OF_YEAR_FIELD:I = 0xc

.field public static final whitelist test-api YEAR:Ljava/lang/String; = "y"

.field public static final whitelist test-api YEAR_ABBR_MONTH:Ljava/lang/String; = "yMMM"

.field public static final whitelist test-api YEAR_ABBR_MONTH_DAY:Ljava/lang/String; = "yMMMd"

.field public static final whitelist test-api YEAR_ABBR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMMMEd"

.field public static final whitelist test-api YEAR_ABBR_QUARTER:Ljava/lang/String; = "yQQQ"

.field public static final whitelist test-api YEAR_FIELD:I = 0x1

.field public static final whitelist test-api YEAR_MONTH:Ljava/lang/String; = "yMMMM"

.field public static final whitelist test-api YEAR_MONTH_DAY:Ljava/lang/String; = "yMMMMd"

.field public static final whitelist test-api YEAR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMMMMEEEEd"

.field public static final whitelist test-api YEAR_NAME_FIELD:I = 0x1e

.field public static final whitelist test-api YEAR_NUM_MONTH:Ljava/lang/String; = "yM"

.field public static final whitelist test-api YEAR_NUM_MONTH_DAY:Ljava/lang/String; = "yMd"

.field public static final whitelist test-api YEAR_NUM_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMEd"

.field public static final whitelist test-api YEAR_QUARTER:Ljava/lang/String; = "yQQQQ"

.field public static final whitelist test-api YEAR_WOY_FIELD:I = 0x12

.field public static final greylist-max-o ZONE_SKELETONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o currentSerialVersion:I = 0x1

.field private static final whitelist serialVersionUID:J = 0x642ca1e4c22615fcL


# instance fields
.field private greylist-max-o booleanAttributes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/DateFormat$BooleanAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected whitelist test-api calendar:Landroid/icu/util/Calendar;

.field private greylist-max-o capitalizationSetting:Landroid/icu/text/DisplayContext;

.field protected whitelist test-api numberFormat:Landroid/icu/text/NumberFormat;

.field private greylist-max-o serialVersionOnStream:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 27

    .line 1065
    const-string v25, "MMMEd"

    const-string v26, "MEd"

    const-string v1, "y"

    const-string v2, "QQQQ"

    const-string v3, "QQQ"

    const-string v4, "yQQQQ"

    const-string v5, "yQQQ"

    const-string v6, "MMMM"

    const-string v7, "MMM"

    const-string v8, "M"

    const-string v9, "yMMMM"

    const-string v10, "yMMM"

    const-string v11, "yM"

    const-string v12, "d"

    const-string v13, "yMMMMd"

    const-string v14, "yMMMd"

    const-string v15, "yMd"

    const-string v16, "EEEE"

    const-string v17, "E"

    const-string v18, "yMMMMEEEEd"

    const-string v19, "yMMMEd"

    const-string v20, "yMEd"

    const-string v21, "MMMMd"

    const-string v22, "MMMd"

    const-string v23, "Md"

    const-string v24, "MMMMEEEEd"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormat;->DATE_SKELETONS:Ljava/util/List;

    .line 1157
    const-string v8, "Hms"

    const-string v9, "ms"

    const-string v1, "j"

    const-string v2, "H"

    const-string v3, "m"

    const-string v4, "jm"

    const-string v5, "Hm"

    const-string v6, "s"

    const-string v7, "jms"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormat;->TIME_SKELETONS:Ljava/util/List;

    .line 1228
    const-string v5, "z"

    const-string v6, "ZZZZ"

    const-string v1, "VVVV"

    const-string v2, "vvvv"

    const-string v3, "v"

    const-string v4, "zzzz"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormat;->ZONE_SKELETONS:Ljava/util/List;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 1835
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 494
    const-class v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    .line 527
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 545
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/DateFormat;->serialVersionOnStream:I

    .line 1835
    return-void
.end method

.method static greylist-max-o fixNumberFormatForDates(Landroid/icu/text/NumberFormat;)V
    .registers 3
    .param p0, "nf"    # Landroid/icu/text/NumberFormat;

    .line 1564
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 1565
    instance-of v1, p0, Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_e

    .line 1566
    move-object v1, p0

    check-cast v1, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1568
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 1569
    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1570
    return-void
.end method

.method private static greylist-max-o get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;
    .registers 7
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "loc"    # Landroid/icu/util/ULocale;
    .param p3, "cal"    # Landroid/icu/util/Calendar;

    .line 1776
    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    and-int/lit16 v1, p1, 0x80

    if-gtz v1, :cond_d

    :cond_7
    if-eq p0, v0, :cond_13

    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_13

    .line 1778
    :cond_d
    new-instance v0, Landroid/icu/impl/RelativeDateFormat;

    invoke-direct {v0, p1, p0, p2, p3}, Landroid/icu/impl/RelativeDateFormat;-><init>(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)V

    .line 1779
    .local v0, "r":Landroid/icu/impl/RelativeDateFormat;
    return-object v0

    .line 1782
    .end local v0    # "r":Landroid/icu/impl/RelativeDateFormat;
    :cond_13
    if-lt p1, v0, :cond_58

    const/4 v1, 0x3

    if-gt p1, v1, :cond_58

    .line 1785
    if-lt p0, v0, :cond_3f

    if-gt p0, v1, :cond_3f

    .line 1789
    if-nez p3, :cond_22

    .line 1790
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p3

    .line 1794
    :cond_22
    :try_start_22
    invoke-virtual {p3, p0, p1, p2}, Landroid/icu/util/Calendar;->getDateTimeFormat(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 1795
    .local v0, "result":Landroid/icu/text/DateFormat;
    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p3, v1}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v1

    sget-object v2, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    .line 1796
    invoke-virtual {p3, v2}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 1795
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    :try_end_35
    .catch Ljava/util/MissingResourceException; {:try_start_22 .. :try_end_35} :catch_36

    .line 1797
    return-object v0

    .line 1798
    .end local v0    # "result":Landroid/icu/text/DateFormat;
    :catch_36
    move-exception v0

    .line 1801
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "M/d/yy h:mm a"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1786
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal date style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1783
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal time style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 1518
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 1

    .line 1528
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateInstance()Landroid/icu/text/DateFormat;
    .registers 4

    .line 1378
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-static {v2, v3, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateInstance(I)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "style"    # I

    .line 1395
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v2, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "style"    # I
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 1431
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateInstance(ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 1413
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v2, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateInstance(Landroid/icu/util/Calendar;I)Landroid/icu/text/DateFormat;
    .registers 3
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I

    .line 2006
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/text/DateFormat;->getDateInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 1875
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateInstance(Landroid/icu/util/Calendar;ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 1858
    const/4 v0, -0x1

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateTimeInstance()Landroid/icu/text/DateFormat;
    .registers 3

    .line 1442
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v2, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateTimeInstance(II)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    .line 1463
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateTimeInstance(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 1501
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateTimeInstance(IILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 1482
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateTimeInstance(Landroid/icu/util/Calendar;II)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .line 2040
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 6
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    .line 1957
    if-eqz p0, :cond_7

    .line 1960
    invoke-static {p1, p2, p3, p0}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0

    .line 1958
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Calendar must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final whitelist test-api getDateTimeInstance(Landroid/icu/util/Calendar;IILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 1934
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance()Landroid/icu/text/DateFormat;
    .registers 1

    .line 1509
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(II)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;
    .registers 2
    .param p0, "cal"    # Landroid/icu/util/Calendar;

    .line 1992
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateFormat;->getInstance(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 3
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 1982
    const/4 v0, 0x3

    invoke-static {p0, v0, v0, p1}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1971
    const/4 v0, 0x3

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {p0, v0, v0, v1}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 6
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 2117
    if-eqz p0, :cond_c

    .line 2118
    const-string v0, "calendar"

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object p2

    .line 2120
    :cond_c
    invoke-static {p2}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 2121
    .local v0, "generator":Landroid/icu/text/DateTimePatternGenerator;
    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2122
    .local v1, "bestPattern":Ljava/lang/String;
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v2, v1, p2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 2123
    .local v2, "format":Landroid/icu/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Landroid/icu/text/SimpleDateFormat;->setCalendar(Landroid/icu/util/Calendar;)V

    .line 2124
    return-object v2
.end method

.method public static final whitelist test-api getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 2099
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/text/DateFormat;->getPatternInstance(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .registers 2
    .param p0, "skeleton"    # Ljava/lang/String;

    .line 2052
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstanceForSkeleton(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 2080
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 2081
    .local v0, "generator":Landroid/icu/text/DateTimePatternGenerator;
    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2082
    .local v1, "bestPattern":Ljava/lang/String;
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v2, v1, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-object v2
.end method

.method public static final whitelist test-api getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 3
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2066
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getPatternInstance(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 2205
    invoke-static {p0, p1, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getPatternInstance(Landroid/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 2186
    invoke-static {p0, p1, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getPatternInstance(Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .registers 2
    .param p0, "skeleton"    # Ljava/lang/String;

    .line 2138
    invoke-static {p0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getPatternInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 3
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 2168
    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getPatternInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 3
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2153
    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getTimeInstance()Landroid/icu/text/DateFormat;
    .registers 4

    .line 1323
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getTimeInstance(I)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "style"    # I

    .line 1337
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v2, p0, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "style"    # I
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 1367
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getTimeInstance(ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 1352
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v2, p0, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getTimeInstance(Landroid/icu/util/Calendar;I)Landroid/icu/text/DateFormat;
    .registers 3
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "timeStyle"    # I

    .line 2021
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/text/DateFormat;->getTimeInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getTimeInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 4
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 1911
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getTimeInstance(Landroid/icu/util/Calendar;ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 1893
    const/4 v0, -0x1

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1818
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1819
    iget v0, p0, Landroid/icu/text/DateFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    .line 1821
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 1825
    :cond_c
    iget-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    if-nez v0, :cond_18

    .line 1826
    const-class v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    .line 1829
    :cond_18
    iput v1, p0, Landroid/icu/text/DateFormat;->serialVersionOnStream:I

    .line 1830
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 1757
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;

    .line 1758
    .local v0, "other":Landroid/icu/text/DateFormat;
    iget-object v1, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iput-object v1, v0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 1759
    iget-object v1, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-eqz v1, :cond_1e

    .line 1760
    iget-object v1, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    iput-object v1, v0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 1762
    :cond_1e
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1741
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1742
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_52

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_52

    .line 1743
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/icu/text/DateFormat;

    .line 1744
    .local v2, "other":Landroid/icu/text/DateFormat;
    iget-object v3, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    if-nez v3, :cond_1d

    iget-object v3, v2, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eqz v3, :cond_2f

    :cond_1d
    iget-object v3, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eqz v3, :cond_50

    iget-object v3, v2, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    iget-object v4, v2, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 1745
    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_50

    :cond_2f
    iget-object v3, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-nez v3, :cond_37

    iget-object v3, v2, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-eqz v3, :cond_49

    :cond_37
    iget-object v3, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-eqz v3, :cond_50

    iget-object v3, v2, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    iget-object v4, v2, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 1747
    invoke-virtual {v3, v4}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    :cond_49
    iget-object v3, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    iget-object v4, v2, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    if-ne v3, v4, :cond_50

    goto :goto_51

    :cond_50
    move v0, v1

    .line 1744
    :goto_51
    return v0

    .line 1742
    .end local v2    # "other":Landroid/icu/text/DateFormat;
    :cond_52
    :goto_52
    return v1
.end method

.method public final blacklist format(Ljava/time/temporal/Temporal;)Ljava/lang/String;
    .registers 5
    .param p1, "date"    # Ljava/time/temporal/Temporal;

    .line 698
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/time/temporal/Temporal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api format(Ljava/util/Date;)Ljava/lang/String;
    .registers 5
    .param p1, "date"    # Ljava/util/Date;

    .line 658
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public final whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 578
    instance-of v0, p1, Landroid/icu/util/Calendar;

    if-eqz v0, :cond_c

    .line 579
    move-object v0, p1

    check-cast v0, Landroid/icu/util/Calendar;

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 580
    :cond_c
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_18

    .line 581
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 582
    :cond_18
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2d

    .line 583
    new-instance v0, Ljava/util/Date;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 585
    :cond_2d
    instance-of v0, p1, Ljava/time/temporal/Temporal;

    if-eqz v0, :cond_39

    .line 586
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/Temporal;

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/time/temporal/Temporal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 588
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format given Object ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 589
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as a Date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist format(Ljava/time/temporal/Temporal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "date"    # Ljava/time/temporal/Temporal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 685
    invoke-static {p1}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/temporal/Temporal;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 647
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 648
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z
    .registers 3
    .param p1, "key"    # Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 1693
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    if-ne p1, v0, :cond_6

    .line 1694
    sget-object p1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 1696
    :cond_6
    iget-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getCalendar()Landroid/icu/util/Calendar;
    .registers 2

    .line 1547
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public whitelist test-api getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .registers 3
    .param p1, "type"    # Landroid/icu/text/DisplayContext$Type;

    .line 1720
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    if-eqz v0, :cond_b

    .line 1721
    iget-object v0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    goto :goto_d

    :cond_b
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 1720
    :goto_d
    return-object v0
.end method

.method public whitelist test-api getNumberFormat()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 1579
    iget-object v0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method public whitelist test-api getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 1597
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1731
    iget-object v0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isCalendarLenient()Z
    .registers 2

    .line 1658
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isLenient()Z
    .registers 2

    .line 1634
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 1635
    invoke-virtual {p0, v0}, Landroid/icu/text/DateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 1636
    invoke-virtual {p0, v0}, Landroid/icu/text/DateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1634
    :goto_1b
    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 736
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 737
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 738
    .local v1, "result":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-eqz v2, :cond_11

    .line 741
    return-object v1

    .line 739
    :cond_11
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

    .line 740
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, "result":Ljava/util/Date;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 820
    .local v1, "start":I
    iget-object v2, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 821
    .local v2, "tzsav":Landroid/icu/util/TimeZone;
    iget-object v3, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->clear()V

    .line 822
    iget-object v3, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, p1, v3, p2}, Landroid/icu/text/DateFormat;->parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V

    .line 823
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-eq v3, v1, :cond_2a

    .line 825
    :try_start_1b
    iget-object v3, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_21} :catch_23

    move-object v0, v3

    .line 832
    goto :goto_2a

    .line 826
    :catch_23
    move-exception v3

    .line 830
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 831
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 835
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2a
    :goto_2a
    iget-object v3, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 836
    return-object v0
.end method

.method public abstract whitelist test-api parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 848
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;
    .registers 4
    .param p1, "key"    # Landroid/icu/text/DateFormat$BooleanAttribute;
    .param p2, "value"    # Z

    .line 1669
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat$BooleanAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1670
    sget-object p1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 1672
    :cond_a
    if-eqz p2, :cond_12

    .line 1674
    iget-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1678
    :cond_12
    iget-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 1681
    :goto_17
    return-object p0
.end method

.method public whitelist test-api setCalendar(Landroid/icu/util/Calendar;)V
    .registers 2
    .param p1, "newCalendar"    # Landroid/icu/util/Calendar;

    .line 1538
    iput-object p1, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 1539
    return-void
.end method

.method public whitelist test-api setCalendarLenient(Z)V
    .registers 3
    .param p1, "lenient"    # Z

    .line 1649
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 1650
    return-void
.end method

.method public whitelist test-api setContext(Landroid/icu/text/DisplayContext;)V
    .registers 4
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    .line 1707
    invoke-virtual {p1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne v0, v1, :cond_a

    .line 1708
    iput-object p1, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 1710
    :cond_a
    return-void
.end method

.method public whitelist test-api setLenient(Z)V
    .registers 3
    .param p1, "lenient"    # Z

    .line 1623
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 1624
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v0, p1}, Landroid/icu/text/DateFormat;->setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;

    .line 1625
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v0, p1}, Landroid/icu/text/DateFormat;->setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;

    .line 1626
    return-void
.end method

.method public whitelist test-api setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .registers 3
    .param p1, "newNumberFormat"    # Landroid/icu/text/NumberFormat;

    .line 1556
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    iput-object v0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 1557
    iget-object v0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-static {v0}, Landroid/icu/text/DateFormat;->fixNumberFormatForDates(Landroid/icu/text/NumberFormat;)V

    .line 1558
    return-void
.end method

.method public whitelist test-api setTimeZone(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 1588
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1589
    return-void
.end method
