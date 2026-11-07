.class public Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ComponentValue.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ComponentValue"

.field public static final blacklist HEIGHT:I = 0x1

.field private static final blacklist OP_CODE:I = 0x96

.field public static final blacklist WIDTH:I


# instance fields
.field private blacklist mComponentID:I

.field private blacklist mType:I

.field private blacklist mValueId:I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "componentId"    # I
    .param p3, "valueId"    # I

    .line 127
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mType:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mComponentID:I

    .line 44
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mValueId:I

    .line 128
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mType:I

    .line 129
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mComponentID:I

    .line 130
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mValueId:I

    .line 131
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "type"    # I
    .param p2, "componentId"    # I
    .param p3, "valueId"    # I

    .line 142
    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 144
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 145
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 146
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 113
    const/16 v0, 0x96

    const-string v1, "ComponentValue"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 114
    const-string v1, "Encode a component-related value (eg its width, height etc.)"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 115
    const/4 v1, 0x0

    const-string v2, "TYPE"

    const-string v3, "The type of value, either WIDTH(0) or HEIGHT(1)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 119
    const-string v2, "COMPONENT_ID"

    const-string v3, "The component id to reference"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 120
    const-string v2, "VALUE_ID"

    const-string v3, "The id of the RemoteFloat representing the described component value, which can be used in expressions"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 125
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 52
    const/16 v0, 0x96

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 62
    const-string v0, "ComponentValue"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 6
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

    .line 100
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 101
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 102
    .local v1, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 103
    .local v2, "valueId":I
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;-><init>(III)V

    .line 104
    .local v3, "op":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method private blacklist typeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .line 181
    if-nez p1, :cond_5

    const-string v0, "WIDTH"

    return-object v0

    .line 182
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const-string v0, "HEIGHT"

    return-object v0

    .line 183
    :cond_b
    const-string v0, "INVALID_TYPE"

    return-object v0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 91
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getComponentId()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mComponentID:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mType:I

    return v0
.end method

.method public blacklist getValueId()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mValueId:I

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 173
    nop

    .line 174
    const-string v0, "ComponentValue"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mValueId:I

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "valueId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mType:I

    .line 176
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "componentValueType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mComponentID:I

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "componentId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 178
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 156
    const-string v0, "WIDTH"

    .line 157
    .local v0, "type":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 158
    const-string v0, "HEIGHT"

    .line 160
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComponentValue value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mValueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of Component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mComponentID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 169
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mComponentID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mValueId:I

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
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 85
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mType:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mComponentID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->mValueId:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 86
    return-void
.end method
