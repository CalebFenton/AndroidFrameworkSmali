.class public Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "FloatFunctionDefine.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "FunctionDefine"

.field private static final blacklist OP_CODE:I = 0xa8


# instance fields
.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private final blacklist mFloatVarId:[I

.field private final blacklist mId:I

.field private blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I[I)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "floatVarId"    # [I

    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 54
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mId:I

    .line 55
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mFloatVarId:[I

    .line 56
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "varId"    # [I

    .line 99
    const/16 v0, 0xa8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 101
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v1, p2

    if-ge v0, v1, :cond_18

    .line 103
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 105
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 130
    const/16 v0, 0xa8

    const-string v1, "FunctionDefine"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 131
    const-string v1, "Define a function"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "The reference of the function"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 133
    const-string/jumbo v3, "varLen"

    const-string v4, "number of arguments to the function"

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 134
    const/16 v1, 0xa

    const-string v4, "id equations"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 135
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

    .line 114
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 115
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 116
    .local v1, "varLen":I
    new-array v2, v1, [I

    .line 117
    .local v2, "varId":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    array-length v4, v2

    if-ge v3, v4, :cond_17

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 120
    .end local v3    # "i":I
    :cond_17
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;-><init>(I[I)V

    .line 121
    .local v3, "data":Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 151
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist execute(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 160
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_1c

    .line 161
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 164
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 165
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 166
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_6

    .line 167
    :cond_23
    return-void
.end method

.method public blacklist getArgs()[I
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mFloatVarId:[I

    return-object v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 69
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatFunctionDefine["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_20
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mFloatVarId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_49

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mFloatVarId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 84
    .end local v1    # "j":I
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 86
    .local v2, "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .end local v2    # "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_62

    .line 88
    :cond_8a
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 65
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 74
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->mFloatVarId:[I

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V

    .line 75
    return-void
.end method
