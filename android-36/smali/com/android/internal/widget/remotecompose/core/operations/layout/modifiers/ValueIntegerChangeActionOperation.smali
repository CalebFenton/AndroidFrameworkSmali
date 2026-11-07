.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ValueIntegerChangeActionOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;


# static fields
.field private static final blacklist OP_CODE:I = 0xd4


# instance fields
.field blacklist mTargetValueId:I

.field blacklist mValue:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 43
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mTargetValueId:I

    .line 41
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mValue:I

    .line 44
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mTargetValueId:I

    .line 45
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mValue:I

    .line 46
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "valueId"    # I
    .param p2, "value"    # I

    .line 99
    const/16 v0, 0xd4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 101
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 102
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 122
    const/16 v0, 0xd4

    const-string v1, "ValueIntegerChangeActionOperation"

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 123
    const-string v1, "ValueIntegerChange action.  This operation represents a value change for the given id"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 126
    const/4 v1, 0x0

    const-string v2, "TARGET_VALUE_ID"

    const-string v3, "Value ID"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 127
    const-string v2, "VALUE"

    const-string v3, "integer value to be assigned to the target"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 128
    return-void
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

    .line 111
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 112
    .local v0, "valueId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 113
    .local v1, "value":I
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 70
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 75
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist runAction(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 88
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mTargetValueId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mValue:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->overrideInteger(II)V

    .line 89
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->ACTION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 133
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 134
    const-string v1, "ValueIntegerChangeActionOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mTargetValueId:I

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "targetValueId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mValue:I

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 137
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->serializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mTargetValueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 67
    return-void
.end method

.method public blacklist serializedName()Ljava/lang/String;
    .registers 2

    .line 61
    const-string v0, "VALUE_INTEGER_CHANGE"

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueChangeActionOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->mTargetValueId:I

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
    .registers 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 79
    return-void
.end method
