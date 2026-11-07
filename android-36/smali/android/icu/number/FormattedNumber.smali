.class public Landroid/icu/number/FormattedNumber;
.super Ljava/lang/Object;
.source "FormattedNumber.java"

# interfaces
.implements Landroid/icu/text/FormattedValue;


# instance fields
.field final blacklist fq:Landroid/icu/impl/number/DecimalQuantity;

.field final blacklist gender:Ljava/lang/String;

.field final blacklist outputUnit:Landroid/icu/util/MeasureUnit;

.field final blacklist string:Landroid/icu/impl/FormattedStringBuilder;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/util/MeasureUnit;Ljava/lang/String;)V
    .registers 5
    .param p1, "nsb"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "fq"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p3, "outputUnit"    # Landroid/icu/util/MeasureUnit;
    .param p4, "gender"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/icu/number/FormattedNumber;->string:Landroid/icu/impl/FormattedStringBuilder;

    .line 37
    iput-object p2, p0, Landroid/icu/number/FormattedNumber;->fq:Landroid/icu/impl/number/DecimalQuantity;

    .line 38
    iput-object p3, p0, Landroid/icu/number/FormattedNumber;->outputUnit:Landroid/icu/util/MeasureUnit;

    .line 39
    iput-object p4, p0, Landroid/icu/number/FormattedNumber;->gender:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist test-api appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation

    .line 79
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 63
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public blacklist getFixedDecimal()Landroid/icu/text/PluralRules$IFixedDecimal;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->fq:Landroid/icu/impl/number/DecimalQuantity;

    return-object v0
.end method

.method public blacklist getGender()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->gender:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 143
    const-string v0, ""

    return-object v0

    .line 145
    :cond_7
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNounClass()Landroid/icu/text/DisplayOptions$NounClass;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->gender:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/text/DisplayOptions$NounClass;->fromIdentifier(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$NounClass;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getOutputUnit()Landroid/icu/util/MeasureUnit;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->outputUnit:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextPosition(Landroid/icu/text/ConstrainedFieldPosition;)Z
    .registers 4
    .param p1, "cfpos"    # Landroid/icu/text/ConstrainedFieldPosition;

    .line 87
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->string:Landroid/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 71
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/FormattedStringBuilder;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toBigDecimal()Ljava/math/BigDecimal;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->fq:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {v0}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->string:Landroid/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->toCharacterIterator(Landroid/icu/impl/FormattedStringBuilder;Ljava/text/Format$Field;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
