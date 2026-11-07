.class Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoneIdPrinterParser"
.end annotation


# static fields
.field private static volatile greylist-max-o cachedPrefixTree:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o cachedPrefixTreeCI:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o description:Ljava/lang/String;

.field private final greylist-max-o query:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V
    .registers 3
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4387
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<Ljava/time/ZoneId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4388
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljava/time/temporal/TemporalQuery;

    .line 4389
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    .line 4390
    return-void
.end method

.method private greylist-max-o parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "prefixPos"    # I
    .param p4, "position"    # I
    .param p5, "parser"    # Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 4500
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 4501
    .local v0, "prefix":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p4, v1, :cond_1a

    .line 4502
    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 4503
    return p4

    .line 4507
    :cond_1a
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_36

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 4508
    const-string v1, "GMT0"

    invoke-static {v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 4509
    add-int/lit8 v1, p4, 0x1

    return v1

    .line 4513
    :cond_36
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_7b

    .line 4514
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_7b

    .line 4519
    :cond_49
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v1

    .line 4520
    .local v1, "newContext":Ljava/time/format/DateTimeParseContext;
    invoke-virtual {p5, v1, p2, p4}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 4522
    .local v2, "endPos":I
    if-gez v2, :cond_61

    .line 4523
    :try_start_53
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    if-ne p5, v3, :cond_59

    .line 4524
    not-int v3, p3

    return v3

    .line 4526
    :cond_59
    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 4527
    return p4

    .line 4529
    :cond_61
    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v3}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    .line 4530
    .local v3, "offset":I
    invoke-static {v3}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v4

    .line 4531
    .local v4, "zoneOffset":Ljava/time/ZoneOffset;
    invoke-static {v0, v4}, Ljava/time/ZoneId;->ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V
    :try_end_77
    .catch Ljava/time/DateTimeException; {:try_start_53 .. :try_end_77} :catch_78

    .line 4532
    return v2

    .line 4533
    .end local v3    # "offset":I
    .end local v4    # "zoneOffset":Ljava/time/ZoneOffset;
    :catch_78
    move-exception v3

    .line 4534
    .local v3, "dte":Ljava/time/DateTimeException;
    not-int v4, p3

    return v4

    .line 4515
    .end local v1    # "newContext":Ljava/time/format/DateTimeParseContext;
    .end local v2    # "endPos":I
    .end local v3    # "dte":Ljava/time/DateTimeException;
    :cond_7b
    :goto_7b
    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 4516
    return p4
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4394
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 4395
    .local v0, "zone":Ljava/time/ZoneId;
    if-nez v0, :cond_c

    .line 4396
    const/4 v1, 0x0

    return v1

    .line 4398
    :cond_c
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4399
    const/4 v1, 0x1

    return v1
.end method

