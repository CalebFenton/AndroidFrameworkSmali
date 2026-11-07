.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;
.source "ScrollModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "ScrollModifierOperation"

.field private static final blacklist OP_CODE:I = 0xe2


# instance fields
.field blacklist mContentDimension:F

.field blacklist mDirection:I

.field blacklist mHostDimension:F

.field blacklist mInitialScrollX:F

.field blacklist mInitialScrollY:F

.field private final blacklist mMax:F

.field blacklist mMaxScrollX:F

.field blacklist mMaxScrollY:F

.field private final blacklist mNotchMax:F

.field private final blacklist mPositionExpression:F

.field blacklist mScrollX:F

.field blacklist mScrollY:F

.field blacklist mTouchDownX:F

.field blacklist mTouchDownY:F

.field private blacklist mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;


# direct methods
.method public constructor blacklist <init>(IFFF)V
    .registers 6
    .param p1, "direction"    # I
    .param p2, "position"    # F
    .param p3, "max"    # F
    .param p4, "notchMax"    # F

    .line 81
    const-string v0, "SCROLL_MODIFIER"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;-><init>(Ljava/lang/String;)V

    .line 82
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    .line 83
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mPositionExpression:F

    .line 84
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMax:F

    .line 85
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mNotchMax:F

    .line 86
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "direction"    # I
    .param p2, "position"    # F
    .param p3, "max"    # F
    .param p4, "notchMax"    # F

    .line 218
    const/16 v0, 0xe2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 220
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 221
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 222
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 223
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 245
    const/16 v0, 0xe2

    const-string v1, "ScrollModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 246
    const-string v1, "define a Scroll Modifier"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 247
    const/4 v1, 0x0

    const-string v2, "direction"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 248
    return-void
.end method

