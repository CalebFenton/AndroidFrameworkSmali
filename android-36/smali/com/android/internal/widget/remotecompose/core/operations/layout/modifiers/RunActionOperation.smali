.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "RunActionOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "RunActionOperation"

.field private static final blacklist OP_CODE:I = 0xec


# instance fields
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

    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;->mList:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 123
    const/16 v0, 0xec

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 124
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 142
    const/16 v0, 0xec

    const-string v1, "RunAction"

    const-string v2, "Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 143
    const-string v1, "This operation runs child actions"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 144
    return-void
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

    .line 133
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 93
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;->toString()Ljava/lang/String;

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

    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist isDirty()Z
    .registers 2

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist markDirty()V
    .registers 1

    .line 110
    return-void
.end method

.method public blacklist markNotDirty()V
    .registers 1

    .line 105
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v3

    .line 78
    .local v3, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 79
    .local v4, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v3, :cond_3a

    if-nez v4, :cond_13

    goto :goto_3a

    .line 82
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 83
    .local v7, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v1, :cond_38

    .line 84
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    .line 85
    .local v1, "actionOperation":Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->runAction(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 87
    .end local v1    # "actionOperation":Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;
    .end local v7    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_38
    goto :goto_1b

    .line 88
    :cond_39
    return-void

    .line 80
    :cond_3a
    :goto_3a
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 72
    const-string v0, "RunActionOperation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    const-string v1, "list"

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;->mList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 73
    return-void
.end method

.method public blacklist serializedName()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "RUN_ACTION"

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 47
    const-string v0, "RunActionOperation()"

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 114
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 115
    return-void
.end method
