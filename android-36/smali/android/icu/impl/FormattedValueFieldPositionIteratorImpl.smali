.class public Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl;
.super Ljava/lang/Object;
.source "FormattedValueFieldPositionIteratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addOverlapSpans(Ljava/util/List;Ljava/text/Format$Field;I)V
    .registers 14
    .param p1, "spanField"    # Ljava/text/Format$Field;
    .param p2, "firstIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;",
            "Ljava/text/Format$Field;",
            "I)V"
        }
    .end annotation

    .line 84
    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const v0, 0x7fffffff

    .line 85
    .local v0, "s1a":I
    const/4 v1, 0x0

    .line 86
    .local v1, "s1b":I
    const v2, 0x7fffffff

    .line 87
    .local v2, "s2a":I
    const/4 v3, 0x0

    .line 88
    .local v3, "s2b":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 89
    .local v4, "numFields":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    if-ge v5, v4, :cond_51

    .line 90
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/FieldPosition;

    .line 91
    .local v6, "fp1":Ljava/text/FieldPosition;
    add-int/lit8 v7, v5, 0x1

    .local v7, "j":I
    :goto_17
    if-ge v7, v4, :cond_4e

    .line 92
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/text/FieldPosition;

    .line 93
    .local v8, "fp2":Ljava/text/FieldPosition;
    invoke-virtual {v6}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v9

    invoke-virtual {v8}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v10

    if-eq v9, v10, :cond_2d

    .line 94
    nop

    .line 91
    .end local v8    # "fp2":Ljava/text/FieldPosition;
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 97
    .restart local v8    # "fp2":Ljava/text/FieldPosition;
    :cond_2d
    invoke-virtual {v6}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    invoke-virtual {v6}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 99
    invoke-virtual {v8}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 100
    invoke-virtual {v8}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 101
    nop

    .line 89
    .end local v6    # "fp1":Ljava/text/FieldPosition;
    .end local v7    # "j":I
    .end local v8    # "fp2":Ljava/text/FieldPosition;
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 104
    .end local v5    # "i":I
    :cond_51
    const v5, 0x7fffffff

    if-eq v0, v5, :cond_7e

    .line 106
    new-instance v5, Ljava/text/FieldPosition;

    new-instance v6, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    invoke-direct {v6, p1, p2}, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;-><init>(Ljava/text/Format$Field;I)V

    invoke-direct {v5, v6}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 107
    .local v5, "newPos":Ljava/text/FieldPosition;
    invoke-virtual {v5, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 108
    invoke-virtual {v5, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 109
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v6, Ljava/text/FieldPosition;

    new-instance v7, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    rsub-int/lit8 v8, p2, 0x1

    invoke-direct {v7, p1, v8}, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;-><init>(Ljava/text/Format$Field;I)V

    invoke-direct {v6, v7}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 111
    .end local v5    # "newPos":Ljava/text/FieldPosition;
    .local v6, "newPos":Ljava/text/FieldPosition;
    invoke-virtual {v6, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 112
    invoke-virtual {v6, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 113
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v6    # "newPos":Ljava/text/FieldPosition;
    :cond_7e
    return-void
.end method

.method public static blacklist nextPosition(Ljava/util/List;Landroid/icu/text/ConstrainedFieldPosition;)Z
    .registers 9
    .param p1, "cfpos"    # Landroid/icu/text/ConstrainedFieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;",
            "Landroid/icu/text/ConstrainedFieldPosition;",
            ")Z"
        }
    .end annotation

    .line 41
    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 42
    .local v0, "numFields":I
    invoke-virtual {p1}, Landroid/icu/text/ConstrainedFieldPosition;->getInt64IterationContext()J

    move-result-wide v1

    long-to-int v1, v1

    .line 43
    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_3d

    .line 44
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/FieldPosition;

    .line 45
    .local v2, "fpos":Ljava/text/FieldPosition;
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    .line 46
    .local v3, "field":Ljava/text/Format$Field;
    const/4 v4, 0x0

    .line 47
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v3, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    if-eqz v5, :cond_28

    .line 48
    move-object v5, v3

    check-cast v5, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    iget v5, v5, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 49
    move-object v5, v3

    check-cast v5, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    iget-object v3, v5, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->field:Ljava/text/Format$Field;

    .line 51
    :cond_28
    invoke-virtual {p1, v3, v4}, Landroid/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 52
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v5

    .line 53
    .local v5, "start":I
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v6

    .line 54
    .local v6, "limit":I
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    .line 55
    goto :goto_3d

    .line 43
    .end local v2    # "fpos":Ljava/text/FieldPosition;
    .end local v3    # "field":Ljava/text/Format$Field;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "start":I
    .end local v6    # "limit":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 58
    :cond_3d
    :goto_3d
    if-ne v1, v0, :cond_41

    int-to-long v2, v1

    goto :goto_44

    :cond_41
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    :goto_44
    invoke-virtual {p1, v2, v3}, Landroid/icu/text/ConstrainedFieldPosition;->setInt64IterationContext(J)V

    .line 59
    if-ge v1, v0, :cond_4b

    const/4 v2, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    return v2
.end method

.method public static blacklist sort(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 121
    .local v0, "numFields":I
    :goto_4
    const/4 v1, 0x1

    .line 122
    .local v1, "isSorted":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_84

    .line 123
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/FieldPosition;

    .line 124
    .local v3, "fp1":Ljava/text/FieldPosition;
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/FieldPosition;

    .line 125
    .local v4, "fp2":Ljava/text/FieldPosition;
    const-wide/16 v5, 0x0

    .line 126
    .local v5, "comparison":J
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v7

    invoke-virtual {v4}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v8

    if-eq v7, v8, :cond_2f

    .line 128
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v7

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v5, v7

    goto :goto_72

    .line 129
    :cond_2f
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v8

    if-eq v7, v8, :cond_44

    .line 131
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v5, v7

    goto :goto_72

    .line 132
    :cond_44
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    invoke-virtual {v4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v8

    if-eq v7, v8, :cond_72

    .line 135
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    instance-of v7, v7, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    .line 136
    .local v7, "fp1isSpan":Z
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v8

    instance-of v8, v8, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    .line 137
    .local v8, "fp2isSpan":Z
    if-eqz v7, :cond_61

    if-nez v8, :cond_61

    .line 138
    const-wide/16 v5, 0x1

    goto :goto_72

    .line 139
    :cond_61
    if-eqz v8, :cond_68

    if-nez v7, :cond_68

    .line 140
    const-wide/16 v5, -0x1

    goto :goto_72

    .line 142
    :cond_68
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-long v5, v9

    .line 145
    .end local v7    # "fp1isSpan":Z
    .end local v8    # "fp2isSpan":Z
    :cond_72
    :goto_72
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_81

    .line 147
    const/4 v1, 0x0

    .line 148
    invoke-interface {p0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v7, v2, 0x1

    invoke-interface {p0, v7, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v3    # "fp1":Ljava/text/FieldPosition;
    .end local v4    # "fp2":Ljava/text/FieldPosition;
    .end local v5    # "comparison":J
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 152
    .end local v2    # "i":I
    :cond_84
    if-eqz v1, :cond_88

    .line 153
    nop

    .line 156
    .end local v1    # "isSorted":Z
    return-void

    .line 155
    :cond_88
    goto/16 :goto_4
.end method

.method public static blacklist toCharacterIterator(Ljava/lang/CharSequence;Ljava/util/List;)Ljava/text/AttributedCharacterIterator;
    .registers 9
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/text/AttributedCharacterIterator;"
        }
    .end annotation

    .line 63
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    new-instance v0, Ljava/text/AttributedString;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "as":Ljava/text/AttributedString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 67
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/FieldPosition;

    .line 68
    .local v2, "fp":Ljava/text/FieldPosition;
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    .line 69
    .local v3, "field":Ljava/text/Format$Field;
    move-object v4, v3

    .line 70
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v3, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    if-eqz v5, :cond_2d

    .line 71
    move-object v5, v3

    check-cast v5, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    iget v5, v5, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 72
    move-object v5, v3

    check-cast v5, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    iget-object v3, v5, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->field:Ljava/text/Format$Field;

    .line 74
    :cond_2d
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v5

    invoke-virtual {v2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 66
    .end local v2    # "fp":Ljava/text/FieldPosition;
    .end local v3    # "field":Ljava/text/Format$Field;
    .end local v4    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 78
    .end local v1    # "i":I
    :cond_3b
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1
.end method