.method private blacklist getMaxScrollPosition(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F
    .registers 7
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "direction"    # I

    .line 251
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v0, :cond_29

    .line 252
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 253
    .local v0, "layoutComponent":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 254
    .local v1, "numChildren":I
    if-lez v1, :cond_29

    .line 255
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 256
    .local v2, "lastChild":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-nez p2, :cond_24

    .line 257
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    return v3

    .line 259
    :cond_24
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v3

    return v3

    .line 263
    .end local v0    # "layoutComponent":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    .end local v1    # "numChildren":I
    .end local v2    # "lastChild":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist id()I
    .registers 1

    .line 204
    const/16 v0, 0xe2

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 195
    const-string v0, "ScrollModifierOperation"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 7
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

    .line 232
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 233
    .local v0, "direction":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 234
    .local v1, "position":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 235
    .local v2, "max":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 236
    .local v3, "notchMax":F
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;-><init>(IFFF)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    .line 135
    .local v0, "root":Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    if-eqz v0, :cond_e

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHasTouchListeners(Z)V

    .line 138
    :cond_e
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 139
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 160
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentDimension()F
    .registers 2

    .line 362
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mContentDimension:F

    return v0
.end method

.method public blacklist getScrollAxisRange()Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
    .registers 5

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->handlesVerticalScroll()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 468
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;-><init>(FFZZ)V

    return-object v0

    .line 470
    :cond_11
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;-><init>(FFZZ)V

    return-object v0
.end method

.method public blacklist getScrollX()F
    .registers 2

    .line 125
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    return v0
.end method

.method public blacklist getScrollX(F)F
    .registers 4
    .param p1, "currentValue"    # F

    .line 367
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 368
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    return v0

    .line 370
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getScrollY()F
    .registers 2

    .line 129
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    return v0
.end method

.method public blacklist getScrollY(F)F
    .registers 3
    .param p1, "currentValue"    # F

    .line 375
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-nez v0, :cond_7

    .line 376
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    return v0

    .line 378
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handlesHorizontalScroll()Z
    .registers 3

    .line 383
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist handlesVerticalScroll()Z
    .registers 2

    .line 388
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist inflate(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 5
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 95
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v2, :cond_20

    .line 96
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 97
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 99
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_20
    goto :goto_6

    .line 100
    :cond_21
    return-void
.end method

.method public blacklist isHorizontalScroll()Z
    .registers 2

    .line 121
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isVerticalScroll()Z
    .registers 2

    .line 117
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 268
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mWidth:F

    .line 269
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mHeight:F

    .line 270
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    .line 271
    .local v0, "max":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-eqz v1, :cond_c

    .line 272
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    .line 274
    :cond_c
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v1, :cond_1c

    .line 275
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getMaxScrollPosition(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F

    move-result v1

    .line 276
    .local v1, "maxScrollPosition":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1c

    .line 277
    move v0, v1

    .line 280
    .end local v1    # "maxScrollPosition":F
    :cond_1c
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMax:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 281
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mNotchMax:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mContentDimension:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 282
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 335
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 287
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchDownX:F

    .line 288
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchDownY:F

    .line 289
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mInitialScrollX:F

    .line 290
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mInitialScrollY:F

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v0, :cond_20

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    add-float/2addr v1, p4

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    add-float/2addr v2, p5

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 295
    :cond_20
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->appliedTouchOperation(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 296
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 11
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v0, :cond_14

    .line 318
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    add-float/2addr v1, p4

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    add-float/2addr v2, p5

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 321
    :cond_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchDownX:F

    sub-float v0, p4, v0

    .line 322
    .local v0, "dx":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchDownY:F

    sub-float v1, p5, v1

    .line 324
    .local v1, "dy":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mPositionExpression:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 325
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    const/4 v3, 0x0

    if-nez v2, :cond_3a

    .line 326
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    neg-float v2, v2

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mInitialScrollY:F

    add-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    goto :goto_4a

    .line 328
    :cond_3a
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    neg-float v2, v2

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mInitialScrollX:F

    add-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    .line 331
    :cond_4a
    :goto_4a
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "dx"    # F
    .param p7, "dy"    # F

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v0, :cond_1a

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 309
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    add-float v3, p4, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    add-float v4, p5, v0

    move-object v2, p1

    move v5, p6

    move v6, p7

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p6    # "dx":F
    .end local p7    # "dy":F
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v5, "dx":F
    .local v6, "dy":F
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    goto :goto_1d

    .line 307
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p6    # "dx":F
    .restart local p7    # "dy":F
    :cond_1a
    move-object v2, p1

    move v5, p6

    move v6, p7

    .line 312
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p6    # "dx":F
    .end local p7    # "dy":F
    .restart local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    :goto_1d
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 166
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 167
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_6

    .line 168
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-nez v0, :cond_1f

    .line 169
    return-void

    .line 171
    :cond_1f
    nop

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mPositionExpression:F

    .line 174
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result v0

    .line 176
    .local v0, "position":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-nez v1, :cond_38

    .line 177
    neg-float v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    goto :goto_3b

    .line 179
    :cond_38
    neg-float v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    .line 181
    :goto_3b
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 107
    :cond_9
    return-void
.end method

.method public blacklist reset()V
    .registers 1

    .line 394
    return-void
.end method

.method public blacklist scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "offset"    # I

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->handlesVerticalScroll()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 425
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    neg-float v0, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    int-to-float v3, p2

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    goto :goto_2d

    .line 427
    :cond_1c
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    neg-float v0, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    int-to-float v3, p2

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    .line 429
    :goto_2d
    return p2
.end method

.method public blacklist scrollDirection()I
    .registers 2

    .line 412
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->handlesVerticalScroll()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 413
    const/4 v0, 0x2

    return v0

    .line 415
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "direction"    # Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    .line 434
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mHostDimension:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    .line 436
    .local v0, "offset":F
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->FORWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    if-eq p2, v1, :cond_12

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->DOWN:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    if-eq p2, v1, :cond_12

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->RIGHT:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    if-ne p2, v1, :cond_15

    .line 439
    :cond_12
    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    .line 442
    :cond_15
    float-to-int v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 398
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 399
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 400
    const-string v1, "ScrollModifierOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "direction"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMax:F

    .line 402
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "max"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mNotchMax:F

    .line 403
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "notchMax"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    goto :goto_41

    :cond_3f
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    :goto_41
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scrollValue"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_55

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    goto :goto_57

    :cond_55
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    :goto_57
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "maxScrollValue"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mContentDimension:F

    .line 406
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "contentDimension"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mHostDimension:F

    .line 407
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "hostDimension"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 408
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCROLL = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 155
    return-void
.end method

.method public blacklist setHorizontalScrollDimension(FF)V
    .registers 4
    .param p1, "hostDimension"    # F
    .param p2, "contentDimension"    # F

    .line 344
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mHostDimension:F

    .line 345
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mContentDimension:F

    .line 346
    sub-float v0, p2, p1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    .line 347
    return-void
.end method

.method public blacklist setVerticalScrollDimension(FF)V
    .registers 4
    .param p1, "hostDimension"    # F
    .param p2, "contentDimension"    # F

    .line 356
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mHostDimension:F

    .line 357
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mContentDimension:F

    .line 358
    sub-float v0, p2, p1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    .line 359
    return-void
.end method

.method public blacklist showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "child"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 447
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 448
    .local v0, "locationInWindow":[F
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->handlesVerticalScroll()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_14

    .line 452
    aget v2, v0, v4

    neg-float v2, v2

    float-to-int v1, v2

    goto :goto_18

    .line 454
    :cond_14
    aget v2, v0, v3

    neg-float v2, v2

    float-to-int v1, v2

    .line 457
    :goto_18
    if-nez v1, :cond_1b

    .line 458
    return v4

    .line 460
    :cond_1b
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I

    move-result v2

    if-eqz v2, :cond_22

    move v3, v4

    :cond_22
    return v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollModifierOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 114
    :cond_9
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 143
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mPositionExpression:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMax:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mNotchMax:F

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 144
    return-void
.end method
