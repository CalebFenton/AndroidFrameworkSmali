.class Lcom/android/internal/policy/PhoneWindow$DecorView$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@0
    .prologue
    .line 3397
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

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
    .line 3399
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@3
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get4(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    #@6
    move-result-object v0

    #@7
    .line 3400
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@9
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getApplicationWindowToken()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    .line 3401
    const/16 v2, 0x37

    #@13
    .line 3399
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    #@16
    .line 3402
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@18
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap2(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    #@1b
    .line 3403
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@1d
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@1f
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    #@22
    move-result-object v1

    #@23
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@25
    const/4 v3, 0x2

    #@26
    new-array v3, v3, [F

    #@28
    fill-array-data v3, :array_0

    #@2b
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    #@32
    .line 3405
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@34
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get1(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    #@37
    move-result-object v0

    #@38
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;

    #@3a
    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView$2;)V

    #@3d
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@40
    .line 3427
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@42
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get1(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@49
    .line 3398
    return-void

    #@4a
    .line 3403
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
