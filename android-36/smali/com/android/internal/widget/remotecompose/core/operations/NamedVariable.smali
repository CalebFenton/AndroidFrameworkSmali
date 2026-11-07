.class public Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "NamedVariable.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "NamedVariable"

.field public static final blacklist COLOR_TYPE:I = 0x2

.field public static final blacklist FLOAT_TYPE:I = 0x1

.field public static final blacklist IMAGE_TYPE:I = 0x3

.field public static final blacklist INT_TYPE:I = 0x4

.field public static final blacklist LONG_TYPE:I = 0x5

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0

.field private static final blacklist OP_CODE:I = 0x89

.field public static final blacklist STRING_TYPE:I


# instance fields
.field public final blacklist mVarId:I

.field public final blacklist mVarName:Ljava/lang/String;

.field public final blacklist mVarType:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "varId"    # I
    .param p2, "varType"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarId:I

    .line 50
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    .line 51
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "varId"    # I
    .param p2, "varType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 99
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 101
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 102
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 124
    const/16 v0, 0x89

    const-string v1, "NamedVariable"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 125
    const-string v1, "Add a string name for an ID"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 126
    const/4 v1, 0x0

    const-string/jumbo v2, "varId"

    const-string v3, "id to label"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 127
    const-string/jumbo v2, "varType"

    const-string v3, "The type of variable"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 128
    const/4 v1, 0x5

    const-string v2, "name"

    const-string v3, "String"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 129
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 86
    const/16 v0, 0x89

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 77
    const-string v0, "NamedVariable"

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

    .line 112
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 113
    .local v0, "varId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 114
    .local v1, "varType":I
    const/16 v2, 0xfa0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method private blacklist typeToString()Ljava/lang/String;
    .registers 2

    .line 152
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    packed-switch v0, :pswitch_data_18

    .line 164
    const-string v0, "INVALID_TYPE"

    return-object v0

    .line 162
    :pswitch_8
    const-string v0, "INT_TYPE"

    return-object v0

    .line 160
    :pswitch_b
    const-string v0, "IMAGE_TYPE"

    return-object v0

    .line 154
    :pswitch_e
    const-string v0, "COLOR_TYPE"

    return-object v0

    .line 156
    :pswitch_11
    const-string v0, "FLOAT_TYPE"

    return-object v0

    .line 158
    :pswitch_14
    const-string v0, "STRING_TYPE"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadVariableName(Ljava/lang/String;II)V

    .line 134
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 144
    nop

    .line 145
    const-string v0, "NamedVariable"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarId:I

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "varId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    .line 147
    const-string/jumbo v2, "varName"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 148
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->typeToString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "varType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 149
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VariableName["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    .line 65
    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->trimString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    .line 57
    return-void
.end method
