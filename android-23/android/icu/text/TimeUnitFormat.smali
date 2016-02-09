.class public Landroid/icu/text/TimeUnitFormat;
.super Landroid/icu/text/MeasureFormat;
.source "TimeUnitFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ABBREVIATED_NAME:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_PATTERN_FOR_DAY:Ljava/lang/String; = "{0} d"

.field private static final DEFAULT_PATTERN_FOR_HOUR:Ljava/lang/String; = "{0} h"

.field private static final DEFAULT_PATTERN_FOR_MINUTE:Ljava/lang/String; = "{0} min"

.field private static final DEFAULT_PATTERN_FOR_MONTH:Ljava/lang/String; = "{0} m"

.field private static final DEFAULT_PATTERN_FOR_SECOND:Ljava/lang/String; = "{0} s"

.field private static final DEFAULT_PATTERN_FOR_WEEK:Ljava/lang/String; = "{0} w"

.field private static final DEFAULT_PATTERN_FOR_YEAR:Ljava/lang/String; = "{0} y"

.field public static final FULL_NAME:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TOTAL_STYLES:I = 0x2

.field private static final serialVersionUID:J = -0x3374a809c751fb09L


# instance fields
.field private format:Landroid/icu/text/NumberFormat;

.field private transient isReady:Z

.field private locale:Landroid/icu/util/ULocale;

.field private transient mf:Landroid/icu/text/MeasureFormat;

.field private transient pluralRules:Landroid/icu/text/PluralRules;

.field private style:I

.field private transient timeUnitToCountToPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 116
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat;-><init>()V

    #@4
    .line 117
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@a
    invoke-static {v0, v1}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@10
    .line 118
    iput-boolean v2, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    #@12
    .line 119
    iput v2, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    #@14
    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 129
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@4
    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;I)V
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 151
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat;-><init>()V

    #@4
    .line 152
    if-ltz p2, :cond_0

    #@6
    const/4 v0, 0x2

    #@7
    if-lt p2, v0, :cond_1

    #@9
    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "style should be either FULL_NAME or ABBREVIATED_NAME style"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 156
    :cond_1
    if-nez p2, :cond_2

    #@14
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@16
    .line 155
    :goto_0
    invoke-static {p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@1c
    .line 157
    iput p2, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    #@1e
    .line 160
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@21
    .line 161
    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@23
    .line 162
    iput-boolean v1, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    #@25
    .line 151
    return-void

    #@26
    .line 156
    :cond_2
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@28
    goto :goto_0
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;ILandroid/icu/text/NumberFormat;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # I
    .param p3, "numberFormat"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@3
    .line 167
    if-eqz p3, :cond_0

    #@5
    .line 168
    invoke-virtual {p3}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/text/NumberFormat;

    #@b
    invoke-virtual {p0, v0}, Landroid/icu/text/TimeUnitFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;

    #@e
    .line 165
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 139
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeUnitFormat;-><init>(Ljava/util/Locale;I)V

    #@4
    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "style"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 178
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@7
    .line 177
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    new-instance v0, Landroid/icu/text/TimeUnitFormat;

    #@2
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@4
    iget v2, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    #@6
    iget-object v3, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@8
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;ILandroid/icu/text/NumberFormat;)V

    #@b
    return-object v0
.end method

