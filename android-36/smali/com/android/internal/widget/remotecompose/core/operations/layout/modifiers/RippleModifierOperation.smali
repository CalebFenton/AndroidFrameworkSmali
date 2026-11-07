.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;
.source "RippleModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;


# static fields
.field private static final blacklist OP_CODE:I = 0xe5


# instance fields
.field public blacklist locationInWindow:[F

.field blacklist mAnimateRippleDuration:I

.field blacklist mAnimateRippleStart:J

.field blacklist mAnimateRippleX:F

.field blacklist mAnimateRippleY:F

.field blacklist mHeight:F

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleX:F

    .line 47
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleY:F

    .line 48
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleDuration:I

    .line 50
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mWidth:F

    .line 51
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mHeight:F

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    .line 55
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 164
    const/16 v0, 0xe5

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 165
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 183
    const/16 v0, 0xe5

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 184
    const-string v1, "Ripple modifier. This modifier will do a ripple animation on touch down"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 186
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 155
    const-string v0, "RippleModifier"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method


# virtual methods
.method public blacklist animateRipple(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    .line 65
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleX:F

    .line 66
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleY:F

    .line 67
    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    .line 83
    .local v0, "root":Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    if-eqz v0, :cond_e

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHasTouchListeners(Z)V

    .line 86
    :cond_e
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_9

    move-object v1, p1

    goto :goto_b

    :cond_9
    const-string v1, ""

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 139
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mWidth:F

    .line 140
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mHeight:F

    .line 141
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 214
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    aget v0, v0, v1

    sub-float v0, p4, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    aget v1, v1, v3

    sub-float v1, p5, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->animateRipple(FF)V

    .line 195
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->hapticEffect(I)V

    .line 196
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 210
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "dx"    # F
    .param p7, "dy"    # F

    .line 206
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 96
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 97
    return-void

    .line 99
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    .line 102
    .local v0, "progress":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 103
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v1

    if-lez v4, :cond_20

    .line 104
    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    .line 106
    :cond_20
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 109
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 111
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    .line 113
    .local v3, "anim1":Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 114
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 115
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v4

    .line 117
    .local v4, "tween":F
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/high16 v9, 0x7fc00000    # Float.NaN

    const/high16 v10, 0x7fc00000    # Float.NaN

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    .line 119
    .local v5, "anim2":Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 120
    invoke-virtual {v5, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 121
    invoke-virtual {v5, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v1

    .line 123
    .local v1, "tweenRadius":F
    const/16 v6, 0xb4

    const/16 v7, 0xfa

    invoke-static {v7, v7, v7, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->createColor(IIII)I

    move-result v6

    .line 124
    .local v6, "startColor":I
    const/4 v7, 0x0

    const/16 v8, 0xc8

    invoke-static {v8, v8, v8, v7}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->createColor(IIII)I

    move-result v7

    .line 125
    .local v7, "endColor":I
    invoke-static {v6, v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->interpolateColor(IIF)I

    move-result v8

    .line 127
    .local v8, "paintedColor":I
    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mWidth:F

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mHeight:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v9, v1

    .line 128
    .local v9, "radius":F
    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v10, v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 129
    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v10}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 130
    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mWidth:F

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mHeight:F

    invoke-virtual {p1, v2, v2, v10, v11}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 131
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleX:F

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleY:F

    invoke-virtual {p1, v2, v10, v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawCircle(FFF)V

    .line 132
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 134
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 218
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 219
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 220
    const-string v1, "RippleModifierOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    .line 221
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "animateRippleStart"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleX:F

    .line 222
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "animateRippleX"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleY:F

    .line 223
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "animateRippleY"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleDuration:I

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "animateRippleDuration"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mWidth:F

    .line 225
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mHeight:F

    .line 226
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 227
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 4
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 145
    const-string v0, "RIPPLE_MODIFIER"

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 146
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 77
    const-string v0, "RippleModifier"

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 71
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 72
    return-void
.end method
