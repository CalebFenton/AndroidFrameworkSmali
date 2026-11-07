.class public Landroid/icu/text/TimeUnitFormat;
.super Landroid/icu/text/MeasureFormat;
.source "TimeUnitFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o ABBREVIATED_NAME:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_PATTERN_FOR_DAY:Ljava/lang/String; = "{0} d"

.field private static final greylist-max-o DEFAULT_PATTERN_FOR_HOUR:Ljava/lang/String; = "{0} h"

.field private static final greylist-max-o DEFAULT_PATTERN_FOR_MINUTE:Ljava/lang/String; = "{0} min"

.field private static final greylist-max-o DEFAULT_PATTERN_FOR_MONTH:Ljava/lang/String; = "{0} m"

.field private static final greylist-max-o DEFAULT_PATTERN_FOR_SECOND:Ljava/lang/String; = "{0} s"

.field private static final greylist-max-o DEFAULT_PATTERN_FOR_WEEK:Ljava/lang/String; = "{0} w"

.field private static final greylist-max-o DEFAULT_PATTERN_FOR_YEAR:Ljava/lang/String; = "{0} y"

.field public static final greylist-max-o FULL_NAME:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TOTAL_STYLES:I = 0x2

.field private static final whitelist serialVersionUID:J = -0x3374a809c751fb09L


# instance fields
.field private greylist-max-o format:Landroid/icu/text/NumberFormat;

.field private transient greylist-max-o isReady:Z

.field private greylist-max-o locale:Landroid/icu/util/ULocale;

.field private transient greylist-max-o pluralRules:Landroid/icu/text/PluralRules;

.field private greylist-max-o style:I

.field private transient greylist-max-o timeUnitToCountToPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 115
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 125
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/ULocale;I)V
    .registers 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    if-nez p2, :cond_5

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    :goto_7
    invoke-direct {p0, p1, v0}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)V

    .line 148
    invoke-super {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormatInternal()Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    .line 149
    if-ltz p2, :cond_1b

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1b

    .line 152
    iput p2, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    .line 154
    return-void

    .line 150
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style should be either FULL_NAME or ABBREVIATED_NAME style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/util/ULocale;ILandroid/icu/text/NumberFormat;)V
    .registers 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # I
    .param p3, "numberFormat"    # Landroid/icu/text/NumberFormat;

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 158
    if-eqz p3, :cond_e

    .line 159
    invoke-virtual {p3}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    invoke-virtual {p0, v0}, Landroid/icu/text/TimeUnitFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;

    .line 161
    :cond_e
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeUnitFormat;-><init>(Ljava/util/Locale;I)V

    .line 135
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;I)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "style"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 170
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 580
    new-instance v0, Landroid/icu/text/TimeUnitFormat;

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    iget v2, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    iget-object v3, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;ILandroid/icu/text/NumberFormat;)V

    return-object v0
.end method