.method private searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 17
    .param p1, "resourceKey"    # Ljava/lang/String;
    .param p2, "styl"    # I
    .param p3, "timeUnit"    # Landroid/icu/util/TimeUnit;
    .param p4, "srcPluralCount"    # Ljava/lang/String;
    .param p5, "searchPluralCount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 467
    .local p6, "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@4
    .line 468
    .local v13, "parentLocale":Landroid/icu/util/ULocale;
    invoke-virtual/range {p3 .. p3}, Landroid/icu/util/TimeUnit;->toString()Ljava/lang/String;

    #@7
    move-result-object v15

    #@8
    .line 469
    .local v15, "srcTimeUnitName":Ljava/lang/String;
    :goto_0
    if-eqz v13, :cond_1

    #@a
    .line 473
    :try_start_0
    const-string/jumbo v2, "android/icu/impl/data/icudt55b/unit"

    #@d
    .line 472
    invoke-static {v2, v13}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@10
    move-result-object v16

    #@11
    check-cast v16, Landroid/icu/impl/ICUResourceBundle;

    #@13
    .line 474
    .local v16, "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    move-object/from16 v0, v16

    #@15
    move-object/from16 v1, p1

    #@17
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@1a
    move-result-object v16

    #@1b
    .line 475
    move-object/from16 v0, v16

    #@1d
    invoke-virtual {v0, v15}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@20
    move-result-object v11

    #@21
    .line 476
    .local v11, "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    move-object/from16 v0, p5

    #@23
    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v14

    #@27
    .line 477
    .local v14, "pattern":Ljava/lang/String;
    new-instance v10, Landroid/icu/text/MessageFormat;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@2d
    invoke-direct {v10, v14, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@30
    .line 478
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    move-object/from16 v0, p6

    #@32
    move-object/from16 v1, p4

    #@34
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v12

    #@38
    check-cast v12, [Ljava/lang/Object;

    #@3a
    .line 479
    .local v12, "pair":[Ljava/lang/Object;
    if-nez v12, :cond_0

    #@3c
    .line 480
    const/4 v2, 0x2

    #@3d
    new-array v12, v2, [Ljava/lang/Object;

    #@3f
    .line 481
    move-object/from16 v0, p6

    #@41
    move-object/from16 v1, p4

    #@43
    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 483
    :cond_0
    aput-object v10, v12, p2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 484
    return-void

    #@49
    .line 485
    .end local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    .end local v11    # "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v12    # "pair":[Ljava/lang/Object;
    .end local v14    # "pattern":Ljava/lang/String;
    .end local v16    # "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    :catch_0
    move-exception v9

    #@4a
    .line 487
    .local v9, "e":Ljava/util/MissingResourceException;
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    #@4d
    move-result-object v13

    #@4e
    goto :goto_0

    #@4f
    .line 491
    .end local v9    # "e":Ljava/util/MissingResourceException;
    :cond_1
    if-nez v13, :cond_2

    #@51
    const-string/jumbo v2, "unitsShort"

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_2

    #@5c
    .line 492
    const-string/jumbo v3, "units"

    #@5f
    move-object/from16 v2, p0

    #@61
    move/from16 v4, p2

    #@63
    move-object/from16 v5, p3

    #@65
    move-object/from16 v6, p4

    #@67
    move-object/from16 v7, p5

    #@69
    move-object/from16 v8, p6

    #@6b
    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #@6e
    .line 493
    if-eqz p6, :cond_2

    #@70
    move-object/from16 v0, p6

    #@72
    move-object/from16 v1, p4

    #@74
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    move-result-object v2

    #@78
    if-eqz v2, :cond_2

    #@7a
    .line 494
    move-object/from16 v0, p6

    #@7c
    move-object/from16 v1, p4

    #@7e
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    move-result-object v2

    #@82
    check-cast v2, [Ljava/lang/Object;

    #@84
    aget-object v2, v2, p2

    #@86
    if-eqz v2, :cond_2

    #@88
    .line 495
    return-void

    #@89
    .line 500
    :cond_2
    const-string/jumbo v2, "other"

    #@8c
    move-object/from16 v0, p5

    #@8e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v2

    #@92
    if-eqz v2, :cond_b

    #@94
    .line 502
    const/4 v10, 0x0

    #@95
    .line 503
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    sget-object v2, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    #@97
    move-object/from16 v0, p3

    #@99
    if-ne v0, v2, :cond_5

    #@9b
    .line 504
    new-instance v10, Landroid/icu/text/MessageFormat;

    #@9d
    .end local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    const-string/jumbo v2, "{0} s"

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@a4
    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@a7
    .line 518
    :cond_3
    :goto_1
    move-object/from16 v0, p6

    #@a9
    move-object/from16 v1, p4

    #@ab
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    move-result-object v12

    #@af
    check-cast v12, [Ljava/lang/Object;

    #@b1
    .line 519
    .restart local v12    # "pair":[Ljava/lang/Object;
    if-nez v12, :cond_4

    #@b3
    .line 520
    const/4 v2, 0x2

    #@b4
    new-array v12, v2, [Ljava/lang/Object;

    #@b6
    .line 521
    move-object/from16 v0, p6

    #@b8
    move-object/from16 v1, p4

    #@ba
    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bd
    .line 523
    :cond_4
    aput-object v10, v12, p2

    #@bf
    .line 466
    .end local v12    # "pair":[Ljava/lang/Object;
    :goto_2
    return-void

    #@c0
    .line 505
    .restart local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    :cond_5
    sget-object v2, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    #@c2
    move-object/from16 v0, p3

    #@c4
    if-ne v0, v2, :cond_6

    #@c6
    .line 506
    new-instance v10, Landroid/icu/text/MessageFormat;

    #@c8
    .end local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    const-string/jumbo v2, "{0} min"

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@cf
    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@d2
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    goto :goto_1

    #@d3
    .line 507
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    :cond_6
    sget-object v2, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    #@d5
    move-object/from16 v0, p3

    #@d7
    if-ne v0, v2, :cond_7

    #@d9
    .line 508
    new-instance v10, Landroid/icu/text/MessageFormat;

    #@db
    .end local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    const-string/jumbo v2, "{0} h"

    #@de
    move-object/from16 v0, p0

    #@e0
    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@e2
    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@e5
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    goto :goto_1

    #@e6
    .line 509
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    :cond_7
    sget-object v2, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    #@e8
    move-object/from16 v0, p3

    #@ea
    if-ne v0, v2, :cond_8

    #@ec
    .line 510
    new-instance v10, Landroid/icu/text/MessageFormat;

    #@ee
    .end local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    const-string/jumbo v2, "{0} w"

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@f5
    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@f8
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    goto :goto_1

    #@f9
    .line 511
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    :cond_8
    sget-object v2, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    #@fb
    move-object/from16 v0, p3

    #@fd
    if-ne v0, v2, :cond_9

    #@ff
    .line 512
    new-instance v10, Landroid/icu/text/MessageFormat;

    #@101
    .end local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    const-string/jumbo v2, "{0} d"

    #@104
    move-object/from16 v0, p0

    #@106
    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@108
    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@10b
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    goto :goto_1

    #@10c
    .line 513
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    :cond_9
    sget-object v2, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    #@10e
    move-object/from16 v0, p3

    #@110
    if-ne v0, v2, :cond_a

    #@112
    .line 514
    new-instance v10, Landroid/icu/text/MessageFormat;

    #@114
    .end local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    const-string/jumbo v2, "{0} m"

    #@117
    move-object/from16 v0, p0

    #@119
    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@11b
    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@11e
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    goto :goto_1

    #@11f
    .line 515
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    :cond_a
    sget-object v2, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    #@121
    move-object/from16 v0, p3

    #@123
    if-ne v0, v2, :cond_3

    #@125
    .line 516
    new-instance v10, Landroid/icu/text/MessageFormat;

    #@127
    .end local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    const-string/jumbo v2, "{0} y"

    #@12a
    move-object/from16 v0, p0

    #@12c
    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@12e
    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@131
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    goto/16 :goto_1

    #@133
    .line 526
    .end local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    :cond_b
    const-string/jumbo v7, "other"

    #@136
    move-object/from16 v2, p0

    #@138
    move-object/from16 v3, p1

    #@13a
    move/from16 v4, p2

    #@13c
    move-object/from16 v5, p3

    #@13e
    move-object/from16 v6, p4

    #@140
    move-object/from16 v8, p6

    #@142
    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #@145
    goto/16 :goto_2
.end method

.method private setup()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 344
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 345
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@8
    if-eqz v1, :cond_2

    #@a
    .line 346
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@c
    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@12
    .line 351
    :goto_0
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@14
    iget-object v2, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@16
    invoke-virtual {p0, v1, v2}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@19
    .line 353
    :cond_0
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 354
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@1f
    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@25
    .line 356
    :cond_1
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@27
    invoke-static {v1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@2d
    .line 357
    new-instance v1, Ljava/util/HashMap;

    #@2f
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@32
    iput-object v1, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    #@34
    .line 358
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@36
    invoke-virtual {v1}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    #@39
    move-result-object v0

    #@3a
    .line 359
    .local v0, "pluralKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "units/duration"

    #@3d
    iget-object v2, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    #@3f
    const/4 v3, 0x0

    #@40
    invoke-direct {p0, v1, v2, v3, v0}, Landroid/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    #@43
    .line 360
    const-string/jumbo v1, "unitsShort/duration"

    #@46
    iget-object v2, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    #@48
    invoke-direct {p0, v1, v2, v4, v0}, Landroid/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    #@4b
    .line 361
    iput-boolean v4, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    #@4d
    .line 343
    return-void

    #@4e
    .line 348
    .end local v0    # "pluralKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@50
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@53
    move-result-object v1

    #@54
    iput-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@56
    goto :goto_0
.end method

.method private setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V
    .locals 25
    .param p1, "resourceKey"    # Ljava/lang/String;
    .param p3, "style"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 369
    .local p2, "timeUnitToCountToPatterns":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/util/TimeUnit;Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;>;"
    .local p4, "pluralKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v2, "android/icu/impl/data/icudt55b/unit"

    #@3
    move-object/from16 v0, p0

    #@5
    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@7
    .line 368
    invoke-static {v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@a
    move-result-object v20

    #@b
    check-cast v20, Landroid/icu/impl/ICUResourceBundle;

    #@d
    .line 370
    .local v20, "resource":Landroid/icu/impl/ICUResourceBundle;
    move-object/from16 v0, v20

    #@f
    move-object/from16 v1, p1

    #@11
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@14
    move-result-object v24

    #@15
    .line 371
    .local v24, "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual/range {v24 .. v24}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@18
    move-result v21

    #@19
    .line 372
    .local v21, "size":I
    const/4 v12, 0x0

    #@1a
    .local v12, "index":I
    :goto_0
    move/from16 v0, v21

    #@1c
    if-ge v12, v0, :cond_9

    #@1e
    .line 373
    move-object/from16 v0, v24

    #@20
    invoke-virtual {v0, v12}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@27
    move-result-object v22

    #@28
    .line 374
    .local v22, "timeUnitName":Ljava/lang/String;
    const/4 v5, 0x0

    #@29
    .line 375
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    const-string/jumbo v2, "year"

    #@2c
    move-object/from16 v0, v22

    #@2e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 376
    sget-object v5, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    #@36
    .line 392
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    :goto_1
    move-object/from16 v0, v24

    #@38
    move-object/from16 v1, v22

    #@3a
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3d
    move-result-object v15

    #@3e
    .line 393
    .local v15, "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@41
    move-result v9

    #@42
    .line 394
    .local v9, "count":I
    move-object/from16 v0, p2

    #@44
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v8

    #@48
    check-cast v8, Ljava/util/Map;

    #@4a
    .line 395
    .local v8, "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    if-nez v8, :cond_0

    #@4c
    .line 396
    new-instance v8, Ljava/util/TreeMap;

    #@4e
    .end local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    #@51
    .line 397
    .restart local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    #@53
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 399
    :cond_0
    const/16 v19, 0x0

    #@58
    .local v19, "pluralIndex":I
    :goto_2
    move/from16 v0, v19

    #@5a
    if-ge v0, v9, :cond_d

    #@5c
    .line 400
    move/from16 v0, v19

    #@5e
    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    .line 401
    .local v6, "pluralCount":Ljava/lang/String;
    move-object/from16 v0, p4

    #@68
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6b
    move-result v2

    #@6c
    if-nez v2, :cond_7

    #@6e
    .line 399
    :goto_3
    add-int/lit8 v19, v19, 0x1

    #@70
    goto :goto_2

    #@71
    .line 377
    .end local v6    # "pluralCount":Ljava/lang/String;
    .end local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v9    # "count":I
    .end local v15    # "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v19    # "pluralIndex":I
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    :cond_1
    const-string/jumbo v2, "month"

    #@74
    move-object/from16 v0, v22

    #@76
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v2

    #@7a
    if-eqz v2, :cond_2

    #@7c
    .line 378
    sget-object v5, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    #@7e
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    goto :goto_1

    #@7f
    .line 379
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    :cond_2
    const-string/jumbo v2, "day"

    #@82
    move-object/from16 v0, v22

    #@84
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v2

    #@88
    if-eqz v2, :cond_3

    #@8a
    .line 380
    sget-object v5, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    #@8c
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    goto :goto_1

    #@8d
    .line 381
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    :cond_3
    const-string/jumbo v2, "hour"

    #@90
    move-object/from16 v0, v22

    #@92
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v2

    #@96
    if-eqz v2, :cond_4

    #@98
    .line 382
    sget-object v5, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    #@9a
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    goto :goto_1

    #@9b
    .line 383
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    :cond_4
    const-string/jumbo v2, "minute"

    #@9e
    move-object/from16 v0, v22

    #@a0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v2

    #@a4
    if-eqz v2, :cond_5

    #@a6
    .line 384
    sget-object v5, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    #@a8
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    goto :goto_1

    #@a9
    .line 385
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    :cond_5
    const-string/jumbo v2, "second"

    #@ac
    move-object/from16 v0, v22

    #@ae
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v2

    #@b2
    if-eqz v2, :cond_6

    #@b4
    .line 386
    sget-object v5, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    #@b6
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    goto :goto_1

    #@b7
    .line 387
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    :cond_6
    const-string/jumbo v2, "week"

    #@ba
    move-object/from16 v0, v22

    #@bc
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v2

    #@c0
    if-eqz v2, :cond_d

    #@c2
    .line 388
    sget-object v5, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    #@c4
    .local v5, "timeUnit":Landroid/icu/util/TimeUnit;
    goto/16 :goto_1

    #@c6
    .line 403
    .restart local v6    # "pluralCount":Ljava/lang/String;
    .restart local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .restart local v9    # "count":I
    .restart local v15    # "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    .restart local v19    # "pluralIndex":I
    :cond_7
    move/from16 v0, v19

    #@c8
    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@cb
    move-result-object v2

    #@cc
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@cf
    move-result-object v17

    #@d0
    .line 404
    .local v17, "pattern":Ljava/lang/String;
    new-instance v14, Landroid/icu/text/MessageFormat;

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v2, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@d6
    move-object/from16 v0, v17

    #@d8
    invoke-direct {v14, v0, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@db
    .line 409
    .local v14, "messageFormat":Landroid/icu/text/MessageFormat;
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@de
    move-result-object v16

    #@df
    check-cast v16, [Ljava/lang/Object;

    #@e1
    .line 410
    .local v16, "pair":[Ljava/lang/Object;
    if-nez v16, :cond_8

    #@e3
    .line 411
    const/4 v2, 0x2

    #@e4
    new-array v0, v2, [Ljava/lang/Object;

    #@e6
    move-object/from16 v16, v0

    #@e8
    .line 412
    move-object/from16 v0, v16

    #@ea
    invoke-interface {v8, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ed
    .line 414
    :cond_8
    aput-object v14, v16, p3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@ef
    goto/16 :goto_3

    #@f1
    .line 417
    .end local v5    # "timeUnit":Landroid/icu/util/TimeUnit;
    .end local v6    # "pluralCount":Ljava/lang/String;
    .end local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v9    # "count":I
    .end local v12    # "index":I
    .end local v14    # "messageFormat":Landroid/icu/text/MessageFormat;
    .end local v15    # "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v16    # "pair":[Ljava/lang/Object;
    .end local v17    # "pattern":Ljava/lang/String;
    .end local v19    # "pluralIndex":I
    .end local v20    # "resource":Landroid/icu/impl/ICUResourceBundle;
    .end local v21    # "size":I
    .end local v22    # "timeUnitName":Ljava/lang/String;
    .end local v24    # "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    :catch_0
    move-exception v10

    #@f2
    .line 437
    :cond_9
    invoke-static {}, Landroid/icu/util/TimeUnit;->values()[Landroid/icu/util/TimeUnit;

    #@f5
    move-result-object v23

    #@f6
    .line 438
    .local v23, "timeUnits":[Landroid/icu/util/TimeUnit;
    move-object/from16 v0, p0

    #@f8
    iget-object v2, v0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@fa
    invoke-virtual {v2}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    #@fd
    move-result-object v13

    #@fe
    .line 439
    .local v13, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@ff
    .local v11, "i":I
    :goto_4
    move-object/from16 v0, v23

    #@101
    array-length v2, v0

    #@102
    if-ge v11, v2, :cond_f

    #@104
    .line 442
    aget-object v5, v23, v11

    #@106
    .line 443
    .restart local v5    # "timeUnit":Landroid/icu/util/TimeUnit;
    move-object/from16 v0, p2

    #@108
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10b
    move-result-object v8

    #@10c
    check-cast v8, Ljava/util/Map;

    #@10e
    .line 444
    .restart local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    if-nez v8, :cond_a

    #@110
    .line 445
    new-instance v8, Ljava/util/TreeMap;

    #@112
    .end local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    #@115
    .line 446
    .restart local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    #@117
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11a
    .line 448
    :cond_a
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11d
    move-result-object v18

    #@11e
    .local v18, "pluralCount$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@121
    move-result v2

    #@122
    if-eqz v2, :cond_e

    #@124
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@127
    move-result-object v6

    #@128
    check-cast v6, Ljava/lang/String;

    #@12a
    .line 449
    .restart local v6    # "pluralCount":Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    move-result-object v2

    #@12e
    if-eqz v2, :cond_c

    #@130
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@133
    move-result-object v2

    #@134
    check-cast v2, [Ljava/lang/Object;

    #@136
    aget-object v2, v2, p3

    #@138
    if-nez v2, :cond_b

    #@13a
    :cond_c
    move-object/from16 v2, p0

    #@13c
    move-object/from16 v3, p1

    #@13e
    move/from16 v4, p3

    #@140
    move-object v7, v6

    #@141
    .line 451
    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #@144
    goto :goto_5

    #@145
    .line 372
    .end local v5    # "timeUnit":Landroid/icu/util/TimeUnit;
    .end local v6    # "pluralCount":Ljava/lang/String;
    .end local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v11    # "i":I
    .end local v13    # "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "pluralCount$iterator":Ljava/util/Iterator;
    .end local v23    # "timeUnits":[Landroid/icu/util/TimeUnit;
    .restart local v12    # "index":I
    .restart local v20    # "resource":Landroid/icu/impl/ICUResourceBundle;
    .restart local v21    # "size":I
    .restart local v22    # "timeUnitName":Ljava/lang/String;
    .restart local v24    # "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    :cond_d
    add-int/lit8 v12, v12, 0x1

    #@147
    goto/16 :goto_0

    #@149
    .line 439
    .end local v12    # "index":I
    .end local v20    # "resource":Landroid/icu/impl/ICUResourceBundle;
    .end local v21    # "size":I
    .end local v22    # "timeUnitName":Ljava/lang/String;
    .end local v24    # "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    .restart local v5    # "timeUnit":Landroid/icu/util/TimeUnit;
    .restart local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .restart local v11    # "i":I
    .restart local v13    # "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "pluralCount$iterator":Ljava/util/Iterator;
    .restart local v23    # "timeUnits":[Landroid/icu/util/TimeUnit;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    #@14b
    goto :goto_4

    #@14c
    .line 365
    .end local v5    # "timeUnit":Landroid/icu/util/TimeUnit;
    .end local v8    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v18    # "pluralCount$iterator":Ljava/util/Iterator;
    :cond_f
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 581
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->toTimeUnitProxy()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 572
    invoke-super {p0}, Landroid/icu/text/MeasureFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/TimeUnitFormat;

    #@6
    .line 573
    .local v0, "result":Landroid/icu/text/TimeUnitFormat;
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@8
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/icu/text/NumberFormat;

    #@e
    iput-object v1, v0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@10
    .line 574
    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "measures"    # [Landroid/icu/util/Measure;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 552
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 257
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeUnitAmount;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeUnitAmount;
    .locals 23
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 258
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    #@4
    move/from16 v21, v0

    #@6
    if-nez v21, :cond_0

    #@8
    .line 259
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeUnitFormat;->setup()V

    #@b
    .line 261
    :cond_0
    const/4 v14, 0x0

    #@c
    .line 262
    .local v14, "resultNumber":Ljava/lang/Number;
    const/4 v15, 0x0

    #@d
    .line 263
    .local v15, "resultTimeUnit":Landroid/icu/util/TimeUnit;
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@10
    move-result v8

    #@11
    .line 264
    .local v8, "oldPos":I
    const/4 v7, -0x1

    #@12
    .line 265
    .local v7, "newPos":I
    const/4 v6, 0x0

    #@13
    .line 266
    .local v6, "longestParseDistance":I
    const/4 v3, 0x0

    #@14
    .line 270
    .local v3, "countOfLongestMatch":Ljava/lang/String;
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    #@18
    move-object/from16 v21, v0

    #@1a
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1d
    move-result-object v21

    #@1e
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v20

    #@22
    .end local v3    # "countOfLongestMatch":Ljava/lang/String;
    .end local v14    # "resultNumber":Ljava/lang/Number;
    .end local v15    # "resultTimeUnit":Landroid/icu/util/TimeUnit;
    .local v20, "timeUnit$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v21

    #@26
    if-eqz v21, :cond_7

    #@28
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v19

    #@2c
    check-cast v19, Landroid/icu/util/TimeUnit;

    #@2e
    .line 271
    .local v19, "timeUnit":Landroid/icu/util/TimeUnit;
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    #@32
    move-object/from16 v21, v0

    #@34
    move-object/from16 v0, v21

    #@36
    move-object/from16 v1, v19

    #@38
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Ljava/util/Map;

    #@3e
    .line 272
    .local v4, "countToPattern":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@41
    move-result-object v21

    #@42
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v13

    #@46
    .local v13, "patternEntry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v21

    #@4a
    if-eqz v21, :cond_1

    #@4c
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v12

    #@50
    check-cast v12, Ljava/util/Map$Entry;

    #@52
    .line 273
    .local v12, "patternEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/Object;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    check-cast v2, Ljava/lang/String;

    #@58
    .line 274
    .local v2, "count":Ljava/lang/String;
    const/16 v16, 0x0

    #@5a
    .local v16, "styl":I
    :goto_0
    const/16 v21, 0x2

    #@5c
    move/from16 v0, v16

    #@5e
    move/from16 v1, v21

    #@60
    if-ge v0, v1, :cond_2

    #@62
    .line 275
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@65
    move-result-object v21

    #@66
    check-cast v21, [Ljava/lang/Object;

    #@68
    aget-object v11, v21, v16

    #@6a
    check-cast v11, Landroid/icu/text/MessageFormat;

    #@6c
    .line 276
    .local v11, "pattern":Landroid/icu/text/MessageFormat;
    const/16 v21, -0x1

    #@6e
    move-object/from16 v0, p2

    #@70
    move/from16 v1, v21

    #@72
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@75
    .line 277
    move-object/from16 v0, p2

    #@77
    invoke-virtual {v0, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    #@7a
    .line 279
    move-object/from16 v0, p1

    #@7c
    move-object/from16 v1, p2

    #@7e
    invoke-virtual {v11, v0, v1}, Landroid/icu/text/MessageFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    #@81
    move-result-object v10

    #@82
    .line 280
    .local v10, "parsed":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@85
    move-result v21

    #@86
    const/16 v22, -0x1

    #@88
    move/from16 v0, v21

    #@8a
    move/from16 v1, v22

    #@8c
    if-ne v0, v1, :cond_3

    #@8e
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@91
    move-result v21

    #@92
    move/from16 v0, v21

    #@94
    if-ne v0, v8, :cond_4

    #@96
    .line 274
    .end local v10    # "parsed":Ljava/lang/Object;
    :cond_3
    :goto_1
    add-int/lit8 v16, v16, 0x1

    #@98
    goto :goto_0

    #@99
    .line 284
    .restart local v10    # "parsed":Ljava/lang/Object;
    :cond_4
    const/16 v17, 0x0

    #@9b
    .local v17, "temp":Ljava/lang/Number;
    move-object/from16 v21, v10

    #@9d
    .line 285
    check-cast v21, [Ljava/lang/Object;

    #@9f
    move-object/from16 v0, v21

    #@a1
    array-length v0, v0

    #@a2
    move/from16 v21, v0

    #@a4
    if-eqz v21, :cond_5

    #@a6
    .line 289
    check-cast v10, [Ljava/lang/Object;

    #@a8
    .end local v10    # "parsed":Ljava/lang/Object;
    const/16 v21, 0x0

    #@aa
    aget-object v18, v10, v21

    #@ac
    .line 290
    .local v18, "tempObj":Ljava/lang/Object;
    move-object/from16 v0, v18

    #@ae
    instance-of v0, v0, Ljava/lang/Number;

    #@b0
    move/from16 v21, v0

    #@b2
    if-eqz v21, :cond_6

    #@b4
    move-object/from16 v17, v18

    #@b6
    .line 291
    check-cast v17, Ljava/lang/Number;

    #@b8
    .line 303
    .end local v17    # "temp":Ljava/lang/Number;
    .end local v18    # "tempObj":Ljava/lang/Object;
    :cond_5
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@bb
    move-result v21

    #@bc
    sub-int v9, v21, v8

    #@be
    .line 304
    .local v9, "parseDistance":I
    if-le v9, v6, :cond_3

    #@c0
    .line 305
    move-object/from16 v14, v17

    #@c2
    .line 306
    .local v14, "resultNumber":Ljava/lang/Number;
    move-object/from16 v15, v19

    #@c4
    .line 307
    .local v15, "resultTimeUnit":Landroid/icu/util/TimeUnit;
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@c7
    move-result v7

    #@c8
    .line 308
    move v6, v9

    #@c9
    .line 309
    move-object v3, v2

    #@ca
    .local v3, "countOfLongestMatch":Ljava/lang/String;
    goto :goto_1

    #@cb
    .line 297
    .end local v3    # "countOfLongestMatch":Ljava/lang/String;
    .end local v9    # "parseDistance":I
    .end local v14    # "resultNumber":Ljava/lang/Number;
    .end local v15    # "resultTimeUnit":Landroid/icu/util/TimeUnit;
    .restart local v17    # "temp":Ljava/lang/Number;
    .restart local v18    # "tempObj":Ljava/lang/Object;
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@cf
    move-object/from16 v21, v0

    #@d1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d4
    move-result-object v22

    #@d5
    invoke-virtual/range {v21 .. v22}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@d8
    move-result-object v17

    #@d9
    .local v17, "temp":Ljava/lang/Number;
    goto :goto_2

    #@da
    .line 318
    .end local v2    # "count":Ljava/lang/String;
    .end local v4    # "countToPattern":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v11    # "pattern":Landroid/icu/text/MessageFormat;
    .end local v12    # "patternEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v13    # "patternEntry$iterator":Ljava/util/Iterator;
    .end local v16    # "styl":I
    .end local v17    # "temp":Ljava/lang/Number;
    .end local v18    # "tempObj":Ljava/lang/Object;
    .end local v19    # "timeUnit":Landroid/icu/util/TimeUnit;
    :cond_7
    if-nez v14, :cond_8

    #@dc
    if-eqz v6, :cond_8

    #@de
    .line 320
    const-string/jumbo v21, "zero"

    #@e1
    move-object/from16 v0, v21

    #@e3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e6
    move-result v21

    #@e7
    if-eqz v21, :cond_9

    #@e9
    .line 321
    const/16 v21, 0x0

    #@eb
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ee
    move-result-object v14

    #@ef
    .line 332
    :cond_8
    :goto_3
    if-nez v6, :cond_c

    #@f1
    .line 333
    move-object/from16 v0, p2

    #@f3
    invoke-virtual {v0, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    #@f6
    .line 334
    const/16 v21, 0x0

    #@f8
    move-object/from16 v0, p2

    #@fa
    move/from16 v1, v21

    #@fc
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@ff
    .line 335
    const/16 v21, 0x0

    #@101
    return-object v21

    #@102
    .line 322
    :cond_9
    const-string/jumbo v21, "one"

    #@105
    move-object/from16 v0, v21

    #@107
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10a
    move-result v21

    #@10b
    if-eqz v21, :cond_a

    #@10d
    .line 323
    const/16 v21, 0x1

    #@10f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@112
    move-result-object v14

    #@113
    .restart local v14    # "resultNumber":Ljava/lang/Number;
    goto :goto_3

    #@114
    .line 324
    .end local v14    # "resultNumber":Ljava/lang/Number;
    :cond_a
    const-string/jumbo v21, "two"

    #@117
    move-object/from16 v0, v21

    #@119
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11c
    move-result v21

    #@11d
    if-eqz v21, :cond_b

    #@11f
    .line 325
    const/16 v21, 0x2

    #@121
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@124
    move-result-object v14

    #@125
    .restart local v14    # "resultNumber":Ljava/lang/Number;
    goto :goto_3

    #@126
    .line 329
    .end local v14    # "resultNumber":Ljava/lang/Number;
    :cond_b
    const/16 v21, 0x3

    #@128
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12b
    move-result-object v14

    #@12c
    .restart local v14    # "resultNumber":Ljava/lang/Number;
    goto :goto_3

    #@12d
    .line 337
    .end local v14    # "resultNumber":Ljava/lang/Number;
    :cond_c
    move-object/from16 v0, p2

    #@12f
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@132
    .line 338
    const/16 v21, -0x1

    #@134
    move-object/from16 v0, p2

    #@136
    move/from16 v1, v21

    #@138
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@13b
    .line 339
    new-instance v21, Landroid/icu/util/TimeUnitAmount;

    #@13d
    move-object/from16 v0, v21

    #@13f
    invoke-direct {v0, v14, v15}, Landroid/icu/util/TimeUnitAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/TimeUnit;)V

    #@142
    return-object v21

    #@143
    .line 298
    .restart local v2    # "count":Ljava/lang/String;
    .restart local v4    # "countToPattern":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .restart local v11    # "pattern":Landroid/icu/text/MessageFormat;
    .restart local v12    # "patternEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/Object;>;"
    .restart local v13    # "patternEntry$iterator":Ljava/util/Iterator;
    .restart local v16    # "styl":I
    .local v17, "temp":Ljava/lang/Number;
    .restart local v18    # "tempObj":Ljava/lang/Object;
    .restart local v19    # "timeUnit":Landroid/icu/util/TimeUnit;
    :catch_0
    move-exception v5

    #@144
    .local v5, "e":Ljava/text/ParseException;
    goto/16 :goto_1
.end method

.method public setLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeUnitFormat;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 190
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@6
    invoke-virtual {v0, p1}, Landroid/icu/text/MeasureFormat;->withLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@c
    .line 193
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@f
    .line 194
    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@11
    .line 195
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    #@14
    .line 197
    :cond_0
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Landroid/icu/text/TimeUnitFormat;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 208
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeUnitFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;
    .locals 2
    .param p1, "format"    # Landroid/icu/text/NumberFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 221
    return-object p0

    #@5
    .line 223
    :cond_0
    if-nez p1, :cond_2

    #@7
    .line 224
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 225
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    #@e
    .line 226
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@10
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->withLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@1a
    .line 235
    :goto_0
    return-object p0

    #@1b
    .line 228
    :cond_1
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    #@1d
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@23
    .line 229
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@25
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@27
    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->withNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@2d
    goto :goto_0

    #@2e
    .line 232
    :cond_2
    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@30
    .line 233
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@32
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    #@34
    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->withNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@3a
    goto :goto_0
.end method
