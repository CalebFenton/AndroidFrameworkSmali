.class Landroid/icu/text/QuantityFormatter;
.super Ljava/lang/Object;
.source "QuantityFormatter.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final templates:[Landroid/icu/impl/SimplePatternFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/QuantityFormatter;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/QuantityFormatter;->-assertionsDisabled:Z

    #@b
    .line 24
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    #@5
    new-array v0, v0, [Landroid/icu/impl/SimplePatternFormatter;

    #@7
    .line 25
    iput-object v0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@9
    .line 28
    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "appendTo"    # Ljava/lang/StringBuilder;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 126
    new-array v0, v1, [I

    #@4
    .line 127
    .local v0, "offsets":[I
    new-array v1, v1, [Ljava/lang/CharSequence;

    #@6
    aput-object p1, v1, v3

    #@8
    invoke-static {p0, p2, v0, v1}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b
    .line 128
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 129
    :cond_0
    aget v1, v0, v3

    #@19
    if-ltz v1, :cond_2

    #@1b
    .line 130
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@1e
    move-result v1

    #@1f
    aget v2, v0, v3

    #@21
    add-int/2addr v1, v2

    #@22
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@25
    .line 131
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@28
    move-result v1

    #@29
    aget v2, v0, v3

    #@2b
    add-int/2addr v1, v2

    #@2c
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@2f
    .line 137
    :cond_1
    :goto_0
    return-object p2

    #@30
    .line 133
    :cond_2
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@33
    .line 134
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@36
    goto :goto_0
.end method

.method public static selectPlural(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;
    .locals 2
    .param p0, "number"    # D
    .param p2, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p3, "rules"    # Landroid/icu/text/PluralRules;

    #@0
    .prologue
    .line 95
    instance-of v1, p2, Landroid/icu/text/DecimalFormat;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 96
    check-cast p2, Landroid/icu/text/DecimalFormat;

    #@6
    .end local p2    # "numberFormat":Landroid/icu/text/NumberFormat;
    invoke-virtual {p2, p0, p1}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p3, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 100
    .local v0, "pluralKeyword":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 98
    .end local v0    # "pluralKeyword":Ljava/lang/String;
    .restart local p2    # "numberFormat":Landroid/icu/text/NumberFormat;
    :cond_0
    invoke-virtual {p3, p0, p1}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .restart local v0    # "pluralKeyword":Ljava/lang/String;
    goto :goto_0
.end method

.method public static selectPlural(Ljava/lang/Number;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Landroid/icu/impl/StandardPlural;
    .locals 8
    .param p0, "number"    # Ljava/lang/Number;
    .param p1, "fmt"    # Landroid/icu/text/NumberFormat;
    .param p2, "rules"    # Landroid/icu/text/PluralRules;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 109
    new-instance v6, Landroid/icu/text/UFieldPosition;

    #@2
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    #@9
    move-result v2

    #@a
    invoke-direct {v6, v1, v2}, Landroid/icu/text/UFieldPosition;-><init>(Ljava/text/Format$Field;I)V

    #@d
    .line 110
    .local v6, "fpos":Landroid/icu/text/UFieldPosition;
    invoke-virtual {p1, p0, p3, v6}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@10
    .line 112
    new-instance v0, Landroid/icu/text/PluralRules$FixedDecimal;

    #@12
    .line 113
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    #@15
    move-result-wide v1

    #@16
    .line 114
    invoke-virtual {v6}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    #@19
    move-result v3

    #@1a
    invoke-virtual {v6}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    #@1d
    move-result-wide v4

    #@1e
    .line 112
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    #@21
    .line 115
    .local v0, "fd":Landroid/icu/text/PluralRules$FixedDecimal;
    invoke-virtual {p2, v0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    .line 116
    .local v7, "pluralKeyword":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/icu/text/UFieldPosition;->getBeginIndex()I

    #@28
    move-result v1

    #@29
    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@2c
    .line 117
    invoke-virtual {v6}, Landroid/icu/text/UFieldPosition;->getEndIndex()I

    #@2f
    move-result v1

    #@30
    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@33
    .line 118
    invoke-static {v7}, Landroid/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method


# virtual methods
.method public addIfAbsent(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4
    .param p1, "variant"    # Ljava/lang/CharSequence;
    .param p2, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    .line 42
    .local v0, "idx":I
    iget-object v1, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@6
    aget-object v1, v1, v0

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 43
    return-void

    #@b
    .line 45
    :cond_0
    iget-object v1, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@d
    const/4 v2, 0x0

    #@e
    const/4 v3, 0x1

    #@f
    invoke-static {p2, v2, v3}, Landroid/icu/impl/SimplePatternFormatter;->compileMinMaxPlaceholders(Ljava/lang/CharSequence;II)Landroid/icu/impl/SimplePatternFormatter;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v1, v0

    #@15
    .line 40
    return-void
.end method

.method public format(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # D
    .param p3, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p4, "pluralRules"    # Landroid/icu/text/PluralRules;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 64
    invoke-virtual {p3, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 65
    .local v0, "formatStr":Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Landroid/icu/text/QuantityFormatter;->selectPlural(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    #@9
    move-result-object v2

    #@a
    .line 66
    .local v2, "p":Landroid/icu/impl/StandardPlural;
    iget-object v3, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@c
    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@f
    move-result v6

    #@10
    aget-object v1, v3, v6

    #@12
    .line 67
    .local v1, "formatter":Landroid/icu/impl/SimplePatternFormatter;
    if-nez v1, :cond_1

    #@14
    .line 68
    iget-object v3, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@16
    sget v6, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    #@18
    aget-object v1, v3, v6

    #@1a
    .line 69
    sget-boolean v3, Landroid/icu/text/QuantityFormatter;->-assertionsDisabled:Z

    #@1c
    if-nez v3, :cond_1

    #@1e
    if-eqz v1, :cond_0

    #@20
    move v3, v4

    #@21
    :goto_0
    if-nez v3, :cond_1

    #@23
    new-instance v3, Ljava/lang/AssertionError;

    #@25
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@28
    throw v3

    #@29
    :cond_0
    move v3, v5

    #@2a
    goto :goto_0

    #@2b
    .line 71
    :cond_1
    new-array v3, v4, [Ljava/lang/CharSequence;

    #@2d
    aput-object v0, v3, v5

    #@2f
    invoke-virtual {v1, v3}, Landroid/icu/impl/SimplePatternFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    return-object v3
.end method

.method public getByVariant(Ljava/lang/CharSequence;)Landroid/icu/impl/SimplePatternFormatter;
    .locals 4
    .param p1, "variant"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 80
    sget-boolean v2, Landroid/icu/text/QuantityFormatter;->-assertionsDisabled:Z

    #@2
    if-nez v2, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/icu/text/QuantityFormatter;->isValid()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    new-instance v2, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v2

    #@10
    .line 81
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexOrOtherIndexFromString(Ljava/lang/CharSequence;)I

    #@13
    move-result v0

    #@14
    .line 82
    .local v0, "idx":I
    iget-object v2, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@16
    aget-object v1, v2, v0

    #@18
    .line 83
    .local v1, "template":Landroid/icu/impl/SimplePatternFormatter;
    if-nez v1, :cond_1

    #@1a
    sget v2, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    #@1c
    if-eq v0, v2, :cond_1

    #@1e
    .line 84
    iget-object v2, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@20
    sget v3, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    #@22
    aget-object v1, v2, v3

    #@24
    .line 83
    .end local v1    # "template":Landroid/icu/impl/SimplePatternFormatter;
    :cond_1
    return-object v1
.end method

.method public isValid()Z
    .locals 2

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@2
    sget v1, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    #@4
    aget-object v0, v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
