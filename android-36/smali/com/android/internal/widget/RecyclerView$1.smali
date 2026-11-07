.class Lcom/android/internal/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2d

    .line 317
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-nez v0, :cond_1b

    .line 318
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 320
    return-void

    .line 322
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_27

    .line 323
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 324
    return-void

    .line 326
    :cond_27
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 327
    return-void

    .line 315
    :cond_2d
    :goto_2d
    return-void
.end method
