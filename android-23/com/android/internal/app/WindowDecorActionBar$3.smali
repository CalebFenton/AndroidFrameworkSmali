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
.field final synthetic this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/WindowDecorActionBar;

    #@0
    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$3;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    #@0
    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$3;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-static {v1}, Lcom/android/internal/app/WindowDecorActionBar;->-get0(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    #@9
    move-result-object v0

    #@a
    .line 161
    .local v0, "parent":Landroid/view/ViewParent;
    check-cast v0, Landroid/view/View;

    #@c
    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@f
    .line 159
    return-void
.end method
