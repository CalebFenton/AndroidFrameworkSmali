.class Lcom/android/server/wm/WindowManagerService$10;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->animateResizePinnedStack(Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$animationDuration:I

.field final synthetic val$bounds:Landroid/graphics/Rect;

.field final synthetic val$originalBounds:Landroid/graphics/Rect;

.field final synthetic val$stack:Lcom/android/server/wm/TaskStack;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "val$stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "val$originalBounds"    # Landroid/graphics/Rect;
    .param p4, "val$bounds"    # Landroid/graphics/Rect;
    .param p5, "val$animationDuration"    # I

    #@0
    .prologue
    .line 10944
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$10;->val$stack:Lcom/android/server/wm/TaskStack;

    #@4
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$10;->val$originalBounds:Landroid/graphics/Rect;

    #@6
    iput-object p4, p0, Lcom/android/server/wm/WindowManagerService$10;->val$bounds:Landroid/graphics/Rect;

    #@8
    iput p5, p0, Lcom/android/server/wm/WindowManagerService$10;->val$animationDuration:I

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 10947
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-get0(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/BoundsAnimationController;

    #@5
    move-result-object v0

    #@6
    .line 10948
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$10;->val$stack:Lcom/android/server/wm/TaskStack;

    #@8
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$10;->val$originalBounds:Landroid/graphics/Rect;

    #@a
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$10;->val$bounds:Landroid/graphics/Rect;

    #@c
    iget v4, p0, Lcom/android/server/wm/WindowManagerService$10;->val$animationDuration:I

    #@e
    .line 10947
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/BoundsAnimationController;->animateBounds(Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@11
    .line 10946
    return-void
.end method
