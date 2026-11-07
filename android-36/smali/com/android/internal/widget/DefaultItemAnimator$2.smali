.class Lcom/android/internal/widget/DefaultItemAnimator$2;
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

.field final synthetic blacklist val$changes:Ljava/util/ArrayList;


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

    .line 146
    iput-object p1, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    .line 150
    .local v1, "change":Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/DefaultItemAnimator;->animateChangeImpl(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 151
    .end local v1    # "change":Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;
    goto :goto_6

    .line 152
    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method
