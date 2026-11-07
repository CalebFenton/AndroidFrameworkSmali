.class final Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
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
    name = "PadPrinterParserDecorator"
.end annotation


# instance fields
.field private final greylist-max-o padChar:C

.field private final greylist-max-o padWidth:I

.field private final greylist-max-o printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V
    .registers 4
    .param p1, "printerParser"    # Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .param p2, "padWidth"    # I
    .param p3, "padChar"    # C

    .line 2505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2507
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2508
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 2509
    iput-char p3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 2510
    return-void
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 8
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2514
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2515
    .local v0, "preLen":I
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v1, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2516
    const/4 v1, 0x0

    return v1

    .line 2518
    :cond_e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2519
    .local v1, "len":I
    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    if-gt v1, v2, :cond_27

    .line 2523
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_25

    .line 2524
    iget-char v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p2, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2523
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2526
    .end local v2    # "i":I
    :cond_25
    const/4 v2, 0x1

    return v2

    .line 2520
    :cond_27
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot print as output of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " characters exceeds pad width of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 9
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2532
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    .line 2534
    .local v0, "strict":Z
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p3, v1, :cond_49

    .line 2537
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p3, v1, :cond_12

    .line 2538
    not-int v1, p3

    return v1

    .line 2540
    :cond_12
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    add-int/2addr v1, p3

    .line 2541
    .local v1, "endPos":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_23

    .line 2542
    if-eqz v0, :cond_1f

    .line 2543
    not-int v2, p3

    return v2

    .line 2545
    :cond_1f
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2547
    :cond_23
    move v2, p3

    .line 2548
    .local v2, "pos":I
    :goto_24
    if-ge v2, v1, :cond_35

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-char v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p1, v3, v4}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2549
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 2551
    :cond_35
    const/4 v3, 0x0

    invoke-interface {p2, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2552
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v3, p1, p2, v2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v3

    .line 2553
    .local v3, "resultPos":I
    if-eq v3, v1, :cond_48

    if-eqz v0, :cond_48

    .line 2554
    add-int v4, p3, v2

    not-int v4, v4

    return v4

    .line 2556
    :cond_48
    return v3

    .line 2535
    .end local v1    # "endPos":I
    .end local v2    # "pos":I
    .end local v3    # "resultPos":I
    :cond_49
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pad("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    const/16 v2, 0x20

    if-ne v1, v2, :cond_26

    const-string v1, ")"

    goto :goto_41

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