.method private greylist-max-o searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 19
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 494
    .local p6, "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    .line 495
    .local v0, "parentLocale":Landroid/icu/util/ULocale;
    invoke-virtual {p3}, Landroid/icu/util/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    .line 496
    .end local v0    # "parentLocale":Landroid/icu/util/ULocale;
    .local v8, "srcTimeUnitName":Ljava/lang/String;
    .local v9, "parentLocale":Landroid/icu/util/ULocale;
    :goto_d
    const/4 v0, 0x2

    if-eqz v9, :cond_42

    .line 499
    :try_start_10
    const-string v1, "android/icu/impl/data/icudata/unit"

    invoke-static {v1, v9}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 501
    .local v1, "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 502
    .end local v1    # "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    .local v2, "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v2, v8}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 503
    .local v1, "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v1, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "pattern":Ljava/lang/String;
    new-instance v4, Landroid/icu/text/MessageFormat;

    iget-object v10, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v4, v3, v10}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 505
    .local v4, "messageFormat":Landroid/icu/text/MessageFormat;
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 506
    .local v10, "pair":[Ljava/lang/Object;
    if-nez v10, :cond_39

    .line 507
    new-array v0, v0, [Ljava/lang/Object;

    move-object v10, v0

    .line 508
    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_39
    aput-object v4, v10, p2
    :try_end_3b
    .catch Ljava/util/MissingResourceException; {:try_start_10 .. :try_end_3b} :catch_3c

    .line 511
    return-void

    .line 512
    .end local v1    # "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "pattern":Ljava/lang/String;
    .end local v4    # "messageFormat":Landroid/icu/text/MessageFormat;
    .end local v10    # "pair":[Ljava/lang/Object;
    :catch_3c
    move-exception v0

    .line 514
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    move-result-object v9

    goto :goto_d

    .line 518
    :cond_42
    if-nez v9, :cond_66

    const-string v1, "unitsShort"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 519
    const-string v2, "units"

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 520
    move-object v10, v6

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 521
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, p2

    if-eqz v2, :cond_67

    .line 522
    return-void

    .line 518
    :cond_66
    move-object v10, v6

    .line 527
    :cond_67
    const-string v2, "other"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 529
    const/4 v2, 0x0

    .line 530
    .local v2, "messageFormat":Landroid/icu/text/MessageFormat;
    sget-object v3, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    if-ne p3, v3, :cond_7f

    .line 531
    new-instance v3, Landroid/icu/text/MessageFormat;

    const-string v6, "{0} s"

    iget-object v11, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v6, v11}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object v2, v3

    goto :goto_d8

    .line 532
    :cond_7f
    sget-object v3, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    if-ne p3, v3, :cond_8e

    .line 533
    new-instance v3, Landroid/icu/text/MessageFormat;

    const-string v6, "{0} min"

    iget-object v11, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v6, v11}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object v2, v3

    goto :goto_d8

    .line 534
    :cond_8e
    sget-object v3, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    if-ne p3, v3, :cond_9d

    .line 535
    new-instance v3, Landroid/icu/text/MessageFormat;

    const-string v6, "{0} h"

    iget-object v11, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v6, v11}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object v2, v3

    goto :goto_d8

    .line 536
    :cond_9d
    sget-object v3, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    if-ne p3, v3, :cond_ac

    .line 537
    new-instance v3, Landroid/icu/text/MessageFormat;

    const-string v6, "{0} w"

    iget-object v11, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v6, v11}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object v2, v3

    goto :goto_d8

    .line 538
    :cond_ac
    sget-object v3, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    if-ne p3, v3, :cond_bb

    .line 539
    new-instance v3, Landroid/icu/text/MessageFormat;

    const-string v6, "{0} d"

    iget-object v11, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v6, v11}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object v2, v3

    goto :goto_d8

    .line 540
    :cond_bb
    sget-object v3, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    if-ne p3, v3, :cond_ca

    .line 541
    new-instance v3, Landroid/icu/text/MessageFormat;

    const-string v6, "{0} m"

    iget-object v11, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v6, v11}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object v2, v3

    goto :goto_d8

    .line 542
    :cond_ca
    sget-object v3, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    if-ne p3, v3, :cond_d8

    .line 543
    new-instance v3, Landroid/icu/text/MessageFormat;

    const-string v6, "{0} y"

    iget-object v11, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v6, v11}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object v2, v3

    .line 545
    :cond_d8
    :goto_d8
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 546
    .local v3, "pair":[Ljava/lang/Object;
    if-nez v3, :cond_e5

    .line 547
    new-array v3, v0, [Ljava/lang/Object;

    .line 548
    invoke-interface {v7, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_e5
    aput-object v2, v3, p2

    .line 551
    .end local v2    # "messageFormat":Landroid/icu/text/MessageFormat;
    .end local v3    # "pair":[Ljava/lang/Object;
    goto :goto_f1

    .line 553
    :cond_e8
    const-string v6, "other"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 555
    :goto_f1
    return-void
.end method

.method private greylist-max-o setup()V
    .registers 5

    .line 335
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_21

    .line 336
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    if-eqz v0, :cond_12

    .line 337
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    goto :goto_1a

    .line 339
    :cond_12
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    .line 342
    :goto_1a
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 344
    :cond_21
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_2d

    .line 345
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    .line 347
    :cond_2d
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    .line 349
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v0

    .line 350
    .local v0, "pluralKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    const/4 v2, 0x0

    const-string v3, "units/duration"

    invoke-direct {p0, v3, v1, v2, v0}, Landroid/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    .line 351
    const-string v1, "unitsShort/duration"

    iget-object v2, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    .line 352
    iput-boolean v3, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    .line 353
    return-void
.end method

.method private greylist-max-o setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V
    .registers 16
    .param p1, "resourceKey"    # Ljava/lang/String;
    .param p3, "style"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 438
    .local p2, "timeUnitToCountToPatterns":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/TimeUnit;Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;>;"
    .local p4, "pluralKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "android/icu/impl/data/icudata/unit"

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 441
    .local v0, "resource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;

    iget-object v2, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v1, p2, p3, p4, v2}, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;-><init>(Ljava/util/Map;ILjava/util/Set;Landroid/icu/util/ULocale;)V

    .line 443
    .local v1, "sink":Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;
    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_14} :catch_15

    .line 445
    .end local v0    # "resource":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "sink":Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;
    goto :goto_16

    .line 444
    :catch_15
    move-exception v0

    .line 464
    :goto_16
    invoke-static {}, Landroid/icu/util/TimeUnit;->values()[Landroid/icu/util/TimeUnit;

    move-result-object v0

    .line 465
    .local v0, "timeUnits":[Landroid/icu/util/TimeUnit;
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v1

    .line 466
    .local v1, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    array-length v3, v0

    if-ge v2, v3, :cond_6e

    .line 469
    aget-object v7, v0, v2

    .line 470
    .local v7, "timeUnit":Landroid/icu/util/TimeUnit;
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 471
    .local v3, "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    if-nez v3, :cond_39

    .line 472
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    move-object v3, v4

    .line 473
    invoke-interface {p2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v3

    goto :goto_3a

    .line 471
    :cond_39
    move-object v10, v3

    .line 475
    .end local v3    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .local v10, "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    :goto_3a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 476
    .local v8, "pluralCount":Ljava/lang/String;
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5f

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, p3

    if-nez v4, :cond_5c

    goto :goto_5f

    :cond_5c
    move-object v5, p1

    move v6, p3

    goto :goto_66

    .line 478
    :cond_5f
    :goto_5f
    move-object v9, v8

    move-object v4, p0

    move-object v5, p1

    move v6, p3

    .end local p1    # "resourceKey":Ljava/lang/String;
    .end local p3    # "style":I
    .local v5, "resourceKey":Ljava/lang/String;
    .local v6, "style":I
    invoke-direct/range {v4 .. v10}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 480
    .end local v8    # "pluralCount":Ljava/lang/String;
    :goto_66
    move-object p1, v5

    move p3, v6

    goto :goto_3e

    .line 475
    .end local v5    # "resourceKey":Ljava/lang/String;
    .end local v6    # "style":I
    .restart local p1    # "resourceKey":Ljava/lang/String;
    .restart local p3    # "style":I
    :cond_69
    move-object v5, p1

    move v6, p3

    .line 466
    .end local v7    # "timeUnit":Landroid/icu/util/TimeUnit;
    .end local v10    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local p1    # "resourceKey":Ljava/lang/String;
    .end local p3    # "style":I
    .restart local v5    # "resourceKey":Ljava/lang/String;
    .restart local v6    # "style":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 482
    .end local v2    # "i":I
    .end local v5    # "resourceKey":Ljava/lang/String;
    .end local v6    # "style":I
    .restart local p1    # "resourceKey":Ljava/lang/String;
    .restart local p3    # "style":I
    :cond_6e
    return-void
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 575
    invoke-super {p0}, Landroid/icu/text/MeasureFormat;->toTimeUnitProxy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    invoke-super {p0}, Landroid/icu/text/MeasureFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeUnitFormat;

    .line 567
    .local v0, "result":Landroid/icu/text/TimeUnitFormat;
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    iput-object v1, v0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    .line 568
    return-object v0
.end method

.method public whitelist test-api getNumberFormat()Landroid/icu/text/NumberFormat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method blacklist getNumberFormatInternal()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method blacklist getNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeUnitAmount;

    move-result-object p1

    return-object p1
.end method

.method public blacklist parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeUnitAmount;
    .registers 26
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-boolean v0, v1, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    if-nez v0, :cond_b

    .line 250
    invoke-direct {v1}, Landroid/icu/text/TimeUnitFormat;->setup()V

    .line 252
    :cond_b
    const/4 v0, 0x0

    .line 253
    .local v0, "resultNumber":Ljava/lang/Number;
    const/4 v3, 0x0

    .line 254
    .local v3, "resultTimeUnit":Landroid/icu/util/TimeUnit;
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 255
    .local v4, "oldPos":I
    const/4 v5, -0x1

    .line 256
    .local v5, "newPos":I
    const/4 v6, 0x0

    .line 257
    .local v6, "longestParseDistance":I
    const/4 v7, 0x0

    .line 261
    .local v7, "countOfLongestMatch":Ljava/lang/String;
    iget-object v8, v1, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x2

    const/4 v12, -0x1

    if-eqz v9, :cond_e1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/util/TimeUnit;

    .line 262
    .local v9, "timeUnit":Landroid/icu/util/TimeUnit;
    iget-object v13, v1, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 263
    .local v13, "countToPattern":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_db

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 264
    .local v15, "patternEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/Object;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 265
    .local v16, "count":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v11, v17

    const/16 v18, 0x0

    move-object/from16 v17, v7

    move v7, v6

    move v6, v5

    move-object v5, v3

    move-object v3, v0

    .end local v0    # "resultNumber":Ljava/lang/Number;
    .local v3, "resultNumber":Ljava/lang/Number;
    .local v5, "resultTimeUnit":Landroid/icu/util/TimeUnit;
    .local v6, "newPos":I
    .local v7, "longestParseDistance":I
    .local v11, "styl":I
    .local v17, "countOfLongestMatch":Ljava/lang/String;
    :goto_5a
    if-ge v11, v10, :cond_c9

    .line 266
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v11

    move/from16 v19, v10

    move-object v10, v0

    check-cast v10, Landroid/icu/text/MessageFormat;

    .line 267
    .local v10, "pattern":Landroid/icu/text/MessageFormat;
    invoke-virtual {v2, v12}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 268
    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 270
    move-object/from16 v12, p1

    invoke-virtual {v10, v12, v2}, Landroid/icu/text/MessageFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v20

    .line 271
    .local v20, "parsed":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    move-object/from16 v21, v3

    const/4 v3, -0x1

    .end local v3    # "resultNumber":Ljava/lang/Number;
    .local v21, "resultNumber":Ljava/lang/Number;
    if-ne v0, v3, :cond_bf

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ne v0, v4, :cond_85

    .line 273
    goto :goto_bf

    .line 275
    :cond_85
    const/4 v3, 0x0

    .line 276
    .local v3, "temp":Ljava/lang/Number;
    move-object/from16 v0, v20

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-eqz v0, :cond_ac

    .line 280
    move-object/from16 v0, v20

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v22, v3

    .end local v3    # "temp":Ljava/lang/Number;
    .local v22, "temp":Ljava/lang/Number;
    aget-object v3, v0, v18

    .line 281
    .local v3, "tempObj":Ljava/lang/Object;
    instance-of v0, v3, Ljava/lang/Number;

    if-eqz v0, :cond_9e

    .line 282
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    .end local v22    # "temp":Ljava/lang/Number;
    .local v0, "temp":Ljava/lang/Number;
    goto :goto_ae

    .line 288
    .end local v0    # "temp":Ljava/lang/Number;
    .restart local v22    # "temp":Ljava/lang/Number;
    :cond_9e
    :try_start_9e
    iget-object v0, v1, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0
    :try_end_a8
    .catch Ljava/text/ParseException; {:try_start_9e .. :try_end_a8} :catch_aa

    .line 291
    .end local v22    # "temp":Ljava/lang/Number;
    .restart local v0    # "temp":Ljava/lang/Number;
    move-object v3, v0

    goto :goto_ae

    .line 289
    .end local v0    # "temp":Ljava/lang/Number;
    .restart local v22    # "temp":Ljava/lang/Number;
    :catch_aa
    move-exception v0

    .line 290
    .local v0, "e":Ljava/text/ParseException;
    goto :goto_bf

    .line 276
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v22    # "temp":Ljava/lang/Number;
    .local v3, "temp":Ljava/lang/Number;
    :cond_ac
    move-object/from16 v22, v3

    .line 294
    :goto_ae
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    sub-int/2addr v0, v4

    .line 295
    .local v0, "parseDistance":I
    if-le v0, v7, :cond_bf

    .line 296
    move-object v1, v3

    .line 297
    .end local v21    # "resultNumber":Ljava/lang/Number;
    .local v1, "resultNumber":Ljava/lang/Number;
    move-object v5, v9

    .line 298
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 299
    move v7, v0

    .line 300
    move-object/from16 v17, v16

    goto :goto_c1

    .line 265
    .end local v0    # "parseDistance":I
    .end local v1    # "resultNumber":Ljava/lang/Number;
    .end local v3    # "temp":Ljava/lang/Number;
    .end local v10    # "pattern":Landroid/icu/text/MessageFormat;
    .end local v20    # "parsed":Ljava/lang/Object;
    .restart local v21    # "resultNumber":Ljava/lang/Number;
    :cond_bf
    :goto_bf
    move-object/from16 v3, v21

    .end local v21    # "resultNumber":Ljava/lang/Number;
    .local v3, "resultNumber":Ljava/lang/Number;
    :goto_c1
    add-int/lit8 v11, v11, 0x1

    const/4 v12, -0x1

    move-object/from16 v1, p0

    move/from16 v10, v19

    goto :goto_5a

    :cond_c9
    move-object/from16 v12, p1

    move-object/from16 v21, v3

    move/from16 v19, v10

    .line 303
    .end local v3    # "resultNumber":Ljava/lang/Number;
    .end local v11    # "styl":I
    .end local v15    # "patternEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v16    # "count":Ljava/lang/String;
    .restart local v21    # "resultNumber":Ljava/lang/Number;
    const/4 v12, -0x1

    move-object/from16 v1, p0

    move-object v3, v5

    move v5, v6

    move v6, v7

    move-object/from16 v7, v17

    move-object/from16 v0, v21

    goto/16 :goto_3c

    .line 263
    .end local v17    # "countOfLongestMatch":Ljava/lang/String;
    .end local v21    # "resultNumber":Ljava/lang/Number;
    .local v0, "resultNumber":Ljava/lang/Number;
    .local v3, "resultTimeUnit":Landroid/icu/util/TimeUnit;
    .local v5, "newPos":I
    .local v6, "longestParseDistance":I
    .local v7, "countOfLongestMatch":Ljava/lang/String;
    :cond_db
    move-object/from16 v12, p1

    .line 304
    .end local v9    # "timeUnit":Landroid/icu/util/TimeUnit;
    .end local v13    # "countToPattern":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    goto/16 :goto_1e

    .line 309
    :cond_e1
    move-object/from16 v12, p1

    move/from16 v19, v10

    const/16 v18, 0x0

    if-nez v0, :cond_118

    if-eqz v6, :cond_118

    .line 311
    const-string v1, "zero"

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 312
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_118

    .line 313
    :cond_f8
    const-string v1, "one"

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 314
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_118

    .line 315
    :cond_106
    const-string v1, "two"

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 316
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_118

    .line 320
    :cond_113
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 323
    :cond_118
    :goto_118
    if-nez v6, :cond_124

    .line 324
    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 325
    move/from16 v1, v18

    invoke-virtual {v2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 326
    const/4 v1, 0x0

    return-object v1

    .line 328
    :cond_124
    invoke-virtual {v2, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 329
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 330
    new-instance v1, Landroid/icu/util/TimeUnitAmount;

    invoke-direct {v1, v0, v3}, Landroid/icu/util/TimeUnitAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/TimeUnit;)V

    return-object v1
.end method

.method public bridge synthetic whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeUnitAmount;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o setLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeUnitFormat;
    .registers 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 181
    invoke-virtual {p0}, Landroid/icu/text/TimeUnitFormat;->clearCache()V

    .line 182
    return-object p0
.end method

.method public greylist-max-o setLocale(Ljava/util/Locale;)Landroid/icu/text/TimeUnitFormat;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeUnitFormat;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;
    .registers 3
    .param p1, "format"    # Landroid/icu/text/NumberFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    if-ne p1, v0, :cond_5

    .line 206
    return-object p0

    .line 208
    :cond_5
    if-nez p1, :cond_18

    .line 209
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_f

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    goto :goto_1a

    .line 212
    :cond_f
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    goto :goto_1a

    .line 215
    :cond_18
    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    .line 217
    :goto_1a
    invoke-virtual {p0}, Landroid/icu/text/TimeUnitFormat;->clearCache()V

    .line 218
    return-object p0
.end method
