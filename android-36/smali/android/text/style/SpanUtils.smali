.class public Landroid/text/style/SpanUtils;
.super Ljava/lang/Object;
.source "SpanUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist hasIntersection(IIII)Z
    .registers 5
    .param p0, "aMin"    # I
    .param p1, "aMax"    # I
    .param p2, "bMin"    # I
    .param p3, "bMax"    # I

    .line 286
    if-ge p0, p3, :cond_6

    if-ge p2, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist intersection(IIII)J
    .registers 6
    .param p0, "aMin"    # I
    .param p1, "aMax"    # I
    .param p2, "bMin"    # I
    .param p3, "bMax"    # I

    .line 290
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/style/SpanUtils;->pack(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist isCovered(Landroid/text/Spannable;Ljava/util/List;II)Z
    .registers 23
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p2, "min"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spannable;",
            "Ljava/util/List<",
            "TT;>;II)Z"
        }
    .end annotation

    .line 296
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    if-ne v2, v3, :cond_a

    .line 297
    return v1

    .line 300
    :cond_a
    new-instance v4, Landroid/util/LongArray;

    invoke-direct {v4}, Landroid/util/LongArray;-><init>()V

    .line 301
    .local v4, "uncoveredRanges":Landroid/util/LongArray;
    new-instance v5, Landroid/util/LongArray;

    invoke-direct {v5}, Landroid/util/LongArray;-><init>()V

    .line 303
    .local v5, "nextUncoveredRanges":Landroid/util/LongArray;
    invoke-static/range {p2 .. p3}, Landroid/text/style/SpanUtils;->pack(II)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/util/LongArray;->add(J)V

    .line 305
    const/4 v6, 0x0

    .local v6, "si":I
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_95

    .line 306
    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 307
    .local v8, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 308
    .local v9, "start":I
    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 310
    .local v10, "end":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_31
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_7a

    .line 311
    invoke-virtual {v4, v11}, Landroid/util/LongArray;->get(I)J

    move-result-wide v12

    .line 312
    .local v12, "packed":J
    invoke-static {v12, v13}, Landroid/text/style/SpanUtils;->min(J)I

    move-result v14

    .line 313
    .local v14, "uncoveredStart":I
    invoke-static {v12, v13}, Landroid/text/style/SpanUtils;->max(J)I

    move-result v15

    .line 315
    .local v15, "uncoveredEnd":I
    invoke-static {v9, v10, v14, v15}, Landroid/text/style/SpanUtils;->hasIntersection(IIII)Z

    move-result v16

    if-nez v16, :cond_4f

    .line 317
    invoke-virtual {v5, v12, v13}, Landroid/util/LongArray;->add(J)V

    move/from16 v18, v1

    goto :goto_6f

    .line 321
    :cond_4f
    invoke-static {v9, v10, v14, v15}, Landroid/text/style/SpanUtils;->intersection(IIII)J

    move-result-wide v16

    .line 322
    .local v16, "intersectionPack":J
    move/from16 v18, v1

    invoke-static/range {v16 .. v17}, Landroid/text/style/SpanUtils;->min(J)I

    move-result v1

    .line 323
    .local v1, "intersectStart":I
    invoke-static/range {v16 .. v17}, Landroid/text/style/SpanUtils;->max(J)I

    move-result v0

    .line 328
    .local v0, "intersectEnd":I
    if-eq v14, v1, :cond_66

    .line 330
    invoke-static {v14, v1}, Landroid/text/style/SpanUtils;->pack(II)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Landroid/util/LongArray;->add(J)V

    .line 332
    :cond_66
    if-eq v0, v15, :cond_6f

    .line 334
    invoke-static {v0, v15}, Landroid/text/style/SpanUtils;->pack(II)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Landroid/util/LongArray;->add(J)V

    .line 310
    .end local v0    # "intersectEnd":I
    .end local v1    # "intersectStart":I
    .end local v12    # "packed":J
    .end local v14    # "uncoveredStart":I
    .end local v15    # "uncoveredEnd":I
    .end local v16    # "intersectionPack":J
    :cond_6f
    :goto_6f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v1, v18

    goto :goto_31

    :cond_7a
    move/from16 v18, v1

    .line 339
    .end local v11    # "i":I
    invoke-virtual {v5}, Landroid/util/LongArray;->size()I

    move-result v0

    if-nez v0, :cond_84

    .line 340
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_84
    move-object v0, v5

    .line 345
    .local v0, "tmp":Landroid/util/LongArray;
    move-object v5, v4

    .line 346
    move-object v4, v0

    .line 347
    invoke-virtual {v5}, Landroid/util/LongArray;->clear()V

    .line 305
    .end local v0    # "tmp":Landroid/util/LongArray;
    .end local v8    # "span":Ljava/lang/Object;, "TT;"
    .end local v9    # "start":I
    .end local v10    # "end":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v1, v18

    goto :goto_1c

    :cond_95
    move-object/from16 v7, p1

    move/from16 v18, v1

    .line 350
    .end local v6    # "si":I
    return v18
