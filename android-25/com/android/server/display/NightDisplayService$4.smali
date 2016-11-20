.class Lcom/android/server/display/NightDisplayService$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NightDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService;->onActivated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;

.field final synthetic val$dtm:Lcom/android/server/display/DisplayTransformManager;

.field final synthetic val$to:[F


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;
    .param p2, "val$dtm"    # Lcom/android/server/display/DisplayTransformManager;
    .param p3, "val$to"    # [F

    #@0
    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$4;->this$0:Lcom/android/server/display/NightDisplayService;

    #@2
    iput-object p2, p0, Lcom/android/server/display/NightDisplayService$4;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    #@4
    iput-object p3, p0, Lcom/android/server/display/NightDisplayService$4;->val$to:[F

    #@6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 305
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/display/NightDisplayService$4;->mIsCancelled:Z

    #@3
    .line 304
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/server/display/NightDisplayService$4;->mIsCancelled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 314
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$4;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    #@6
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$4;->val$to:[F

    #@8
    const/16 v2, 0x64

    #@a
    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    #@d
    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$4;->this$0:Lcom/android/server/display/NightDisplayService;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->-set0(Lcom/android/server/display/NightDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    #@13
    .line 309
    return-void
.end method
