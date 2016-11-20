.class Lcom/android/server/display/NightDisplayService$1$1;
.super Ljava/lang/Object;
.source "NightDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService$1;->onVrStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/NightDisplayService$1;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/NightDisplayService$1;
    .param p2, "val$enabled"    # Z

    #@0
    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    #@2
    iput-boolean p2, p0, Lcom/android/server/display/NightDisplayService$1$1;->val$enabled:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x64

    #@2
    .line 101
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    #@4
    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    #@6
    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 102
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    #@e
    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    #@10
    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Landroid/animation/ValueAnimator;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    #@17
    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    #@19
    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    #@1b
    const-class v2, Lcom/android/server/display/DisplayTransformManager;

    #@1d
    invoke-static {v1, v2}, Lcom/android/server/display/NightDisplayService;->-wrap1(Lcom/android/server/display/NightDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    #@23
    .line 107
    .local v0, "dtm":Lcom/android/server/display/DisplayTransformManager;
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->val$enabled:Z

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 108
    invoke-static {}, Lcom/android/server/display/NightDisplayService;->-get0()[F

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v3, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    #@2e
    .line 99
    :cond_1
    :goto_0
    return-void

    #@2f
    .line 109
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    #@31
    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    #@33
    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get4(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 110
    invoke-static {}, Lcom/android/server/display/NightDisplayService;->-get1()[F

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v3, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    #@44
    goto :goto_0
.end method
