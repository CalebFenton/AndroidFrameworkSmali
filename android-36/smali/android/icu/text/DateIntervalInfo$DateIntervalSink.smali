.class final Landroid/icu/text/DateIntervalInfo$DateIntervalSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateIntervalInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateIntervalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DateIntervalSink"
.end annotation


# static fields
.field private static final greylist-max-o ACCEPTED_PATTERN_LETTERS:Ljava/lang/String; = "GyMdahHmsS"

.field private static final greylist-max-o DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

.field private static final greylist-max-o DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;


# instance fields
.field greylist-max-o dateIntervalInfo:Landroid/icu/text/DateIntervalInfo;

.field greylist-max-o nextCalendarType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/LOCALE/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/icu/text/DateIntervalInfo;->-$$Nest$sfgetCALENDAR_KEY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/icu/text/DateIntervalInfo;->-$$Nest$sfgetINTERVAL_FORMATS_KEY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/text/DateIntervalInfo;)V
    .registers 2
    .param p1, "dateIntervalInfo"    # Landroid/icu/text/DateIntervalInfo;

    .line 429
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 430
    iput-object p1, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->dateIntervalInfo:Landroid/icu/text/DateIntervalInfo;

    .line 431
    return-void
.end method

.method private greylist-max-o getCalendarTypeFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 506
    sget-object v0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;

    .line 507
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 508
    sget-object v0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 509
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 508
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 511
    :cond_26
    new-instance v0, Landroid/icu/util/ICUException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed \'intervalFormat\' alias path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o setIntervalPatternIfAbsent(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)V
    .registers 7
    .param p1, "currentSkeleton"    # Ljava/lang/String;
    .param p2, "lrgDiffCalUnit"    # Ljava/lang/String;
    .param p3, "intervalPattern"    # Landroid/icu/impl/UResource$Value;

    .line 551
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->dateIntervalInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-static {v0}, Landroid/icu/text/DateIntervalInfo;->-$$Nest$fgetfIntervalPatterns(Landroid/icu/text/DateIntervalInfo;)Ljava/util/Map;

    move-result-object v0

    .line 552
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 553
    .local v0, "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    if-eqz v0, :cond_14

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 555
    :cond_14
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->dateIntervalInfo:Landroid/icu/text/DateIntervalInfo;

    .line 556
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-static {v1, p1, p2, v2}, Landroid/icu/text/DateIntervalInfo;->-$$Nest$msetIntervalPatternInternally(Landroid/icu/text/DateIntervalInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 558
    :cond_1d
    return-void
.end method

.method private greylist-max-o validateAndProcessPatternLetter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "patternLetter"    # Ljava/lang/CharSequence;

    .line 521
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    return-object v2

    .line 524
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 525
    .local v1, "letter":C
    const-string v3, "GyMdahHmsS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0x42

    if-gez v3, :cond_1b

    if-eq v1, v4, :cond_1b

    .line 526
    return-object v2

    .line 530
    :cond_1b
    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v0, :cond_2d

    .line 531
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object p1, v0, v2

    .line 536
    :cond_2d
    if-ne v1, v4, :cond_35

    .line 537
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object p1, v0, v2

    .line 540
    :cond_35
    return-object p1
.end method


# virtual methods
.method public greylist-max-o getAndResetNextCalendarType()Ljava/lang/String;
    .registers 3

    .line 489
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->nextCalendarType:Ljava/lang/String;

    .line 490
    .local v0, "tmpCalendarType":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->nextCalendarType:Ljava/lang/String;

    .line 491
    return-object v0
.end method

.method public greylist-max-o processSkeletonTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 465
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "currentSkeleton":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v1

    .line 467
    .local v1, "patternData":Landroid/icu/impl/UResource$Table;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_9
    invoke-interface {v1, v2, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 468
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v3

    if-nez v3, :cond_22

    .line 470
    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->validateAndProcessPatternLetter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 473
    .local v3, "patternLetter":Ljava/lang/CharSequence;
    if-eqz v3, :cond_22

    .line 475
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "lrgDiffCalUnit":Ljava/lang/String;
    invoke-direct {p0, v0, v4, p2}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->setIntervalPatternIfAbsent(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)V

    .line 467
    .end local v3    # "patternLetter":Ljava/lang/CharSequence;
    .end local v4    # "lrgDiffCalUnit":Ljava/lang/String;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 482
    .end local v2    # "k":I
    :cond_25
    return-void
.end method

.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 10
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 436
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 437
    .local v0, "dateIntervalData":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 438
    invoke-static {}, Landroid/icu/text/DateIntervalInfo;->-$$Nest$sfgetINTERVAL_FORMATS_KEY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 439
    goto :goto_47

    .line 443
    :cond_16
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_28

    .line 445
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->getCalendarTypeFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->nextCalendarType:Ljava/lang/String;

    .line 446
    goto :goto_4a

    .line 448
    :cond_28
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_47

    .line 450
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    .line 451
    .local v2, "skeletonData":Landroid/icu/impl/UResource$Table;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_34
    invoke-interface {v2, v4, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 452
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v5

    if-ne v5, v3, :cond_43

    .line 454
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->processSkeletonTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 451
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 457
    .end local v4    # "j":I
    :cond_46
    goto :goto_4a

    .line 437
    .end local v2    # "skeletonData":Landroid/icu/impl/UResource$Table;
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 460
    .end local v1    # "i":I
    :cond_4a
    :goto_4a
    return-void
.end method
