.class final Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
.super Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FractionPrinterParser"
.end annotation


# instance fields
.field private final greylist-max-o decimalPoint:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;IIZ)V
    .registers 11
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .line 3170
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "field":Ljava/time/temporal/TemporalField;
    .end local p2    # "minWidth":I
    .end local p3    # "maxWidth":I
    .end local p4    # "decimalPoint":Z
    .local v1, "field":Ljava/time/temporal/TemporalField;
    .local v2, "minWidth":I
    .local v3, "maxWidth":I
    .local v4, "decimalPoint":Z
    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIZI)V

    .line 3171
    const-string p1, "field"

    invoke-static {v1, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3172
    invoke-interface {v1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/temporal/ValueRange;->isFixed()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 3175
    if-ltz v2, :cond_62

    const/16 p1, 0x9

    if-gt v2, p1, :cond_62

    .line 3178
    const/4 p2, 0x1

    if-lt v3, p2, :cond_49

    if-gt v3, p1, :cond_49

    .line 3181
    if-lt v3, v2, :cond_26

    .line 3185
    return-void

    .line 3182
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " < "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3179
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3176
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3173
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Field must have a fixed set of values: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor blacklist <init>(Ljava/time/temporal/TemporalField;IIZI)V
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z
    .param p5, "subsequentWidth"    # I

    .line 3197
    sget-object v4, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    .end local p1    # "field":Ljava/time/temporal/TemporalField;
    .end local p2    # "minWidth":I
    .end local p3    # "maxWidth":I
    .end local p5    # "subsequentWidth":I
    .local v1, "field":Ljava/time/temporal/TemporalField;
    .local v2, "minWidth":I
    .local v3, "maxWidth":I
    .local v5, "subsequentWidth":I
    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    .line 3198
    iput-boolean p4, v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    .line 3199
    return-void
.end method

.method private greylist-max-o convertFromFraction(Ljava/math/BigDecimal;)J
    .registers 8
    .param p1, "fraction"    # Ljava/math/BigDecimal;

    .line 3354
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v0}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 3355
    .local v0, "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3356
    .local v1, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3357
    .local v2, "rangeBD":Ljava/math/BigDecimal;
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3358
    .local v3, "valueBD":Ljava/math/BigDecimal;
    invoke-virtual {v3}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v4

    return-wide v4
.end method

.method private greylist-max-o convertToFraction(J)Ljava/math/BigDecimal;
    .registers 9
    .param p1, "value"    # J

    .line 3327
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v0}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 3328
    .local v0, "range":Ljava/time/temporal/ValueRange;
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, p1, p2, v1}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 3329
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3330
    .local v1, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3331
    .local v2, "rangeBD":Ljava/math/BigDecimal;
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3332
    .local v3, "valueBD":Ljava/math/BigDecimal;
    const/16 v4, 0x9

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v3, v2, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 3334
    .local v4, "fraction":Ljava/math/BigDecimal;
    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_40

    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_44

    :cond_40
    invoke-virtual {v4}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v5

    :goto_44
    return-object v5
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 9
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3242
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3243
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 3244
    const/4 v1, 0x0

    return v1

    .line 3246
    :cond_a
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v1

    .line 3247
    .local v1, "decimalStyle":Ljava/time/format/DecimalStyle;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertToFraction(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3248
    .local v2, "fraction":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    if-nez v3, :cond_3b

    .line 3249
    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-lez v3, :cond_6c

    .line 3250
    iget-boolean v3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v3, :cond_2b

    .line 3251
    invoke-virtual {v1}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3253
    :cond_2b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-ge v3, v4, :cond_3a

    .line 3254
    invoke-virtual {v1}, Ljava/time/format/DecimalStyle;->getZeroDigit()C

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3253
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .end local v3    # "i":I
    :cond_3a
    goto :goto_6c

    .line 3258
    :cond_3b
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3259
    .local v3, "outputScale":I
    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3260
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3261
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3262
    iget-boolean v5, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v5, :cond_69

    .line 3263
    invoke-virtual {v1}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3265
    :cond_69
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3267
    .end local v3    # "outputScale":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_6c
    :goto_6c
    const/4 v3, 0x1

    return v3
.end method

.method blacklist isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .line 3234
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-nez v0, :cond_12

    .line 3235
    const/4 v0, 0x1

    return v0

    .line 3237
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 16
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3272
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_11

    :cond_f
    :goto_f
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    .line 3273
    .local v0, "effectiveMin":I
    :goto_11
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_21

    :cond_1e
    const/16 v1, 0x9

    goto :goto_23

    :cond_21
    :goto_21
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    .line 3274
    .local v1, "effectiveMax":I
    :goto_23
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 3275
    .local v2, "length":I
    if-ne p3, v2, :cond_2f

    .line 3277
    if-lez v0, :cond_2d

    not-int v3, p3

    goto :goto_2e

    :cond_2d
    move v3, p3

    :goto_2e
    return v3

    .line 3279
    :cond_2f
    iget-boolean v3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v3, :cond_4b

    .line 3280
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v4

    if-eq v3, v4, :cond_47

    .line 3282
    if-lez v0, :cond_45

    not-int v3, p3

    goto :goto_46

    :cond_45
    move v3, p3

    :goto_46
    return v3

    .line 3284
    :cond_47
    add-int/lit8 p3, p3, 0x1

    move v7, p3

    goto :goto_4c

    .line 3279
    :cond_4b
    move v7, p3

    .line 3286
    .end local p3    # "position":I
    .local v7, "position":I
    :goto_4c
    add-int p3, v7, v0

    .line 3287
    .local p3, "minEndPos":I
    if-le p3, v2, :cond_52

    .line 3288
    not-int v3, v7

    return v3

    .line 3290
    :cond_52
    add-int v3, v7, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 3291
    .local v9, "maxEndPos":I
    const/4 v3, 0x0

    .line 3292
    .local v3, "total":I
    move v4, v7

    move v10, v3

    .line 3293
    .end local v3    # "total":I
    .local v4, "pos":I
    .local v10, "total":I
    :goto_5b
    if-ge v4, v9, :cond_7b

    .line 3294
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .local v3, "pos":I
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 3295
    .local v4, "ch":C
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v5

    .line 3296
    .local v5, "digit":I
    if-gez v5, :cond_75

    .line 3297
    if-gt v3, p3, :cond_71

    .line 3298
    not-int v6, v7

    return v6

    .line 3300
    :cond_71
    add-int/lit8 v3, v3, -0x1

    .line 3301
    move v8, v3

    goto :goto_7c

    .line 3303
    :cond_75
    mul-int/lit8 v6, v10, 0xa

    add-int v10, v6, v5

    .line 3304
    .end local v4    # "ch":C
    .end local v5    # "digit":I
    move v4, v3

    goto :goto_5b

    .line 3293
    .end local v3    # "pos":I
    .local v4, "pos":I
    :cond_7b
    move v8, v4

    .line 3305
    .end local v4    # "pos":I
    .local v8, "pos":I
    :goto_7c
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v10}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int v4, v8, v7

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v11

    .line 3306
    .local v11, "fraction":Ljava/math/BigDecimal;
    invoke-direct {p0, v11}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertFromFraction(Ljava/math/BigDecimal;)J

    move-result-wide v5

    .line 3307
    .local v5, "value":J
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v3, p1

    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .local v3, "context":Ljava/time/format/DateTimeParseContext;
    invoke-virtual/range {v3 .. v8}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 3363
    iget-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v0, :cond_7

    const-string v0, ",DecimalPoint"

    goto :goto_9

    :cond_7
    const-string v0, ""

    .line 3364
    .local v0, "decimal":Ljava/lang/String;
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fraction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    .registers 9

    .line 3208
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 3209
    return-object p0

    .line 3211
    :cond_6
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    iget-boolean v6, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIZI)V

    return-object v2
.end method

.method bridge synthetic blacklist withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    .line 3158
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method blacklist withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    .registers 8
    .param p1, "subsequentWidth"    # I

    .line 3222
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    iget-boolean v4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->subsequentWidth:I

    add-int/2addr v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIZI)V

    return-object v0
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

    .line 3158
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    move-result-object p1

    return-object p1
.end method
