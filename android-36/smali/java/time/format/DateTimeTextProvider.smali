.class Ljava/time/format/DateTimeTextProvider;
.super Ljava/lang/Object;
.source "DateTimeTextProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeTextProvider$LocaleStore;
    }
.end annotation


# static fields
.field private static final greylist-max-o CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Map$Entry<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist INSTANCE:Ljava/time/format/DateTimeTextProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetCOMPARATOR()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Ljava/time/format/DateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2

    invoke-static {p0, p1}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 110
    new-instance v0, Ljava/time/format/DateTimeTextProvider$1;

    invoke-direct {v0}, Ljava/time/format/DateTimeTextProvider$1;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    .line 118
    new-instance v0, Ljava/time/format/DateTimeTextProvider;

    invoke-direct {v0}, Ljava/time/format/DateTimeTextProvider;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeTextProvider;->INSTANCE:Ljava/time/format/DateTimeTextProvider;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Ljava/util/Map$Entry<",
            "TA;TB;>;"
        }
    .end annotation

    .line 533
    .local p0, "text":Ljava/lang/Object;, "TA;"
    .local p1, "field":Ljava/lang/Object;, "TB;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private greylist-max-o createStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .registers 22
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 333
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v2, "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    const-string v4, "gregory"

    const/4 v5, 0x0

    if-ne v0, v3, :cond_70

    .line 335
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v3

    array-length v6, v3

    move v7, v5

    :goto_16
    if-ge v7, v6, :cond_6a

    aget-object v8, v3, v7

    .line 336
    .local v8, "textStyle":Ljava/time/format/TextStyle;
    invoke-virtual {v8}, Ljava/time/format/TextStyle;->isStandalone()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 338
    goto :goto_67

    .line 340
    :cond_21
    nop

    .line 341
    invoke-virtual {v8}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v9

    .line 340
    invoke-static {v4, v5, v9, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v9

    .line 342
    .local v9, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_67

    .line 343
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_39
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 345
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_39

    .line 347
    :cond_5e
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_67

    .line 348
    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v8    # "textStyle":Ljava/time/format/TextStyle;
    .end local v9    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_67
    :goto_67
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 352
    :cond_6a
    new-instance v3, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v3

    .line 355
    :cond_70
    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/4 v6, 0x1

    if-ne v0, v3, :cond_136

    .line 356
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v3

    array-length v7, v3

    :goto_7a
    if-ge v5, v7, :cond_130

    aget-object v8, v3, v5

    .line 357
    .restart local v8    # "textStyle":Ljava/time/format/TextStyle;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v10, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-virtual {v8, v10}, Ljava/time/format/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v13, 0xb

    const/4 v14, 0x2

    if-nez v10, :cond_ff

    sget-object v10, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    .line 361
    invoke-virtual {v8, v10}, Ljava/time/format/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9b

    move/from16 v18, v7

    const-wide/16 v16, 0x1

    goto :goto_103

    .line 373
    :cond_9b
    nop

    .line 374
    invoke-virtual {v8}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v10

    .line 373
    invoke-static {v4, v14, v10, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v10

    .line 375
    .local v10, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_d7

    .line 376
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_ae
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 377
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v6

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_ae

    :cond_d4
    move/from16 v18, v7

    goto :goto_120

    .line 382
    :cond_d7
    const/4 v15, 0x0

    .local v15, "month":I
    :goto_d8
    if-gt v15, v13, :cond_fc

    .line 384
    nop

    .line 385
    const-wide/16 v16, 0x1

    invoke-virtual {v8}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v11

    .line 384
    invoke-static {v4, v14, v15, v11, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 386
    .local v11, "name":Ljava/lang/String;
    if-nez v11, :cond_ea

    .line 387
    move/from16 v18, v7

    goto :goto_120

    .line 389
    :cond_ea
    move/from16 v18, v7

    int-to-long v6, v15

    add-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v9, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .end local v11    # "name":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v18

    const/4 v6, 0x1

    goto :goto_d8

    :cond_fc
    move/from16 v18, v7

    goto :goto_120

    .line 360
    .end local v10    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "month":I
    :cond_ff
    move/from16 v18, v7

    const-wide/16 v16, 0x1

    .line 362
    :goto_103
    const/4 v6, 0x0

    .local v6, "month":I
    :goto_104
    if-gt v6, v13, :cond_11f

    .line 364
    nop

    .line 366
    invoke-virtual {v8}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v7

    .line 364
    invoke-static {v4, v14, v6, v7, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_112

    .line 368
    goto :goto_11f

    .line 370
    :cond_112
    int-to-long v10, v6

    add-long v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .end local v7    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_104

    .end local v6    # "month":I
    :cond_11f
    :goto_11f
    nop

    .line 393
    :goto_120
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_129

    .line 394
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .end local v8    # "textStyle":Ljava/time/format/TextStyle;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_129
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v18

    const/4 v6, 0x1

    goto/16 :goto_7a

    .line 397
    :cond_130
    new-instance v3, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v3

    .line 400
    :cond_136
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne v0, v3, :cond_1e7

    .line 401
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v3

    array-length v6, v3

    :goto_13f
    if-ge v5, v6, :cond_1e1

    aget-object v7, v3, v5

    .line 402
    .local v7, "textStyle":Ljava/time/format/TextStyle;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 405
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v9, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-virtual {v7, v9}, Ljava/time/format/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x7

    if-nez v9, :cond_1b5

    sget-object v9, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    .line 406
    invoke-virtual {v7, v9}, Ljava/time/format/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15a

    goto :goto_1b5

    .line 418
    :cond_15a
    nop

    .line 419
    invoke-virtual {v7}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v9

    .line 418
    invoke-static {v4, v10, v9, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v9

    .line 420
    .local v9, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_197

    .line 421
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_16d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_196

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 422
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_16d

    :cond_196
    goto :goto_1d4

    .line 427
    :cond_197
    const/4 v11, 0x1

    .local v11, "wday":I
    :goto_198
    if-gt v11, v10, :cond_1d4

    .line 429
    nop

    .line 430
    invoke-virtual {v7}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v12

    .line 429
    invoke-static {v4, v10, v11, v12, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 431
    .local v12, "name":Ljava/lang/String;
    if-nez v12, :cond_1a6

    .line 432
    goto :goto_1d4

    .line 434
    :cond_1a6
    invoke-static {v11}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v8, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .end local v12    # "name":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_198

    .line 407
    .end local v9    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "wday":I
    :cond_1b5
    :goto_1b5
    const/4 v9, 0x1

    .local v9, "wday":I
    :goto_1b6
    if-gt v9, v10, :cond_1d3

    .line 409
    nop

    .line 411
    invoke-virtual {v7}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v11

    .line 409
    invoke-static {v4, v10, v9, v11, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 412
    .local v11, "name":Ljava/lang/String;
    if-nez v11, :cond_1c4

    .line 413
    goto :goto_1d3

    .line 415
    :cond_1c4
    invoke-static {v9}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v11    # "name":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b6

    .end local v9    # "wday":I
    :cond_1d3
    :goto_1d3
    nop

    .line 438
    :cond_1d4
    :goto_1d4
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1dd

    .line 439
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v7    # "textStyle":Ljava/time/format/TextStyle;
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1dd
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_13f

    .line 442
    :cond_1e1
    new-instance v3, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v3

    .line 445
    :cond_1e7
    sget-object v3, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne v0, v3, :cond_24c

    .line 446
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v3

    array-length v6, v3

    :goto_1f0
    if-ge v5, v6, :cond_246

    aget-object v7, v3, v5

    .line 447
    .restart local v7    # "textStyle":Ljava/time/format/TextStyle;
    invoke-virtual {v7}, Ljava/time/format/TextStyle;->isStandalone()Z

    move-result v8

    if-eqz v8, :cond_1fb

    .line 449
    goto :goto_243

    .line 451
    :cond_1fb
    nop

    .line 452
    invoke-virtual {v7}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v8

    .line 451
    const/16 v9, 0x9

    invoke-static {v4, v9, v8, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .line 453
    .local v8, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v8, :cond_243

    .line 454
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 455
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_215
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_23a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 456
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_215

    .line 458
    :cond_23a
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_243

    .line 459
    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .end local v7    # "textStyle":Ljava/time/format/TextStyle;
    .end local v8    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_243
    :goto_243
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f0

    .line 463
    :cond_246
    new-instance v3, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v3

    .line 466
    :cond_24c
    sget-object v3, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    if-ne v0, v3, :cond_2ba

    .line 489
    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v3

    .line 492
    .local v3, "uLocale":Landroid/icu/util/ULocale;
    const-string v4, "calendar"

    const-string v6, "gregorian"

    invoke-virtual {v3, v4, v6}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    .line 493
    invoke-static {v3}, Lcom/android/icu/text/ExtendedDateFormatSymbols;->getInstance(Landroid/icu/util/ULocale;)Lcom/android/icu/text/ExtendedDateFormatSymbols;

    move-result-object v4

    .line 494
    .local v4, "extendedDfs":Lcom/android/icu/text/ExtendedDateFormatSymbols;
    invoke-virtual {v4}, Lcom/android/icu/text/ExtendedDateFormatSymbols;->getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;

    move-result-object v6

    .line 495
    .local v6, "dfs":Landroid/icu/text/DateFormatSymbols;
    sget-object v7, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    .line 496
    const/4 v12, 0x1

    invoke-virtual {v6, v5, v12}, Landroid/icu/text/DateFormatSymbols;->getQuarters(II)[Ljava/lang/String;

    move-result-object v8

    .line 495
    invoke-static {v8}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v7, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    .line 498
    invoke-virtual {v6, v12, v12}, Landroid/icu/text/DateFormatSymbols;->getQuarters(II)[Ljava/lang/String;

    move-result-object v8

    .line 497
    invoke-static {v8}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v7, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    .line 500
    invoke-virtual {v6, v5, v5}, Landroid/icu/text/DateFormatSymbols;->getQuarters(II)[Ljava/lang/String;

    move-result-object v8

    .line 499
    invoke-static {v8}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v7, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    .line 502
    const/4 v12, 0x1

    invoke-virtual {v6, v12, v5}, Landroid/icu/text/DateFormatSymbols;->getQuarters(II)[Ljava/lang/String;

    move-result-object v8

    .line 501
    invoke-static {v8}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v7, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    .line 504
    invoke-virtual {v4, v5}, Lcom/android/icu/text/ExtendedDateFormatSymbols;->getNarrowQuarters(I)[Ljava/lang/String;

    move-result-object v5

    .line 503
    invoke-static {v5}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v5, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    .line 506
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lcom/android/icu/text/ExtendedDateFormatSymbols;->getNarrowQuarters(I)[Ljava/lang/String;

    move-result-object v7

    .line 505
    invoke-static {v7}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    new-instance v5, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v5, v2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v5

    .line 512
    .end local v3    # "uLocale":Landroid/icu/util/ULocale;
    .end local v4    # "extendedDfs":Lcom/android/icu/text/ExtendedDateFormatSymbols;
    .end local v6    # "dfs":Landroid/icu/text/DateFormatSymbols;
    :cond_2ba
    const-string v3, ""

    return-object v3
.end method

.method private static blacklist extractQuarters([Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p0, "quarters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 517
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 518
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "q":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 519
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 521
    .end local v1    # "q":I
    :cond_18
    return-object v0
.end method

.method private greylist-max-o findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 314
    invoke-static {p1, p2}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 315
    .local v0, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/util/Locale;>;"
    sget-object v1, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 316
    .local v1, "store":Ljava/lang/Object;
    if-nez v1, :cond_1b

    .line 317
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeTextProvider;->createStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v1

    .line 318
    sget-object v2, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v2, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 321
    :cond_1b
    return-object v1
.end method

.method static greylist-max-o getInstance()Ljava/time/format/DateTimeTextProvider;
    .registers 1

    .line 128
    sget-object v0, Ljava/time/format/DateTimeTextProvider;->INSTANCE:Ljava/time/format/DateTimeTextProvider;

    return-object v0
.end method

.method private static greylist-max-o toWeekDay(I)I
    .registers 2
    .param p0, "calWeekDay"    # I

    .line 325
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 326
    const/4 v0, 0x7

    return v0

    .line 328
    :cond_5
    add-int/lit8 v0, p0, -0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o getText(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 14
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "field"    # Ljava/time/temporal/TemporalField;
    .param p3, "value"    # J
    .param p5, "style"    # Ljava/time/format/TextStyle;
    .param p6, "locale"    # Ljava/util/Locale;

    .line 170
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-eq p1, v0, :cond_4d

    instance-of v0, p2, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_9

    goto :goto_4d

    .line 177
    :cond_9
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_20

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "fieldIndex":I
    sget-object v1, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    if-ne p1, v1, :cond_1e

    .line 180
    const-wide/16 v1, -0x3e7

    cmp-long v1, p3, v1

    if-nez v1, :cond_1a

    .line 181
    const/4 v1, 0x0

    .local v1, "fieldValue":I
    goto :goto_3d

    .line 183
    .end local v1    # "fieldValue":I
    :cond_1a
    long-to-int v1, p3

    add-int/lit8 v1, v1, 0x2

    .restart local v1    # "fieldValue":I
    goto :goto_3d

    .line 186
    .end local v1    # "fieldValue":I
    :cond_1e
    long-to-int v1, p3

    .restart local v1    # "fieldValue":I
    goto :goto_3d

    .line 188
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_20
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_29

    .line 189
    const/4 v0, 0x2

    .line 190
    .restart local v0    # "fieldIndex":I
    long-to-int v1, p3

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "fieldValue":I
    goto :goto_3d

    .line 191
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_29
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_36

    .line 192
    const/4 v0, 0x7

    .line 193
    .restart local v0    # "fieldIndex":I
    long-to-int v1, p3

    add-int/lit8 v1, v1, 0x1

    .line 194
    .restart local v1    # "fieldValue":I
    const/4 v2, 0x7

    if-le v1, v2, :cond_3d

    .line 195
    const/4 v1, 0x1

    goto :goto_3d

    .line 197
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_36
    sget-object v0, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_4b

    .line 198
    const/16 v0, 0x9

    .line 199
    .restart local v0    # "fieldIndex":I
    long-to-int v1, p3

    .line 203
    .restart local v1    # "fieldValue":I
    :cond_3d
    :goto_3d
    nop

    .line 204
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v3

    .line 203
    invoke-static {v2, v0, v1, v3, p6}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 201
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_4b
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_4d
    :goto_4d
    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .end local p2    # "field":Ljava/time/temporal/TemporalField;
    .end local p3    # "value":J
    .end local p5    # "style":Ljava/time/format/TextStyle;
    .end local p6    # "locale":Ljava/util/Locale;
    .local v2, "field":Ljava/time/temporal/TemporalField;
    .local v3, "value":J
    .local v5, "style":Ljava/time/format/TextStyle;
    .local v6, "locale":Ljava/util/Locale;
    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    return-object p2
.end method

.method public greylist-max-o getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J
    .param p4, "style"    # Ljava/time/format/TextStyle;
    .param p5, "locale"    # Ljava/util/Locale;

    .line 146
    invoke-direct {p0, p1, p5}, Ljava/time/format/DateTimeTextProvider;->findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "store":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    if-eqz v1, :cond_10

    .line 148
    move-object v1, v0

    check-cast v1, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v1, p2, p3, p4}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getText(JLjava/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 150
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getTextIterator(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 15
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "field"    # Ljava/time/temporal/TemporalField;
    .param p3, "style"    # Ljava/time/format/TextStyle;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 250
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-eq p1, v0, :cond_123

    instance-of v0, p2, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_a

    goto/16 :goto_123

    .line 256
    :cond_a
    sget-object v0, Ljava/time/format/DateTimeTextProvider$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_128

    .line 270
    return-object v1

    .line 267
    :pswitch_1a
    const/16 v0, 0x9

    .line 268
    .local v0, "fieldIndex":I
    goto :goto_23

    .line 264
    .end local v0    # "fieldIndex":I
    :pswitch_1d
    const/4 v0, 0x7

    .line 265
    .restart local v0    # "fieldIndex":I
    goto :goto_23

    .line 261
    .end local v0    # "fieldIndex":I
    :pswitch_1f
    const/4 v0, 0x2

    .line 262
    .restart local v0    # "fieldIndex":I
    goto :goto_23

    .line 258
    .end local v0    # "fieldIndex":I
    :pswitch_21
    const/4 v0, 0x0

    .line 259
    .restart local v0    # "fieldIndex":I
    nop

    .line 273
    :goto_23
    if-nez p3, :cond_27

    const/4 v2, 0x0

    goto :goto_2b

    :cond_27
    invoke-virtual {p3}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v2

    .line 274
    .local v2, "calendarStyle":I
    :goto_2b
    nop

    .line 275
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-static {v3, v0, v2, p4}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v3

    .line 276
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_37

    .line 277
    return-object v1

    .line 279
    :cond_37
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    sparse-switch v0, :sswitch_data_134

    .line 305
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto/16 :goto_f5

    .line 300
    :sswitch_4d
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 301
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_55

    .line 303
    :cond_82
    goto/16 :goto_11e

    .line 295
    :sswitch_84
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 296
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_8c

    .line 298
    :cond_b7
    goto :goto_11e

    .line 282
    :sswitch_b8
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 283
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 284
    .local v6, "era":I
    sget-object v7, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    if-ne p1, v7, :cond_e1

    .line 285
    if-nez v6, :cond_df

    .line 286
    const/16 v6, -0x3e7

    goto :goto_e1

    .line 288
    :cond_df
    add-int/lit8 v6, v6, -0x2

    .line 291
    :cond_e1
    :goto_e1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "era":I
    goto :goto_c0

    .line 293
    :cond_f4
    goto :goto_11e

    .line 305
    :goto_f5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 306
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_f5

    .line 310
    :cond_11e
    :goto_11e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    return-object v4

    .line 252
    .end local v0    # "fieldIndex":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v2    # "calendarStyle":I
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_123
    :goto_123
    invoke-virtual {p0, p2, p3, p4}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1a
    .end packed-switch

    :sswitch_data_134
    .sparse-switch
        0x0 -> :sswitch_b8
        0x2 -> :sswitch_84
        0x7 -> :sswitch_4d
    .end sparse-switch
.end method

.method public greylist-max-o getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "style"    # Ljava/time/format/TextStyle;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p3}, Ljava/time/format/DateTimeTextProvider;->findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "store":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    if-eqz v1, :cond_10

    .line 226
    move-object v1, v0

    check-cast v1, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v1, p2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 228
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method
