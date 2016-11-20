.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z

    #@0
    .prologue
    .line 123
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    #@3
    .line 125
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    #@5
    .line 126
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    #@8
    .line 127
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    #@b
    .line 130
    const/4 v9, 0x1

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move-object v2, p2

    #@f
    move v3, p3

    #@10
    move-object v4, p4

    #@11
    move v5, p5

    #@12
    move/from16 v6, p6

    #@14
    move-object/from16 v7, p7

    #@16
    move/from16 v8, p8

    #@18
    .line 129
    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    #@1b
    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    #@0
    .prologue
    .line 144
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    #@3
    .line 148
    if-eqz p9, :cond_0

    #@5
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@7
    move-object/from16 v0, p9

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 149
    :cond_0
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    #@d
    .line 150
    const/4 v1, 0x0

    #@e
    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    #@10
    .line 151
    const/4 v1, 0x0

    #@11
    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    #@13
    .line 152
    const/4 v10, 0x1

    #@14
    .line 164
    .local v10, "trust":Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    #@17
    move-result-object v2

    #@18
    move-object v1, p0

    #@19
    move-object v3, p2

    #@1a
    move v4, p3

    #@1b
    move-object v5, p4

    #@1c
    move/from16 v6, p5

    #@1e
    move/from16 v7, p6

    #@20
    move-object/from16 v8, p7

    #@22
    move/from16 v9, p8

    #@24
    invoke-virtual/range {v1 .. v10}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    #@27
    .line 138
    return-void

    #@28
    .line 154
    .end local v10    # "trust":Z
    :cond_1
    move/from16 v0, p10

    #@2a
    int-to-float v3, v0

    #@2b
    .line 155
    const/4 v5, 0x1

    #@2c
    move-object v1, p1

    #@2d
    move-object v2, p2

    #@2e
    move-object/from16 v4, p9

    #@30
    move-object v6, p0

    #@31
    .line 154
    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    #@34
    move-result-object v2

    #@35
    move-object v1, p0

    #@36
    move-object v3, p2

    #@37
    move v4, p3

    #@38
    move-object v5, p4

    #@39
    move/from16 v6, p5

    #@3b
    move/from16 v7, p6

    #@3d
    invoke-virtual/range {v1 .. v7}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    #@40
    .line 160
    move/from16 v0, p10

    #@42
    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    #@44
    .line 161
    const/4 v10, 0x0

    #@45
    .restart local v10    # "trust":Z
    goto :goto_0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 220
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "metrics"    # Landroid/text/BoringLayout$Metrics;

    #@0
    .prologue
    .line 239
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@2
    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 230
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 22
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "metrics"    # Landroid/text/BoringLayout$Metrics;

    #@0
    .prologue
    .line 250
    const/16 v11, 0x1f4

    #@2
    .line 251
    .local v11, "MAX_BUF_LEN":I
    const/16 v3, 0x1f4

    #@4
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    #@7
    move-result-object v13

    #@8
    .line 252
    .local v13, "buffer":[C
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v6

    #@c
    .line 253
    .local v6, "textLength":I
    const/4 v12, 0x1

    #@d
    .line 256
    .local v12, "boring":Z
    const/16 v20, 0x0

    #@f
    .local v20, "start":I
    :goto_0
    move/from16 v0, v20

    #@11
    if-ge v0, v6, :cond_1

    #@13
    .line 257
    move/from16 v0, v20

    #@15
    add-int/lit16 v3, v0, 0x1f4

    #@17
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result v15

    #@1b
    .line 261
    .local v15, "end":I
    const/4 v3, 0x0

    #@1c
    move-object/from16 v0, p0

    #@1e
    move/from16 v1, v20

    #@20
    invoke-static {v0, v1, v15, v13, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@23
    .line 263
    sub-int v18, v15, v20

    #@25
    .line 264
    .local v18, "len":I
    const/16 v17, 0x0

    #@27
    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    #@29
    move/from16 v1, v18

    #@2b
    if-ge v0, v1, :cond_a

    #@2d
    .line 265
    aget-char v14, v13, v17

    #@2f
    .line 267
    .local v14, "c":C
    const/16 v3, 0xa

    #@31
    if-eq v14, v3, :cond_0

    #@33
    const/16 v3, 0x9

    #@35
    if-ne v14, v3, :cond_3

    #@37
    .line 276
    :cond_0
    const/4 v12, 0x0

    #@38
    .line 289
    .end local v14    # "c":C
    .end local v15    # "end":I
    .end local v17    # "i":I
    .end local v18    # "len":I
    :cond_1
    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->recycle([C)V

    #@3b
    .line 291
    if-eqz v12, :cond_2

    #@3d
    move-object/from16 v0, p0

    #@3f
    instance-of v3, v0, Landroid/text/Spanned;

    #@41
    if-eqz v3, :cond_2

    #@43
    move-object/from16 v19, p0

    #@45
    .line 292
    check-cast v19, Landroid/text/Spanned;

    #@47
    .line 293
    .local v19, "sp":Landroid/text/Spanned;
    const-class v3, Landroid/text/style/ParagraphStyle;

    #@49
    const/4 v4, 0x0

    #@4a
    move-object/from16 v0, v19

    #@4c
    invoke-interface {v0, v4, v6, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@4f
    move-result-object v21

    #@50
    .line 294
    .local v21, "styles":[Ljava/lang/Object;
    move-object/from16 v0, v21

    #@52
    array-length v3, v0

    #@53
    if-lez v3, :cond_2

    #@55
    .line 295
    const/4 v12, 0x0

    #@56
    .line 299
    .end local v19    # "sp":Landroid/text/Spanned;
    .end local v21    # "styles":[Ljava/lang/Object;
    :cond_2
    if-eqz v12, :cond_d

    #@58
    .line 300
    move-object/from16 v16, p3

    #@5a
    .line 301
    .local v16, "fm":Landroid/text/BoringLayout$Metrics;
    if-nez p3, :cond_c

    #@5c
    .line 302
    new-instance v16, Landroid/text/BoringLayout$Metrics;

    #@5e
    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    invoke-direct/range {v16 .. v16}, Landroid/text/BoringLayout$Metrics;-><init>()V

    #@61
    .line 307
    .restart local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    :goto_3
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@64
    move-result-object v2

    #@65
    .line 309
    .local v2, "line":Landroid/text/TextLine;
    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@67
    .line 308
    const/4 v5, 0x0

    #@68
    const/4 v7, 0x1

    #@69
    .line 309
    const/4 v9, 0x0

    #@6a
    const/4 v10, 0x0

    #@6b
    move-object/from16 v3, p1

    #@6d
    move-object/from16 v4, p0

    #@6f
    .line 308
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@72
    .line 310
    move-object/from16 v0, v16

    #@74
    invoke-virtual {v2, v0}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    #@77
    move-result v3

    #@78
    float-to-double v4, v3

    #@79
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@7c
    move-result-wide v4

    #@7d
    double-to-int v3, v4

    #@7e
    move-object/from16 v0, v16

    #@80
    iput v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@82
    .line 311
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@85
    .line 313
    return-object v16

    #@86
    .line 268
    .end local v2    # "line":Landroid/text/TextLine;
    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    .restart local v14    # "c":C
    .restart local v15    # "end":I
    .restart local v17    # "i":I
    .restart local v18    # "len":I
    :cond_3
    const/16 v3, 0x590

    #@88
    if-lt v14, v3, :cond_4

    #@8a
    const/16 v3, 0x8ff

    #@8c
    if-le v14, v3, :cond_0

    #@8e
    .line 269
    :cond_4
    const/16 v3, 0x200f

    #@90
    if-eq v14, v3, :cond_0

    #@92
    .line 270
    const/16 v3, 0x202a

    #@94
    if-lt v14, v3, :cond_5

    #@96
    const/16 v3, 0x202e

    #@98
    if-le v14, v3, :cond_0

    #@9a
    .line 271
    :cond_5
    const/16 v3, 0x2066

    #@9c
    if-lt v14, v3, :cond_6

    #@9e
    const/16 v3, 0x2069

    #@a0
    if-le v14, v3, :cond_0

    #@a2
    .line 272
    :cond_6
    const v3, 0xd800

    #@a5
    if-lt v14, v3, :cond_7

    #@a7
    const v3, 0xdfff

    #@aa
    if-le v14, v3, :cond_0

    #@ac
    .line 273
    :cond_7
    const v3, 0xfb1d

    #@af
    if-lt v14, v3, :cond_8

    #@b1
    const v3, 0xfdff

    #@b4
    if-le v14, v3, :cond_0

    #@b6
    .line 274
    :cond_8
    const v3, 0xfe70

    #@b9
    if-lt v14, v3, :cond_9

    #@bb
    const v3, 0xfefe

    #@be
    if-le v14, v3, :cond_0

    #@c0
    .line 264
    :cond_9
    add-int/lit8 v17, v17, 0x1

    #@c2
    goto/16 :goto_1

    #@c4
    .line 283
    .end local v14    # "c":C
    :cond_a
    if-eqz p2, :cond_b

    #@c6
    const/4 v3, 0x0

    #@c7
    move-object/from16 v0, p2

    #@c9
    move/from16 v1, v18

    #@cb
    invoke-interface {v0, v13, v3, v1}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    #@ce
    move-result v3

    #@cf
    if-eqz v3, :cond_b

    #@d1
    .line 284
    const/4 v12, 0x0

    #@d2
    .line 285
    goto/16 :goto_2

    #@d4
    .line 256
    :cond_b
    move/from16 v0, v20

    #@d6
    add-int/lit16 v0, v0, 0x1f4

    #@d8
    move/from16 v20, v0

    #@da
    goto/16 :goto_0

    #@dc
    .line 304
    .end local v15    # "end":I
    .end local v17    # "i":I
    .end local v18    # "len":I
    .restart local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    :cond_c
    invoke-static/range {p3 .. p3}, Landroid/text/BoringLayout$Metrics;->-wrap0(Landroid/text/BoringLayout$Metrics;)V

    #@df
    goto :goto_3

    #@e0
    .line 315
    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    :cond_d
    const/4 v3, 0x0

    #@e1
    return-object v3
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 9
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerwidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingmult"    # F
    .param p5, "spacingadd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includepad"    # Z

    #@0
    .prologue
    .line 43
    new-instance v0, Landroid/text/BoringLayout;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    move v6, p5

    #@8
    move-object v7, p6

    #@9
    move/from16 v8, p7

    #@b
    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    #@e
    return-object v0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerwidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingmult"    # F
    .param p5, "spacingadd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includepad"    # Z
    .param p8, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p9, "ellipsizedWidth"    # I

    #@0
    .prologue
    .line 54
    new-instance v0, Landroid/text/BoringLayout;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    move/from16 v6, p5

    #@9
    move-object/from16 v7, p6

    #@b
    move/from16 v8, p7

    #@d
    move-object/from16 v9, p8

    #@f
    move/from16 v10, p9

    #@11
    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    #@14
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightpaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffset"    # I

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-nez p2, :cond_0

    #@6
    .line 405
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    #@8
    const/4 v1, 0x0

    #@9
    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    #@b
    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    #@d
    sub-int/2addr v2, v3

    #@e
    int-to-float v2, v2

    #@f
    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    #@11
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@14
    .line 403
    :goto_0
    return-void

    #@15
    .line 407
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@18
    goto :goto_0
.end method

.method public ellipsized(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 415
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    #@2
    .line 416
    sub-int v0, p2, p1

    #@4
    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    #@6
    .line 414
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    #@0
    .prologue
    .line 382
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    #@2
    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 387
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    #@2
    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 392
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    #@2
    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    #@0
    .prologue
    .line 397
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    #@2
    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 357
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLineCount()I
    .locals 1

    #@0
    .prologue
    .line 326
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 339
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    #@2
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 372
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@2
    return-object v0
.end method

.method public getLineMax(I)F
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 362
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    #@2
    return v0
.end method

.method public getLineStart(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 344
    if-nez p1, :cond_0

    #@3
    .line 345
    return v0

    #@4
    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getLineTop(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 331
    if-nez p1, :cond_0

    #@3
    .line 332
    return v0

    #@4
    .line 334
    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    #@6
    return v0
.end method

.method public getLineWidth(I)F
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 367
    if-nez p1, :cond_0

    #@2
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 352
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getTopPadding()I
    .locals 1

    #@0
    .prologue
    .line 377
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    #@2
    return v0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z
    .param p9, "trustWidth"    # Z

    #@0
    .prologue
    .line 176
    instance-of v3, p1, Ljava/lang/String;

    #@2
    if-eqz v3, :cond_1

    #@4
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@6
    move-object/from16 v0, p4

    #@8
    if-ne v0, v3, :cond_1

    #@a
    .line 177
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    iput-object v3, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    #@10
    .line 182
    :goto_0
    iput-object p2, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    #@12
    .line 184
    if-eqz p8, :cond_2

    #@14
    .line 185
    move-object/from16 v0, p7

    #@16
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    #@18
    move-object/from16 v0, p7

    #@1a
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->top:I

    #@1c
    sub-int v11, v3, v4

    #@1e
    .line 186
    .local v11, "spacing":I
    move-object/from16 v0, p7

    #@20
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    #@22
    iput v3, p0, Landroid/text/BoringLayout;->mDesc:I

    #@24
    .line 192
    :goto_1
    iput v11, p0, Landroid/text/BoringLayout;->mBottom:I

    #@26
    .line 194
    if-eqz p9, :cond_3

    #@28
    .line 195
    move-object/from16 v0, p7

    #@2a
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@2c
    int-to-float v3, v3

    #@2d
    iput v3, p0, Landroid/text/BoringLayout;->mMax:F

    #@2f
    .line 209
    :goto_2
    if-eqz p8, :cond_0

    #@31
    .line 210
    move-object/from16 v0, p7

    #@33
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->top:I

    #@35
    move-object/from16 v0, p7

    #@37
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    #@39
    sub-int/2addr v3, v4

    #@3a
    iput v3, p0, Landroid/text/BoringLayout;->mTopPadding:I

    #@3c
    .line 211
    move-object/from16 v0, p7

    #@3e
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    #@40
    move-object/from16 v0, p7

    #@42
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    #@44
    sub-int/2addr v3, v4

    #@45
    iput v3, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    #@47
    .line 173
    :cond_0
    return-void

    #@48
    .line 179
    .end local v11    # "spacing":I
    :cond_1
    const/4 v3, 0x0

    #@49
    iput-object v3, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    #@4b
    goto :goto_0

    #@4c
    .line 188
    :cond_2
    move-object/from16 v0, p7

    #@4e
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    #@50
    move-object/from16 v0, p7

    #@52
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    #@54
    sub-int v11, v3, v4

    #@56
    .line 189
    .restart local v11    # "spacing":I
    move-object/from16 v0, p7

    #@58
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    #@5a
    iput v3, p0, Landroid/text/BoringLayout;->mDesc:I

    #@5c
    goto :goto_1

    #@5d
    .line 202
    :cond_3
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@60
    move-result-object v2

    #@61
    .line 203
    .local v2, "line":Landroid/text/TextLine;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@64
    move-result v6

    #@65
    .line 204
    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@67
    .line 203
    const/4 v5, 0x0

    #@68
    const/4 v7, 0x1

    #@69
    .line 204
    const/4 v9, 0x0

    #@6a
    const/4 v10, 0x0

    #@6b
    move-object v3, p2

    #@6c
    move-object v4, p1

    #@6d
    .line 203
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@70
    .line 205
    const/4 v3, 0x0

    #@71
    invoke-virtual {v2, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    #@74
    move-result v3

    #@75
    float-to-double v4, v3

    #@76
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@79
    move-result-wide v4

    #@7a
    double-to-int v3, v4

    #@7b
    int-to-float v3, v3

    #@7c
    iput v3, p0, Landroid/text/BoringLayout;->mMax:F

    #@7e
    .line 206
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@81
    goto :goto_2
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z

    #@0
    .prologue
    .line 69
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    #@3
    .line 72
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    #@5
    .line 73
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    #@8
    .line 74
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    #@b
    .line 77
    const/4 v9, 0x1

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move-object v2, p2

    #@f
    move v3, p3

    #@10
    move-object v4, p4

    #@11
    move v5, p5

    #@12
    move/from16 v6, p6

    #@14
    move-object/from16 v7, p7

    #@16
    move/from16 v8, p8

    #@18
    .line 76
    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    #@1b
    .line 78
    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    #@0
    .prologue
    .line 95
    if-eqz p9, :cond_0

    #@2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@4
    move-object/from16 v0, p9

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 96
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    #@b
    .line 99
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    #@d
    .line 100
    const/4 v1, 0x0

    #@e
    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    #@10
    .line 101
    const/4 v1, 0x0

    #@11
    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    #@13
    .line 102
    const/4 v10, 0x1

    #@14
    .line 113
    .local v10, "trust":Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    #@17
    move-result-object v2

    #@18
    move-object v1, p0

    #@19
    move-object v3, p2

    #@1a
    move v4, p3

    #@1b
    move-object v5, p4

    #@1c
    move/from16 v6, p5

    #@1e
    move/from16 v7, p6

    #@20
    move-object/from16 v8, p7

    #@22
    move/from16 v9, p8

    #@24
    invoke-virtual/range {v1 .. v10}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    #@27
    .line 115
    return-object p0

    #@28
    .line 104
    .end local v10    # "trust":Z
    :cond_1
    move/from16 v0, p10

    #@2a
    int-to-float v3, v0

    #@2b
    .line 105
    const/4 v5, 0x1

    #@2c
    move-object v1, p1

    #@2d
    move-object v2, p2

    #@2e
    move-object/from16 v4, p9

    #@30
    move-object v6, p0

    #@31
    .line 104
    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    #@34
    move-result-object v2

    #@35
    move-object v1, p0

    #@36
    move-object v3, p2

    #@37
    move v4, p3

    #@38
    move-object v5, p4

    #@39
    move/from16 v6, p5

    #@3b
    move/from16 v7, p6

    #@3d
    invoke-virtual/range {v1 .. v7}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    #@40
    .line 109
    move/from16 v0, p10

    #@42
    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    #@44
    .line 110
    const/4 v10, 0x0

    #@45
    .restart local v10    # "trust":Z
    goto :goto_0
.end method
