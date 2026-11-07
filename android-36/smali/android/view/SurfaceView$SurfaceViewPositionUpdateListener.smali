.class Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceViewPositionUpdateListener"
.end annotation


# instance fields
.field private final blacklist mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final blacklist mRtSurfaceHeight:I

.field private final blacklist mRtSurfaceWidth:I

.field final synthetic blacklist this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor blacklist <init>(Landroid/view/SurfaceView;II)V
    .registers 4
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1698
    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1699
    iput p2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    .line 1700
    iput p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    .line 1701
    return-void
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .registers 26
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

    .line 1801
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v1 .. v12}, Landroid/view/SurfaceControl$Transaction;->setStretchEffect(Landroid/view/SurfaceControl;FFFFFFFFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1804
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V

    .line 1805
    return-void
.end method

.method public blacklist positionChanged(JIIII)V
    .registers 16
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 1713
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_66

    .line 1714
    :try_start_5
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d

    monitor-exit v1

    return-void

    .line 1716
    :cond_d
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1717
    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1720
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v7, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    int-to-float v7, v7

    div-float v7, v0, v7

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1722
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v8, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    int-to-float v8, v8

    div-float v8, v0, v8

    .line 1717
    invoke-virtual/range {v2 .. v8}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1725
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1726
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_63

    .line 1727
    :try_start_5b
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_62} :catch_66

    .line 1730
    goto :goto_6e

    .line 1726
    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    .end local p0    # "this":Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
    .end local p1    # "frameNumber":J
    .end local p3    # "left":I
    .end local p4    # "top":I
    .end local p5    # "right":I
    .end local p6    # "bottom":I
    :try_start_65
    throw v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_66

    .line 1728
    .restart local p0    # "this":Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
    .restart local p1    # "frameNumber":J
    .restart local p3    # "left":I
    .restart local p4    # "top":I
    .restart local p5    # "right":I
    .restart local p6    # "bottom":I
    :catch_66
    move-exception v0

    .line 1729
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SurfaceView"

    const-string v2, "Exception from repositionChild"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1731
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6e
    return-void
.end method