.end method

.method private static blacklist max(J)I
    .registers 4
    .param p0, "packed"    # J

    .line 282
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static blacklist min(J)I
    .registers 4
    .param p0, "packed"    # J

    .line 278
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static blacklist pack(II)J
    .registers 6
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 274
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist toggleBold(Landroid/text/Spannable;II)Z
    .registers 16
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 52
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 53
    return v0

    .line 56
    :cond_4
    const-class v1, Landroid/text/style/StyleSpan;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/StyleSpan;

    .line 57
    .local v1, "boldSpans":[Landroid/text/style/StyleSpan;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "filteredBoldSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/style/StyleSpan;>;"
    array-length v3, v1

    move v4, v0

    :goto_13
    const/4 v5, 0x1

    if-ge v4, v3, :cond_25

    aget-object v6, v1, v4

    .line 59
    .local v6, "span":Landroid/text/style/StyleSpan;
    invoke-virtual {v6}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_22

    .line 60
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v6    # "span":Landroid/text/style/StyleSpan;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 64
    :cond_25
    invoke-static {p0, v2, p1, p2}, Landroid/text/style/SpanUtils;->isCovered(Landroid/text/Spannable;Ljava/util/List;II)Z

    move-result v3

    if-nez v3, :cond_36

    .line 66
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v3, 0x11

    invoke-interface {p0, v0, p1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 68
    return v5

    .line 72
    :cond_36
    const/4 v3, 0x0

    .local v3, "si":I
    :goto_37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a6

    .line 73
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/style/StyleSpan;

    .line 74
    .local v4, "span":Landroid/text/style/StyleSpan;
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 75
    .local v6, "start":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 76
    .local v7, "end":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    .line 79
    .local v8, "flag":I
    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v9

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_59

    move v9, v5

    goto :goto_5a

    :cond_59
    move v9, v0

    .line 81
    .local v9, "needItalicSpan":Z
    :goto_5a
    if-ge v6, p1, :cond_86

    .line 82
    if-le v7, p2, :cond_78

    .line 86
    invoke-interface {p0, v4, v6, p1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 87
    new-instance v11, Landroid/text/style/StyleSpan;

    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v11, p2, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 88
    if-eqz v9, :cond_a3

    .line 89
    new-instance v11, Landroid/text/style/StyleSpan;

    invoke-direct {v11, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v11, p1, p2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a3

    .line 95
    :cond_78
    invoke-interface {p0, v4, v6, p1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 96
    if-eqz v9, :cond_a3

    .line 97
    new-instance v11, Landroid/text/style/StyleSpan;

    invoke-direct {v11, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v11, p1, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a3

    .line 101
    :cond_86
    if-le v7, p2, :cond_96

    .line 105
    invoke-interface {p0, v4, p2, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 106
    if-eqz v9, :cond_a3

    .line 107
    new-instance v11, Landroid/text/style/StyleSpan;

    invoke-direct {v11, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v11, p2, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a3

    .line 113
    :cond_96
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 114
    if-eqz v9, :cond_a3

    .line 115
    new-instance v11, Landroid/text/style/StyleSpan;

    invoke-direct {v11, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v11, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 72
    .end local v4    # "span":Landroid/text/style/StyleSpan;
    .end local v6    # "start":I
    .end local v7    # "end":I
    .end local v8    # "flag":I
    .end local v9    # "needItalicSpan":Z
    :cond_a3
    :goto_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 120
    .end local v3    # "si":I
    :cond_a6
    return v5
.end method

.method public static blacklist toggleItalic(Landroid/text/Spannable;II)Z
    .registers 15
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 138
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 139
    return v0

    .line 142
    :cond_4
    const-class v1, Landroid/text/style/StyleSpan;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/StyleSpan;

    .line 143
    .local v1, "boldSpans":[Landroid/text/style/StyleSpan;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v2, "filteredBoldSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/style/StyleSpan;>;"
    array-length v3, v1

    move v4, v0

    :goto_13
    const/4 v5, 0x2

    if-ge v4, v3, :cond_25

    aget-object v6, v1, v4

    .line 145
    .local v6, "span":Landroid/text/style/StyleSpan;
    invoke-virtual {v6}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_22

    .line 146
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v6    # "span":Landroid/text/style/StyleSpan;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 150
    :cond_25
    invoke-static {p0, v2, p1, p2}, Landroid/text/style/SpanUtils;->isCovered(Landroid/text/Spannable;Ljava/util/List;II)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_37

    .line 152
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v3, 0x11

    invoke-interface {p0, v0, p1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 154
    return v4

    .line 158
    :cond_37
    const/4 v3, 0x0

    .local v3, "si":I
    :goto_38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a6

    .line 159
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/style/StyleSpan;

    .line 160
    .local v5, "span":Landroid/text/style/StyleSpan;
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 161
    .local v6, "start":I
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 162
    .local v7, "end":I
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    .line 165
    .local v8, "flag":I
    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v9

    and-int/2addr v9, v4

    if-ne v9, v4, :cond_59

    move v9, v4

    goto :goto_5a

    :cond_59
    move v9, v0

    .line 167
    .local v9, "needBoldSpan":Z
    :goto_5a
    if-ge v6, p1, :cond_86

    .line 168
    if-le v7, p2, :cond_78

    .line 172
    invoke-interface {p0, v5, v6, p1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 173
    new-instance v10, Landroid/text/style/StyleSpan;

    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v10, p2, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 174
    if-eqz v9, :cond_a3

    .line 175
    new-instance v10, Landroid/text/style/StyleSpan;

    invoke-direct {v10, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v10, p1, p2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a3

    .line 181
    :cond_78
    invoke-interface {p0, v5, v6, p1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 182
    if-eqz v9, :cond_a3

    .line 183
    new-instance v10, Landroid/text/style/StyleSpan;

    invoke-direct {v10, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v10, p1, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a3

    .line 187
    :cond_86
    if-le v7, p2, :cond_96

    .line 191
    invoke-interface {p0, v5, p2, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 192
    if-eqz v9, :cond_a3

    .line 193
    new-instance v10, Landroid/text/style/StyleSpan;

    invoke-direct {v10, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v10, p2, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a3

    .line 199
    :cond_96
    invoke-interface {p0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 200
    if-eqz v9, :cond_a3

    .line 201
    new-instance v10, Landroid/text/style/StyleSpan;

    invoke-direct {v10, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0, v10, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 158
    .end local v5    # "span":Landroid/text/style/StyleSpan;
    .end local v6    # "start":I
    .end local v7    # "end":I
    .end local v8    # "flag":I
    .end local v9    # "needBoldSpan":Z
    :cond_a3
    :goto_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 206
    .end local v3    # "si":I
    :cond_a6
    return v4
.end method

.method public static blacklist toggleUnderline(Landroid/text/Spannable;II)Z
    .registers 11
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 224
    if-ne p1, p2, :cond_4

    .line 225
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_4
    const-class v0, Landroid/text/style/UnderlineSpan;

    .line 229
    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/UnderlineSpan;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, "spans":Ljava/util/List;, "Ljava/util/List<Landroid/text/style/UnderlineSpan;>;"
    invoke-static {p0, v0, p1, p2}, Landroid/text/style/SpanUtils;->isCovered(Landroid/text/Spannable;Ljava/util/List;II)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_22

    .line 233
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v3, 0x11

    invoke-interface {p0, v1, p1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 234
    return v2

    .line 237
    :cond_22
    const/4 v1, 0x0

    .local v1, "si":I
    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5b

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/style/UnderlineSpan;

    .line 239
    .local v3, "span":Landroid/text/style/UnderlineSpan;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 240
    .local v4, "start":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 241
    .local v5, "end":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 243
    .local v6, "flag":I
    if-ge v4, p1, :cond_4f

    .line 244
    if-le v5, p2, :cond_4b

    .line 248
    invoke-interface {p0, v3, v4, p1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 249
    new-instance v7, Landroid/text/style/UnderlineSpan;

    invoke-direct {v7}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p0, v7, p2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_58

    .line 254
    :cond_4b
    invoke-interface {p0, v3, v4, p1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_58

    .line 257
    :cond_4f
    if-le v5, p2, :cond_55

    .line 261
    invoke-interface {p0, v3, p2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_58

    .line 266
    :cond_55
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 237
    .end local v3    # "span":Landroid/text/style/UnderlineSpan;
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "flag":I
    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 270
    .end local v1    # "si":I
    :cond_5b
    return v2
.end method
