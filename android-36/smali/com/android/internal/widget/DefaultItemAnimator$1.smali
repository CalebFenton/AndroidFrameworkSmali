.class Lcom/android/internal/widget/DefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/DefaultItemAnimator;

.field final synthetic blacklist val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/widget/DefaultItemAnimator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 126
    .local v1, "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v3, v1, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/DefaultItemAnimator;->animateMoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    .line 128
    .end local v1    # "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    goto :goto_6

    .line 129
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method
