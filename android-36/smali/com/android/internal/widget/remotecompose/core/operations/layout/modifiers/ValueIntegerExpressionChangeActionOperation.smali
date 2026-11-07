.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ValueIntegerExpressionChangeActionOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;


# static fields
.field private static final blacklist OP_CODE:I = 0xda


# instance fields
.field blacklist mTargetValueId:J

.field blacklist mValueExpressionId:J


# direct methods
.method public constructor blacklist <init>(JJ)V
    .registers 7
    .param p1, "id"    # J
    .param p3, "value"    # J

    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mTargetValueId:J

    .line 42
    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mValueExpressionId:J

    .line 45
    iput-wide p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mTargetValueId:J

    .line 46
    iput-wide p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mValueExpressionId:J

    .line 47
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;JJ)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "valueId"    # J
    .param p3, "value"    # J

    .line 101
    const/16 v0, 0xda

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 103
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 104
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 124
    const/16 v0, 0xda

    const-string v1, "ValueIntegerExpressionChangeActionOperation"

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 125
    const-string v1, "ValueIntegerExpressionChange action.  This operation represents a value change for the given id"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    const-string v2, "TARGET_VALUE_ID"

    const-string v3, "Value ID"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 129
    const-string v2, "VALUE_ID"

    const-string v3, "id of the value to be assigned to the target"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 130
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 7
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

    .line 113
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v0

    .line 114
    .local v0, "valueId":J
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v2

    .line 115
    .local v2, "value":J
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;-><init>(JJ)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 72
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 77
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist runAction(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 90
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mValueExpressionId:J

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mTargetValueId:J

    long-to-int v2, v2

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->evaluateIntExpression(JILcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 91
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->ACTION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 135
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 136
    const-string v1, "ValueIntegerExpressionChangeActionOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mTargetValueId:J

    .line 137
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "targetValueId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mValueExpressionId:J

    .line 138
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "valueExpressionId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 139
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->serializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mTargetValueId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mValueExpressionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public blacklist serializedName()Ljava/lang/String;
    .registers 2

    .line 62
    const-string v0, "VALUE_INTEGER_EXPRESSION_CHANGE"

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueIntegerExpressionChangeActionOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->mTargetValueId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    .line 81
    return-void
.end method
