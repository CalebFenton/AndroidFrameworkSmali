.class final Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;
.super Landroid/icu/impl/UResource$Sink;
.source "TimeUnitFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeUnitFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeUnitFormatSetupSink"
.end annotation


# instance fields
.field greylist-max-o beenHere:Z

.field greylist-max-o locale:Landroid/icu/util/ULocale;

.field greylist-max-o pluralKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o style:I

.field greylist-max-o timeUnitToCountToPatterns:Ljava/util/Map;
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
.method constructor greylist-max-o <init>(Ljava/util/Map;ILjava/util/Set;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p2, "style"    # I
    .param p4, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    .line 363
    .local p1, "timeUnitToCountToPatterns":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/TimeUnit;Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;>;"
    .local p3, "pluralKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 364
    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->timeUnitToCountToPatterns:Ljava/util/Map;

    .line 365
    iput p2, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->style:I

    .line 366
    iput-object p3, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->pluralKeywords:Ljava/util/Set;

    .line 367
    iput-object p4, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->locale:Landroid/icu/util/ULocale;

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->beenHere:Z

    .line 369
    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 16
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 374
    iget-boolean v0, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->beenHere:Z

    if-eqz v0, :cond_5

    .line 375
    return-void

    .line 377
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->beenHere:Z

    .line 380
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 381
    .local v0, "units":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 382
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "timeUnitName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 385
    .local v3, "timeUnit":Landroid/icu/util/TimeUnit;
    const-string v4, "year"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 386
    sget-object v3, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    goto :goto_64

    .line 387
    :cond_23
    const-string v4, "month"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 388
    sget-object v3, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    goto :goto_64

    .line 389
    :cond_2e
    const-string v4, "day"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 390
    sget-object v3, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    goto :goto_64

    .line 391
    :cond_39
    const-string v4, "hour"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 392
    sget-object v3, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    goto :goto_64

    .line 393
    :cond_44
    const-string v4, "minute"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 394
    sget-object v3, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    goto :goto_64

    .line 395
    :cond_4f
    const-string v4, "second"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 396
    sget-object v3, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    goto :goto_64

    .line 397
    :cond_5a
    const-string v4, "week"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 398
    sget-object v3, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    .line 403
    :goto_64
    iget-object v4, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 404
    .local v4, "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    if-nez v4, :cond_79

    .line 405
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    move-object v4, v5

    .line 406
    iget-object v5, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_79
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v5

    .line 410
    .local v5, "countsToPatternTable":Landroid/icu/impl/UResource$Table;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_7e
    invoke-interface {v5, v6, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 411
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, "pluralCount":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->pluralKeywords:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_91

    .line 413
    goto :goto_b4

    .line 418
    :cond_91
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 419
    .local v8, "pair":[Ljava/lang/Object;
    if-nez v8, :cond_9f

    .line 420
    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/Object;

    .line 421
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_9f
    iget v9, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->style:I

    aget-object v9, v8, v9

    if-nez v9, :cond_b4

    .line 424
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, "pattern":Ljava/lang/String;
    new-instance v10, Landroid/icu/text/MessageFormat;

    iget-object v11, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v10, v9, v11}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 426
    .local v10, "messageFormat":Landroid/icu/text/MessageFormat;
    iget v11, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->style:I

    aput-object v10, v8, v11

    .line 410
    .end local v7    # "pluralCount":Ljava/lang/String;
    .end local v8    # "pair":[Ljava/lang/Object;
    .end local v9    # "pattern":Ljava/lang/String;
    .end local v10    # "messageFormat":Landroid/icu/text/MessageFormat;
    :cond_b4
    :goto_b4
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 381
    .end local v2    # "timeUnitName":Ljava/lang/String;
    .end local v3    # "timeUnit":Landroid/icu/util/TimeUnit;
    .end local v4    # "countToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v5    # "countsToPatternTable":Landroid/icu/impl/UResource$Table;
    .end local v6    # "j":I
    :cond_b7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 430
    .end local v1    # "i":I
    :cond_bb
    return-void
.end method
