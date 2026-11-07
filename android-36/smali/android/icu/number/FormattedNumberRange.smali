.class public Landroid/icu/number/FormattedNumberRange;
.super Ljava/lang/Object;
.source "FormattedNumberRange.java"

# interfaces
.implements Landroid/icu/text/FormattedValue;


# instance fields
.field final blacklist identityResult:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

.field final blacklist quantity1:Landroid/icu/impl/number/DecimalQuantity;

.field final blacklist quantity2:Landroid/icu/impl/number/DecimalQuantity;

.field final blacklist string:Landroid/icu/impl/FormattedStringBuilder;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;)V
    .registers 5
    .param p1, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "quantity1"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p3, "quantity2"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p4, "identityResult"    # Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    .line 38
    iput-object p2, p0, Landroid/icu/number/FormattedNumberRange;->quantity1:Landroid/icu/impl/number/DecimalQuantity;

    .line 39
    iput-object p3, p0, Landroid/icu/number/FormattedNumberRange;->quantity2:Landroid/icu/impl/number/DecimalQuantity;

    .line 40
    iput-object p4, p0, Landroid/icu/number/FormattedNumberRange;->identityResult:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist test-api appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation

    .line 57
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    :try_start_0
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 61
    nop

    .line 62
    return-object p1

    .line 58
    :catch_7
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 70
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 158
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 159
    return v0

    .line 160
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 161
    return v1

    .line 162
    :cond_8
    instance-of v2, p1, Landroid/icu/number/FormattedNumberRange;

    if-nez v2, :cond_d

    .line 163
    return v1

    .line 166
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/icu/number/FormattedNumberRange;

    .line 167
    .local v2, "_other":Landroid/icu/number/FormattedNumberRange;
    iget-object v3, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    iget-object v4, v2, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v3, v4}, Landroid/icu/impl/FormattedStringBuilder;->contentEquals(Landroid/icu/impl/FormattedStringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Landroid/icu/number/FormattedNumberRange;->quantity1:Landroid/icu/impl/number/DecimalQuantity;

    .line 168
    invoke-interface {v3}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    iget-object v4, v2, Landroid/icu/number/FormattedNumberRange;->quantity1:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {v4}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Landroid/icu/number/FormattedNumberRange;->quantity2:Landroid/icu/impl/number/DecimalQuantity;

    .line 169
    invoke-interface {v3}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    iget-object v4, v2, Landroid/icu/number/FormattedNumberRange;->quantity2:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {v4}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v1

    .line 167
    :goto_40
    return v0
.end method

.method public whitelist test-api getFirstBigDecimal()Ljava/math/BigDecimal;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->quantity1:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {v0}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFirstFixedDecimal()Landroid/icu/text/PluralRules$IFixedDecimal;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->quantity1:Landroid/icu/impl/number/DecimalQuantity;

    return-object v0
.end method

.method public whitelist test-api getIdentityResult()Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->identityResult:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    return-object v0
.end method

.method public whitelist test-api getSecondBigDecimal()Ljava/math/BigDecimal;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->quantity2:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {v0}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSecondFixedDecimal()Landroid/icu/text/PluralRules$IFixedDecimal;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->quantity2:Landroid/icu/impl/number/DecimalQuantity;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 149
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    iget-object v1, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v1}, Landroid/icu/impl/FormattedStringBuilder;->toFieldArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/number/FormattedNumberRange;->quantity1:Landroid/icu/impl/number/DecimalQuantity;

    .line 150
    invoke-interface {v1}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/number/FormattedNumberRange;->quantity2:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {v1}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 149
    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextPosition(Landroid/icu/text/ConstrainedFieldPosition;)Z
    .registers 4
    .param p1, "cfpos"    # Landroid/icu/text/ConstrainedFieldPosition;

    .line 94
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 86
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/FormattedStringBuilder;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .registers 3

    .line 102
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->toCharacterIterator(Landroid/icu/impl/FormattedStringBuilder;Ljava/text/Format$Field;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/icu/number/FormattedNumberRange;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
