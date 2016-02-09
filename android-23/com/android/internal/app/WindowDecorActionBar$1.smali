.class Lcom/android/internal/app/WindowDecorActionBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


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
    .line 128
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 131
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@6
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get1(Lcom/android/internal/app/WindowDecorActionBar;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@e
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get2(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@16
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get2(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    #@1d
    .line 133
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@1f
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get0(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    #@26
    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@28
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get10(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@30
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get4(Lcom/android/internal/app/WindowDecorActionBar;)I

    #@33
    move-result v0

    #@34
    const/4 v1, 0x1

    #@35
    if-ne v0, v1, :cond_1

    #@37
    .line 136
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@39
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get10(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    #@40
    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@42
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get0(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    #@49
    .line 139
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@4b
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get0(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    #@4e
    move-result-object v0

    #@4f
    const/4 v1, 0x0

    #@50
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    #@53
    .line 140
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@55
    invoke-static {v0, v2}, Lcom/android/internal/app/WindowDecorActionBar;->-set0(Lcom/android/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;

    #@58
    .line 141
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@5a
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    #@5d
    .line 142
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@5f
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get9(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@62
    move-result-object v0

    #@63
    if-eqz v0, :cond_2

    #@65
    .line 143
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    #@67
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get9(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    #@6e
    .line 130
    :cond_2
    return-void
.end method
