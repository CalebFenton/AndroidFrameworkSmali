.class public Landroid/icu/text/UnicodeSetSpanner;
.super Ljava/lang/Object;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/UnicodeSetSpanner$CountMethod;,
        Landroid/icu/text/UnicodeSetSpanner$TrimOption;
    }
.end annotation


# instance fields
.field private final greylist-max-o unicodeSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor whitelist test-api <init>(Landroid/icu/text/UnicodeSet;)V
    .registers 2
    .param p1, "source"    # Landroid/icu/text/UnicodeSet;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist test-api countIn(Ljava/lang/CharSequence;)I
    .registers 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 119
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;)I
    .registers 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "countMethod"    # Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    .line 132
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSetSpanner;->countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .registers 11
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "countMethod"    # Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "count":I
    const/4 v1, 0x0

    .line 151
    .local v1, "start":I
    sget-object v2, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v2, :cond_9

    sget-object v2, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_b

    .line 152
    :cond_9
    sget-object v2, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_b
    nop

    .line 153
    .local v2, "skipSpan":Landroid/icu/text/UnicodeSet$SpanCondition;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 154
    .local v3, "length":I
    const/4 v4, 0x0

    .line 155
    .local v4, "spanCount":Landroid/icu/util/OutputInt;
    :goto_11
    if-eq v1, v3, :cond_3b

    .line 156
    iget-object v5, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, p1, v1, v2}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    .line 157
    .local v5, "endOfSpan":I
    if-ne v5, v3, :cond_1c

    .line 158
    goto :goto_3b

    .line 160
    :cond_1c
    sget-object v6, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p2, v6, :cond_29

    .line 161
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v5, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 164
    :cond_29
    if-nez v4, :cond_31

    .line 165
    new-instance v6, Landroid/icu/util/OutputInt;

    invoke-direct {v6}, Landroid/icu/util/OutputInt;-><init>()V

    move-object v4, v6

    .line 167
    :cond_31
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v5, p3, v4}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v1

    .line 168
    iget v6, v4, Landroid/icu/util/OutputInt;->value:I

    add-int/2addr v0, v6

    .line 170
    .end local v5    # "endOfSpan":I
    :goto_3a
    goto :goto_11

    .line 171
    :cond_3b
    :goto_3b
    return v0
.end method

.method public whitelist test-api deleteFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 182
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const-string v2, ""

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api deleteFrom(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 195
    const-string v0, ""

    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 74
    instance-of v0, p1, Landroid/icu/text/UnicodeSetSpanner;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    move-object v1, p1

    check-cast v1, Landroid/icu/text/UnicodeSetSpanner;

    iget-object v1, v1, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist test-api getUnicodeSet()Landroid/icu/text/UnicodeSet;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;

    .line 209
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;)Ljava/lang/String;
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;
    .param p3, "countMethod"    # Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    .line 225
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;
    .registers 13
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;
    .param p3, "countMethod"    # Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    .param p4, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 244
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p4, v0, :cond_7

    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_9

    .line 245
    :cond_7
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_9
    nop

    .line 246
    .local v0, "copySpan":Landroid/icu/text/UnicodeSet$SpanCondition;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 247
    .local v1, "remove":Z
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 252
    .local v3, "length":I
    const/4 v4, 0x0

    .line 253
    .local v4, "spanCount":Landroid/icu/util/OutputInt;
    const/4 v5, 0x0

    .local v5, "endCopy":I
    :goto_1e
    if-eq v5, v3, :cond_61

    .line 255
    sget-object v6, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p3, v6, :cond_2b

    .line 256
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v5, p4}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v6

    .local v6, "endModify":I
    goto :goto_39

    .line 258
    .end local v6    # "endModify":I
    :cond_2b
    if-nez v4, :cond_33

    .line 259
    new-instance v6, Landroid/icu/util/OutputInt;

    invoke-direct {v6}, Landroid/icu/util/OutputInt;-><init>()V

    move-object v4, v6

    .line 261
    :cond_33
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v5, p4, v4}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v6

    .line 263
    .restart local v6    # "endModify":I
    :goto_39
    if-nez v1, :cond_50

    if-nez v6, :cond_3e

    goto :goto_50

    .line 265
    :cond_3e
    sget-object v7, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p3, v7, :cond_46

    .line 266
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 268
    :cond_46
    iget v7, v4, Landroid/icu/util/OutputInt;->value:I

    .local v7, "i":I
    :goto_48
    if-lez v7, :cond_50

    .line 269
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 268
    add-int/lit8 v7, v7, -0x1

    goto :goto_48

    .line 272
    .end local v7    # "i":I
    :cond_50
    :goto_50
    if-ne v6, v3, :cond_53

    .line 273
    goto :goto_61

    .line 275
    :cond_53
    iget-object v7, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v7, p1, v6, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    .line 276
    invoke-interface {p1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 277
    .end local v6    # "endModify":I
    goto :goto_1e

    .line 278
    .end local v5    # "endCopy":I
    :cond_61
    :goto_61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 315
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "trimOption"    # Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    .line 337
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "trimOption"    # Landroid/icu/text/UnicodeSetSpanner$TrimOption;
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 362
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 363
    .local v0, "length":I
    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    if-eq p2, v1, :cond_13

    .line 364
    iget-object v1, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    .line 365
    .local v1, "endLeadContained":I
    if-ne v1, v0, :cond_14

    .line 366
    const-string v2, ""

    return-object v2

    .line 369
    .end local v1    # "endLeadContained":I
    :cond_13
    const/4 v1, 0x0

    .line 371
    .restart local v1    # "endLeadContained":I
    :cond_14
    sget-object v2, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    if-eq p2, v2, :cond_1f

    .line 372
    iget-object v2, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, p1, p3}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    .local v2, "startTrailContained":I
    goto :goto_20

    .line 374
    .end local v2    # "startTrailContained":I
    :cond_1f
    move v2, v0

    .line 376
    .restart local v2    # "startTrailContained":I
    :goto_20
    if-nez v1, :cond_26

    if-ne v2, v0, :cond_26

    move-object v3, p1

    goto :goto_2a

    :cond_26
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_2a
    return-object v3
.end method
