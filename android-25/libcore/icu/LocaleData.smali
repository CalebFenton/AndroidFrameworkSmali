.class public final Llibcore/icu/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# static fields
.field private static final localeDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llibcore/icu/LocaleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public NaN:Ljava/lang/String;

.field public amPm:[Ljava/lang/String;

.field public currencyPattern:Ljava/lang/String;

.field public currencySymbol:Ljava/lang/String;

.field public decimalSeparator:C

.field public eras:[Ljava/lang/String;

.field public exponentSeparator:Ljava/lang/String;

.field public firstDayOfWeek:Ljava/lang/Integer;

.field public fullDateFormat:Ljava/lang/String;

.field public fullTimeFormat:Ljava/lang/String;

.field public groupingSeparator:C

.field public infinity:Ljava/lang/String;

.field public integerPattern:Ljava/lang/String;

.field public internationalCurrencySymbol:Ljava/lang/String;

.field public longDateFormat:Ljava/lang/String;

.field public longMonthNames:[Ljava/lang/String;

.field public longStandAloneMonthNames:[Ljava/lang/String;

.field public longStandAloneWeekdayNames:[Ljava/lang/String;

.field public longTimeFormat:Ljava/lang/String;

.field public longWeekdayNames:[Ljava/lang/String;

.field public mediumDateFormat:Ljava/lang/String;

.field public mediumTimeFormat:Ljava/lang/String;

.field public minimalDaysInFirstWeek:Ljava/lang/Integer;

.field public minusSign:Ljava/lang/String;

.field public monetarySeparator:C

.field public narrowAm:Ljava/lang/String;

.field public narrowPm:Ljava/lang/String;

.field public numberPattern:Ljava/lang/String;

.field public patternSeparator:C

.field public perMill:C

.field public percent:Ljava/lang/String;

.field public percentPattern:Ljava/lang/String;

.field public shortDateFormat:Ljava/lang/String;

.field public shortDateFormat4:Ljava/lang/String;

.field public shortMonthNames:[Ljava/lang/String;

.field public shortStandAloneMonthNames:[Ljava/lang/String;

.field public shortStandAloneWeekdayNames:[Ljava/lang/String;

.field public shortTimeFormat:Ljava/lang/String;

.field public shortWeekdayNames:[Ljava/lang/String;

.field public timeFormat_Hm:Ljava/lang/String;

.field public timeFormat_Hms:Ljava/lang/String;

.field public timeFormat_hm:Ljava/lang/String;

.field public timeFormat_hms:Ljava/lang/String;

.field public tinyMonthNames:[Ljava/lang/String;

.field public tinyStandAloneMonthNames:[Ljava/lang/String;

.field public tinyStandAloneWeekdayNames:[Ljava/lang/String;

.field public tinyWeekdayNames:[Ljava/lang/String;

.field public today:Ljava/lang/String;

.field public tomorrow:Ljava/lang/String;

.field public yesterday:Ljava/lang/String;

.field public zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    #@7
    .line 40
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@9
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@c
    .line 41
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@e
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@11
    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@18
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static get(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 138
    if-nez p0, :cond_0

    #@2
    .line 139
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "locale == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 143
    .local v0, "languageTag":Ljava/lang/String;
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    #@11
    monitor-enter v4

    #@12
    .line 144
    :try_start_0
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    #@14
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Llibcore/icu/LocaleData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 145
    .local v1, "localeData":Llibcore/icu/LocaleData;
    if-eqz v1, :cond_1

    #@1c
    monitor-exit v4

    #@1d
    .line 146
    return-object v1

    #@1e
    :cond_1
    monitor-exit v4

    #@1f
    .line 149
    invoke-static {p0}, Llibcore/icu/LocaleData;->initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@22
    move-result-object v2

    #@23
    .line 150
    .local v2, "newLocaleData":Llibcore/icu/LocaleData;
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    #@25
    monitor-enter v4

    #@26
    .line 151
    :try_start_1
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    #@28
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    .end local v1    # "localeData":Llibcore/icu/LocaleData;
    check-cast v1, Llibcore/icu/LocaleData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2e
    .line 152
    .restart local v1    # "localeData":Llibcore/icu/LocaleData;
    if-eqz v1, :cond_2

    #@30
    monitor-exit v4

    #@31
    .line 153
    return-object v1

    #@32
    .line 143
    .end local v1    # "localeData":Llibcore/icu/LocaleData;
    .end local v2    # "newLocaleData":Llibcore/icu/LocaleData;
    :catchall_0
    move-exception v3

    #@33
    monitor-exit v4

    #@34
    throw v3

    #@35
    .line 155
    .restart local v1    # "localeData":Llibcore/icu/LocaleData;
    .restart local v2    # "newLocaleData":Llibcore/icu/LocaleData;
    :cond_2
    :try_start_2
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    #@37
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3a
    monitor-exit v4

    #@3b
    .line 156
    return-object v2

    #@3c
    .line 150
    .end local v1    # "localeData":Llibcore/icu/LocaleData;
    :catchall_1
    move-exception v3

    #@3d
    monitor-exit v4

    #@3e
    throw v3
.end method

.method private static initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 203
    new-instance v0, Llibcore/icu/LocaleData;

    #@2
    invoke-direct {v0}, Llibcore/icu/LocaleData;-><init>()V

    #@5
    .line 204
    .local v0, "localeData":Llibcore/icu/LocaleData;
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1, v0}, Llibcore/icu/ICU;->initLocaleDataNative(Ljava/lang/String;Llibcore/icu/LocaleData;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 205
    new-instance v1, Ljava/lang/AssertionError;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "couldn\'t initialize LocaleData for locale "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@28
    throw v1

    #@29
    .line 209
    :cond_0
    const-string/jumbo v1, "hm"

    #@2c
    invoke-static {v1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    #@32
    .line 210
    const-string/jumbo v1, "Hm"

    #@35
    invoke-static {v1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    #@3b
    .line 211
    const-string/jumbo v1, "hms"

    #@3e
    invoke-static {v1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hms:Ljava/lang/String;

    #@44
    .line 212
    const-string/jumbo v1, "Hms"

    #@47
    invoke-static {v1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hms:Ljava/lang/String;

    #@4d
    .line 215
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 221
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    #@53
    const/16 v2, 0x76

    #@55
    const/16 v3, 0x7a

    #@57
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    iput-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    #@5d
    .line 223
    :cond_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    #@5f
    if-eqz v1, :cond_2

    #@61
    .line 230
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    #@63
    const-string/jumbo v2, "\\.[#,]*"

    #@66
    const-string/jumbo v3, ""

    #@69
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    iput-object v1, v0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    #@6f
    .line 232
    :cond_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    #@71
    const-string/jumbo v2, "\\byy\\b"

    #@74
    const-string/jumbo v3, "y"

    #@77
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    iput-object v1, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    #@7d
    .line 233
    return-object v0
.end method

.method public static mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 123
    if-nez p0, :cond_0

    #@2
    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 127
    :cond_0
    const-string/jumbo v0, "und"

    #@a
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 128
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@16
    return-object v0

    #@17
    .line 131
    :cond_1
    return-object p0
.end method


# virtual methods
.method public getDateFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "style"    # I

    #@0
    .prologue
    .line 165
    packed-switch p1, :pswitch_data_0

    #@3
    .line 175
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8
    throw v0

    #@9
    .line 167
    :pswitch_0
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    #@b
    return-object v0

    #@c
    .line 169
    :pswitch_1
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    #@e
    return-object v0

    #@f
    .line 171
    :pswitch_2
    iget-object v0, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    #@11
    return-object v0

    #@12
    .line 173
    :pswitch_3
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    #@14
    return-object v0

    #@15
    .line 165
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTimeFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "style"    # I

    #@0
    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    #@3
    .line 199
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8
    throw v0

    #@9
    .line 181
    :pswitch_0
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 182
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    #@f
    return-object v0

    #@10
    .line 184
    :cond_0
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    #@12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    iget-object v0, p0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    #@1a
    :goto_0
    return-object v0

    #@1b
    :cond_1
    iget-object v0, p0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    #@1d
    goto :goto_0

    #@1e
    .line 187
    :pswitch_1
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    #@20
    if-nez v0, :cond_2

    #@22
    .line 188
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    #@24
    return-object v0

    #@25
    .line 190
    :cond_2
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    #@27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3

    #@2d
    iget-object v0, p0, Llibcore/icu/LocaleData;->timeFormat_Hms:Ljava/lang/String;

    #@2f
    :goto_1
    return-object v0

    #@30
    :cond_3
    iget-object v0, p0, Llibcore/icu/LocaleData;->timeFormat_hms:Ljava/lang/String;

    #@32
    goto :goto_1

    #@33
    .line 194
    :pswitch_2
    iget-object v0, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    #@35
    return-object v0

    #@36
    .line 197
    :pswitch_3
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    #@38
    return-object v0

    #@39
    .line 179
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 161
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
