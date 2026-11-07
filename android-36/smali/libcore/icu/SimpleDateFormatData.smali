.class public Llibcore/icu/SimpleDateFormatData;
.super Ljava/lang/Object;
.source "SimpleDateFormatData.java"


# static fields
.field private static final blacklist CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Llibcore/icu/SimpleDateFormatData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist fullDateFormat:Ljava/lang/String;

.field private final blacklist fullTimeFormat:Ljava/lang/String;

.field private final blacklist locale:Ljava/util/Locale;

.field private final blacklist longDateFormat:Ljava/lang/String;

.field private final blacklist longTimeFormat:Ljava/lang/String;

.field private final blacklist mediumDateFormat:Ljava/lang/String;

.field private final blacklist mediumTimeFormat:Ljava/lang/String;

.field private final blacklist shortDateFormat:Ljava/lang/String;

.field private final blacklist shortTimeFormat:Ljava/lang/String;

.field private final blacklist usesAsciiSpace:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Llibcore/icu/SimpleDateFormatData;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Locale;)V
    .registers 10
    .param p1, "locale"    # Ljava/util/Locale;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Llibcore/icu/SimpleDateFormatData;->locale:Ljava/util/Locale;

    .line 56
    invoke-static {p1}, Llibcore/icu/SimpleDateFormatData;->isBug266731719Locale(Ljava/util/Locale;)Z

    move-result v0

    iput-boolean v0, p0, Llibcore/icu/SimpleDateFormatData;->usesAsciiSpace:Z

    .line 58
    const-string v0, "gregorian"

    invoke-static {p1, v0}, Llibcore/icu/ICU;->getExtendedCalendar(Ljava/util/Locale;Ljava/lang/String;)Lcom/android/icu/util/ExtendedCalendar;

    move-result-object v0

    .line 60
    .local v0, "calendar":Lcom/android/icu/util/ExtendedCalendar;
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Llibcore/icu/SimpleDateFormatData;->getDateTimePattern(Lcom/android/icu/util/ExtendedCalendar;II)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "tmpFullTimeFormat":Ljava/lang/String;
    if-eqz v3, :cond_21

    .line 70
    const/16 v4, 0x76

    const/16 v5, 0x7a

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 72
    :cond_21
    iput-object v3, p0, Llibcore/icu/SimpleDateFormatData;->fullTimeFormat:Ljava/lang/String;

    .line 74
    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4}, Llibcore/icu/SimpleDateFormatData;->getDateTimePattern(Lcom/android/icu/util/ExtendedCalendar;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Llibcore/icu/SimpleDateFormatData;->longTimeFormat:Ljava/lang/String;

    .line 76
    const/4 v5, 0x2

    invoke-direct {p0, v0, v1, v5}, Llibcore/icu/SimpleDateFormatData;->getDateTimePattern(Lcom/android/icu/util/ExtendedCalendar;II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Llibcore/icu/SimpleDateFormatData;->mediumTimeFormat:Ljava/lang/String;

    .line 78
    const/4 v6, 0x3

    invoke-direct {p0, v0, v1, v6}, Llibcore/icu/SimpleDateFormatData;->getDateTimePattern(Lcom/android/icu/util/ExtendedCalendar;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Llibcore/icu/SimpleDateFormatData;->shortTimeFormat:Ljava/lang/String;

    .line 80
    invoke-direct {p0, v0, v2, v1}, Llibcore/icu/SimpleDateFormatData;->getDateTimePattern(Lcom/android/icu/util/ExtendedCalendar;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/icu/SimpleDateFormatData;->fullDateFormat:Ljava/lang/String;

    .line 82
    invoke-direct {p0, v0, v4, v1}, Llibcore/icu/SimpleDateFormatData;->getDateTimePattern(Lcom/android/icu/util/ExtendedCalendar;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/icu/SimpleDateFormatData;->longDateFormat:Ljava/lang/String;

    .line 84
    invoke-direct {p0, v0, v5, v1}, Llibcore/icu/SimpleDateFormatData;->getDateTimePattern(Lcom/android/icu/util/ExtendedCalendar;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/icu/SimpleDateFormatData;->mediumDateFormat:Ljava/lang/String;

    .line 86
    invoke-direct {p0, v0, v6, v1}, Llibcore/icu/SimpleDateFormatData;->getDateTimePattern(Lcom/android/icu/util/ExtendedCalendar;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/SimpleDateFormatData;->shortDateFormat:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private blacklist getDateTimePattern(Lcom/android/icu/util/ExtendedCalendar;II)Ljava/lang/String;
    .registers 6
    .param p1, "calendar"    # Lcom/android/icu/util/ExtendedCalendar;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I

    .line 190
    nop

    .line 191
    invoke-virtual {p1, p2, p3}, Lcom/android/icu/util/ExtendedCalendar;->getDateTimePattern(II)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Llibcore/icu/ICU;->transformIcuDateTimePattern_forJavaText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "pattern":Ljava/lang/String;
    invoke-direct {p0, v0}, Llibcore/icu/SimpleDateFormatData;->postProcessPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/util/Locale;)Llibcore/icu/SimpleDateFormatData;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 98
    const-string v0, "locale can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    invoke-static {p0}, Llibcore/icu/LocaleData;->getCompatibleLocaleForBug159514442(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "languageTag":Ljava/lang/String;
    sget-object v1, Llibcore/icu/SimpleDateFormatData;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/icu/SimpleDateFormatData;

    .line 105
    .local v1, "data":Llibcore/icu/SimpleDateFormatData;
    if-eqz v1, :cond_18

    .line 106
    return-object v1

    .line 109
    :cond_18
    new-instance v2, Llibcore/icu/SimpleDateFormatData;

    invoke-direct {v2, p0}, Llibcore/icu/SimpleDateFormatData;-><init>(Ljava/util/Locale;)V

    .line 110
    .end local v1    # "data":Llibcore/icu/SimpleDateFormatData;
    .local v2, "data":Llibcore/icu/SimpleDateFormatData;
    sget-object v1, Llibcore/icu/SimpleDateFormatData;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/icu/SimpleDateFormatData;

    .line 111
    .local v1, "prev":Llibcore/icu/SimpleDateFormatData;
    if-eqz v1, :cond_28

    .line 112
    return-object v1

    .line 114
    :cond_28
    return-object v2
.end method

.method private blacklist getTimePattern(ZZ)Ljava/lang/String;
    .registers 5
    .param p1, "is24Hour"    # Z
    .param p2, "withSecond"    # Z

    .line 197
    iget-object v0, p0, Llibcore/icu/SimpleDateFormatData;->locale:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Llibcore/icu/ICU;->getTimePattern(Ljava/util/Locale;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "pattern":Ljava/lang/String;
    invoke-direct {p0, v0}, Llibcore/icu/SimpleDateFormatData;->postProcessPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist initializeCacheInZygote()V
    .registers 1

    .line 124
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/SimpleDateFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/SimpleDateFormatData;

    .line 125
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/SimpleDateFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/SimpleDateFormatData;

    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/SimpleDateFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/SimpleDateFormatData;

    .line 127
    return-void
.end method

.method private static blacklist isBug266731719Locale(Ljava/util/Locale;)Z
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 229
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 230
    return v0

    .line 233
    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "language":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 235
    return v0

    .line 239
    :cond_b
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 241
    return v0

    .line 244
    :cond_18
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "region":Ljava/lang/String;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_30

    .line 248
    :cond_25
    invoke-static {v0}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v2, "US"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 246
    :cond_30
    :goto_30
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist postProcessPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 203
    if-eqz p1, :cond_10

    iget-boolean v0, p0, Llibcore/icu/SimpleDateFormatData;->usesAsciiSpace:Z

    if-nez v0, :cond_7

    goto :goto_10

    .line 207
    :cond_7
    const/16 v0, 0x202f

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :cond_10
    :goto_10
    return-object p1
.end method


# virtual methods
.method public blacklist getDateFormat(I)Ljava/lang/String;
    .registers 3
    .param p1, "style"    # I

    .line 134
    packed-switch p1, :pswitch_data_16

    .line 146
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :pswitch_9
    iget-object v0, p0, Llibcore/icu/SimpleDateFormatData;->shortDateFormat:Ljava/lang/String;

    return-object v0

    .line 138
    :pswitch_c
    iget-object v0, p0, Llibcore/icu/SimpleDateFormatData;->mediumDateFormat:Ljava/lang/String;

    return-object v0

    .line 140
    :pswitch_f
    iget-object v0, p0, Llibcore/icu/SimpleDateFormatData;->longDateFormat:Ljava/lang/String;

    return-object v0

    .line 142
    :pswitch_12
    iget-object v0, p0, Llibcore/icu/SimpleDateFormatData;->fullDateFormat:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getTimeFormat(I)Ljava/lang/String;
    .registers 4
    .param p1, "style"    # I

    .line 158
    packed-switch p1, :pswitch_data_36

    .line 180
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :pswitch_9
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    .line 161
    iget-object v0, p0, Llibcore/icu/SimpleDateFormatData;->shortTimeFormat:Ljava/lang/String;

    return-object v0

    .line 163
    :cond_10
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llibcore/icu/SimpleDateFormatData;->getTimePattern(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :pswitch_1c
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    if-nez v0, :cond_23

    .line 167
    iget-object v0, p0, Llibcore/icu/SimpleDateFormatData;->mediumTimeFormat:Ljava/lang/String;

    return-object v0

    .line 169
    :cond_23
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Llibcore/icu/SimpleDateFormatData;->getTimePattern(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :pswitch_2f
    iget-object v0, p0, Llibcore/icu/SimpleDateFormatData;->longTimeFormat:Ljava/lang/String;

    return-object v0

    .line 176
    :pswitch_32
    iget-object v0, p0, Llibcore/icu/SimpleDateFormatData;->fullTimeFormat:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_1c
        :pswitch_9
    .end packed-switch
.end method
