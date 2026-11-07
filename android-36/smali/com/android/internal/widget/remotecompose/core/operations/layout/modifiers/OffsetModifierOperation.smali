.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;
.source "OffsetModifierOperation.java"


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "OffsetModifierOperation"

.field private static final blacklist OP_CODE:I = 0xdd


# instance fields
.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mX:F

    .line 46
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mY:F

    .line 47
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 129
    const/16 v0, 0xdd

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 131
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 132
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 152
    const/16 v0, 0xdd

    const-string v1, "OffsetModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 153
    const-string v1, "define the Offset Modifier"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 154
    const/4 v1, 0x1

    const-string/jumbo v2, "x"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 155
    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 156
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 118
    const/16 v0, 0xdd

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 109
    const-string v0, "OffsetModifierOperation"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 5
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

    .line 141
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v0

    .line 142
    .local v0, "x":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 143
    .local v1, "y":F
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;-><init>(FF)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 84
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getX()F
    .registers 2

    .line 50
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mX:F

    return v0
.end method

.method public blacklist getY()F
    .registers 2

    .line 54
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mY:F

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 159
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mX:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result v0

    .line 90
    .local v0, "x":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mY:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result v1

    .line 91
    .local v1, "y":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v2

    .line 92
    .local v2, "density":F
    mul-float/2addr v0, v2

    .line 93
    mul-float/2addr v1, v2

    .line 94
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 95
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 164
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 165
    const-string v1, "OffsetModifierOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mX:F

    .line 166
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mY:F

    .line 167
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 168
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OFFSET = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public blacklist setX(F)V
    .registers 2
    .param p1, "x"    # F

    .line 58
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mX:F

    .line 59
    return-void
.end method

.method public blacklist setY(F)V
    .registers 2
    .param p1, "y"    # F

    .line 62
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mY:F

    .line 63
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OffsetModifierOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 67
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->mY:F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 68
    return-void
.end method
