.class final Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
.super Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeekBasedFieldPrinterParser"
.end annotation


# instance fields
.field private greylist-max-o chr:C

.field private greylist-max-o count:I


# direct methods
.method constructor blacklist <init>(CIII)V
    .registers 11
    .param p1, "chr"    # C
    .param p2, "count"    # I
    .param p3, "minWidth"    # I
    .param p4, "maxWidth"    # I

    .line 5047
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "chr":C
    .end local p2    # "count":I
    .end local p3    # "minWidth":I
    .end local p4    # "maxWidth":I
    .local v1, "chr":C
    .local v2, "count":I
    .local v3, "minWidth":I
    .local v4, "maxWidth":I
    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIIII)V

    .line 5048
    return-void
.end method

.method constructor blacklist <init>(CIIII)V
    .registers 12
    .param p1, "chr"    # C
    .param p2, "count"    # I
    .param p3, "minWidth"    # I
    .param p4, "maxWidth"    # I
    .param p5, "subsequentWidth"    # I

    .line 5062
    const/4 v1, 0x0

    sget-object v4, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v5, p5

    .end local p3    # "minWidth":I
    .end local p4    # "maxWidth":I
    .end local p5    # "subsequentWidth":I
    .local v2, "minWidth":I
    .local v3, "maxWidth":I
    .local v5, "subsequentWidth":I
    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    .line 5063
    iput-char p1, v0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    .line 5064
    iput p2, v0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    .line 5065
    return-void
.end method

.method private greylist-max-o printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .registers 12
    .param p1, "locale"    # Ljava/util/Locale;

    .line 5110
    invoke-static {p1}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v0

    .line 5111
    .local v0, "weekDef":Ljava/time/temporal/WeekFields;
    const/4 v1, 0x0

    .line 5112
    .local v1, "field":Ljava/time/temporal/TemporalField;
    iget-char v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    sparse-switch v2, :sswitch_data_60

    .line 5134
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unreachable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5128
    :sswitch_12
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 5129
    move-object v3, v1

    goto :goto_51

    .line 5125
    :sswitch_18
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->dayOfWeek()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 5126
    move-object v3, v1

    goto :goto_51

    .line 5114
    :sswitch_1e
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->weekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v3

    .line 5115
    .end local v1    # "field":Ljava/time/temporal/TemporalField;
    .local v3, "field":Ljava/time/temporal/TemporalField;
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    .line 5116
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    sget-object v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    iget v8, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    const/4 v9, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;ILjava/time/format/DateTimeFormatterBuilder-IA;)V

    return-object v2

    .line 5119
    :cond_35
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    .line 5120
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v5, 0x4

    if-ge v1, v5, :cond_41

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    goto :goto_43

    :cond_41
    sget-object v1, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    :goto_43
    move-object v6, v1

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    const/16 v5, 0x13

    invoke-direct/range {v2 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    .line 5119
    return-object v2

    .line 5131
    .end local v3    # "field":Ljava/time/temporal/TemporalField;
    .restart local v1    # "field":Ljava/time/temporal/TemporalField;
    :sswitch_4c
    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->weekOfMonth()Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 5132
    move-object v3, v1

    .line 5136
    .end local v1    # "field":Ljava/time/temporal/TemporalField;
    .restart local v3    # "field":Ljava/time/temporal/TemporalField;
    :goto_51
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->minWidth:I

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->maxWidth:I

    sget-object v6, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    invoke-direct/range {v2 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    return-object v2

    nop

    :sswitch_data_60
    .sparse-switch
        0x57 -> :sswitch_4c
        0x59 -> :sswitch_1e
        0x63 -> :sswitch_18
        0x65 -> :sswitch_18
        0x77 -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 5094
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 5
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 5099
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 5142
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5143
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5144
    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    const/16 v2, 0x59

    const-string v3, ","

    if-ne v1, v2, :cond_52

    .line 5145
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 5146
    const-string v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 5147
    :cond_1f
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 5148
    const-string v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 5150
    :cond_2a
    const-string v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5151
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5152
    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4c

    sget-object v2, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    goto :goto_4e

    :cond_4c
    sget-object v2, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    :goto_4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 5155
    :cond_52
    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    sparse-switch v1, :sswitch_data_7c

    goto :goto_6a

    .line 5161
    :sswitch_58
    const-string v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5162
    goto :goto_6a

    .line 5158
    :sswitch_5e
    const-string v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5159
    goto :goto_6a

    .line 5164
    :sswitch_64
    const-string v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5165
    nop

    .line 5169
    :goto_6a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5170
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5172
    :goto_72
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_7c
    .sparse-switch
        0x57 -> :sswitch_64
        0x63 -> :sswitch_5e
        0x65 -> :sswitch_5e
        0x77 -> :sswitch_58
    .end sparse-switch
.end method

.method bridge synthetic blacklist withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    .line 5034
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method blacklist withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
    .registers 9

    .line 5074
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 5075
    return-object p0

    .line 5077
    :cond_6
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    iget-char v3, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->minWidth:I

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->maxWidth:I

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIIII)V

    return-object v2
.end method

.method bridge synthetic blacklist withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 5034
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    move-result-object p1

    return-object p1
.end method

.method blacklist withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
    .registers 8
    .param p1, "subsequentWidth"    # I

    .line 5088
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->minWidth:I

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->maxWidth:I

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    add-int/2addr v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIIII)V

    return-object v0
.end method
