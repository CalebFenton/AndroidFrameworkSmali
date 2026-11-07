.class final Landroid/graphics/RenderNode$CompositePositionUpdateListener;
.super Ljava/lang/Object;
.source "RenderNode.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/RenderNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompositePositionUpdateListener"
.end annotation


# static fields
.field private static final blacklist sEmpty:[Landroid/graphics/RenderNode$PositionUpdateListener;


# instance fields
.field private final blacklist mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 382
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/RenderNode$PositionUpdateListener;

    sput-object v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->sEmpty:[Landroid/graphics/RenderNode$PositionUpdateListener;

    return-void
.end method

.method varargs constructor blacklist <init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V
    .registers 3
    .param p1, "listeners"    # [Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    if-eqz p1, :cond_7

    move-object v0, p1

    goto :goto_9

    :cond_7
    sget-object v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->sEmpty:[Landroid/graphics/RenderNode$PositionUpdateListener;

    :goto_9
    iput-object v0, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 386
    return-void
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .registers 30
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

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 427
    .local v4, "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    invoke-interface/range {v4 .. v16}, Landroid/graphics/RenderNode$PositionUpdateListener;->applyStretch(JFFFFFFFFFF)V

    .line 426
    .end local v4    # "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 431
    :cond_26
    return-void
.end method

.method public blacklist positionChanged(JIIII)V
    .registers 17
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 400
    iget-object v0, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 401
    .local v3, "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIII)V

    .line 400
    .end local v3    # "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 403
    :cond_14
    return-void
.end method

.method public blacklist positionChanged(JIIIIIIIIII)V
    .registers 30
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

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 410
    .local v4, "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    invoke-interface/range {v4 .. v16}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIIIIIIIII)V

    .line 409
    .end local v4    # "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 413
    :cond_26
    return-void
.end method

.method public blacklist positionLost(J)V
    .registers 7
    .param p1, "frameNumber"    # J

    .line 417
    iget-object v0, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 418
    .local v3, "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    invoke-interface {v3, p1, p2}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionLost(J)V

    .line 417
    .end local v3    # "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 420
    :cond_e
    return-void
.end method

.method public blacklist with(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;
    .registers 5
    .param p1, "listener"    # Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 389
    new-instance v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    const-class v1, Landroid/graphics/RenderNode$PositionUpdateListener;

    iget-object v2, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 390
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/RenderNode$PositionUpdateListener;

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;-><init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 389
    return-object v0
.end method

.method public blacklist without(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;
    .registers 5
    .param p1, "listener"    # Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 394
    new-instance v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    const-class v1, Landroid/graphics/RenderNode$PositionUpdateListener;

    iget-object v2, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 395
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/RenderNode$PositionUpdateListener;

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;-><init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 394
    return-object v0
.end method
