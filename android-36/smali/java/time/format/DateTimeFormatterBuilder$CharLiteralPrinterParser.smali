.class final Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
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
    name = "CharLiteralPrinterParser"
.end annotation


# instance fields
.field private final greylist-max-o literal:C


# direct methods
.method constructor greylist-max-o <init>(C)V
    .registers 2
    .param p1, "literal"    # C

    .line 2637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2638
    iput-char p1, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    .line 2639
    return-void
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2643
    iget-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2644
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 8
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2649
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2650
    .local v0, "length":I
    if-ne p3, v0, :cond_8

    .line 2651
    not-int v1, p3

    return v1

    .line 2653
    :cond_8
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2654
    .local v1, "ch":C
    iget-char v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    if-eq v1, v2, :cond_30

    .line 2655
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 2656
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    iget-char v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-eq v2, v3, :cond_30

    .line 2657
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    iget-char v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_30

    .line 2658
    :cond_2e
    not-int v2, p3

    return v2

    .line 2661
    :cond_30
    add-int/lit8 v2, p3, 0x1

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2666
    iget-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_9

    .line 2667
    const-string v0, "\'\'"

    return-object v0

    .line 2669
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
