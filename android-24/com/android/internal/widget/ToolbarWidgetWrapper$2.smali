.class Lcom/android/internal/widget/ToolbarWidgetWrapper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@0
    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    .line 590
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    #@8
    .line 589
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 600
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    #@3
    .line 599
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 594
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@6
    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-get2(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    #@9
    move-result-object v0

    #@a
    const/16 v1, 0x8

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setVisibility(I)V

    #@f
    .line 592
    :cond_0
    return-void
.end method
