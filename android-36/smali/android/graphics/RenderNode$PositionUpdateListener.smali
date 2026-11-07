.class public interface abstract Landroid/graphics/RenderNode$PositionUpdateListener;
.super Ljava/lang/Object;
.source "RenderNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/RenderNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionUpdateListener"
.end annotation


# direct methods
.method public static blacklist callApplyStretch(Ljava/lang/ref/WeakReference;JFFFFFFFFFF)Z
    .registers 27
    .param p1, "frameNumber"    # J
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "vecX"    # F
    .param p6, "vecY"    # F
    .param p7, "maxStretchX"    # F
    .param p8, "maxStretchY"    # F
    .param p9, "childRelativeLeft"    # F
    .param p10, "childRelativeTop"    # F
    .param p11, "childRelativeRight"    # F
    .param p12, "childRelativeBottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;JFFFFFFFFFF)Z"
        }
    .end annotation

    .line 344
    .local p0, "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/RenderNode$PositionUpdateListener;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 345
    .local v1, "listener":Landroid/graphics/RenderNode$PositionUpdateListener;
    if-eqz v1, :cond_23

    .line 346
    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Landroid/graphics/RenderNode$PositionUpdateListener;->applyStretch(JFFFFFFFFFF)V

    .line 349
    const/4 v0, 0x1

    return v0

    .line 351
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist callPositionChanged(Ljava/lang/ref/WeakReference;JIIII)Z
    .registers 15
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;JIIII)Z"
        }
    .end annotation

    .line 294
    .local p0, "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/RenderNode$PositionUpdateListener;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 295
    .local v1, "listener":Landroid/graphics/RenderNode$PositionUpdateListener;
    if-eqz v1, :cond_13

    .line 296
    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "frameNumber":J
    .end local p3    # "left":I
    .end local p4    # "top":I
    .end local p5    # "right":I
    .end local p6    # "bottom":I
    .local v2, "frameNumber":J
    .local v4, "left":I
    .local v5, "top":I
    .local v6, "right":I
    .local v7, "bottom":I
    invoke-interface/range {v1 .. v7}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIII)V

    .line 297
    const/4 p1, 0x1

    return p1

    .line 299
    .end local v2    # "frameNumber":J
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v6    # "right":I
    .end local v7    # "bottom":I
    .restart local p1    # "frameNumber":J
    .restart local p3    # "left":I
    .restart local p4    # "top":I
    .restart local p5    # "right":I
    .restart local p6    # "bottom":I
    :cond_13
    move-wide v2, p1

    .end local p1    # "frameNumber":J
    .restart local v2    # "frameNumber":J
    const/4 p1, 0x0

    return p1
.end method

.method public static blacklist callPositionChanged2(Ljava/lang/ref/WeakReference;JIIIIIIIIII)Z
    .registers 27
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "clipLeft"    # I
    .param p8, "clipTop"    # I
    .param p9, "clipRight"    # I
    .param p10, "clipBottom"    # I
    .param p11, "nodeWidth"    # I
    .param p12, "nodeHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;JIIIIIIIIII)Z"
        }
    .end annotation

    .line 311
    .local p0, "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/RenderNode$PositionUpdateListener;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 312
    .local v1, "listener":Landroid/graphics/RenderNode$PositionUpdateListener;
    if-eqz v1, :cond_23

    .line 313
    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIIIIIIIII)V

    .line 315
    const/4 v0, 0x1

    return v0

    .line 317
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist callPositionLost(Ljava/lang/ref/WeakReference;J)Z
    .registers 5
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;J)Z"
        }
    .end annotation

    .line 369
    .local p0, "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/RenderNode$PositionUpdateListener;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 370
    .local v0, "listener":Landroid/graphics/RenderNode$PositionUpdateListener;
    if-eqz v0, :cond_d

    .line 371
    invoke-interface {v0, p1, p2}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionLost(J)V

    .line 372
    const/4 v1, 0x1

    return v1

    .line 374
    :cond_d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .registers 13
    .param p1, "frameNumber"    # J
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "vecX"    # F
    .param p6, "vecY"    # F
    .param p7, "maxStretchX"    # F
    .param p8, "maxStretchY"    # F
    .param p9, "childRelativeLeft"    # F
    .param p10, "childRelativeTop"    # F
    .param p11, "childRelativeRight"    # F
    .param p12, "childRelativeBottom"    # F

    .line 333
    return-void
.end method

.method public abstract blacklist positionChanged(JIIII)V
.end method

.method public blacklist positionChanged(JIIIIIIIIII)V
    .registers 13
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "clipLeft"    # I
    .param p8, "clipTop"    # I
    .param p9, "clipRight"    # I
    .param p10, "clipBottom"    # I
    .param p11, "nodeWidth"    # I
    .param p12, "nodeHeight"    # I

    .line 285
    invoke-interface/range {p0 .. p6}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIII)V

    .line 286
    return-void
.end method

.method public abstract blacklist positionLost(J)V
.end method
