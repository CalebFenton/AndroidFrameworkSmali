.class public final Llibcore/icu/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# static fields
.field private static final blacklist LOCALE_EN_US_POSIX:Ljava/util/Locale;

.field public static final blacklist USE_REAL_ROOT_LOCALE:J = 0x97ae098L

.field private static final blacklist localeDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Llibcore/icu/LocaleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist amPm:[Ljava/lang/String;

.field public blacklist eras:[Ljava/lang/String;

.field public greylist firstDayOfWeek:Ljava/lang/Integer;

.field public blacklist longMonthNames:[Ljava/lang/String;

.field public blacklist longStandAloneMonthNames:[Ljava/lang/String;

.field public greylist longStandAloneWeekdayNames:[Ljava/lang/String;

.field public blacklist longWeekdayNames:[Ljava/lang/String;

.field public greylist minimalDaysInFirstWeek:Ljava/lang/Integer;

.field public greylist shortMonthNames:[Ljava/lang/String;

.field public greylist shortStandAloneMonthNames:[Ljava/lang/String;

.field public greylist shortStandAloneWeekdayNames:[Ljava/lang/String;

.field public blacklist shortWeekdayNames:[Ljava/lang/String;

.field public greylist timeFormat_Hm:Ljava/lang/String;

.field public greylist timeFormat_hm:Ljava/lang/String;

.field public blacklist tinyMonthNames:[Ljava/lang/String;

.field public blacklist tinyStandAloneMonthNames:[Ljava/lang/String;

.field public blacklist tinyStandAloneWeekdayNames:[Ljava/lang/String;

.field public blacklist tinyWeekdayNames:[Ljava/lang/String;

.field public greylist today:Ljava/lang/String;

.field public greylist tomorrow:Ljava/lang/String;

.field public greylist zeroDigit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 46
    new-instance v0, Ljava/util/Locale;

    const-string v1, "US"

    const-string v2, "POSIX"

    const-string v3, "en"

    invoke-direct {v0, v3, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Llibcore/icu/LocaleData;->LOCALE_EN_US_POSIX:Ljava/util/Locale;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    .line 89
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 90
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 91
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 92
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string v0, "Today"

    iput-object v0, p0, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    .line 140
    const-string v0, "Tomorrow"

    iput-object v0, p0, Llibcore/icu/LocaleData;->tomorrow:Ljava/lang/String;

    .line 141
    const/16 v0, 0x30

    iput-char v0, p0, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 142
    const-string v0, "h:mm a"

    iput-object v0, p0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    .line 143
    const-string v0, "HH:mm"

    iput-object v0, p0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public static greylist get(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 183
    if-eqz p0, :cond_3a

    .line 187
    invoke-static {p0}, Llibcore/icu/LocaleData;->getCompatibleLocaleForBug159514442(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 189
    .end local p0    # "locale":Ljava/util/Locale;
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "languageTag":Ljava/lang/String;
    sget-object v2, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 191
    :try_start_d
    sget-object p0, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llibcore/icu/LocaleData;

    .line 192
    .local p0, "localeData":Llibcore/icu/LocaleData;
    if-eqz p0, :cond_19

    .line 193
    monitor-exit v2

    return-object p0

    .line 195
    .end local p0    # "localeData":Llibcore/icu/LocaleData;
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_37

    .line 196
    invoke-static {v0}, Llibcore/icu/LocaleData;->initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object p0

    .line 197
    .local p0, "newLocaleData":Llibcore/icu/LocaleData;
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 198
    :try_start_21
    sget-object v2, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llibcore/icu/LocaleData;

    .line 199
    .local v2, "localeData":Llibcore/icu/LocaleData;
    if-eqz v2, :cond_2d

    .line 200
    monitor-exit v3

    return-object v2

    .line 202
    :cond_2d
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    monitor-exit v3

    return-object p0

    .line 204
    .end local v2    # "localeData":Llibcore/icu/LocaleData;
    :catchall_34
    move-exception v2

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_34

    throw v2

    .line 195
    .end local p0    # "newLocaleData":Llibcore/icu/LocaleData;
    :catchall_37
    move-exception p0

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0

    .line 184
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "languageTag":Ljava/lang/String;
    .local p0, "locale":Ljava/util/Locale;
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getCompatibleLocaleForBug159514442(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 166
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 167
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 171
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x1d

    if-gt v0, v1, :cond_16

    .line 172
    sget-object p0, Llibcore/icu/LocaleData;->LOCALE_EN_US_POSIX:Ljava/util/Locale;

    .line 175
    .end local v0    # "targetSdkVersion":I
    :cond_16
    return-object p0
.end method

.method public static blacklist initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 215
    new-instance v0, Llibcore/icu/LocaleData;

    invoke-direct {v0}, Llibcore/icu/LocaleData;-><init>()V

    .line 217
    .local v0, "localeData":Llibcore/icu/LocaleData;
    invoke-direct {v0, p0}, Llibcore/icu/LocaleData;->initializeDateFormatData(Ljava/util/Locale;)V

    .line 218
    invoke-direct {v0, p0}, Llibcore/icu/LocaleData;->initializeCalendarData(Ljava/util/Locale;)V

    .line 220
    return-object v0
.end method

.method private blacklist initializeCalendarData(Ljava/util/Locale;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 253
    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 255
    .local v0, "calendar":Landroid/icu/util/Calendar;
    nop

    .line 256
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .line 255
    invoke-static {p1, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFirstDayOfWeek(Ljava/util/Locale;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    .line 257
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    .line 258
    return-void
.end method

.method private blacklist initializeDateFormatData(Ljava/util/Locale;)V
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;

    .line 224
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    const-class v1, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, v1, p1}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    .line 226
    .local v0, "dfs":Landroid/icu/text/DateFormatSymbols;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v1, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .line 228
    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .line 230
    nop

    .line 231
    invoke-virtual {v0, v1, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .line 232
    invoke-virtual {v0, v1, v3}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .line 234
    nop

    .line 235
    invoke-virtual {v0, v2, v2}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    .line 236
    nop

    .line 237
    invoke-virtual {v0, v2, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    .line 238
    nop

    .line 239
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    .line 240
    nop

    .line 241
    invoke-virtual {v0, v2, v2}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    .line 242
    nop

    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    .line 244
    nop

    .line 245
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    .line 247
    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    .line 248
    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    .line 250
    return-void
.end method

.method public static greylist mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 148
    if-nez p0, :cond_7

    .line 149
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 152
    :cond_7
    const-string v0, "und"

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 153
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    return-object v0

    .line 156
    :cond_16
    return-object p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 208
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
