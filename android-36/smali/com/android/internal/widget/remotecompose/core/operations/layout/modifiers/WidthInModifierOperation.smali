.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;
.source "WidthInModifierOperation.java"


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "WidthInModifierOperation"

.field private static final blacklist OP_CODE:I = 0xe7


# direct methods
.method public constructor blacklist <init>(FF)V
    .registers 4
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 37
    const/16 v0, 0xe7

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;-><init>(IFF)V

    .line 38
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "x1"    # F
    .param p2, "y1"    # F

    .line 96
    const/16 v0, 0xe7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 98
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 99
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 82
    const/16 v0, 0xe7

    const-string v1, "WidthInModifierOperation"

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 83
    const-string v1, "Add additional constraints to the width"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 84
    const/4 v1, 0x1

    const-string v2, "min"

    const-string v3, "The minimum width, -1 if not applied"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 85
    const-string v2, "max"

    const-string v3, "The maximum width, -1 if not applied"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 86
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 63
    const/16 v0, 0xe7

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 73
    const-string v0, "WidthInModifierOperation"

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

    .line 52
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v0

    .line 53
    .local v0, "v1":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 54
    .local v1, "v2":F
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;-><init>(FF)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 109
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 110
    const-string v1, "WidthInModifierOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->mV1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->mValue1:F

    .line 111
    const-string v3, "min"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->mV2:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->mValue2:F

    .line 112
    const-string v3, "max"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 113
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIDTH_IN = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMax()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 104
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMax()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 43
    return-void
.end method
