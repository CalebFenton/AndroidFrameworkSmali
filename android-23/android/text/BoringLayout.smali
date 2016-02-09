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


# static fields
.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final sTemp:Landroid/text/TextPaint;


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
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 426
    new-instance v0, Landroid/text/TextPaint;

    #@2
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    #@5
    .line 425
    sput-object v0, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    #@7
    .line 37
    return-void
.end method

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
    .line 224
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
    .line 243
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
    .line 234
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 23
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "metrics"    # Landroid/text/BoringLayout$Metrics;

    #@0
    .prologue
    .line 254
    const/16 v5, 0x1f4

    #@2
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    #@5
    move-result-object v22

    #@6
    .line 255
    .local v22, "temp":[C
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v8

    #@a
    .line 256
    .local v8, "length":I
    const/4 v14, 0x1

    #@b
    .line 259
    .local v14, "boring":Z
    const/16 v17, 0x0

    #@d
    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    #@f
    if-ge v0, v8, :cond_2

    #@11
    .line 260
    move/from16 v0, v17

    #@13
    add-int/lit16 v0, v0, 0x1f4

    #@15
    move/from16 v18, v0

    #@17
    .line 262
    .local v18, "j":I
    move/from16 v0, v18

    #@19
    if-le v0, v8, :cond_0

    #@1b
    .line 263
    move/from16 v18, v8

    #@1d
    .line 265
    :cond_0
    const/4 v5, 0x0

    #@1e
    move-object/from16 v0, p0

    #@20
    move/from16 v1, v17

    #@22
    move/from16 v2, v18

    #@24
    move-object/from16 v3, v22

    #@26
    invoke-static {v0, v1, v2, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@29
    .line 267
    sub-int v19, v18, v17

    #@2b
    .line 269
    .local v19, "n":I
    const/4 v13, 0x0

    #@2c
    .local v13, "a":I
    :goto_1
    move/from16 v0, v19

    #@2e
    if-ge v13, v0, :cond_c

    #@30
    .line 270
    aget-char v15, v22, v13

    #@32
    .line 272
    .local v15, "c":C
    const/16 v5, 0xa

    #@34
    if-eq v15, v5, :cond_1

    #@36
    const/16 v5, 0x9

    #@38
    if-ne v15, v5, :cond_5

    #@3a
    .line 281
    :cond_1
    const/4 v14, 0x0

    #@3b
    .line 292
    .end local v13    # "a":I
    .end local v15    # "c":C
    .end local v18    # "j":I
    .end local v19    # "n":I
    :cond_2
    :goto_2
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->recycle([C)V

    #@3e
    .line 294
    if-eqz v14, :cond_3

    #@40
    move-object/from16 v0, p0

    #@42
    instance-of v5, v0, Landroid/text/Spanned;

    #@44
    if-eqz v5, :cond_3

    #@46
    move-object/from16 v20, p0

    #@48
    .line 295
    check-cast v20, Landroid/text/Spanned;

    #@4a
    .line 296
    .local v20, "sp":Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ParagraphStyle;

    #@4c
    const/4 v6, 0x0

    #@4d
    move-object/from16 v0, v20

    #@4f
    invoke-interface {v0, v6, v8, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@52
    move-result-object v21

    #@53
    .line 297
    .local v21, "styles":[Ljava/lang/Object;
    move-object/from16 v0, v21

    #@55
    array-length v5, v0

    #@56
    if-lez v5, :cond_3

    #@58
    .line 298
    const/4 v14, 0x0

    #@59
    .line 302
    .end local v20    # "sp":Landroid/text/Spanned;
    .end local v21    # "styles":[Ljava/lang/Object;
    :cond_3
    if-eqz v14, :cond_e

    #@5b
    .line 303
    move-object/from16 v16, p3

    #@5d
    .line 304
    .local v16, "fm":Landroid/text/BoringLayout$Metrics;
    if-nez v16, :cond_4

    #@5f
    .line 305
    new-instance v16, Landroid/text/BoringLayout$Metrics;

    #@61
    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    invoke-direct/range {v16 .. v16}, Landroid/text/BoringLayout$Metrics;-><init>()V

    #@64
    .line 308
    .restart local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    :cond_4
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@67
    move-result-object v4

    #@68
    .line 310
    .local v4, "line":Landroid/text/TextLine;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@6a
    .line 309
    const/4 v7, 0x0

    #@6b
    const/4 v9, 0x1

    #@6c
    .line 310
    const/4 v11, 0x0

    #@6d
    const/4 v12, 0x0

    #@6e
    move-object/from16 v5, p1

    #@70
    move-object/from16 v6, p0

    #@72
    .line 309
    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@75
    .line 311
    move-object/from16 v0, v16

    #@77
    invoke-virtual {v4, v0}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    #@7a
    move-result v5

    #@7b
    float-to-double v6, v5

    #@7c
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    #@7f
    move-result-wide v6

    #@80
    double-to-int v5, v6

    #@81
    move-object/from16 v0, v16

    #@83
    iput v5, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@85
    .line 312
    invoke-static {v4}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@88
    .line 314
    return-object v16

    #@89
    .line 273
    .end local v4    # "line":Landroid/text/TextLine;
    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    .restart local v13    # "a":I
    .restart local v15    # "c":C
    .restart local v18    # "j":I
    .restart local v19    # "n":I
    :cond_5
    const/16 v5, 0x590

    #@8b
    if-lt v15, v5, :cond_6

    #@8d
    const/16 v5, 0x8ff

    #@8f
    if-le v15, v5, :cond_1

    #@91
    .line 274
    :cond_6
    const/16 v5, 0x200f

    #@93
    if-eq v15, v5, :cond_1

    #@95
    .line 275
    const/16 v5, 0x202a

    #@97
    if-lt v15, v5, :cond_7

    #@99
    const/16 v5, 0x202e

    #@9b
    if-le v15, v5, :cond_1

    #@9d
    .line 276
    :cond_7
    const/16 v5, 0x2066

    #@9f
    if-lt v15, v5, :cond_8

    #@a1
    const/16 v5, 0x2069

    #@a3
    if-le v15, v5, :cond_1

    #@a5
    .line 277
    :cond_8
    const v5, 0xd800

    #@a8
    if-lt v15, v5, :cond_9

    #@aa
    const v5, 0xdfff

    #@ad
    if-le v15, v5, :cond_1

    #@af
    .line 278
    :cond_9
    const v5, 0xfb1d

    #@b2
    if-lt v15, v5, :cond_a

    #@b4
    const v5, 0xfdff

    #@b7
    if-le v15, v5, :cond_1

    #@b9
    .line 279
    :cond_a
    const v5, 0xfe70

    #@bc
    if-lt v15, v5, :cond_b

    #@be
    const v5, 0xfefe

    #@c1
    if-le v15, v5, :cond_1

    #@c3
    .line 269
    :cond_b
    add-int/lit8 v13, v13, 0x1

    #@c5
    goto/16 :goto_1

    #@c7
    .line 286
    .end local v15    # "c":C
    :cond_c
    if-eqz p2, :cond_d

    #@c9
    const/4 v5, 0x0

    #@ca
    move-object/from16 v0, p2

    #@cc
    move-object/from16 v1, v22

    #@ce
    move/from16 v2, v19

    #@d0
    invoke-interface {v0, v1, v5, v2}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    #@d3
    move-result v5

    #@d4
    if-eqz v5, :cond_d

    #@d6
    .line 287
    const/4 v14, 0x0

    #@d7
    .line 288
    goto/16 :goto_2

    #@d9
    .line 259
    :cond_d
    move/from16 v0, v17

    #@db
    add-int/lit16 v0, v0, 0x1f4

    #@dd
    move/from16 v17, v0

    #@df
    goto/16 :goto_0

    #@e1
    .line 316
    .end local v13    # "a":I
    .end local v18    # "j":I
    .end local v19    # "n":I
    :cond_e
    const/4 v5, 0x0

    #@e2
    return-object v5
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
    .line 400
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-nez p2, :cond_0

    #@6
    .line 401
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
    .line 399
    :goto_0
    return-void

    #@15
    .line 403
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
    .line 411
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    #@2
    .line 412
    sub-int v0, p2, p1

    #@4
    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    #@6
    .line 410
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    #@0
    .prologue
    .line 378
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    #@2
    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 383
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    #@2
    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 388
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    #@2
    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    #@0
    .prologue
    .line 393
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 322
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    #@2
    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 358
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLineCount()I
    .locals 1

    #@0
    .prologue
    .line 327
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 340
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    #@2
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 368
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@2
    return-object v0
.end method

.method public getLineMax(I)F
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 363
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
    .line 345
    if-nez p1, :cond_0

    #@3
    .line 346
    return v0

    #@4
    .line 348
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
    .line 332
    if-nez p1, :cond_0

    #@3
    .line 333
    return v0

    #@4
    .line 335
    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    #@6
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 353
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getTopPadding()I
    .locals 1

    #@0
    .prologue
    .line 373
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
    .line 190
    .local v11, "spacing":I
    :goto_1
    iput v11, p0, Landroid/text/BoringLayout;->mBottom:I

    #@20
    .line 192
    if-eqz p8, :cond_3

    #@22
    .line 193
    move-object/from16 v0, p7

    #@24
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->top:I

    #@26
    add-int/2addr v3, v11

    #@27
    iput v3, p0, Landroid/text/BoringLayout;->mDesc:I

    #@29
    .line 198
    :goto_2
    if-eqz p9, :cond_4

    #@2b
    .line 199
    move-object/from16 v0, p7

    #@2d
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@2f
    int-to-float v3, v3

    #@30
    iput v3, p0, Landroid/text/BoringLayout;->mMax:F

    #@32
    .line 213
    :goto_3
    if-eqz p8, :cond_0

    #@34
    .line 214
    move-object/from16 v0, p7

    #@36
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->top:I

    #@38
    move-object/from16 v0, p7

    #@3a
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    #@3c
    sub-int/2addr v3, v4

    #@3d
    iput v3, p0, Landroid/text/BoringLayout;->mTopPadding:I

    #@3f
    .line 215
    move-object/from16 v0, p7

    #@41
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    #@43
    move-object/from16 v0, p7

    #@45
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    #@47
    sub-int/2addr v3, v4

    #@48
    iput v3, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    #@4a
    .line 173
    :cond_0
    return-void

    #@4b
    .line 179
    .end local v11    # "spacing":I
    :cond_1
    const/4 v3, 0x0

    #@4c
    iput-object v3, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    #@4e
    goto :goto_0

    #@4f
    .line 187
    :cond_2
    move-object/from16 v0, p7

    #@51
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    #@53
    move-object/from16 v0, p7

    #@55
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    #@57
    sub-int v11, v3, v4

    #@59
    .restart local v11    # "spacing":I
    goto :goto_1

    #@5a
    .line 195
    :cond_3
    move-object/from16 v0, p7

    #@5c
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    #@5e
    add-int/2addr v3, v11

    #@5f
    iput v3, p0, Landroid/text/BoringLayout;->mDesc:I

    #@61
    goto :goto_2

    #@62
    .line 206
    :cond_4
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@65
    move-result-object v2

    #@66
    .line 207
    .local v2, "line":Landroid/text/TextLine;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@69
    move-result v6

    #@6a
    .line 208
    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@6c
    .line 207
    const/4 v5, 0x0

    #@6d
    const/4 v7, 0x1

    #@6e
    .line 208
    const/4 v9, 0x0

    #@6f
    const/4 v10, 0x0

    #@70
    move-object v3, p2

    #@71
    move-object v4, p1

    #@72
    .line 207
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@75
    .line 209
    const/4 v3, 0x0

    #@76
    invoke-virtual {v2, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    #@79
    move-result v3

    #@7a
    float-to-double v4, v3

    #@7b
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@7e
    move-result-wide v4

    #@7f
    double-to-int v3, v4

    #@80
    int-to-float v3, v3

    #@81
    iput v3, p0, Landroid/text/BoringLayout;->mMax:F

    #@83
    .line 210
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@86
    goto :goto_3
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
