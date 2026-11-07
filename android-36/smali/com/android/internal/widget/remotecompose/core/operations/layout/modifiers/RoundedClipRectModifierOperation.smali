.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.source "RoundedClipRectModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "RoundedClipRectModifierOperation"

.field public static final blacklist OP_CODE:I = 0x36


# instance fields
.field blacklist mHeight:F

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>(FFFF)V
    .registers 6
    .param p1, "topStart"    # F
    .param p2, "topEnd"    # F
    .param p3, "bottomStart"    # F
    .param p4, "bottomEnd"    # F

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;-><init>(FFFF)V

    .line 114
    const-string v0, "RoundedClipRectModifierOperation"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .registers 11
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "topStart"    # F
    .param p2, "topEnd"    # F
    .param p3, "bottomStart"    # F
    .param p4, "bottomEnd"    # F

    .line 163
    const/16 v1, 0x36

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .end local p1    # "topStart":F
    .end local p2    # "topEnd":F
    .end local p3    # "bottomStart":F
    .end local p4    # "bottomEnd":F
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v2, "topStart":F
    .local v3, "topEnd":F
    .local v4, "bottomStart":F
    .local v5, "bottomEnd":F
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V

    .line 164
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 84
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->id()I

    move-result v0

    const-string v1, "RoundedClipRectModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 85
    const-string v1, "clip with rectangle"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    const-string/jumbo v2, "topStart"

    const-string v3, "The topStart radius of the rectangle to intersect with the current clip"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 91
    const-string/jumbo v2, "topEnd"

    const-string v3, "The topEnd radius of the rectangle to intersect with the current clip"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 96
    const-string v2, "bottomStart"

    const-string v3, "The bottomStart radius of the rectangle to intersect with the current clip"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 101
    const-string v2, "bottomEnd"

    const-string v3, "The bottomEnd radius of the rectangle to intersect with the current clip"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 106
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 60
    const/16 v0, 0x36

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 70
    const-string v0, "RoundedClipRectModifierOperation"

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

    .line 50
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation$$ExternalSyntheticLambda0;-><init>()V

    .line 51
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;
    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 125
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mWidth:F

    .line 126
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mHeight:F

    .line 127
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 119
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mWidth:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mHeight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mX1:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mY1:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mX2:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mY2:F

    move-object v0, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v0, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->roundedClipRect(FFFFFF)V

    .line 120
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 8
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 168
    const-string v4, "bottomStart"

    const-string v5, "bottomEnd"

    const-string/jumbo v2, "topStart"

    const-string/jumbo v3, "topEnd"

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "serializer":Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .local v1, "serializer":Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v4, v2, v3

    .line 169
    invoke-interface {p1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 170
    const-string v2, "RoundedClipRectModifierOperation"

    invoke-interface {p1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mWidth:F

    .line 171
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "width"

    invoke-interface {p1, v3, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mHeight:F

    .line 172
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {p1, v3, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 173
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ROUNDED_CLIP_RECT = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mHeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mX1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mY1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mX2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mY2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 146
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p2, "v1"    # F
    .param p3, "v2"    # F
    .param p4, "v3"    # F
    .param p5, "v4"    # F

    .line 75
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 76
    return-void
.end method
