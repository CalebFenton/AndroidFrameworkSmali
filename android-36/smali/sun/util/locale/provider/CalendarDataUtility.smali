.class public Lsun/util/locale/provider/CalendarDataUtility;
.super Ljava/lang/Object;
.source "CalendarDataUtility.java"


# static fields
.field private static final blacklist BUDDHIST_CALENDAR:Ljava/lang/String; = "buddhist"

.field private static final blacklist GREGORIAN_CALENDAR:Ljava/lang/String; = "gregorian"

.field private static final blacklist ISLAMIC_CALENDAR:Ljava/lang/String; = "islamic"

.field private static final blacklist JAPANESE_CALENDAR:Ljava/lang/String; = "japanese"

.field private static blacklist REST_OF_STYLES:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 66
    const/4 v0, 0x4

    const v1, 0x8004

    const v2, 0x8001

    const/4 v3, 0x2

    const v4, 0x8002

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lsun/util/locale/provider/CalendarDataUtility;->REST_OF_STYLES:[I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private static blacklist getDateFormatSymbols(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 359
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "calendarType":Ljava/lang/String;
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 361
    const-string v2, "calendar"

    invoke-virtual {v1, v2, v0}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 362
    .local v1, "uLocale":Landroid/icu/util/ULocale;
    new-instance v2, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v2, v1}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-object v2
.end method

.method private static blacklist getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;
    .registers 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 332
    invoke-static {p2}, Lsun/util/locale/provider/CalendarDataUtility;->toContext(I)I

    move-result v0

    .line 333
    .local v0, "context":I
    invoke-static {p2}, Lsun/util/locale/provider/CalendarDataUtility;->toWidth(I)I

    move-result v1

    .line 334
    .local v1, "width":I
    invoke-static {p0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->getDateFormatSymbols(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v2

    .line 335
    .local v2, "symbols":Landroid/icu/text/DateFormatSymbols;
    sparse-switch p1, :sswitch_data_62

    .line 354
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 352
    :sswitch_28
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 350
    :sswitch_2d
    invoke-virtual {v2, v0, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 337
    :sswitch_32
    invoke-virtual {v2, v0, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 339
    :sswitch_37
    packed-switch v1, :pswitch_data_74

    .line 347
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :pswitch_53
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getNarrowEras()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 345
    :pswitch_58
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getEraNames()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 343
    :pswitch_5d
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_37
        0x2 -> :sswitch_32
        0x7 -> :sswitch_2d
        0x9 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_58
        :pswitch_53
    .end packed-switch
.end method

.method private static blacklist normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "requestID"    # Ljava/lang/String;

    .line 284
    const-string v0, "gregory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "iso8601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1e

    .line 286
    :cond_11
    const-string v0, "islamic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 287
    const-string v0, "islamic"

    .local v0, "type":Ljava/lang/String;
    goto :goto_20

    .line 289
    .end local v0    # "type":Ljava/lang/String;
    :cond_1c
    move-object v0, p0

    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_20

    .line 285
    .end local v0    # "type":Ljava/lang/String;
    :cond_1e
    :goto_1e
    const-string v0, "gregorian"

    .line 291
    .restart local v0    # "type":Ljava/lang/String;
    :goto_20
    return-object v0
.end method

.method public static blacklist retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "value"    # I
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .line 143
    if-nez p1, :cond_37

    .line 145
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    :cond_d
    goto :goto_2c

    :sswitch_e
    const-string v1, "islamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_2d

    :sswitch_18
    const-string v1, "japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_2d

    :sswitch_22
    const-string v1, "buddhist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_2d

    :goto_2c
    const/4 v0, -0x1

    :goto_2d
    packed-switch v0, :pswitch_data_54

    goto :goto_37

    .line 155
    :pswitch_31
    add-int/lit16 p2, p2, 0xe7

    .line 156
    goto :goto_37

    .line 149
    :pswitch_34
    add-int/lit8 p2, p2, -0x1

    .line 150
    nop

    .line 162
    :cond_37
    :goto_37
    const/4 v0, 0x0

    if-gez p2, :cond_3b

    .line 163
    return-object v0

    .line 165
    :cond_3b
    invoke-static {p0, p1, p3, p4}, Lsun/util/locale/provider/CalendarDataUtility;->getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    if-lt p2, v2, :cond_43

    .line 167
    return-object v0

    .line 169
    :cond_43
    aget-object v0, v1, p2

    return-object v0

    :sswitch_data_46
    .sparse-switch
        -0x5e3d124b -> :sswitch_22
        -0x2cddc04f -> :sswitch_18
        0x7ccb45c8 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
        :pswitch_31
    .end packed-switch
.end method

.method public static blacklist retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .registers 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 207
    if-nez p2, :cond_19

    .line 208
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 209
    .local v0, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lsun/util/locale/provider/CalendarDataUtility;->REST_OF_STYLES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget v4, v1, v3

    .line 210
    .local v4, "st":I
    invoke-static {p0, p1, v4, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 209
    .end local v4    # "st":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 214
    .end local v0    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_19
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 216
    .restart local v0    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1d
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    return-object v1
.end method

.method private static blacklist retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .registers 11
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 299
    .local v1, "skipped":I
    const/4 v2, 0x0

    .line 300
    .local v2, "offset":I
    if-nez p1, :cond_3e

    .line 302
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_68

    :cond_13
    goto :goto_32

    :sswitch_14
    const-string v4, "islamic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_33

    :sswitch_1e
    const-string v4, "japanese"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x2

    goto :goto_33

    :sswitch_28
    const-string v4, "buddhist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    goto :goto_33

    :goto_32
    const/4 v3, -0x1

    :goto_33
    packed-switch v3, :pswitch_data_76

    goto :goto_3e

    .line 308
    :pswitch_37
    const/16 v1, 0xe8

    .line 309
    const/16 v2, -0xe7

    .line 310
    goto :goto_3e

    .line 305
    :pswitch_3c
    const/4 v2, 0x1

    .line 306
    nop

    .line 315
    :cond_3e
    :goto_3e
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 316
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move v4, v1

    .local v4, "i":I
    :goto_44
    array-length v5, v0

    if-ge v4, v5, :cond_67

    .line 317
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 318
    goto :goto_64

    .line 321
    :cond_50
    aget-object v5, v0, v4

    add-int v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_64

    .line 325
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v5

    .line 316
    :cond_64
    :goto_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 328
    .end local v4    # "i":I
    :cond_67
    return-object v3

    :sswitch_data_68
    .sparse-switch
        -0x5e3d124b -> :sswitch_28
        -0x2cddc04f -> :sswitch_1e
        0x7ccb45c8 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3c
        :pswitch_37
    .end packed-switch
.end method

.method public static blacklist retrieveFirstDayOfWeek(Ljava/util/Locale;I)I
    .registers 11
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "defaultFirstDayOfWeek"    # I

    .line 85
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 86
    const-string v0, "fw"

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "fw":Ljava/lang/String;
    if-eqz v0, :cond_75

    .line 88
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v2, :sswitch_data_76

    :cond_21
    goto :goto_68

    :sswitch_22
    const-string v2, "wed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v8

    goto :goto_69

    :sswitch_2c
    const-string v2, "tue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v3

    goto :goto_69

    :sswitch_36
    const-string v2, "thu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v7

    goto :goto_69

    :sswitch_40
    const-string v2, "sun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v4

    goto :goto_69

    :sswitch_4a
    const-string v2, "sat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v5

    goto :goto_69

    :sswitch_54
    const-string v2, "mon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    goto :goto_69

    :sswitch_5e
    const-string v2, "fri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v6

    goto :goto_69

    :goto_68
    const/4 v1, -0x1

    :goto_69
    packed-switch v1, :pswitch_data_94

    goto :goto_75

    .line 102
    :pswitch_6d
    return v3

    .line 100
    :pswitch_6e
    const/4 v1, 0x7

    return v1

    .line 98
    :pswitch_70
    return v4

    .line 96
    :pswitch_71
    return v5

    .line 94
    :pswitch_72
    return v6

    .line 92
    :pswitch_73
    return v7

    .line 90
    :pswitch_74
    return v8

    .line 116
    .end local v0    # "fw":Ljava/lang/String;
    :cond_75
    :goto_75
    return p1

    :sswitch_data_76
    .sparse-switch
        0x18d1d -> :sswitch_5e
        0x1a70c -> :sswitch_54
        0x1bbe6 -> :sswitch_4a
        0x1be4c -> :sswitch_40
        0x1c081 -> :sswitch_36
        0x1c204 -> :sswitch_2c
        0x1cb56 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6e
        :pswitch_6d
    .end packed-switch
.end method

.method public static blacklist retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "value"    # I
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 238
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toContext(I)I
    .registers 4
    .param p0, "style"    # I

    .line 388
    sparse-switch p0, :sswitch_data_20

    .line 398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :sswitch_1c
    const/4 v0, 0x1

    return v0

    .line 392
    :sswitch_1e
    const/4 v0, 0x0

    return v0

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1e
        0x4 -> :sswitch_1e
        0x8001 -> :sswitch_1c
        0x8002 -> :sswitch_1c
        0x8004 -> :sswitch_1c
    .end sparse-switch
.end method

.method private static blacklist toWidth(I)I
    .registers 4
    .param p0, "style"    # I

    .line 369
    sparse-switch p0, :sswitch_data_22

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :sswitch_1c
    const/4 v0, 0x2

    return v0

    .line 378
    :sswitch_1e
    const/4 v0, 0x1

    return v0

    .line 372
    :sswitch_20
    const/4 v0, 0x0

    return v0

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_1e
        0x4 -> :sswitch_1c
        0x8001 -> :sswitch_20
        0x8002 -> :sswitch_1e
        0x8004 -> :sswitch_1c
    .end sparse-switch
.end method
