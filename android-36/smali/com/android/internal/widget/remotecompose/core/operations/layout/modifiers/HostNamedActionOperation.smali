.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "HostNamedActionOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist FLOAT_ARRAY_TYPE:I = 0x3

.field public static final blacklist FLOAT_TYPE:I = 0x0

.field public static final blacklist INT_TYPE:I = 0x1

.field public static final blacklist NONE_TYPE:I = -0x1

.field private static final blacklist OP_CODE:I = 0xd2

.field public static final blacklist STRING_TYPE:I = 0x2


# instance fields
.field blacklist mTextId:I

.field blacklist mType:I

.field blacklist mValueId:I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "valueId"    # I

    .line 51
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mTextId:I

    .line 48
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mType:I

    .line 49
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

    .line 52
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mTextId:I

    .line 53
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mType:I

    .line 54
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

    .line 55
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "textId"    # I
    .param p2, "type"    # I
    .param p3, "valueId"    # I

    .line 125
    const/16 v0, 0xd2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 127
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 128
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 129
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 150
    const/16 v0, 0xd2

    const-string v1, "HostNamedAction"

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 151
    const-string v1, "Host Named action. This operation represents a host action"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    const-string v2, "TEXT_ID"

    const-string v3, "Named Host Action Text ID"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 153
    const-string v2, "VALUE_ID"

    const-string v3, "Named Host Action Value ID"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 154
    return-void
.end method

.method private static blacklist getActionType(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 167
    packed-switch p0, :pswitch_data_16

    .line 179
    const-string v0, "INVALID_TYPE"

    return-object v0

    .line 175
    :pswitch_6
    const-string v0, "FLOAT_ARRAY_TYPE"

    return-object v0

    .line 173
    :pswitch_9
    const-string v0, "STRING_TYPE"

    return-object v0

    .line 171
    :pswitch_c
    const-string v0, "INT_TYPE"

    return-object v0

    .line 169
    :pswitch_f
    const-string v0, "FLOAT_TYPE"

    return-object v0

    .line 177
    :pswitch_12
    const-string v0, "NONE_TYPE"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch -0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
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

    .line 138
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 139
    .local v0, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 140
    .local v1, "type":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 141
    .local v2, "valueId":I
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;-><init>(III)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 83
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 88
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist runAction(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "value":Ljava/lang/Object;
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_44

    .line 103
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 104
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_44

    .line 105
    :cond_18
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 106
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_44

    .line 107
    :cond_26
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mType:I

    if-nez v1, :cond_37

    .line 108
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_44

    .line 109
    :cond_37
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_44

    .line 110
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloats(I)[F

    move-result-object v0

    .line 113
    :cond_44
    :goto_44
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mTextId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->runNamedAction(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 159
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 160
    const-string v1, "HostNamedActionOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mTextId:I

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "textId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mType:I

    .line 162
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->getActionType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "actionType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "valueId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 164
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

    const/4 v1, -0x1

    const-string v2, " = "

    if-eq v0, v1, :cond_32

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->serializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    goto :goto_50

    .line 78
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->serializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 80
    :goto_50
    return-void
.end method

.method public blacklist serializedName()Ljava/lang/String;
    .registers 2

    .line 70
    const-string v0, "HOST_NAMED_ACTION"

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HostNamedActionOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HostNamedActionOperation;->mValueId:I

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

    .line 92
    return-void
.end method
