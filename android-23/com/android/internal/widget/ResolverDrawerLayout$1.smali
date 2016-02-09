.class Lcom/android/internal/widget/ResolverDrawerLayout$1;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ResolverDrawerLayout;

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .locals 3
    .param p1, "isInTouchMode"    # Z

    #@0
    .prologue
    .line 97
    if-nez p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->hasFocus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    #@c
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getFocusedChild()Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    invoke-static {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->-wrap0(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    #@1a
    const/4 v1, 0x0

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->-wrap1(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V

    #@1f
    .line 96
    :cond_0
    return-void
.end method
