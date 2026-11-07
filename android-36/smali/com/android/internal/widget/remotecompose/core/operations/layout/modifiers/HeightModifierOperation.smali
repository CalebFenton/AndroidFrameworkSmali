.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;
.source "HeightModifierOperation.java"


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "HeightModifierOperation"

.field private static final blacklist OP_CODE:I = 0x43


# instance fields
.field private blacklist mHeightIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;


# direct methods
.method public constructor blacklist <init>(F)V
    .registers 3
    .param p1, "value"    # F

    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;-><init>(F)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mHeightIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    .line 98
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V
    .registers 3
    .param p1, "type"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mHeightIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    .line 94
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;F)V
    .registers 4
    .param p1, "type"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;
    .param p2, "value"    # F

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;F)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mHeightIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    .line 90
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "type"    # I
    .param p2, "value"    # F

    .line 65
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 68
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 118
    const/16 v0, 0x43

    const-string v1, "HeightModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 119
    const-string v1, "define the animation"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 120
    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 121
    const/4 v1, 0x1

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 122
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 54
    const/16 v0, 0x43

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 45
    const-string v0, "HeightModifierOperation"

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

    .line 77
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->fromInt(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object v0

    .line 78
    .local v0, "type":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 79
    .local v1, "value":F
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;F)V

    .line 80
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method


# virtual methods
.method public blacklist getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mHeightIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 145
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 146
    const-string v1, "HeightModifierOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mOutValue:F

    .line 147
    const-string v3, "height"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 148
    const-string v2, "dimensionModifierType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 149
    return-void
.end method

.method public blacklist serializedName()Ljava/lang/String;
    .registers 2

    .line 109
    const-string v0, "HEIGHT"

    return-object v0
.end method

.method public blacklist setHeightIn(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;)V
    .registers 2
    .param p1, "heightInConstraints"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    .line 130
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mHeightIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    .line 131
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Height("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mValue:F

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

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->mValue:F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 86
    return-void
.end method
