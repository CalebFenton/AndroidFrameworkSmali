.class final Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
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
    name = "StringLiteralPrinterParser"
.end annotation


# instance fields
.field private final greylist-max-o literal:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "literal"    # Ljava/lang/String;

    .line 2680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2681
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    .line 2682
    return-void
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2686
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2687
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 11
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2692
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2693
    .local v0, "length":I
    if-gt p3, v0, :cond_25

    if-ltz p3, :cond_25

    .line 2696
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    .local v2, "text":Ljava/lang/CharSequence;
    .local v3, "position":I
    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 2697
    not-int p1, v3

    return p1

    .line 2699
    :cond_1c
    iget-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int p3, v3, p1

    return p3

    .line 2693
    .end local v1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "position":I
    .restart local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_25
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2694
    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v1    # "context":Ljava/time/format/DateTimeParseContext;
    .restart local v2    # "text":Ljava/lang/CharSequence;
    .restart local v3    # "position":I
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2704
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    const-string v1, "\'\'"

    const-string v2, "\'"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2705
    .local v0, "converted":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