.method protected greylist-max-o getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 8
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .line 4410
    invoke-static {}, Ljava/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v0

    .line 4411
    .local v0, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 4412
    .local v1, "regionIdsSize":I
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4413
    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_13

    :cond_11
    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    .line 4414
    .local v2, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    :goto_13
    if-eqz v2, :cond_21

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_56

    .line 4415
    :cond_21
    monitor-enter p0

    .line 4416
    :try_start_22
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_2d

    :cond_2b
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    :goto_2d
    move-object v2, v3

    .line 4417
    if-eqz v2, :cond_3c

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_55

    .line 4418
    :cond_3c
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/util/Set;Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 4419
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 4420
    sput-object v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_55

    .line 4422
    :cond_53
    sput-object v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    .line 4425
    :cond_55
    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_22 .. :try_end_56} :catchall_5d

    .line 4427
    :cond_56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    return-object v3

    .line 4425
    :catchall_5d
    move-exception v3

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v3
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 14
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 4437
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4438
    .local v0, "length":I
    if-gt p3, v0, :cond_103

    .line 4441
    if-ne p3, v0, :cond_a

    .line 4442
    not-int v1, p3

    return v1

    .line 4446
    :cond_a
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 4447
    .local v1, "nextChar":C
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_f7

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1b

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    goto/16 :goto_fa

    .line 4449
    :cond_1b
    add-int/lit8 v2, p3, 0x2

    if-lt v0, v2, :cond_c7

    .line 4450
    add-int/lit8 v2, p3, 0x1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 4451
    .local v2, "nextNextChar":C
    const/16 v3, 0x55

    invoke-virtual {p1, v1, v3}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    const/16 v4, 0x54

    if-eqz v3, :cond_70

    invoke-virtual {p1, v2, v4}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 4452
    add-int/lit8 v3, p3, 0x3

    if-lt v0, v3, :cond_60

    add-int/lit8 v3, p3, 0x2

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x43

    invoke-virtual {p1, v3, v4}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 4456
    instance-of v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    if-nez v3, :cond_5b

    .line 4457
    add-int/lit8 v8, p3, 0x3

    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .local v5, "context":Ljava/time/format/DateTimeParseContext;
    .local v6, "text":Ljava/lang/CharSequence;
    .local v7, "position":I
    invoke-direct/range {v4 .. v9}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result p1

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    .end local v7    # "position":I
    .local v4, "context":Ljava/time/format/DateTimeParseContext;
    .local v5, "text":Ljava/lang/CharSequence;
    .local v6, "position":I
    return p1

    .line 4456
    .end local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "position":I
    .restart local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_5b
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local v5    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "position":I
    goto/16 :goto_ca

    .line 4452
    .end local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "position":I
    .restart local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_60
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 4460
    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local v5    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "position":I
    add-int/lit8 v7, v6, 0x2

    sget-object v8, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result p1

    move v7, v6

    move-object v6, v5

    move-object v5, v4

    .end local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .local v5, "context":Ljava/time/format/DateTimeParseContext;
    .local v6, "text":Ljava/lang/CharSequence;
    .restart local v7    # "position":I
    return p1

    .line 4451
    .end local v5    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v6    # "text":Ljava/lang/CharSequence;
    .end local v7    # "position":I
    .restart local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_70
    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 4462
    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v5    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local v6    # "text":Ljava/lang/CharSequence;
    .restart local v7    # "position":I
    const/16 p1, 0x47

    invoke-virtual {v5, v1, p1}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result p1

    if-eqz p1, :cond_c3

    add-int/lit8 p3, v7, 0x3

    if-lt v0, p3, :cond_c3

    .line 4463
    const/16 p1, 0x4d

    invoke-virtual {v5, v2, p1}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result p1

    if-eqz p1, :cond_bf

    add-int/lit8 p3, v7, 0x2

    invoke-interface {v6, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v5, p1, v4}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 4464
    add-int/lit8 p3, v7, 0x4

    if-lt v0, p3, :cond_b1

    add-int/lit8 p3, v7, 0x3

    invoke-interface {v6, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x30

    invoke-virtual {v5, p1, p2}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 4465
    const-string p1, "GMT0"

    invoke-static {p1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 4466
    add-int/lit8 p3, v7, 0x4

    return p3

    .line 4468
    :cond_b1
    add-int/lit8 p3, v7, 0x3

    sget-object v8, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v3, p0

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, p3

    .end local v7    # "position":I
    .restart local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .local v5, "text":Ljava/lang/CharSequence;
    .local v6, "position":I
    invoke-direct/range {v3 .. v8}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result p1

    return p1

    .line 4463
    .end local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .local v5, "context":Ljava/time/format/DateTimeParseContext;
    .local v6, "text":Ljava/lang/CharSequence;
    .restart local v7    # "position":I
    :cond_bf
    move-object v4, v5

    move-object v5, v6

    move v6, v7

    .end local v7    # "position":I
    .restart local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .local v5, "text":Ljava/lang/CharSequence;
    .local v6, "position":I
    goto :goto_ca

    .line 4462
    .end local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .local v5, "context":Ljava/time/format/DateTimeParseContext;
    .local v6, "text":Ljava/lang/CharSequence;
    .restart local v7    # "position":I
    :cond_c3
    move-object v4, v5

    move-object v5, v6

    move v6, v7

    .end local v7    # "position":I
    .restart local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .local v5, "text":Ljava/lang/CharSequence;
    .local v6, "position":I
    goto :goto_ca

    .line 4449
    .end local v2    # "nextNextChar":C
    .end local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "position":I
    .restart local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_c7
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 4473
    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local v5    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "position":I
    :goto_ca
    invoke-virtual {p0, v4}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object p1

    .line 4474
    .local p1, "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 4475
    .local p2, "ppos":Ljava/text/ParsePosition;
    invoke-virtual {p1, v5, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object p3

    .line 4476
    .local p3, "parsedZoneId":Ljava/lang/String;
    if-nez p3, :cond_eb

    .line 4477
    const/16 v2, 0x5a

    invoke-virtual {v4, v1, v2}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 4478
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v4, v2}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 4479
    add-int/lit8 v2, v6, 0x1

    return v2

    .line 4481
    :cond_e9
    not-int v2, v6

    return v2

    .line 4483
    :cond_eb
    invoke-static {p3}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 4484
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    return v2

    .line 4447
    .end local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "position":I
    .local p1, "context":Ljava/time/format/DateTimeParseContext;
    .local p2, "text":Ljava/lang/CharSequence;
    .local p3, "position":I
    :cond_f7
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 4448
    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local v5    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "position":I
    :goto_fa
    sget-object v8, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move v7, v6

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result p1

    return p1

    .line 4439
    .end local v1    # "nextChar":C
    .end local v4    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "position":I
    .restart local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_103
    move-object v4, p1

    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local v4    # "context":Ljava/time/format/DateTimeParseContext;
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 4540
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-object v0
.end method
