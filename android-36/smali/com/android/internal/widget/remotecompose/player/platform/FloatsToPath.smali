.class public Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;
.super Ljava/lang/Object;
.source "FloatsToPath.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist genPath(Landroid/graphics/Path;[FFF)V
    .registers 13
    .param p0, "retPath"    # Landroid/graphics/Path;
    .param p1, "floatPath"    # [F
    .param p2, "start"    # F
    .param p3, "stop"    # F

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "i":I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object v2, v1

    .line 29
    .local v2, "path":Landroid/graphics/Path;
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_b2

    .line 30
    aget v1, p1, v0

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    packed-switch v1, :pswitch_data_e6

    .line 75
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Odd command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 72
    :pswitch_32
    add-int/lit8 v0, v0, 0x1

    .line 73
    goto :goto_7

    .line 68
    :pswitch_35
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    goto :goto_7

    .line 60
    :pswitch_3b
    add-int/lit8 v0, v0, 0x3

    .line 61
    add-int/lit8 v1, v0, 0x0

    aget v3, p1, v1

    add-int/lit8 v1, v0, 0x1

    aget v4, p1, v1

    add-int/lit8 v1, v0, 0x2

    aget v5, p1, v1

    add-int/lit8 v1, v0, 0x3

    aget v6, p1, v1

    add-int/lit8 v1, v0, 0x4

    aget v7, p1, v1

    add-int/lit8 v1, v0, 0x5

    aget v8, p1, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 65
    add-int/lit8 v0, v0, 0x6

    .line 66
    goto :goto_7

    .line 48
    :pswitch_5b
    add-int/lit8 v0, v0, 0x3

    .line 50
    add-int/lit8 v1, v0, 0x0

    aget v3, p1, v1

    add-int/lit8 v1, v0, 0x1

    aget v4, p1, v1

    add-int/lit8 v1, v0, 0x2

    aget v5, p1, v1

    add-int/lit8 v1, v0, 0x3

    aget v6, p1, v1

    add-int/lit8 v1, v0, 0x4

    aget v7, p1, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->conicTo(FFFFF)V

    .line 57
    add-int/lit8 v0, v0, 0x5

    .line 58
    goto :goto_7

    .line 42
    :pswitch_77
    add-int/lit8 v0, v0, 0x3

    .line 43
    add-int/lit8 v1, v0, 0x0

    aget v1, p1, v1

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p1, v4

    add-int/lit8 v5, v0, 0x3

    aget v5, p1, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 45
    add-int/lit8 v0, v0, 0x4

    .line 46
    goto/16 :goto_7

    .line 37
    :pswitch_90
    add-int/lit8 v0, v0, 0x3

    .line 38
    add-int/lit8 v1, v0, 0x0

    aget v1, p1, v1

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    add-int/lit8 v0, v0, 0x2

    .line 40
    goto/16 :goto_7

    .line 32
    :pswitch_a1
    add-int/lit8 v0, v0, 0x1

    .line 33
    add-int/lit8 v1, v0, 0x0

    aget v1, p1, v1

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 34
    add-int/lit8 v0, v0, 0x2

    .line 35
    goto/16 :goto_7

    .line 79
    :cond_b2
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 80
    const/4 v1, 0x0

    cmpl-float v3, p2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-gtz v3, :cond_c5

    cmpg-float v3, p3, v4

    if-gez v3, :cond_c1

    goto :goto_c5

    .line 92
    :cond_c1
    invoke-virtual {p0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_e5

    .line 81
    :cond_c5
    :goto_c5
    cmpg-float v3, p2, p3

    if-gez v3, :cond_e5

    .line 83
    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3}, Landroid/graphics/PathMeasure;-><init>()V

    .line 84
    .local v3, "measure":Landroid/graphics/PathMeasure;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 85
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    .line 86
    .local v5, "len":F
    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v5

    .line 87
    .local v1, "scaleStart":F
    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v5

    .line 88
    .local v4, "scaleStop":F
    const/4 v6, 0x1

    invoke-virtual {v3, v1, v4, p0, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 89
    .end local v1    # "scaleStart":F
    .end local v3    # "measure":Landroid/graphics/PathMeasure;
    .end local v4    # "scaleStop":F
    .end local v5    # "len":F
    nop

    .line 94
    :cond_e5
    :goto_e5
    return-void

    :pswitch_data_e6
    .packed-switch 0xa
        :pswitch_a1
        :pswitch_90
        :pswitch_77
        :pswitch_5b
        :pswitch_3b
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method
