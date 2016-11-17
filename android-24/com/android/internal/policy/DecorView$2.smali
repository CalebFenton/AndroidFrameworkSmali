.class Lcom/android/internal/policy/DecorView$2;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    #@0
    .prologue
    .line 1592
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1594
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@3
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get3(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;

    #@6
    move-result-object v0

    #@7
    .line 1595
    iget-object v1, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@9
    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    .line 1596
    const/16 v2, 0x37

    #@13
    .line 1594
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    #@16
    .line 1597
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@18
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-wrap1(Lcom/android/internal/policy/DecorView;)V

    #@1b
    .line 1599
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@1d
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 1600
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@25
    iget-object v1, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@27
    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@2a
    move-result-object v1

    #@2b
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@2d
    const/4 v3, 0x2

    #@2e
    new-array v3, v3, [F

    #@30
    fill-array-data v3, :array_0

    #@33
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-set0(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    #@3a
    .line 1602
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@3c
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get1(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;

    #@3f
    move-result-object v0

    #@40
    new-instance v1, Lcom/android/internal/policy/DecorView$2$1;

    #@42
    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$2$1;-><init>(Lcom/android/internal/policy/DecorView$2;)V

    #@45
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@48
    .line 1614
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@4a
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get1(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@51
    .line 1593
    :goto_0
    return-void

    #@52
    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@54
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@57
    move-result-object v0

    #@58
    const/high16 v1, 0x3f800000    # 1.0f

    #@5a
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@5d
    .line 1617
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    #@5f
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    #@66
    goto :goto_0

    #@67
    .line 1600
    nop

    #@68
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
