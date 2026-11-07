.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ListActionsOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;


# instance fields
.field protected blacklist mHeight:F

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocationInWindow:[F

.field blacklist mOperationName:Ljava/lang/String;

.field protected blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "operationName"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mWidth:F

    .line 38
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mHeight:F

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mLocationInWindow:[F

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mOperationName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 61
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v2, :cond_1c

    .line 62
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 63
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 65
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_1c
    goto :goto_6

    .line 66
    :cond_1d
    return-void
.end method

.method public blacklist applyActions(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFZ)Z
    .registers 16
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "force"    # Z

    .line 112
    const/4 v0, 0x0

    if-nez p6, :cond_a

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v1

    if-nez v1, :cond_a

    .line 113
    return v0

    .line 115
    :cond_a
    if-nez p6, :cond_13

    invoke-virtual/range {p3 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_13

    .line 116
    return v0

    .line 118
    :cond_13
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mLocationInWindow:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mLocationInWindow:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mLocationInWindow:[F

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 122
    .local v8, "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v2, :cond_44

    .line 123
    move-object v2, v8

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->runAction(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 125
    .end local v8    # "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_44
    goto :goto_28

    .line 126
    :cond_45
    return v1
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 71
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->toString()Ljava/lang/String;

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

    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 79
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mWidth:F

    .line 80
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mHeight:F

    .line 81
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 75
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 132
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "actions"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 133
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 7
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mOperationName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 87
    .local v1, "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v2, :cond_23

    .line 88
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 90
    .end local v1    # "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_23
    goto :goto_b

    .line 91
    :cond_24
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mOperationName:Ljava/lang/String;

    return-object v0
.end method
