.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "CanvasOperations.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "CanvasOperations"

.field private static final blacklist OP_CODE:I = 0xad


# instance fields
.field blacklist mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->mList:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 133
    const/16 v0, 0xad

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 134
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 152
    const/16 v0, 0xad

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 153
    const-string v1, "Impulse Process that runs a list of operations"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 154
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 124
    const-string v0, "Loop"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 3
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

    .line 143
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 102
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 108
    .local v0, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 109
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 110
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 112
    :cond_2a
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 114
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_a

    .line 115
    :cond_35
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 51
    .local v1, "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_1c

    .line 52
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 53
    .local v2, "variableSupport":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 55
    .end local v2    # "variableSupport":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    :cond_1c
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    if-eqz v2, :cond_28

    .line 56
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    .line 57
    .local v2, "v":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->addComponentValue(Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;)V

    .line 59
    .end local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "v":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    :cond_28
    goto :goto_6

    .line 60
    :cond_29
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 158
    const-string v0, "CanvasOperations"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    const-string v1, "list"

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->mList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 159
    return-void
.end method

.method public blacklist setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V
    .registers 2
    .param p1, "layoutComponent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 167
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 168
    if-eqz p1, :cond_7

    .line 169
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setCanvasOperations(Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;)V

    .line 171
    :cond_7
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CanvasOperations\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 92
    .local v2, "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .end local v2    # "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_d

    .line 96
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 65
    .local v1, "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_1c

    .line 66
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 67
    .local v2, "variableSupport":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 69
    .end local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "variableSupport":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    :cond_1c
    goto :goto_6

    .line 70
    :cond_1d
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 84
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 85
    return-void
.end method