.method public blacklist positionChanged(JIIIIIIIIII)V
    .registers 36
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

    .line 1748
    move-object/from16 v1, p0

    :try_start_2
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_119

    .line 1749
    :try_start_7
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_f

    monitor-exit v2

    return-void

    .line 1751
    :cond_f
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_104

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    :try_start_1d
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1752
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    int-to-float v7, v7

    div-float v13, v0, v7

    .line 1754
    .local v13, "postScaleX":F
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    int-to-float v7, v7

    div-float v14, v0, v7

    .line 1756
    .local v14, "postScaleY":F
    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v9, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v10, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v8 .. v14}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1769
    iget v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I
    :try_end_5d
    .catchall {:try_start_1d .. :try_end_5d} :catchall_100

    int-to-float v0, v0

    move/from16 v7, p11

    int-to-float v8, v7

    div-float/2addr v0, v8

    .line 1770
    .local v0, "surfaceToNodeScaleX":F
    :try_start_62
    iget v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_f6

    int-to-float v8, v8

    move/from16 v9, p12

    int-to-float v10, v9

    div-float/2addr v8, v10

    .line 1771
    .local v8, "surfaceToNodeScaleY":F
    :try_start_69
    iget-object v10, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v10}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v10
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_ec

    move/from16 v11, p7

    int-to-float v12, v11

    mul-float/2addr v12, v0

    move/from16 v15, p8

    move/from16 v16, v0

    .end local v0    # "surfaceToNodeScaleX":F
    .local v16, "surfaceToNodeScaleX":F
    int-to-float v0, v15

    mul-float/2addr v0, v8

    move/from16 v3, p9

    int-to-float v4, v3

    mul-float v4, v4, v16

    move/from16 v3, p10

    int-to-float v5, v3

    mul-float/2addr v5, v8

    :try_start_82
    invoke-virtual {v10, v12, v0, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1782
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v4, v4, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v5}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v10, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v10}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v12, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->right:F

    move-object/from16 v17, v0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v10

    move/from16 v21, v12

    invoke-virtual/range {v17 .. v22}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1784
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1785
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v4, v4, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_d9

    .line 1787
    :cond_d0
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v4, v4, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1789
    .end local v8    # "surfaceToNodeScaleY":F
    .end local v13    # "postScaleX":F
    .end local v14    # "postScaleY":F
    .end local v16    # "surfaceToNodeScaleX":F
    :goto_d9
    monitor-exit v2
    :try_end_da
    .catchall {:try_start_82 .. :try_end_da} :catchall_e8

    .line 1790
    :try_start_da
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_de} :catch_e4

    move-wide/from16 v4, p1

    :try_start_e0
    invoke-static {v0, v2, v4, v5}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_115

    .line 1793
    goto :goto_12f

    .line 1791
    :catch_e4
    move-exception v0

    move-wide/from16 v4, p1

    goto :goto_128

    .line 1789
    :catchall_e8
    move-exception v0

    move-wide/from16 v4, p1

    goto :goto_113

    :catchall_ec
    move-exception v0

    move-wide/from16 v4, p1

    move/from16 v11, p7

    move/from16 v15, p8

    move/from16 v3, p10

    goto :goto_113

    :catchall_f6
    move-exception v0

    move-wide/from16 v4, p1

    move/from16 v11, p7

    move/from16 v15, p8

    move/from16 v3, p10

    goto :goto_111

    :catchall_100
    move-exception v0

    move-wide/from16 v4, p1

    goto :goto_109

    :catchall_104
    move-exception v0

    move-wide/from16 v4, p1

    move/from16 v6, p6

    :goto_109
    move/from16 v11, p7

    move/from16 v15, p8

    move/from16 v3, p10

    move/from16 v7, p11

    :goto_111
    move/from16 v9, p12

    :goto_113
    :try_start_113
    monitor-exit v2
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_117

    .end local p0    # "this":Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
    .end local p1    # "frameNumber":J
    .end local p3    # "left":I
    .end local p4    # "top":I
    .end local p5    # "right":I
    .end local p6    # "bottom":I
    .end local p7    # "clipLeft":I
    .end local p8    # "clipTop":I
    .end local p9    # "clipRight":I
    .end local p10    # "clipBottom":I
    .end local p11    # "nodeWidth":I
    .end local p12    # "nodeHeight":I
    :try_start_114
    throw v0
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_115} :catch_115

    .line 1791
    .restart local p0    # "this":Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
    .restart local p1    # "frameNumber":J
    .restart local p3    # "left":I
    .restart local p4    # "top":I
    .restart local p5    # "right":I
    .restart local p6    # "bottom":I
    .restart local p7    # "clipLeft":I
    .restart local p8    # "clipTop":I
    .restart local p9    # "clipRight":I
    .restart local p10    # "clipBottom":I
    .restart local p11    # "nodeWidth":I
    .restart local p12    # "nodeHeight":I
    :catch_115
    move-exception v0

    goto :goto_128

    .line 1789
    :catchall_117
    move-exception v0

    goto :goto_113

    .line 1791
    :catch_119
    move-exception v0

    move-wide/from16 v4, p1

    move/from16 v6, p6

    move/from16 v11, p7

    move/from16 v15, p8

    move/from16 v3, p10

    move/from16 v7, p11

    move/from16 v9, p12

    .line 1792
    .local v0, "ex":Ljava/lang/Exception;
    :goto_128
    const-string v2, "SurfaceView"

    const-string v8, "Exception from repositionChild"

    invoke-static {v2, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1794
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_12f
    return-void
.end method

.method public blacklist positionLost(J)V
    .registers 6
    .param p1, "frameNumber"    # J

    .line 1813
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1816
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1817
    :try_start_e
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_16

    monitor-exit v0

    return-void

    .line 1819
    :cond_16
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1820
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v2}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V

    .line 1821
    monitor-exit v0

    .line 1822
    return-void

    .line 1821
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_30

    throw v1
.end method
