.class Landroid/icu/text/QuantityFormatter;
.super Ljava/lang/Object;
.source "QuantityFormatter.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist templates:[Landroid/icu/text/SimpleFormatter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 25
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Landroid/icu/text/SimpleFormatter;

    iput-object v0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    .line 29
    return-void
.end method

.method public static blacklist format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .registers 8
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "appendTo"    # Ljava/lang/StringBuilder;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 109
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 110
    .local v1, "offsets":[I
    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {p0, p2, v1, v0}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-eqz v0, :cond_36

    .line 112
    :cond_17
    aget v0, v1, v2

    if-ltz v0, :cond_30

    .line 113
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    aget v3, v1, v2

    add-int/2addr v0, v3

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 114
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    aget v2, v1, v2

    add-int/2addr v0, v2

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_36

    .line 116
    :cond_30
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 117
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 120
    :cond_36
    :goto_36
    return-object p2
.end method

.method public static blacklist selectPlural(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;
    .registers 6
    .param p0, "number"    # D
    .param p2, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p3, "rules"    # Landroid/icu/text/PluralRules;

    .line 96
    instance-of v0, p2, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_10

    .line 97
    move-object v0, p2

    check-cast v0, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    .local v0, "pluralKeyword":Ljava/lang/String;
    goto :goto_14

    .line 99
    .end local v0    # "pluralKeyword":Ljava/lang/String;
    :cond_10
    invoke-virtual {p3, p0, p1}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "pluralKeyword":Ljava/lang/String;
    :goto_14
    invoke-static {v0}, Landroid/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist addIfAbsent(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 7
    .param p1, "variant"    # Ljava/lang/CharSequence;
    .param p2, "template"    # Ljava/lang/String;

    .line 42
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 43
    .local v0, "idx":I
    iget-object v1, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    aget-object v1, v1, v0

    if-eqz v1, :cond_b

    .line 44
    return-void

    .line 46
    :cond_b
    iget-object v1, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Landroid/icu/text/SimpleFormatter;->compileMinMaxArguments(Ljava/lang/CharSequence;II)Landroid/icu/text/SimpleFormatter;

    move-result-object v2

    aput-object v2, v1, v0

    .line 47
    return-void
.end method

.method public blacklist format(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Ljava/lang/String;
    .registers 10
    .param p1, "number"    # D
    .param p3, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p4, "pluralRules"    # Landroid/icu/text/PluralRules;

    .line 65
    invoke-virtual {p3, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "formatStr":Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Landroid/icu/text/QuantityFormatter;->selectPlural(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    .line 67
    .local v1, "p":Landroid/icu/impl/StandardPlural;
    iget-object v2, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    .line 68
    .local v2, "formatter":Landroid/icu/text/SimpleFormatter;
    if-nez v2, :cond_19

    .line 69
    iget-object v3, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    sget v4, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object v2, v3, v4

    .line 70
    nop

    .line 72
    :cond_19
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public blacklist getByVariant(Ljava/lang/CharSequence;)Landroid/icu/text/SimpleFormatter;
    .registers 6
    .param p1, "variant"    # Ljava/lang/CharSequence;

    .line 81
    nop

    .line 82
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexOrOtherIndexFromString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 83
    .local v0, "idx":I
    iget-object v1, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    aget-object v1, v1, v0

    .line 84
    .local v1, "template":Landroid/icu/text/SimpleFormatter;
    if-nez v1, :cond_16

    sget v2, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    if-eq v0, v2, :cond_16

    .line 85
    iget-object v2, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    sget v3, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object v2, v2, v3

    goto :goto_17

    :cond_16
    move-object v2, v1

    .line 84
    :goto_17
    return-object v2
.end method

.method public blacklist isValid()Z
    .registers 3

    .line 53
    iget-object v0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    sget v1, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
