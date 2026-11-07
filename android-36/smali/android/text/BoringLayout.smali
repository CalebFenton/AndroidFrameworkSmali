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
.field greylist-max-o mBottom:I

.field private greylist-max-o mBottomPadding:I

.field greylist-max-o mDesc:I

.field private greylist-max-o mDirect:Ljava/lang/String;

.field private final blacklist mDrawingBounds:Landroid/graphics/RectF;

.field private greylist-max-o mEllipsizedCount:I

.field private greylist-max-o mEllipsizedStart:I

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mMax:F

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mTopPadding:I

.field private blacklist mUseFallbackLineSpacing:Z


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .registers 31
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z

    .line 274
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v10, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 759
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 281
    move/from16 v8, p3

    iput v8, v0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 282
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 283
    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 284
    iput-boolean v1, v0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 286
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 287
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 23
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .line 310
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 312
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V
    .registers 35
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I
    .param p11, "useFallbackLineSpacing"    # Z

    .line 347
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v19, p7

    move/from16 v8, p8

    move-object/from16 v11, p9

    move/from16 v10, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v22}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 354
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZILandroid/text/TextUtils$TruncateAt;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V
    .registers 38
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "includePad"    # Z
    .param p8, "fallbackLineSpacing"    # Z
    .param p9, "ellipsizedWidth"    # I
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p12, "useBoundsForWidth"    # Z
    .param p13, "shiftDrawingOffsetForStartOverhang"    # Z
    .param p14, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 372
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p13

    move-object/from16 v22, p14

    invoke-direct/range {v0 .. v22}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 378
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V
    .registers 45
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F
    .param p8, "includePad"    # Z
    .param p9, "fallbackLineSpacing"    # Z
    .param p10, "ellipsizedWidth"    # I
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "maxLines"    # I
    .param p13, "breakStrategy"    # I
    .param p14, "hyphenationFrequency"    # I
    .param p15, "leftIndents"    # [I
    .param p16, "rightIndents"    # [I
    .param p17, "justificationMode"    # I
    .param p18, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p19, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p20, "useBoundsForWidth"    # Z
    .param p21, "shiftDrawingOffsetForStartOverhang"    # Z
    .param p22, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p20

    move/from16 v20, p21

    move-object/from16 v21, p22

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 759
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 413
    if-eqz v11, :cond_5f

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v11, v1, :cond_3d

    goto :goto_5f

    .line 419
    :cond_3d
    int-to-float v2, v10

    const/4 v4, 0x1

    move-object/from16 v1, p2

    move-object v5, v0

    move-object v3, v11

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p7

    move-object v0, v5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 422
    iput v10, v0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 423
    const/4 v1, 0x0

    move/from16 v8, p3

    move v6, v1

    .local v1, "trust":Z
    goto :goto_6a

    .line 414
    .end local v1    # "trust":Z
    :cond_5f
    :goto_5f
    move/from16 v8, p3

    iput v8, v0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 415
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 416
    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 417
    const/4 v1, 0x1

    move v6, v1

    .line 426
    .local v6, "trust":Z
    :goto_6a
    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 427
    invoke-virtual {v0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v5, p8

    move-object/from16 v4, p19

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 428
    return-void
.end method

.method private static greylist-max-o hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "textLength"    # I

    .line 510
    const/16 v0, 0x1f4

    .line 511
    .local v0, "MAX_BUF_LEN":I
    const/16 v1, 0x1f4

    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 513
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .local v2, "start":I
    :goto_9
    const/4 v3, 0x0

    if-ge v2, p1, :cond_3c

    .line 514
    add-int/lit16 v4, v2, 0x1f4

    :try_start_e
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 518
    .local v4, "end":I
    invoke-static {p0, v2, v4, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 520
    sub-int v3, v4, v2

    .line 521
    .local v3, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v3, :cond_34

    .line 522
    aget-char v6, v1, v5

    .line 523
    .local v6, "c":C
    const/16 v7, 0xa

    if-eq v6, v7, :cond_2e

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2e

    invoke-static {v6}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v7
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_37

    if-eqz v7, :cond_2b

    goto :goto_2e

    .line 521
    .end local v6    # "c":C
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 524
    .restart local v6    # "c":C
    :cond_2e
    :goto_2e
    nop

    .line 530
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 524
    const/4 v7, 0x1

    return v7

    .line 513
    .end local v3    # "len":I
    .end local v4    # "end":I
    .end local v5    # "i":I
    .end local v6    # "c":C
    :cond_34
    add-int/lit16 v2, v2, 0x1f4

    goto :goto_9

    .line 530
    .end local v2    # "start":I
    :catchall_37
    move-exception v2

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 531
    throw v2

    .line 528
    :cond_3c
    nop

    .line 530
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 528
    return v3
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 487
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 502
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static greylist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 543
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .registers 23
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "useFallbackLineSpacing"    # Z
    .param p4, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;
    .param p5, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 573
    move-object/from16 v2, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 574
    .local v4, "textLength":I
    invoke-static {v2, v4}, Landroid/text/BoringLayout;->hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_12

    .line 575
    return-object v14

    .line 577
    :cond_12
    const/4 v15, 0x0

    if-eqz v12, :cond_1c

    invoke-interface {v12, v2, v15, v4}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 578
    return-object v14

    .line 580
    :cond_1c
    instance-of v0, v2, Landroid/text/Spanned;

    if-eqz v0, :cond_2d

    .line 581
    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    .line 582
    .local v0, "sp":Landroid/text/Spanned;
    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-interface {v0, v15, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 583
    .local v1, "styles":[Ljava/lang/Object;
    array-length v3, v1

    if-lez v3, :cond_2d

    .line 584
    return-object v14

    .line 588
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v1    # "styles":[Ljava/lang/Object;
    :cond_2d
    move-object/from16 v0, p5

    .line 589
    .local v0, "fm":Landroid/text/BoringLayout$Metrics;
    if-nez v0, :cond_38

    .line 590
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    move-object v0, v1

    goto :goto_3b

    .line 592
    :cond_38
    invoke-static {v0}, Landroid/text/BoringLayout$Metrics;->-$$Nest$mreset(Landroid/text/BoringLayout$Metrics;)V

    .line 595
    :goto_3b
    invoke-static {}, Lcom/android/text/flags/Flags;->fixLineHeightForLocale()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 596
    if-eqz v13, :cond_5a

    .line 597
    invoke-virtual {v0, v13}, Landroid/text/BoringLayout$Metrics;->set(Landroid/graphics/Paint$FontMetrics;)V

    .line 601
    iget v1, v0, Landroid/text/BoringLayout$Metrics;->top:I

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/text/BoringLayout$Metrics;->top:I

    .line 602
    iget v1, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 606
    :cond_5a
    move-object v1, v0

    .end local v0    # "fm":Landroid/text/BoringLayout$Metrics;
    .local v1, "fm":Landroid/text/BoringLayout$Metrics;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 607
    .local v0, "line":Landroid/text/TextLine;
    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v11, p3

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    .end local v1    # "fm":Landroid/text/BoringLayout$Metrics;
    .local v16, "fm":Landroid/text/BoringLayout$Metrics;
    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 612
    invoke-static/range {v16 .. v16}, Landroid/text/BoringLayout$Metrics;->-$$Nest$fgetmDrawingBounds(Landroid/text/BoringLayout$Metrics;)Landroid/graphics/RectF;

    move-result-object v1

    move-object/from16 v2, v16

    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    .local v2, "fm":Landroid/text/BoringLayout$Metrics;
    invoke-virtual {v0, v2, v1, v15, v14}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v1

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    iput v1, v2, Landroid/text/BoringLayout$Metrics;->width:I

    .line 613
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 615
    return-object v2
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .registers 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "useFallbackLineSpacing"    # Z
    .param p4, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 564
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .end local p0    # "text":Ljava/lang/CharSequence;
    .end local p1    # "paint":Landroid/text/TextPaint;
    .end local p2    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local p3    # "useFallbackLineSpacing":Z
    .end local p4    # "metrics":Landroid/text/BoringLayout$Metrics;
    .local v0, "text":Ljava/lang/CharSequence;
    .local v1, "paint":Landroid/text/TextPaint;
    .local v2, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v3, "useFallbackLineSpacing":Z
    .local v5, "metrics":Landroid/text/BoringLayout$Metrics;
    invoke-static/range {v0 .. v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .registers 17
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingMult"    # F
    .param p5, "spacingAdd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includePad"    # Z

    .line 68
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .registers 21
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingmult"    # F
    .param p5, "spacingadd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includePad"    # Z
    .param p8, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p9, "ellipsizedWidth"    # I

    .line 94
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;
    .registers 21
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "includePad"    # Z
    .param p6, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "ellipsizedWidth"    # I
    .param p8, "useFallbackLineSpacing"    # Z

    .line 129
    new-instance v0, Landroid/text/BoringLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    return-object v0
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .registers 2

    .line 714
    iget-object v0, p0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightpaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffset"    # I

    .line 721
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_3a

    if-nez p2, :cond_3a

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "leftShift":F
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroid/text/BoringLayout;->getShiftDrawingOffsetForStartOverhang()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 724
    invoke-virtual {p0}, Landroid/text/BoringLayout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v1

    .line 725
    .local v1, "drawingRect":Landroid/graphics/RectF;
    iget v3, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_24

    .line 726
    iget v3, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v3

    .line 727
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 731
    .end local v1    # "drawingRect":Landroid/graphics/RectF;
    :cond_24
    iget-object v1, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    iget v3, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v4, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 733
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_39

    .line 736
    neg-float v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 738
    .end local v0    # "leftShift":F
    :cond_39
    goto :goto_3d

    .line 739
    :cond_3a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 741
    :goto_3d
    return-void
.end method

.method public whitelist ellipsized(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 747
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 748
    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 749
    return-void
.end method

.method public whitelist getBottomPadding()I
    .registers 2

    .line 689
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .registers 3
    .param p1, "line"    # I

    .line 694
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public whitelist getEllipsisStart(I)I
    .registers 3
    .param p1, "line"    # I

    .line 699
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public whitelist getEllipsizedWidth()I
    .registers 2

    .line 704
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 620
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public whitelist getLineContainsTab(I)Z
    .registers 3
    .param p1, "line"    # I

    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLineCount()I
    .registers 2

    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .registers 3
    .param p1, "line"    # I

    .line 638
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .param p1, "line"    # I

    .line 679
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public whitelist getLineMax(I)F
    .registers 3
    .param p1, "line"    # I

    .line 661
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 662
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v0

    return v0

    .line 664
    :cond_b
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public whitelist getLineStart(I)I
    .registers 3
    .param p1, "line"    # I

    .line 643
    if-nez p1, :cond_4

    .line 644
    const/4 v0, 0x0

    return v0

    .line 646
    :cond_4
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist getLineTop(I)I
    .registers 3
    .param p1, "line"    # I

    .line 630
    if-nez p1, :cond_4

    .line 631
    const/4 v0, 0x0

    return v0

    .line 633
    :cond_4
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public whitelist getLineWidth(I)F
    .registers 3
    .param p1, "line"    # I

    .line 670
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 671
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    return v0

    .line 673
    :cond_b
    if-nez p1, :cond_10

    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist getParagraphDirection(I)I
    .registers 3
    .param p1, "line"    # I

    .line 651
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getTopPadding()I
    .registers 2

    .line 684
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method blacklist init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V
    .registers 25
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "includePad"    # Z
    .param p6, "trustWidth"    # Z
    .param p7, "useFallbackLineSpacing"    # Z

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v4, p1

    instance-of v2, v4, Ljava/lang/String;

    const/4 v14, 0x0

    if-eqz v2, :cond_18

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v15, p3

    if-ne v15, v2, :cond_1a

    .line 436
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_1c

    .line 435
    :cond_18
    move-object/from16 v15, p3

    .line 438
    :cond_1a
    iput-object v14, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 441
    :goto_1c
    move-object/from16 v3, p2

    iput-object v3, v0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 443
    if-eqz p5, :cond_2c

    .line 444
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v5, v1, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int/2addr v2, v5

    .line 445
    .local v2, "spacing":I
    iget v5, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iput v5, v0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_35

    .line 447
    .end local v2    # "spacing":I
    :cond_2c
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    iget v5, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v2, v5

    .line 448
    .restart local v2    # "spacing":I
    iget v5, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    iput v5, v0, Landroid/text/BoringLayout;->mDesc:I

    .line 451
    :goto_35
    iput v2, v0, Landroid/text/BoringLayout;->mBottom:I

    .line 453
    if-eqz p6, :cond_41

    .line 454
    iget v5, v1, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v5, v5

    iput v5, v0, Landroid/text/BoringLayout;->mMax:F

    move/from16 v16, v2

    goto :goto_74

    .line 461
    :cond_41
    move v5, v2

    .end local v2    # "spacing":I
    .local v5, "spacing":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 462
    .local v2, "line":Landroid/text/TextLine;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    iget v11, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iget v7, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iget v9, v0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    add-int v12, v7, v9

    move v7, v5

    .end local v5    # "spacing":I
    .local v7, "spacing":I
    const/4 v5, 0x0

    move v9, v7

    .end local v7    # "spacing":I
    .local v9, "spacing":I
    const/4 v7, 0x1

    move v10, v9

    .end local v9    # "spacing":I
    .local v10, "spacing":I
    const/4 v9, 0x0

    move v13, v10

    .end local v10    # "spacing":I
    .local v13, "spacing":I
    const/4 v10, 0x0

    move/from16 v16, v13

    move/from16 v13, p7

    .end local v13    # "spacing":I
    .local v16, "spacing":I
    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 465
    const/4 v3, 0x0

    invoke-virtual {v2, v14, v14, v3, v14}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroid/text/BoringLayout;->mMax:F

    .line 466
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 469
    .end local v2    # "line":Landroid/text/TextLine;
    :goto_74
    if-eqz p5, :cond_84

    .line 470
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->top:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 471
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 474
    :cond_84
    iget-object v2, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    invoke-static {v1}, Landroid/text/BoringLayout$Metrics;->-$$Nest$fgetmDrawingBounds(Landroid/text/BoringLayout$Metrics;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 475
    iget-object v2, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/text/BoringLayout;->mBottom:I

    iget v4, v0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 476
    return-void
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .registers 2

    .line 709
    iget-boolean v0, p0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    return v0
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .registers 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z

    .line 152
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 154
    move v0, p3

    move v1, p5

    move v2, p6

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "source":Ljava/lang/CharSequence;
    .end local p5    # "spacingMult":F
    .end local p6    # "spacingAdd":F
    .local v0, "outerwidth":I
    .local v1, "spacingMult":F
    .local v2, "spacingAdd":F
    .local p2, "source":Ljava/lang/CharSequence;
    .local p3, "paint":Landroid/text/TextPaint;
    iput v0, p1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 155
    const/4 p5, 0x0

    iput p5, p1, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 156
    iput p5, p1, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 157
    iput-boolean p5, p1, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 159
    move-object p5, p7

    .end local p7    # "metrics":Landroid/text/BoringLayout$Metrics;
    .local p5, "metrics":Landroid/text/BoringLayout$Metrics;
    const/4 p7, 0x1

    move p6, p8

    .end local p8    # "includePad":Z
    .local p6, "includePad":Z
    const/4 p8, 0x0

    invoke-virtual/range {p1 .. p8}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 160
    return-object p1
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .registers 21
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .line 256
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;

    move-result-object v9

    return-object v9
.end method

.method public blacklist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZZLandroid/graphics/Paint$FontMetrics;)Landroid/text/BoringLayout;
    .registers 23
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMultiplier"    # F
    .param p6, "spacingAmount"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I
    .param p11, "useFallbackLineSpacing"    # Z
    .param p12, "useBoundsForWidth"    # Z
    .param p13, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 210
    move-object/from16 v3, p9

    move/from16 v8, p10

    if-eqz v3, :cond_24

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v0, :cond_b

    goto :goto_24

    .line 218
    :cond_b
    int-to-float v2, v8

    const/4 v4, 0x1

    move-object v5, p0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move v3, p3

    move-object v4, p4

    move v6, p6

    move-object v0, v5

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 221
    iput v8, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 222
    const/4 v1, 0x0

    move v6, v1

    .local v1, "trust":Z
    goto :goto_38

    .line 211
    .end local v1    # "trust":Z
    :cond_24
    :goto_24
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 213
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 214
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 215
    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 216
    const/4 v1, 0x1

    move v6, v1

    .line 225
    .local v6, "trust":Z
    :goto_38
    move/from16 v7, p11

    iput-boolean v7, p0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 227
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 229
    return-object p0
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;
    .registers 24
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p6, "includePad"    # Z
    .param p7, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p8, "ellipsizedWidth"    # I
    .param p9, "useFallbackLineSpacing"    # Z

    .line 195
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZZLandroid/graphics/Paint$FontMetrics;)Landroid/text/BoringLayout;

    move-result-object v5

    return-object v5
.end method
