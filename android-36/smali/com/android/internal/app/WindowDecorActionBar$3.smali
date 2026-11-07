.class Lcom/android/internal/app/WindowDecorActionBar$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/WindowDecorActionBar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$3;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 163
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$3;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContainerView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 164
    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 165
    return-void
.end method
