.class Lcom/android/server/wm/AppTransition$3;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;

.field final synthetic val$callback:Landroid/os/IRemoteCallback;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/AppTransition;
    .param p2, "val$callback"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 1232
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$3;->this$0:Lcom/android/server/wm/AppTransition;

    #@2
    iput-object p2, p0, Lcom/android/server/wm/AppTransition$3;->val$callback:Landroid/os/IRemoteCallback;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/server/wm/AppTransition$3;->this$0:Lcom/android/server/wm/AppTransition;

    #@2
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->-get5(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@8
    iget-object v1, p0, Lcom/android/server/wm/AppTransition$3;->val$callback:Landroid/os/IRemoteCallback;

    #@a
    const/16 v2, 0x1a

    #@c
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 1237
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 1242
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 1234
    return-void
.end method
