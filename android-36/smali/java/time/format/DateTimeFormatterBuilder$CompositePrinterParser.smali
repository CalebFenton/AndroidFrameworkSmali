.class final Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompositePrinterParser"
.end annotation


# instance fields
.field private final greylist-max-o optional:Z

.field private final greylist-max-o printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/List;Z)V
    .registers 4
    .param p2, "optional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;Z)V"
        }
    .end annotation

    .line 2408
    .local p1, "printerParsers":Ljava/util/List;, "Ljava/util/List<Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {p0, v0, p2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    .line 2409
    return-void
.end method

.method constructor greylist-max-o <init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V
    .registers 3
    .param p1, "printerParsers"    # [Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .param p2, "optional"    # Z

    .line 2411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2412
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2413
    iput-boolean p2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 2414
    return-void
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 10
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2431
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2432
    .local v0, "length":I
    iget-boolean v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_b

    .line 2433
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->startOptional()V

    .line 2436
    :cond_b
    :try_start_b
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x1

    if-ge v3, v2, :cond_29

    aget-object v5, v1, v3

    .line 2437
    .local v5, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v5, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 2438
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_31

    .line 2439
    nop

    .line 2443
    iget-boolean v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_25

    .line 2444
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    .line 2439
    :cond_25
    return v4

    .line 2436
    .end local v5    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2443
    :cond_29
    iget-boolean v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_30

    .line 2444
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    .line 2447
    :cond_30
    return v4

    .line 2443
    :catchall_31
    move-exception v1

    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_39

    .line 2444
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    .line 2446
    :cond_39
    throw v1
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 10
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2452
    iget-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 2453
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->startOptional()V

    .line 2454
    move v0, p3

    .line 2455
    .local v0, "pos":I
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v3, v2

    move v4, v1

    :goto_d
    if-ge v4, v3, :cond_1e

    aget-object v5, v2, v4

    .line 2456
    .local v5, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v5, p1, p2, v0}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2457
    if-gez v0, :cond_1b

    .line 2458
    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->endOptional(Z)V

    .line 2459
    return p3

    .line 2455
    .end local v5    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2462
    :cond_1e
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->endOptional(Z)V

    .line 2463
    return v0

    .line 2465
    .end local v0    # "pos":I
    :cond_23
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v0

    :goto_26
    if-ge v1, v2, :cond_34

    aget-object v3, v0, v1

    .line 2466
    .local v3, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v3, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result p3

    .line 2467
    if-gez p3, :cond_31

    .line 2468
    goto :goto_34

    .line 2465
    .end local v3    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2471
    :cond_34
    :goto_34
    return p3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 2477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2478
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    if-eqz v1, :cond_2f

    .line 2479
    iget-boolean v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_10

    const-string v1, "["

    goto :goto_12

    :cond_10
    const-string v1, "("

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_23

    aget-object v4, v1, v3

    .line 2481
    .local v4, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2480
    .end local v4    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2483
    :cond_23
    iget-boolean v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_2a

    const-string v1, "]"

    goto :goto_2c

    :cond_2a
    const-string v1, ")"

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2485
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o withOptional(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .registers 4
    .param p1, "optional"    # Z

    .line 2423
    iget-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-ne p1, v0, :cond_5

    .line 2424
    return-object p0

    .line 2426
    :cond_5
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {v0, v1, p1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    return-object v0
.end method
