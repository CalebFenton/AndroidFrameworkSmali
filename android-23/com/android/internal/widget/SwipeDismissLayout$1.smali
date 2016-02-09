.class Lcom/android/internal/widget/SwipeDismissLayout$1;
.super Ljava/lang/Object;
.source "SwipeDismissLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SwipeDismissLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SwipeDismissLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    #@0
    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onEnterAnimationComplete()V
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-get1(Lcom/android/internal/widget/SwipeDismissLayout;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    instance-of v0, v0, Landroid/app/Activity;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    #@14
    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/app/Activity;

    #@1a
    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    #@1d
    .line 81
    :cond_0
    return-void
.end method
