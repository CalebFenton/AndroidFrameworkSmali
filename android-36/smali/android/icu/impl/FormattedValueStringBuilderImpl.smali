.class public Landroid/icu/impl/FormattedValueStringBuilderImpl;
.super Ljava/lang/Object;
.source "FormattedValueStringBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;,
        Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 29
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applySpanRange(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/UFormat$SpanField;Ljava/lang/Object;II)V
    .registers 9
    .param p0, "self"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p1, "spanField"    # Landroid/icu/text/UFormat$SpanField;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 77
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v0, p3

    .local v0, "i":I
    :goto_3
    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, p4

    if-ge v0, v1, :cond_27

    .line 78
    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 79
    .local v1, "oldField":Ljava/lang/Object;
    new-instance v2, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    invoke-direct {v2}, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;-><init>()V

    .line 80
    .local v2, "newField":Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
    iput-object p1, v2, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->spanField:Landroid/icu/text/UFormat$SpanField;

    .line 81
    move-object v3, v1

    check-cast v3, Ljava/text/Format$Field;

    iput-object v3, v2, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    .line 82
    iput-object p2, v2, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->value:Ljava/lang/Object;

    .line 83
    iput p3, v2, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->start:I

    .line 84
    sub-int v3, p4, p3

    iput v3, v2, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    .line 85
    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 77
    .end local v1    # "oldField":Ljava/lang/Object;
    .end local v2    # "newField":Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 87
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method public static blacklist findSpan(Landroid/icu/impl/FormattedStringBuilder;Ljava/lang/Object;)I
    .registers 5
    .param p0, "self"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p1, "value"    # Ljava/lang/Object;

    .line 55
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .local v0, "i":I
    :goto_2
    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_28

    .line 56
    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    if-nez v1, :cond_12

    .line 57
    goto :goto_25

    .line 59
    :cond_12
    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    iget-object v1, v1, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->value:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 60
    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v1, v0, v1

    return v1

    .line 55
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 63
    .end local v0    # "i":I
    :cond_28
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist isIntOrGroup(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "field"    # Ljava/lang/Object;

    .line 308
    invoke-static {p0}, Landroid/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object p0

    .line 309
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-eq p0, v0, :cond_f

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static blacklist isNumericField(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "field"    # Ljava/lang/Object;

    .line 313
    invoke-static {p0}, Landroid/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object p0

    .line 314
    if-eqz p0, :cond_15

    const-class v0, Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private static blacklist isTrimmable(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "field"    # Ljava/lang/Object;

    .line 318
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-eq p0, v0, :cond_a

    instance-of v0, p0, Landroid/icu/text/ListFormatter$Field;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist nextFieldPosition(Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z
    .registers 9
    .param p0, "self"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p1, "fp"    # Ljava/text/FieldPosition;

    .line 90
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    .line 92
    .local v0, "rawField":Ljava/text/Format$Field;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1b

    .line 94
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    if-nez v3, :cond_11

    .line 95
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    goto :goto_1b

    .line 96
    :cond_11
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    if-ne v3, v2, :cond_1a

    .line 97
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    goto :goto_1b

    .line 100
    :cond_1a
    return v1

    .line 104
    :cond_1b
    :goto_1b
    instance-of v3, v0, Landroid/icu/text/NumberFormat$Field;

    if-eqz v3, :cond_85

    .line 110
    new-instance v3, Landroid/icu/text/ConstrainedFieldPosition;

    invoke-direct {v3}, Landroid/icu/text/ConstrainedFieldPosition;-><init>()V

    .line 111
    .local v3, "cfpos":Landroid/icu/text/ConstrainedFieldPosition;
    invoke-virtual {v3, v0}, Landroid/icu/text/ConstrainedFieldPosition;->constrainField(Ljava/text/Format$Field;)V

    .line 112
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    invoke-virtual {p1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4, v5}, Landroid/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    .line 113
    invoke-static {p0, v3, v6}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 114
    invoke-virtual {v3}, Landroid/icu/text/ConstrainedFieldPosition;->getStart()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 115
    invoke-virtual {v3}, Landroid/icu/text/ConstrainedFieldPosition;->getLimit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 116
    return v2

    .line 120
    :cond_48
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    if-ne v0, v2, :cond_84

    invoke-virtual {p1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    if-nez v2, :cond_84

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "inside":Z
    iget v4, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .line 123
    .local v4, "i":I
    :goto_55
    iget v5, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v6, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_76

    .line 124
    iget-object v5, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v5, v5, v4

    invoke-static {v5}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->isIntOrGroup(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    iget-object v5, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v5, v5, v4

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_6f

    goto :goto_72

    .line 126
    :cond_6f
    if-eqz v2, :cond_73

    .line 127
    goto :goto_76

    .line 125
    :cond_72
    :goto_72
    const/4 v2, 0x1

    .line 123
    :cond_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 130
    :cond_76
    :goto_76
    iget v5, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v5, v4, v5

    invoke-virtual {p1, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 131
    iget v5, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v5, v4, v5

    invoke-virtual {p1, v5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 134
    .end local v2    # "inside":Z
    .end local v4    # "i":I
    :cond_84
    return v1

    .line 105
    .end local v3    # "cfpos":Landroid/icu/text/ConstrainedFieldPosition;
    :cond_85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You must pass an instance of android.icu.text.NumberFormat.Field as your FieldPosition attribute.  You passed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist nextPosition(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z
    .registers 16
    .param p0, "self"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p1, "cfpos"    # Landroid/icu/text/ConstrainedFieldPosition;
    .param p2, "numericField"    # Ljava/text/Format$Field;

    .line 169
    const/4 v0, -0x1

    .line 170
    .local v0, "fieldStart":I
    const/4 v1, 0x0

    .line 171
    .local v1, "currField":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 172
    .local v2, "prevIsSpan":Z
    invoke-virtual {p1}, Landroid/icu/text/ConstrainedFieldPosition;->getLimit()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_21

    .line 173
    invoke-virtual {p1}, Landroid/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v3

    instance-of v3, v3, Landroid/icu/text/UFormat$SpanField;

    if-eqz v3, :cond_1f

    .line 174
    invoke-virtual {p1}, Landroid/icu/text/ConstrainedFieldPosition;->getStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/icu/text/ConstrainedFieldPosition;->getLimit()I

    move-result v6

    if-ge v3, v6, :cond_1f

    move v3, v5

    goto :goto_20

    :cond_1f
    move v3, v4

    :goto_20
    move v2, v3

    .line 176
    :cond_21
    const/4 v3, 0x0

    .line 177
    .local v3, "prevIsNumeric":Z
    if-eqz p2, :cond_2e

    .line 178
    invoke-virtual {p1}, Landroid/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v6

    if-ne v6, p2, :cond_2c

    move v6, v5

    goto :goto_2d

    :cond_2c
    move v6, v4

    :goto_2d
    move v3, v6

    .line 180
    :cond_2e
    invoke-virtual {p1}, Landroid/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v6

    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v6, v7, :cond_38

    move v6, v5

    goto :goto_39

    :cond_38
    move v6, v4

    .line 182
    .local v6, "prevIsInteger":Z
    :goto_39
    iget v7, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    invoke-virtual {p1}, Landroid/icu/text/ConstrainedFieldPosition;->getLimit()I

    move-result v8

    add-int/2addr v7, v8

    .local v7, "i":I
    :goto_40
    iget v8, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v9, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_1b2

    .line 183
    iget v8, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v9, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_53

    iget-object v8, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v8, v8, v7

    goto :goto_55

    :cond_53
    sget-object v8, Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;->END:Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;

    .line 185
    .local v8, "_field":Ljava/lang/Object;
    :goto_55
    const/4 v9, 0x0

    if-eqz v1, :cond_82

    .line 186
    if-eq v1, v8, :cond_1af

    .line 187
    iget v10, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v10, v7, v10

    .line 189
    .local v10, "end":I
    invoke-static {v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->isTrimmable(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_68

    .line 190
    invoke-static {p0, v10}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->trimBack(Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v10

    .line 192
    :cond_68
    if-gt v10, v0, :cond_70

    .line 194
    const/4 v0, -0x1

    .line 195
    const/4 v1, 0x0

    .line 196
    add-int/lit8 v7, v7, -0x1

    .line 197
    goto/16 :goto_1af

    .line 199
    :cond_70
    move v4, v0

    .line 200
    .local v4, "start":I
    invoke-static {v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->isTrimmable(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 201
    invoke-static {p0, v4}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->trimFront(Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v4

    .line 203
    :cond_7b
    move-object v11, v1

    check-cast v11, Ljava/text/Format$Field;

    invoke-virtual {p1, v11, v9, v4, v10}, Landroid/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    .line 204
    return v5

    .line 209
    .end local v4    # "start":I
    .end local v10    # "end":I
    :cond_82
    iget v10, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    if-le v7, v10, :cond_bb

    if-eqz v2, :cond_bb

    .line 210
    nop

    .line 211
    iget-object v10, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int/lit8 v11, v7, -0x1

    aget-object v10, v10, v11

    check-cast v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    .line 212
    .local v10, "ph":Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
    iget-object v11, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    sget-object v12, Landroid/icu/text/ListFormatter$Field;->ELEMENT:Landroid/icu/text/ListFormatter$Field;

    if-ne v11, v12, :cond_af

    .line 214
    sget-object v11, Landroid/icu/text/ListFormatter$Field;->ELEMENT:Landroid/icu/text/ListFormatter$Field;

    invoke-virtual {p1, v11, v9}, Landroid/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bb

    .line 215
    iget v4, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v4, v7, v4

    iget v11, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    sub-int/2addr v4, v11

    .line 216
    .end local v0    # "fieldStart":I
    .local v4, "fieldStart":I
    iget v0, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    add-int/2addr v0, v4

    .line 217
    .local v0, "end":I
    sget-object v11, Landroid/icu/text/ListFormatter$Field;->ELEMENT:Landroid/icu/text/ListFormatter$Field;

    invoke-virtual {p1, v11, v9, v4, v0}, Landroid/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    .line 218
    return v5

    .line 222
    .end local v4    # "fieldStart":I
    .local v0, "fieldStart":I
    :cond_af
    iget v11, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    sub-int/2addr v7, v11

    .line 223
    nop

    .line 224
    iget-object v11, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v11, v11, v7

    check-cast v11, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    iget-object v8, v11, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    .line 228
    .end local v10    # "ph":Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
    :cond_bb
    sget-object v10, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p1, v10, v9}, Landroid/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ff

    iget v10, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    if-le v7, v10, :cond_ff

    if-nez v6, :cond_ff

    if-nez v3, :cond_ff

    iget-object v10, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int/lit8 v11, v7, -0x1

    aget-object v10, v10, v11

    .line 232
    invoke-static {v10}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->isIntOrGroup(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ff

    .line 233
    invoke-static {v8}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->isIntOrGroup(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ff

    .line 234
    add-int/lit8 v4, v7, -0x1

    .line 235
    .local v4, "j":I
    :goto_df
    iget v10, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    if-lt v4, v10, :cond_f0

    iget-object v10, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v10, v10, v4

    invoke-static {v10}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->isIntOrGroup(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f0

    add-int/lit8 v4, v4, -0x1

    goto :goto_df

    .line 236
    :cond_f0
    sget-object v10, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    iget v11, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v11, v4, v11

    add-int/2addr v11, v5

    iget v12, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v12, v7, v12

    invoke-virtual {p1, v10, v9, v11, v12}, Landroid/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    .line 237
    return v5

    .line 240
    .end local v4    # "j":I
    :cond_ff
    if-eqz p2, :cond_13f

    .line 241
    invoke-virtual {p1, p2, v9}, Landroid/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13f

    iget v10, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    if-le v7, v10, :cond_13f

    if-nez v3, :cond_13f

    iget-object v10, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int/lit8 v11, v7, -0x1

    aget-object v10, v10, v11

    .line 244
    invoke-static {v10}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->isNumericField(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13f

    .line 245
    invoke-static {v8}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->isNumericField(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13f

    .line 247
    add-int/lit8 v4, v7, -0x1

    .line 248
    .restart local v4    # "j":I
    :goto_121
    iget v10, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    if-lt v4, v10, :cond_132

    iget-object v10, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v10, v10, v4

    invoke-static {v10}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->isNumericField(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_132

    add-int/lit8 v4, v4, -0x1

    goto :goto_121

    .line 249
    :cond_132
    iget v10, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v10, v4, v10

    add-int/2addr v10, v5

    iget v11, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v11, v7, v11

    invoke-virtual {p1, p2, v9, v10, v11}, Landroid/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    .line 250
    return v5

    .line 253
    .end local v4    # "j":I
    :cond_13f
    const/4 v10, 0x0

    .line 254
    .restart local v10    # "ph":Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
    instance-of v11, v8, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    if-eqz v11, :cond_149

    .line 255
    move-object v10, v8

    check-cast v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    .line 256
    iget-object v8, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    .line 258
    :cond_149
    if-eqz v10, :cond_191

    iget v11, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->start:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_158

    iget v11, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->start:I

    iget v12, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v12, v7, v12

    if-ne v11, v12, :cond_191

    .line 259
    :cond_158
    iget-object v11, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->spanField:Landroid/icu/text/UFormat$SpanField;

    iget-object v12, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->value:Ljava/lang/Object;

    invoke-virtual {p1, v11, v12}, Landroid/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_171

    .line 260
    iget v4, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v0, v7, v4

    .line 261
    iget v4, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    add-int/2addr v4, v0

    .line 262
    .local v4, "end":I
    iget-object v9, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->spanField:Landroid/icu/text/UFormat$SpanField;

    iget-object v11, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->value:Ljava/lang/Object;

    invoke-virtual {p1, v9, v11, v0, v4}, Landroid/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    .line 263
    return v5

    .line 264
    .end local v4    # "end":I
    :cond_171
    iget-object v11, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    sget-object v12, Landroid/icu/text/ListFormatter$Field;->ELEMENT:Landroid/icu/text/ListFormatter$Field;

    if-ne v11, v12, :cond_1ac

    .line 266
    sget-object v11, Landroid/icu/text/ListFormatter$Field;->ELEMENT:Landroid/icu/text/ListFormatter$Field;

    invoke-virtual {p1, v11, v9}, Landroid/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18c

    .line 267
    iget v4, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v0, v7, v4

    .line 268
    iget v4, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    add-int/2addr v4, v0

    .line 269
    .restart local v4    # "end":I
    sget-object v11, Landroid/icu/text/ListFormatter$Field;->ELEMENT:Landroid/icu/text/ListFormatter$Field;

    invoke-virtual {p1, v11, v9, v0, v4}, Landroid/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    .line 270
    return v5

    .line 273
    .end local v4    # "end":I
    :cond_18c
    iget v9, v10, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    sub-int/2addr v9, v5

    add-int/2addr v7, v9

    goto :goto_1ac

    .line 279
    :cond_191
    sget-object v11, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v8, v11, :cond_197

    .line 280
    const/4 v8, 0x0

    goto :goto_1ac

    .line 283
    :cond_197
    if-eqz v8, :cond_1ac

    sget-object v11, Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;->END:Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;

    if-ne v8, v11, :cond_19e

    goto :goto_1ac

    .line 287
    :cond_19e
    move-object v11, v8

    check-cast v11, Ljava/text/Format$Field;

    invoke-virtual {p1, v11, v9}, Landroid/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ac

    .line 288
    iget v9, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v0, v7, v9

    .line 289
    move-object v1, v8

    .line 292
    :cond_1ac
    :goto_1ac
    const/4 v2, 0x0

    .line 293
    const/4 v3, 0x0

    .line 294
    const/4 v6, 0x0

    .line 182
    .end local v8    # "_field":Ljava/lang/Object;
    .end local v10    # "ph":Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
    :cond_1af
    :goto_1af
    add-int/2addr v7, v5

    goto/16 :goto_40

    .line 297
    .end local v7    # "i":I
    :cond_1b2
    nop

    .line 299
    nop

    .line 300
    invoke-virtual {p1}, Landroid/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v5

    .line 301
    invoke-virtual {p1}, Landroid/icu/text/ConstrainedFieldPosition;->getFieldValue()Ljava/lang/Object;

    move-result-object v7

    iget v8, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iget v9, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 299
    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    .line 304
    return v4
.end method

.method public static blacklist toCharacterIterator(Landroid/icu/impl/FormattedStringBuilder;Ljava/text/Format$Field;)Ljava/text/AttributedCharacterIterator;
    .registers 8
    .param p0, "self"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p1, "numericField"    # Ljava/text/Format$Field;

    .line 138
    new-instance v0, Landroid/icu/text/ConstrainedFieldPosition;

    invoke-direct {v0}, Landroid/icu/text/ConstrainedFieldPosition;-><init>()V

    .line 139
    .local v0, "cfpos":Landroid/icu/text/ConstrainedFieldPosition;
    new-instance v1, Ljava/text/AttributedString;

    invoke-virtual {p0}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "as":Ljava/text/AttributedString;
    :goto_e
    invoke-static {p0, v0, p1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 142
    invoke-virtual {v0}, Landroid/icu/text/ConstrainedFieldPosition;->getFieldValue()Ljava/lang/Object;

    move-result-object v2

    .line 143
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1e

    .line 144
    invoke-virtual {v0}, Landroid/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v2

    .line 146
    :cond_1e
    invoke-virtual {v0}, Landroid/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v3

    invoke-virtual {v0}, Landroid/icu/text/ConstrainedFieldPosition;->getStart()I

    move-result v4

    invoke-virtual {v0}, Landroid/icu/text/ConstrainedFieldPosition;->getLimit()I

    move-result v5

    invoke-virtual {v1, v3, v2, v4, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 147
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_e

    .line 148
    :cond_2e
    invoke-virtual {v1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist trimBack(Landroid/icu/impl/FormattedStringBuilder;I)I
    .registers 4
    .param p0, "self"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p1, "limit"    # I

    .line 323
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->DEFAULT_IGNORABLES:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 324
    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    .line 323
    return v0
.end method

.method private static blacklist trimFront(Landroid/icu/impl/FormattedStringBuilder;I)I
    .registers 4
    .param p0, "self"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p1, "start"    # I

    .line 328
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->DEFAULT_IGNORABLES:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 329
    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    .line 328
    return v0
.end method
