.class Lcom/android/internal/widget/LockPatternView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startFadePatternAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 886
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 889
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fputmFadeAnimationAlpha(Lcom/android/internal/widget/LockPatternView;I)V

    .line 890
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fputmFadeClear(Lcom/android/internal/widget/LockPatternView;Z)V

    .line 891
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$mresetPattern(Lcom/android/internal/widget/LockPatternView;)V

    .line 892
    return-void
.end method
