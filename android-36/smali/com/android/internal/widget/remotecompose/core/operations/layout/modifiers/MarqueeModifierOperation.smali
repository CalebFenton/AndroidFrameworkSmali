.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;
.source "MarqueeModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "MarqueeModifierOperation"

.field private static final blacklist OP_CODE:I = 0xe4


# instance fields
.field blacklist mAnimationMode:I

.field private blacklist mComponentHeight:F

.field private blacklist mComponentWidth:F

.field private blacklist mContentHeight:F

.field private blacklist mContentWidth:F

.field blacklist mInitialDelayMillis:F

.field blacklist mIterations:I

.field private blacklist mLastTime:J

.field blacklist mRepeatDelayMillis:F

.field private blacklist mScrollX:F

.field blacklist mSpacing:F

.field private blacklist mStartTime:J

.field blacklist mVelocity:F


# direct methods
.method public constructor blacklist <init>(IIFFFF)V
    .registers 9
    .param p1, "iterations"    # I
    .param p2, "animationMode"    # I
    .param p3, "repeatDelayMillis"    # F
    .param p4, "initialDelayMillis"    # F
    .param p5, "spacing"    # F
    .param p6, "velocity"    # F

    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;-><init>()V

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mLastTime:J

    .line 133
    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mStartTime:J

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mScrollX:F

    .line 61
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mIterations:I

    .line 62
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mAnimationMode:I

    .line 63
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mRepeatDelayMillis:F

    .line 64
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mInitialDelayMillis:F

    .line 65
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mSpacing:F

    .line 66
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mVelocity:F

    .line 67
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFF)V
    .registers 8
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "iterations"    # I
    .param p2, "animationMode"    # I
    .param p3, "repeatDelayMillis"    # F
    .param p4, "initialDelayMillis"    # F
    .param p5, "spacing"    # F
    .param p6, "velocity"    # F

    .line 201
    const/16 v0, 0xe4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 203
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 204
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 205
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 206
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 207
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 208
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 239
    const/16 v0, 0xe4

    const-string v1, "MarqueeModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 240
    const-string/jumbo v1, "specify a Marquee Modifier"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 241
    const/4 v1, 0x1

    const-string/jumbo v2, "value"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 242
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 179
    const/16 v0, 0xe4

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 170
    const-string v0, "MarqueeModifierOperation"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
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

    .line 217
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 218
    .local v1, "iterations":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 219
    .local v2, "animationMode":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 220
    .local v3, "repeatDelayMillis":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 221
    .local v4, "initialDelayMillis":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 222
    .local v5, "spacing":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 223
    .local v6, "velocity":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;-><init>(IIFFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 129
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScrollX(F)F
    .registers 3
    .param p1, "currentValue"    # F

    .line 79
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mScrollX:F

    return v0
.end method

.method public blacklist getScrollY(F)F
    .registers 3
    .param p1, "currentValue"    # F

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handlesHorizontalScroll()Z
    .registers 2

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist handlesVerticalScroll()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 246
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mComponentWidth:F

    .line 247
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mComponentHeight:F

    .line 248
    instance-of v0, p2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v0, :cond_19

    .line 249
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 250
    .local v0, "layoutComponent":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->setContentWidth(F)V

    .line 251
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->setContentHeight(F)V

    .line 253
    .end local v0    # "layoutComponent":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    :cond_19
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 13
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mLastTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 141
    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mLastTime:J

    .line 142
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mLastTime:J

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mInitialDelayMillis:F

    float-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mStartTime:J

    .line 143
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 145
    :cond_19
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mContentWidth:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mComponentWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6d

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mInitialDelayMillis:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6d

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v2

    .line 147
    .local v2, "density":F
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mContentWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mComponentWidth:F

    sub-float/2addr v3, v4

    .line 148
    .local v3, "delta":F
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mVelocity:F

    mul-float/2addr v4, v2

    div-float v4, v3, v4

    .line 149
    .local v4, "duration":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mStartTime:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    .line 150
    .local v5, "elapsed":F
    rem-float v6, v5, v4

    div-float/2addr v6, v4

    .line 151
    .end local v5    # "elapsed":F
    .local v6, "elapsed":F
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v7, v6, v5

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v9

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v7, v9

    .line 152
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    neg-float v5, v3

    mul-float/2addr v7, v5

    .line 154
    .local v7, "offset":F
    iput v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mScrollX:F

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 157
    .end local v2    # "density":F
    .end local v3    # "delta":F
    .end local v4    # "duration":F
    .end local v6    # "elapsed":F
    .end local v7    # "offset":F
    :cond_6d
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mLastTime:J

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mScrollX:F

    .line 101
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 257
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 258
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 259
    const-string v1, "MarqueeModifierOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mIterations:I

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iterations"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mAnimationMode:I

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "animationMode"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mRepeatDelayMillis:F

    .line 262
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "repeatDelayMillis"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mInitialDelayMillis:F

    .line 263
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "initialDelayMillis"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mSpacing:F

    .line 264
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "spacing"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mVelocity:F

    .line 265
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "velocity"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 266
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARQUEE = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mIterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 124
    return-void
.end method

.method public blacklist setContentHeight(F)V
    .registers 2
    .param p1, "value"    # F

    .line 74
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mContentHeight:F

    .line 75
    return-void
.end method

.method public blacklist setContentWidth(F)V
    .registers 2
    .param p1, "value"    # F

    .line 70
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mContentWidth:F

    .line 71
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarqueeModifierOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mIterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 9
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 105
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mIterations:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mAnimationMode:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mRepeatDelayMillis:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mInitialDelayMillis:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mSpacing:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mVelocity:F

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFF)V

    .line 113
    return-void
.end method
