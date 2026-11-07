.class Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->setViewVisibility(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$v:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
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

    .line 3912
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3914
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder$1;->val$v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3915
    return-void
.end method
