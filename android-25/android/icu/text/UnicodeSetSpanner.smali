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
.field private final unicodeSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .param p1, "source"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@5
    .line 53
    return-void
.end method


# virtual methods
.method public countIn(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 117
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@2
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@4
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;)I
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "countMethod"    # Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@0
    .prologue
    .line 130
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSetSpanner;->countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 7
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "countMethod"    # Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    .line 147
    const/4 v0, 0x0

    #@1
    .line 148
    .local v0, "count":I
    const/4 v5, 0x0

    #@2
    .line 149
    .local v5, "start":I
    sget-object v6, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@4
    if-ne p3, v6, :cond_1

    #@6
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@8
    .line 151
    .local v3, "skipSpan":Landroid/icu/text/UnicodeSet$SpanCondition;
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v2

    #@c
    .line 152
    .local v2, "length":I
    const/4 v4, 0x0

    #@d
    .line 153
    :goto_1
    if-eq v5, v2, :cond_0

    #@f
    .line 154
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@11
    invoke-virtual {v6, p1, v5, v3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@14
    move-result v1

    #@15
    .line 155
    .local v1, "endOfSpan":I
    if-ne v1, v2, :cond_2

    #@17
    .line 169
    .end local v1    # "endOfSpan":I
    :cond_0
    return v0

    #@18
    .line 150
    .end local v2    # "length":I
    .end local v3    # "skipSpan":Landroid/icu/text/UnicodeSet$SpanCondition;
    :cond_1
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@1a
    .restart local v3    # "skipSpan":Landroid/icu/text/UnicodeSet$SpanCondition;
    goto :goto_0

    #@1b
    .line 158
    .restart local v1    # "endOfSpan":I
    .restart local v2    # "length":I
    :cond_2
    sget-object v6, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@1d
    if-ne p2, v6, :cond_3

    #@1f
    .line 159
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@21
    invoke-virtual {v6, p1, v1, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@24
    move-result v5

    #@25
    .line 160
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_1

    #@28
    .line 162
    :cond_3
    if-nez v4, :cond_4

    #@2a
    .line 163
    new-instance v4, Landroid/icu/util/OutputInt;

    #@2c
    invoke-direct {v4}, Landroid/icu/util/OutputInt;-><init>()V

    #@2f
    .line 165
    :cond_4
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@31
    invoke-virtual {v6, p1, v1, p3, v4}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    #@34
    move-result v5

    #@35
    .line 166
    iget v6, v4, Landroid/icu/util/OutputInt;->value:I

    #@37
    add-int/2addr v0, v6

    #@38
    goto :goto_1
.end method

.method public deleteFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 180
    const-string/jumbo v0, ""

    #@3
    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@5
    sget-object v2, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@7
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public deleteFrom(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    .line 193
    const-string/jumbo v0, ""

    #@3
    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@5
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 72
    instance-of v0, p1, Landroid/icu/text/UnicodeSetSpanner;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@6
    nop

    #@7
    nop

    #@8
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@a
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public getUnicodeSet()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 207
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@2
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@4
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;)Ljava/lang/String;
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;
    .param p3, "countMethod"    # Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@0
    .prologue
    .line 223
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;
    .locals 9
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;
    .param p3, "countMethod"    # Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    .param p4, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    .line 242
    sget-object v8, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    if-ne p4, v8, :cond_2

    #@4
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@6
    .line 244
    .local v0, "copySpan":Landroid/icu/text/UnicodeSet$SpanCondition;
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v8

    #@a
    if-nez v8, :cond_3

    #@c
    const/4 v5, 0x1

    #@d
    .line 245
    .local v5, "remove":Z
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    .line 249
    .local v6, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@15
    move-result v4

    #@16
    .line 250
    .local v4, "length":I
    const/4 v7, 0x0

    #@17
    .line 251
    .local v7, "spanCount":Landroid/icu/util/OutputInt;
    const/4 v1, 0x0

    #@18
    .end local v7    # "spanCount":Landroid/icu/util/OutputInt;
    .local v1, "endCopy":I
    :goto_2
    if-eq v1, v4, :cond_1

    #@1a
    .line 253
    sget-object v8, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@1c
    if-ne p3, v8, :cond_4

    #@1e
    .line 254
    iget-object v8, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@20
    invoke-virtual {v8, p1, v1, p4}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@23
    move-result v2

    #@24
    .line 261
    .local v2, "endModify":I
    :goto_3
    if-nez v5, :cond_0

    #@26
    if-nez v2, :cond_6

    #@28
    .line 270
    :cond_0
    :goto_4
    if-ne v2, v4, :cond_8

    #@2a
    .line 276
    .end local v2    # "endModify":I
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    return-object v8

    #@2f
    .line 243
    .end local v0    # "copySpan":Landroid/icu/text/UnicodeSet$SpanCondition;
    .end local v1    # "endCopy":I
    .end local v4    # "length":I
    .end local v5    # "remove":Z
    .end local v6    # "result":Ljava/lang/StringBuilder;
    :cond_2
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@31
    .restart local v0    # "copySpan":Landroid/icu/text/UnicodeSet$SpanCondition;
    goto :goto_0

    #@32
    .line 244
    :cond_3
    const/4 v5, 0x0

    #@33
    .restart local v5    # "remove":Z
    goto :goto_1

    #@34
    .line 256
    .restart local v1    # "endCopy":I
    .restart local v4    # "length":I
    .restart local v6    # "result":Ljava/lang/StringBuilder;
    :cond_4
    if-nez v7, :cond_5

    #@36
    .line 257
    new-instance v7, Landroid/icu/util/OutputInt;

    #@38
    invoke-direct {v7}, Landroid/icu/util/OutputInt;-><init>()V

    #@3b
    .line 259
    :cond_5
    iget-object v8, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@3d
    invoke-virtual {v8, p1, v1, p4, v7}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    #@40
    move-result v2

    #@41
    .restart local v2    # "endModify":I
    goto :goto_3

    #@42
    .line 263
    :cond_6
    sget-object v8, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@44
    if-ne p3, v8, :cond_7

    #@46
    .line 264
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@49
    goto :goto_4

    #@4a
    .line 266
    :cond_7
    iget v3, v7, Landroid/icu/util/OutputInt;->value:I

    #@4c
    .local v3, "i":I
    :goto_5
    if-lez v3, :cond_0

    #@4e
    .line 267
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@51
    .line 266
    add-int/lit8 v3, v3, -0x1

    #@53
    goto :goto_5

    #@54
    .line 273
    .end local v3    # "i":I
    :cond_8
    iget-object v8, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@56
    invoke-virtual {v8, p1, v2, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@59
    move-result v1

    #@5a
    .line 274
    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@61
    goto :goto_2
.end method

.method public trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 313
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@2
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@4
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "trimOption"    # Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@0
    .prologue
    .line 335
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "trimOption"    # Landroid/icu/text/UnicodeSetSpanner$TrimOption;
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    .line 360
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v1

    #@4
    .line 361
    .local v1, "length":I
    sget-object v3, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@6
    if-eq p2, v3, :cond_0

    #@8
    .line 362
    iget-object v3, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@a
    invoke-virtual {v3, p1, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    #@d
    move-result v0

    #@e
    .line 363
    .local v0, "endLeadContained":I
    if-ne v0, v1, :cond_1

    #@10
    .line 364
    const-string/jumbo v3, ""

    #@13
    return-object v3

    #@14
    .line 367
    .end local v0    # "endLeadContained":I
    :cond_0
    const/4 v0, 0x0

    #@15
    .line 369
    .restart local v0    # "endLeadContained":I
    :cond_1
    sget-object v3, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@17
    if-eq p2, v3, :cond_2

    #@19
    .line 370
    iget-object v3, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    #@1b
    invoke-virtual {v3, p1, p3}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    #@1e
    move-result v2

    #@1f
    .line 374
    .local v2, "startTrailContained":I
    :goto_0
    if-nez v0, :cond_3

    #@21
    if-ne v2, v1, :cond_3

    #@23
    .end local p1    # "sequence":Ljava/lang/CharSequence;
    :goto_1
    return-object p1

    #@24
    .line 372
    .end local v2    # "startTrailContained":I
    .restart local p1    # "sequence":Ljava/lang/CharSequence;
    :cond_2
    move v2, v1

    #@25
    .restart local v2    # "startTrailContained":I
    goto :goto_0

    #@26
    .line 374
    :cond_3
    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@29
    move-result-object p1

    #@2a
    goto :goto_1
.end method
