.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ClickModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;


# static fields
.field private static final blacklist OP_CODE:I = 0x3b


# instance fields
.field public blacklist locationInWindow:[F

.field blacklist mAnimateRippleDuration:I

.field blacklist mAnimateRippleStart:J

.field blacklist mAnimateRippleX:F

.field blacklist mAnimateRippleY:F

.field blacklist mHeight:F

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleStart:J

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleX:F

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleY:F

    .line 57
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleDuration:I

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mWidth:F

    .line 60
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mHeight:F

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    .line 64
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 229
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 230
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 248
    const/16 v0, 0x3b

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 249
    const-string v1, "Click modifier. This operation contains a list of action executed on click"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 252
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 220
    const-string v0, "ClickModifier"

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

    .line 239
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method


# virtual methods
.method public blacklist animateRipple(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleStart:J

    .line 90
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleX:F

    .line 91
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleY:F

    .line 92
    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    .line 115
    .local v0, "root":Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    if-eqz v0, :cond_e

    .line 116
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHasTouchListeners(Z)V

    .line 118
    :cond_e
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 119
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v3, :cond_2a

    .line 120
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 123
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_2a
    goto :goto_14

    .line 124
    :cond_2b
    return-void
.end method

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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .registers 2

    .line 79
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object v0
.end method

.method public blacklist getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .registers 2

    .line 74
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->BUTTON:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    return-object v0
.end method

.method public blacklist isClickable()Z
    .registers 2

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 177
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mWidth:F

    .line 178
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mHeight:F

    .line 179
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 198
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 199
    return-void

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    aget v0, v0, v1

    sub-float v0, p4, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    aget v1, v1, v3

    sub-float v1, p5, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->animateRipple(FF)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 206
    .local v1, "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v2, :cond_48

    .line 207
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local p3    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local p4    # "x":F
    .end local p5    # "y":F
    .local v4, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v5, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v6, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v7, "x":F
    .local v8, "y":F
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->runAction(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_4d

    .line 206
    .end local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local v6    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v7    # "x":F
    .end local v8    # "y":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p3    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .restart local p4    # "x":F
    .restart local p5    # "y":F
    :cond_48
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    .line 209
    .end local v1    # "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local p3    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local p4    # "x":F
    .end local p5    # "y":F
    .restart local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v5    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local v6    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :goto_4d
    move-object p1, v4

    move-object p2, v5

    move-object p3, v6

    move p4, v7

    move p5, v8

    goto :goto_2c

    .line 210
    .end local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local v6    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v7    # "x":F
    .end local v8    # "y":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p3    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .restart local p4    # "x":F
    .restart local p5    # "y":F
    :cond_53
    move-object v4, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    const/4 p1, 0x3

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->hapticEffect(I)V

    .line 211
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 134
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 135
    return-void

    .line 137
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleStart:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    .line 140
    .local v0, "progress":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 141
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v1

    if-lez v4, :cond_20

    .line 142
    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleStart:J

    .line 144
    :cond_20
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 147
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 149
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    .line 151
    .local v3, "anim1":Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 152
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 153
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v4

    .line 155
    .local v4, "tween":F
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/high16 v9, 0x7fc00000    # Float.NaN

    const/high16 v10, 0x7fc00000    # Float.NaN

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    .line 157
    .local v5, "anim2":Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 158
    invoke-virtual {v5, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 159
    invoke-virtual {v5, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v1

    .line 161
    .local v1, "tweenRadius":F
    const/16 v6, 0xb4

    const/16 v7, 0xfa

    invoke-static {v7, v7, v7, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->createColor(IIII)I

    move-result v6

    .line 162
    .local v6, "startColor":I
    const/4 v7, 0x0

    const/16 v8, 0xc8

    invoke-static {v8, v8, v8, v7}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->createColor(IIII)I

    move-result v7

    .line 163
    .local v7, "endColor":I
    invoke-static {v6, v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->interpolateColor(IIF)I

    move-result v8

    .line 165
    .local v8, "paintedColor":I
    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mWidth:F

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mHeight:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v9, v1

    .line 166
    .local v9, "radius":F
    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v10, v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 167
    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v10}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 168
    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mWidth:F

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mHeight:F

    invoke-virtual {p1, v2, v2, v10, v11}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 169
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleX:F

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleY:F

    invoke-virtual {p1, v2, v10, v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawCircle(FFF)V

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 171
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 172
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 256
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    const-string v1, "ClickModifierOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 257
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 7
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 183
    const-string v0, "CLICK_MODIFIER"

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 185
    .local v1, "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v2, :cond_23

    .line 186
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 188
    .end local v1    # "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_23
    goto :goto_b

    .line 189
    :cond_24
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 109
    const-string v0, "ClickModifier"

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 103
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 104
    return-void
.end method
