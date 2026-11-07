.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "CollapsiblePriorityModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "CollapsiblePriorityModifierOperation"

.field private static final blacklist OP_CODE:I = 0xeb


# instance fields
.field private blacklist mOrientation:I

.field private blacklist mPriority:F


# direct methods
.method public constructor blacklist <init>(IF)V
    .registers 3
    .param p1, "orientation"    # I
    .param p2, "priority"    # F

    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->mOrientation:I

    .line 44
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->mPriority:F

    .line 45
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "orientation"    # I
    .param p2, "priority"    # F

    .line 122
    const/16 v0, 0xeb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 125
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 108
    const/16 v0, 0xeb

    const-string v1, "CollapsiblePriorityModifier"

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 109
    const-string v1, "Add additional priority to children of Collapsible layouts"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    const-string v2, "orientation"

    const-string v3, "Horizontal(0) or Vertical (1)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 111
    const/4 v1, 0x1

    const-string/jumbo v2, "priority"

    const-string v3, "The associated priority"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 112
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 89
    const/16 v0, 0xeb

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 99
    const-string v0, "CollapsiblePriorityModifierOperation"

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

    .line 78
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 79
    .local v0, "orientation":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 80
    .local v1, "priority":F
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;-><init>(IF)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 63
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 68
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getOrientation()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->mOrientation:I

    return v0
.end method

.method public blacklist getPriority()F
    .registers 2

    .line 48
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->mPriority:F

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 130
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->mOrientation:I

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orientation"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->mPriority:F

    .line 133
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "priority"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 134
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->getPriority()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 57
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->mOrientation:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->mPriority:F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 58
    return-void
.end method
