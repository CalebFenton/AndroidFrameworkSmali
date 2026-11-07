.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ComponentVisibilityOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;


# static fields
.field private static final blacklist OP_CODE:I = 0xd3


# instance fields
.field private blacklist mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

.field blacklist mVisibility:I

.field blacklist mVisibilityId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .line 47
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    .line 48
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    .line 49
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .registers 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "valueId"    # I

    .line 91
    const/16 v0, 0xd3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 93
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 112
    const/16 v0, 0xd3

    const-string v1, "ComponentVisibility"

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 113
    const-string v1, "This operation allows setting a componentvisibility from a provided value"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 116
    const/4 v1, 0x0

    const-string v2, "VALUE_ID"

    const-string v3, "Value ID representing the visibility"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 117
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 4
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

    .line 102
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 103
    .local v0, "valueId":I
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 73
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 78
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 147
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 121
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 122
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 152
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 153
    const-string v1, "ComponentVisibilityOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "visibilityId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    .line 155
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 156
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->serializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public blacklist serializedName()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "COMPONENT_VISIBILITY"

    return-object v0
.end method

.method public blacklist setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V
    .registers 2
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 142
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 143
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentVisibilityOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

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
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 126
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v0

    .line 127
    .local v0, "visibility":I
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 128
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    goto :goto_26

    .line 129
    :cond_10
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isGone(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 130
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    goto :goto_26

    .line 131
    :cond_1a
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isInvisible(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 132
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    goto :goto_26

    .line 134
    :cond_24
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    .line 136
    :goto_26
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v1, :cond_31

    .line 137
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setVisibility(I)V

    .line 139
    :cond_31
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 82
    return-void
.end method
