.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ComponentModifiers.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# instance fields
.field blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)V
    .registers 3
    .param p1, "operation"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public blacklist addAll(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 59
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 61
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    goto :goto_9

    .line 62
    :cond_1c
    return-void
.end method

.method public blacklist getHorizontalScrollDimension()F
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 299
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_24

    .line 300
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 301
    .local v2, "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isHorizontalScroll()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 302
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getContentDimension()F

    move-result v0

    return v0

    .line 305
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    .end local v2    # "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    :cond_24
    goto :goto_6

    .line 306
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getVerticalScrollDimension()F
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 316
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_24

    .line 317
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 318
    .local v2, "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 319
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getContentDimension()F

    move-result v0

    return v0

    .line 322
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    .end local v2    # "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    :cond_24
    goto :goto_6

    .line 323
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasHorizontalScroll()Z
    .registers 5

    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 231
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_21

    .line 232
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 233
    .local v2, "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isHorizontalScroll()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 234
    const/4 v0, 0x1

    return v0

    .line 237
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    .end local v2    # "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    :cond_21
    goto :goto_6

    .line 238
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasVerticalScroll()Z
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 248
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_21

    .line 249
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 250
    .local v2, "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 251
    const/4 v0, 0x1

    return v0

    .line 254
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    .end local v2    # "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    :cond_21
    goto :goto_6

    .line 255
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 12
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 139
    move v0, p3

    .line 140
    .local v0, "w":F
    move v1, p4

    .line 141
    .local v1, "h":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 142
    .local v3, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_2f

    .line 143
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 144
    .local v4, "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v0, v5

    .line 145
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    .line 147
    .end local v4    # "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    :cond_2f
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    if-eqz v4, :cond_3a

    .line 148
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_44

    .line 149
    :cond_3a
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    if-eqz v4, :cond_44

    .line 150
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    invoke-interface {v4, p1, p2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 152
    .end local v3    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    :cond_44
    :goto_44
    goto :goto_8

    .line 153
    :cond_45
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 171
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 172
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    if-eqz v2, :cond_22

    .line 173
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

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
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_27

    .line 172
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
    :cond_22
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    .line 175
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
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
    :goto_27
    move-object p1, v4

    move-object p2, v5

    move-object p3, v6

    move p4, v7

    move p5, v8

    goto :goto_6

    .line 176
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
    :cond_2d
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 208
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v2, :cond_22

    .line 209
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

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
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_27

    .line 208
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
    :cond_22
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    .line 211
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
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
    :goto_27
    move-object p1, v4

    move-object p2, v5

    move-object p3, v6

    move p4, v7

    move p5, v8

    goto :goto_6

    .line 212
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
    :cond_2d
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 182
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v2, :cond_22

    .line 183
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

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
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_27

    .line 182
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
    :cond_22
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    .line 185
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
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
    :goto_27
    move-object p1, v4

    move-object p2, v5

    move-object p3, v6

    move p4, v7

    move p5, v8

    goto :goto_6

    .line 186
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
    :cond_2d
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 218
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v2, :cond_22

    .line 219
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

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
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_27

    .line 218
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
    :cond_22
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    .line 221
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
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
    :goto_27
    move-object p1, v4

    move-object p2, v5

    move-object p3, v6

    move p4, v7

    move p5, v8

    goto :goto_6

    .line 222
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
    :cond_2d
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V
    .registers 19
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "dx"    # F
    .param p7, "dy"    # F

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 198
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v2, :cond_26

    .line 199
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V

    .line 201
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    :cond_26
    goto :goto_6

    .line 202
    :cond_27
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "tx":F
    const/4 v1, 0x0

    .line 109
    .local v1, "ty":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 110
    .local v3, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_2b

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v4, :cond_2b

    .line 111
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 112
    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->markNotDirty()V

    .line 114
    :cond_2b
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_47

    .line 115
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 116
    .local v4, "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 117
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    add-float/2addr v0, v5

    .line 118
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v5

    add-float/2addr v1, v5

    .line 120
    .end local v4    # "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    :cond_47
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;

    if-nez v4, :cond_8

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;

    if-eqz v4, :cond_50

    .line 121
    goto :goto_8

    .line 123
    :cond_50
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    if-eqz v4, :cond_63

    .line 124
    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 125
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 126
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    goto :goto_6d

    .line 127
    :cond_63
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v4, :cond_6d

    .line 128
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 130
    .end local v3    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    :cond_6d
    :goto_6d
    goto :goto_8

    .line 133
    :cond_6e
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 134
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 328
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 329
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 330
    const-string v1, "ComponentModifiers"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    .line 331
    const-string v2, "modifiers"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 332
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 81
    const-string v0, "MODIFIERS"

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 83
    .local v1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 84
    .end local v1    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    goto :goto_b

    .line 85
    :cond_1d
    return-void
.end method

.method public blacklist setHorizontalScrollDimension(FF)V
    .registers 7
    .param p1, "hostDimension"    # F
    .param p2, "contentDimension"    # F

    .line 265
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 266
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_22

    .line 267
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 268
    .local v2, "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isHorizontalScroll()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 269
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->setHorizontalScrollDimension(FF)V

    .line 272
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    .end local v2    # "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    :cond_22
    goto :goto_6

    .line 273
    :cond_23
    return-void
.end method

.method public blacklist setVerticalScrollDimension(FF)V
    .registers 7
    .param p1, "hostDimension"    # F
    .param p2, "contentDimension"    # F

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 283
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_22

    .line 284
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 285
    .local v2, "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 286
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->setVerticalScrollDimension(FF)V

    .line 289
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    .end local v2    # "scrollModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    :cond_22
    goto :goto_6

    .line 290
    :cond_23
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 67
    const-string v0, "ComponentModifiers \n"

    .line 68
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 69
    .local v2, "modifierOperation":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .end local v2    # "modifierOperation":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    goto :goto_8

    .line 71
    :cond_36
    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 77
    return-void
.end method
