.class Landroid/accessibilityservice/AccessibilityService$1;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService;->onPerformGestureResult(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accessibilityservice/AccessibilityService;

.field final synthetic val$completedSuccessfully:Z

.field final synthetic val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;ZLandroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "val$completedSuccessfully"    # Z
    .param p3, "val$finalCallbackInfo"    # Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    #@0
    .prologue
    .line 665
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #@2
    iput-boolean p2, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$completedSuccessfully:Z

    #@4
    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 668
    iget-boolean v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$completedSuccessfully:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 669
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    #@6
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    #@8
    .line 670
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    #@a
    iget-object v1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    #@c
    .line 669
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCompleted(Landroid/accessibilityservice/GestureDescription;)V

    #@f
    .line 667
    :goto_0
    return-void

    #@10
    .line 672
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    #@12
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    #@14
    .line 673
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    #@16
    iget-object v1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    #@18
    .line 672
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCancelled(Landroid/accessibilityservice/GestureDescription;)V

    #@1b
    goto :goto_0
.end method
