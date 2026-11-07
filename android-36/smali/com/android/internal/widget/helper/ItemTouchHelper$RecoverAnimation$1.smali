.class Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

.field final synthetic blacklist val$this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
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

    .line 2323
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;->this$1:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iput-object p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;->val$this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 2326
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;->this$1:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2327
    return-void
.end method
