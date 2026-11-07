.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.source "RootLayoutComponent.java"


# instance fields
.field private blacklist mCurrentId:I

.field private blacklist mHasTouchListeners:Z


# direct methods
.method public constructor blacklist <init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 15
    .param p1, "componentId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 63
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

    .line 42
    const/4 p1, -0x1

    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    .line 43
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHasTouchListeners:Z

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)V
    .registers 16
    .param p1, "componentId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p7, "animationId"    # I

    .line 53
    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v1, p6

    move v3, p7

    .end local p1    # "componentId":I
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "width":F
    .end local p5    # "height":F
    .end local p6    # "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local p7    # "animationId":I
    .local v1, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v2, "componentId":I
    .local v3, "animationId":I
    .local v4, "x":F
    .local v5, "y":F
    .local v6, "width":F
    .local v7, "height":F
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 42
    const/4 p1, -0x1

    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    .line 43
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHasTouchListeners:Z

    .line 54
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .registers 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "componentId"    # I

    .line 238
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 240
    return-void
.end method

.method private blacklist assignId(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 5
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 125
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 126
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    .line 127
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    iput v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 129
    :cond_f
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 130
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_2b

    .line 131
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->assignId(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 133
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_2b
    goto :goto_15

    .line 134
    :cond_2c
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 259
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 260
    const/4 v1, 0x0

    const-string v2, "COMPONENT_ID"

    const-string/jumbo v3, "unique id for this component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 261
    const-string v1, "Root element for a document. Other components / layout managers are children in the component tree starting fromthis Root component."

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 265
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 228
    const/16 v0, 0xc8

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 219
    const-string v0, "RootLayout"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 10
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

    .line 249
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 250
    .local v1, "componentId":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;-><init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method


# virtual methods
.method public blacklist assignIds(I)V
    .registers 2
    .param p1, "lastId"    # I

    .line 120
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    .line 121
    invoke-direct {p0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->assignId(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 122
    return-void
.end method

.method public blacklist displayHierarchy()Ljava/lang/String;
    .registers 3

    .line 186
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;-><init>()V

    .line 187
    .local v0, "serializer":Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;
    const/4 v1, 0x0

    invoke-virtual {p0, p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->displayHierarchy(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 188
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist displayHierarchy(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 8
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "indent"    # I
    .param p3, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 200
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 201
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 202
    .local v1, "c":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    if-eqz v2, :cond_22

    .line 203
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_3b

    .line 204
    :cond_22
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_2f

    .line 205
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->displayHierarchy(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_3b

    .line 206
    :cond_2f
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    if-eqz v2, :cond_3b

    .line 207
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    add-int/lit8 v3, p2, 0x1

    invoke-interface {v2, v3, p3}, Lcom/android/internal/widget/remotecompose/core/SerializableToString;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 209
    .end local v1    # "c":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_3b
    :goto_3b
    goto :goto_9

    .line 210
    :cond_3c
    return-void
.end method

.method public blacklist hasTouchListeners()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHasTouchListeners:Z

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 11
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 138
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mNeedsMeasure:Z

    if-nez v0, :cond_5

    .line 139
    return-void

    .line 141
    :cond_5
    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 142
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setWidth(F)V

    .line 143
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHeight(F)V

    .line 146
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;-><init>()V

    move-object v7, v0

    .line 147
    .local v7, "measurePass":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 148
    .local v8, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    if-eqz v1, :cond_41

    .line 149
    move-object v1, v8

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    .line 150
    .local v1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mWidth:F

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHeight:F

    const/4 v3, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 151
    invoke-interface {v1, p1, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 153
    .end local v1    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;
    .end local v8    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_41
    goto :goto_1d

    .line 154
    :cond_42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mNeedsMeasure:Z

    .line 155
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mNeedsRepaint:Z

    .line 160
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 161
    .local v0, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    iput-object p0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 165
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-nez v1, :cond_18

    .line 166
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mWidth:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHeight:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 169
    :cond_18
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 170
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v3, :cond_37

    .line 171
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 172
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 174
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_37
    goto :goto_1e

    .line 176
    :cond_38
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 177
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 283
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 284
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 285
    const-string v0, "RootLayoutComponent"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 286
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ROOT ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mVisibility:I

    .line 100
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public blacklist setHasTouchListeners(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHasTouchListeners:Z

    .line 110
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ROOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mVisibility:I

    .line 80
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 3
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 269
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mComponentId:I

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 270
    return-void
.end method
