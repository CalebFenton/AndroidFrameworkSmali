.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "Component.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false


# instance fields
.field public blacklist locationInWindow:[F

.field public blacklist mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

.field protected blacklist mAnimationId:I

.field public blacklist mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

.field protected blacklist mComponentId:I

.field protected blacklist mComponentValues:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mFirstLayout:Z

.field protected blacklist mHeight:F

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNeedsBoundsAnimation:Z

.field public blacklist mNeedsMeasure:Z

.field public blacklist mNeedsRepaint:Z

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field protected blacklist mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field public blacklist mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

.field public blacklist mScheduledVisibility:I

.field public blacklist mVisibility:I

.field protected blacklist mWidth:F

.field protected blacklist mX:F

.field protected blacklist mY:F

.field protected blacklist mZIndex:F


# direct methods
.method public constructor blacklist <init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 15
    .param p1, "componentId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 233
    const/4 v3, -0x1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v1, p6

    .end local p1    # "componentId":I
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "width":F
    .end local p5    # "height":F
    .end local p6    # "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v1, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v2, "componentId":I
    .local v4, "x":F
    .local v5, "y":F
    .local v6, "width":F
    .local v7, "height":F
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 234
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 10
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 237
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    iget v3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    iget v4, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v5, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget v6, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v7, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 245
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->finalizeCreation()V

    .line 247
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V
    .registers 11
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F

    .line 216
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 60
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:I

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    .line 65
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsRepaint:Z

    .line 68
    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 69
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    .line 70
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mZIndex:F

    .line 75
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    .line 632
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    .line 217
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 218
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    .line 219
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    .line 220
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    .line 221
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    .line 222
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 223
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 224
    return-void
.end method

.method private blacklist updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    .line 178
    .local v1, "v":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    if-ne v2, v3, :cond_24

    .line 179
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_40

    .line 181
    :cond_24
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_42

    goto :goto_40

    .line 190
    :pswitch_2c
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_40

    .line 183
    :pswitch_36
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 188
    nop

    .line 198
    .end local v1    # "v":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    :goto_40
    goto :goto_6

    .line 199
    :cond_41
    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_36
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public blacklist addComponentValue(Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;)V
    .registers 3
    .param p1, "v"    # Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method public blacklist animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 618
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-eqz v0, :cond_d

    .line 619
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 620
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_10

    .line 622
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    .line 624
    :goto_10
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 625
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    if-eqz v2, :cond_2c

    .line 626
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    .line 627
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;
    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;->animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 629
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;
    :cond_2c
    goto :goto_16

    .line 630
    :cond_2d
    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 156
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 157
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 158
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 160
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_25
    goto :goto_6

    .line 161
    :cond_26
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 162
    return-void
.end method

.method public blacklist applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 1095
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-eqz v0, :cond_26

    .line 1096
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 1097
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->isDone()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1098
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    .line 1099
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    .line 1100
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->needsRepaint()V

    goto :goto_24

    .line 1102
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    .line 1104
    :goto_24
    const/4 v0, 0x1

    return v0

    .line 1106
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearNeedsBoundsAnimation()V
    .registers 2

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    .line 88
    return-void
.end method

.method public blacklist contains(FF)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 642
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 643
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 644
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 645
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    aget v0, v0, v1

    .line 646
    .local v0, "lx1":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    add-float/2addr v2, v0

    .line 647
    .local v2, "lx2":F
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    aget v4, v4, v3

    .line 648
    .local v4, "ly1":F
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    add-float/2addr v5, v4

    .line 649
    .local v5, "ly2":F
    cmpl-float v6, p1, v0

    if-ltz v6, :cond_2f

    cmpg-float v6, p1, v2

    if-gez v6, :cond_2f

    cmpl-float v6, p2, v4

    if-ltz v6, :cond_2f

    cmpg-float v6, p2, v5

    if-gez v6, :cond_2f

    move v1, v3

    :cond_2f
    return v1
.end method

.method public blacklist content()Ljava/lang/String;
    .registers 5

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 970
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 971
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 973
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_b

    .line 975
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 8
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 1003
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    .line 1004
    .local v0, "width":F
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    .line 1006
    .local v1, "height":F
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 1007
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 1008
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-virtual {v2, v3, v3, v4, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    .line 1009
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p2, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 1010
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1011
    invoke-virtual {p2, v0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1012
    invoke-virtual {p2, v0, v1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1013
    invoke-virtual {p2, v2, v1, v2, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1017
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 1018
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "indent"    # Ljava/lang/String;

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 932
    .local v2, "indent2":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 933
    .local v4, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->deepToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .end local v4    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_2d

    .line 936
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist doesNeedsRepaint()Z
    .registers 2

    .line 1198
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsRepaint:Z

    return v0
.end method

.method public blacklist finalizeCreation()V
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 252
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_1b

    .line 253
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iput-object p0, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 255
    :cond_1b
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-eqz v2, :cond_2c

    .line 256
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 257
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getAnimationId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 259
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_2c
    goto :goto_6

    .line 260
    :cond_2d
    return-void
.end method

.method public blacklist getAnimationId()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    return v0
.end method

.method protected blacklist getAnimationSpec()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    return-object v0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .registers 5
    .param p1, "cid"    # I

    .line 1209
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    if-eq v0, p1, :cond_2c

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    if-ne v0, p1, :cond_9

    goto :goto_2c

    .line 1212
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1213
    .local v1, "c":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_29

    .line 1214
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v2

    .line 1215
    .local v2, "search":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v2, :cond_29

    .line 1216
    return-object v2

    .line 1219
    .end local v1    # "c":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "search":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_29
    goto :goto_f

    .line 1220
    :cond_2a
    const/4 v0, 0x0

    return-object v0

    .line 1210
    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public blacklist getComponentCount()I
    .registers 5

    .line 1170
    const/4 v0, 0x0

    .line 1171
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1172
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_21

    .line 1173
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1175
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_21
    goto :goto_7

    .line 1176
    :cond_22
    return v0
.end method

.method public blacklist getComponentId()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    return v0
.end method

.method public blacklist getComponents(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;)V"
        }
    .end annotation

    .line 1144
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1145
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_1c

    .line 1146
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_1c
    goto :goto_6

    .line 1149
    :cond_1d
    return-void
.end method

.method public blacklist getData(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1157
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1158
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-nez v2, :cond_1a

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v2, :cond_1d

    .line 1159
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_1d
    goto :goto_6

    .line 1162
    :cond_1e
    return-void
.end method

.method public blacklist getHeight()F
    .registers 2

    .line 121
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    return v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getLocationInWindow([F)V
    .registers 3
    .param p1, "value"    # [F

    .line 850
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([FZ)V

    .line 851
    return-void
.end method

.method public blacklist getLocationInWindow([FZ)V
    .registers 7
    .param p1, "value"    # [F
    .param p2, "forSelf"    # Z

    .line 836
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 837
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    add-float/2addr v2, v3

    aput v2, p1, v1

    .line 838
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_19

    .line 839
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([FZ)V

    .line 841
    :cond_19
    return-void
.end method

.method public blacklist getPaintId()I
    .registers 3

    .line 1186
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1187
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    return v0

    .line 1189
    :cond_8
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    return v0
.end method

.method public blacklist getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    return-object v0
.end method

.method public blacklist getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 911
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_8

    .line 912
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object v0

    .line 914
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 915
    .local v0, "p":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :goto_a
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-nez v1, :cond_1b

    .line 916
    if-eqz v0, :cond_13

    .line 919
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    goto :goto_a

    .line 917
    :cond_13
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No RootLayoutComponent found"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 921
    :cond_1b
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object v1
.end method

.method public blacklist getScrollX()F
    .registers 2

    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getScrollY()F
    .registers 2

    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 877
    const-string v0, "COMPONENT"

    return-object v0
.end method

.method public blacklist getTranslateX()F
    .registers 3

    .line 1037
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_c

    .line 1038
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    sub-float/2addr v0, v1

    return v0

    .line 1040
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTranslateY()F
    .registers 3

    .line 1049
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_c

    .line 1050
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    sub-float/2addr v0, v1

    return v0

    .line 1052
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWidth()F
    .registers 2

    .line 117
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    return v0
.end method

.method public blacklist getX()F
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    return v0
.end method

.method public blacklist getY()F
    .registers 2

    .line 113
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    return v0
.end method

.method public blacklist getZIndex()F
    .registers 2

    .line 100
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mZIndex:F

    return v0
.end method

.method public blacklist inflate()V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 342
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    if-eqz v2, :cond_1c

    .line 344
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 345
    .local v2, "touchListener":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    invoke-interface {v2, p0}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 347
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "touchListener":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    :cond_1c
    goto :goto_6

    .line 348
    :cond_1d
    return-void
.end method

.method public blacklist invalidateMeasure()V
    .registers 3

    .line 944
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->needsRepaint()V

    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    .line 946
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 947
    .local v1, "p":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :goto_8
    if-eqz v1, :cond_f

    .line 948
    iput-boolean v0, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    .line 949
    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    goto :goto_8

    .line 951
    :cond_f
    return-void
.end method

.method public blacklist isGone()Z
    .registers 2

    .line 500
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isGone(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isInvisible()Z
    .registers 2

    .line 509
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isInvisible(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isVisible()Z
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isVisible(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_14

    .line 491
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    return v0

    .line 489
    :cond_14
    :goto_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isVisible(I)Z

    move-result v0

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 18
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 562
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v13, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v14

    .line 563
    .local v14, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    if-nez v0, :cond_8b

    .line 564
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 565
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_8b

    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-nez v0, :cond_8b

    .line 567
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v0, :cond_83

    .line 568
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    .line 570
    .local v4, "origin":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 573
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v7

    .line 574
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v8

    .line 575
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v9

    .line 576
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v10

    .line 577
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v11

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    .line 578
    .local v5, "target":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->same(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 579
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    iget-wide v1, v12, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 585
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionDuration()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 586
    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityDuration()F

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 587
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 588
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 589
    invoke-virtual {v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionEasingType()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 590
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityEasingType()I

    move-result v11

    move-object v3, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;-><init>(JLcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;FFLcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;II)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    .line 592
    .end local v4    # "origin":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v5    # "target":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_82
    goto :goto_91

    .line 593
    :cond_83
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    iget-wide v1, v12, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->updateTarget(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;J)V

    goto :goto_91

    .line 596
    :cond_8b
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 598
    :goto_91
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v0, :cond_b5

    .line 599
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setWidth(F)V

    .line 600
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setHeight(F)V

    .line 601
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v0

    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setLayoutPosition(FF)V

    .line 602
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 603
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    goto :goto_c0

    .line 605
    :cond_b5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 606
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 607
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    .line 609
    :goto_c0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    .line 610
    return-void
.end method

.method public blacklist markNeedsBoundsAnimation()V
    .registers 2

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-boolean v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    if-nez v0, :cond_12

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    .line 83
    :cond_12
    return-void
.end method

.method public blacklist maxIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v0

    return v0
.end method

.method public blacklist maxIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v0

    return v0
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 555
    invoke-virtual {p6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 556
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 557
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 558
    return-void
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v0

    return v0
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v0

    return v0
.end method

.method public blacklist needsBoundsAnimation()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    return v0
.end method

.method public blacklist needsMeasure()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    return v0
.end method

.method public blacklist needsRepaint()V
    .registers 3

    .line 956
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mNeedsRepaint:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 959
    goto :goto_9

    .line 957
    :catch_8
    move-exception v0

    .line 960
    :goto_9
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .registers 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 680
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p3, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    cmpl-float v4, p4, v0

    if-nez v4, :cond_10

    goto :goto_11

    :cond_10
    move v2, v3

    :goto_11
    and-int/2addr v1, v2

    .line 681
    .local v1, "isUnconditional":Z
    if-nez v1, :cond_1b

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 682
    return-void

    .line 684
    :cond_1b
    if-eqz v1, :cond_1f

    move v2, v0

    goto :goto_25

    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v2

    sub-float v2, p3, v2

    :goto_25
    move v7, v2

    .line 685
    .local v7, "cx":F
    if-eqz v1, :cond_29

    goto :goto_2f

    :cond_29
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v0, p4, v0

    :goto_2f
    move v8, v0

    .line 686
    .local v8, "cy":F
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 687
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_4c

    .line 688
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3, p1, p2, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 690
    :cond_4c
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    if-eqz v3, :cond_5a

    .line 691
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    move-object v6, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v4, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v5, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_5c

    .line 690
    .end local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :cond_5a
    move-object v4, p1

    move-object v5, p2

    .line 693
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v5    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :goto_5c
    move-object p1, v4

    move-object p2, v5

    goto :goto_36

    .line 694
    .end local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :cond_5f
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V
    .registers 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "force"    # Z

    .line 776
    if-nez p5, :cond_9

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_9

    .line 777
    return-void

    .line 779
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v3, p3, v0

    .line 780
    .local v3, "cx":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v4, p4, v0

    .line 781
    .local v4, "cy":F
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 782
    .local v7, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_39

    .line 783
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object v2, p1

    move v6, p5

    move v5, v4

    move v4, v3

    move-object v3, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local p5    # "force":Z
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v3, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v4, "cx":F
    .local v5, "cy":F
    .local v6, "force":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    move p1, v6

    .end local v6    # "force":Z
    .local p1, "force":Z
    goto :goto_3e

    .line 782
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "cy":F
    .local v3, "cx":F
    .local v4, "cy":F
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p5    # "force":Z
    :cond_39
    move-object v2, p1

    move p1, p5

    move v5, v4

    move v4, v3

    move-object v3, p2

    .line 785
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local p5    # "force":Z
    .restart local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v3, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v4, "cx":F
    .restart local v5    # "cy":F
    .local p1, "force":Z
    :goto_3e
    instance-of p2, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz p2, :cond_4f

    .line 786
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move v6, v5

    move v5, v4

    move-object v4, p0

    .end local v4    # "cx":F
    .local v5, "cx":F
    .local v6, "cy":F
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    move-object p2, v3

    move v4, v5

    move v5, v6

    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local v6    # "cy":F
    .restart local v4    # "cx":F
    .local v5, "cy":F
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    goto :goto_50

    .line 785
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :cond_4f
    move-object p2, v3

    .line 788
    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :goto_50
    instance-of p5, v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p5, :cond_64

    .line 789
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 790
    .local v1, "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 791
    move v6, v5

    .end local v5    # "cy":F
    .restart local v6    # "cy":F
    const/4 v5, 0x0

    move v3, v4

    move v4, v6

    .end local v6    # "cy":F
    .local v3, "cx":F
    .local v4, "cy":F
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    move v5, v4

    move v4, v3

    .line 793
    .end local v1    # "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    .end local v3    # "cx":F
    .end local v7    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .local v4, "cx":F
    .restart local v5    # "cy":F
    :cond_64
    move p5, p1

    move-object p1, v2

    move v3, v4

    move v4, v5

    goto :goto_1b

    .line 794
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "cy":F
    .restart local v3    # "cx":F
    .local v4, "cy":F
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p5    # "force":Z
    :cond_69
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .registers 13
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 705
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_7

    .line 706
    return-void

    .line 708
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v5, p3, v0

    .line 709
    .local v5, "cx":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v6, p4, v0

    .line 710
    .local v6, "cy":F
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 711
    .local v7, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_30

    .line 712
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1, p2, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 714
    :cond_30
    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v1, :cond_3e

    .line 715
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v3, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_41

    .line 714
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :cond_3e
    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    .line 717
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :goto_41
    instance-of p1, v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p1, :cond_51

    .line 718
    move-object p1, v7

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 719
    .local p1, "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 720
    invoke-virtual {p1, v2, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 721
    invoke-virtual {v3, p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->appliedTouchOperation(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 723
    .end local v7    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local p1    # "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    :cond_51
    move-object p1, v2

    move-object p2, v3

    goto :goto_19

    .line 724
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :cond_54
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V
    .registers 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "force"    # Z

    .line 807
    if-nez p5, :cond_9

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_9

    .line 808
    return-void

    .line 810
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v4, p3, v0

    .line 811
    .local v4, "cx":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v5, p4, v0

    .line 812
    .local v5, "cy":F
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 813
    .local v7, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_37

    .line 814
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local p5    # "force":Z
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v3, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v6, "force":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    move p1, v6

    .end local v6    # "force":Z
    .local p1, "force":Z
    goto :goto_3a

    .line 813
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p5    # "force":Z
    :cond_37
    move-object v2, p1

    move-object v3, p2

    move p1, p5

    .line 816
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local p5    # "force":Z
    .restart local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local p1, "force":Z
    :goto_3a
    instance-of p2, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz p2, :cond_49

    .line 817
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move v6, v5

    move v5, v4

    move-object v4, p0

    .end local v4    # "cx":F
    .local v5, "cx":F
    .local v6, "cy":F
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    move v4, v5

    move v5, v6

    .line 819
    .end local v6    # "cy":F
    .restart local v4    # "cx":F
    .local v5, "cy":F
    :cond_49
    instance-of p2, v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p2, :cond_56

    .line 820
    move-object p2, v7

    check-cast p2, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 821
    .local p2, "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    invoke-virtual {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 822
    invoke-virtual {p2, v2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 824
    .end local v7    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local p2    # "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    :cond_56
    move p5, p1

    move-object p1, v2

    move-object p2, v3

    goto :goto_1b

    .line 825
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local p2, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p5    # "force":Z
    :cond_5a
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V
    .registers 27
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "dx"    # F
    .param p6, "dy"    # F
    .param p7, "force"    # Z

    .line 745
    move-object/from16 v3, p0

    move/from16 v8, p3

    move/from16 v9, p4

    if-nez p7, :cond_f

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_f

    .line 746
    return-void

    .line 748
    :cond_f
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v13, v8, v0

    .line 749
    .local v13, "cx":F
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v14, v9, v0

    .line 750
    .local v14, "cy":F
    iget-object v0, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_21
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 751
    .local v0, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_41

    .line 752
    move-object v10, v0

    check-cast v10, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V

    .line 754
    :cond_41
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v1, :cond_58

    .line 755
    move-object v1, v0

    .end local v0    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object/from16 v2, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v10, v1

    move v4, v13

    move v5, v14

    move-object/from16 v1, p1

    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v13    # "cx":F
    .end local v14    # "cy":F
    .local v4, "cx":F
    .local v5, "cy":F
    .local v10, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V

    .end local v4    # "cx":F
    .end local v5    # "cy":F
    .restart local v13    # "cx":F
    .restart local v14    # "cy":F
    goto :goto_59

    .line 754
    .end local v10    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .restart local v0    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_58
    move-object v10, v0

    .line 757
    .end local v0    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .restart local v10    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :goto_59
    instance-of v0, v10, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v0, :cond_6f

    .line 758
    move-object v1, v10

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 759
    .local v1, "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 760
    move/from16 v5, p5

    move/from16 v6, p6

    move-object v2, v11

    move v3, v13

    move v4, v14

    .end local v13    # "cx":F
    .end local v14    # "cy":F
    .local v3, "cx":F
    .local v4, "cy":F
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 762
    .end local v1    # "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    .end local v3    # "cx":F
    .end local v4    # "cy":F
    .end local v10    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .restart local v13    # "cx":F
    .restart local v14    # "cy":F
    :cond_6f
    move-object/from16 v3, p0

    goto :goto_21

    .line 763
    :cond_72
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 1111
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1112
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 1113
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 1114
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 1115
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 1116
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    .line 1117
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 1118
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1119
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1120
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v0, v4, v3, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1121
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v3, v0, v3, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1122
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    .line 1123
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 1124
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v3, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1125
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {p1, v3, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1126
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 1127
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 1129
    :cond_60
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1130
    return-void

    .line 1132
    :cond_67
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isGone()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isInvisible()Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_78

    .line 1135
    :cond_74
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 1136
    return-void

    .line 1133
    :cond_78
    :goto_78
    return-void
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 1061
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v0, :cond_9

    .line 1062
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 1064
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1065
    .local v0, "prev":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iput-object p0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1066
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 1067
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 1068
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1069
    invoke-virtual {p0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 1071
    :cond_28
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1072
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_51

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v3, :cond_51

    .line 1073
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1074
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 1076
    :cond_51
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v3, :cond_63

    .line 1077
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 1078
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    goto :goto_71

    .line 1080
    :cond_63
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1081
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 1083
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :goto_71
    goto :goto_2e

    .line 1084
    :cond_72
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 1085
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iput-object v0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1086
    return-void
.end method

.method public blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 365
    return-void
.end method

.method public blacklist selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1244
    .local p1, "operationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1245
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1248
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1249
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1250
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1252
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_28
    goto :goto_11

    .line 1254
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1225
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1226
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getSerializedName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1227
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1228
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1229
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "y"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1230
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1231
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1232
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1233
    const-string v0, "list"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1234
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 898
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 901
    return-void
.end method

.method public blacklist setAnimationId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 206
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 207
    return-void
.end method

.method protected blacklist setAnimationSpec(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;)V
    .registers 2
    .param p1, "animationSpec"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 355
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 356
    return-void
.end method

.method public blacklist setComponentId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 202
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 203
    return-void
.end method

.method public blacklist setHeight(F)V
    .registers 2
    .param p1, "value"    # F

    .line 150
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    .line 151
    return-void
.end method

.method public blacklist setLayoutPosition(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1027
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    .line 1028
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    .line 1029
    return-void
.end method

.method public blacklist setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 2
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 268
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 269
    return-void
.end method

.method public blacklist setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 518
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:I

    if-eq p1, v0, :cond_d

    .line 519
    :cond_8
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:I

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->invalidateMeasure()V

    .line 522
    :cond_d
    return-void
.end method

.method public blacklist setWidth(F)V
    .registers 2
    .param p1, "value"    # F

    .line 146
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    .line 147
    return-void
.end method

.method public blacklist setX(F)V
    .registers 2
    .param p1, "value"    # F

    .line 138
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    .line 139
    return-void
.end method

.method public blacklist setY(F)V
    .registers 2
    .param p1, "value"    # F

    .line 142
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    .line 143
    return-void
.end method

.method public blacklist suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z
    .registers 7
    .param p1, "o"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 526
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 527
    return v1

    .line 529
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_18

    .line 530
    return v1

    .line 532
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_57

    .line 533
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 534
    .local v2, "o1":Lcom/android/internal/widget/remotecompose/core/Operation;
    move-object v3, p1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 535
    .local v3, "o2":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_46

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_46

    .line 536
    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 537
    return v1

    .line 540
    :cond_46
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v4, :cond_54

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 541
    return v1

    .line 532
    .end local v2    # "o1":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v3    # "o2":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 544
    .end local v0    # "i":I
    :cond_57
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist textContent()Ljava/lang/String;
    .registers 5

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 986
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 987
    .local v2, "ignored":Lcom/android/internal/widget/remotecompose/core/Operation;
    const-string v3, ""

    .line 991
    .local v3, "letter":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .end local v2    # "ignored":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v3    # "letter":Ljava/lang/String;
    goto :goto_b

    .line 993
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPONENT(<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 859
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 869
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->textContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Visibility ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 871
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 278
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 279
    .local v0, "prev":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 281
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 282
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 284
    :cond_f
    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 285
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 906
    return-void
.end method
