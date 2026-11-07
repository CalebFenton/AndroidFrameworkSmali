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
.field final synthetic blacklist val$completedSuccessfully:Z

.field final synthetic blacklist val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;ZLandroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;)V
    .registers 4
    .param p1, "this$0"    # Landroid/accessibilityservice/AccessibilityService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1354
    iput-boolean p2, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$completedSuccessfully:Z

    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1357
    iget-boolean v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$completedSuccessfully:Z

    if-eqz v0, :cond_10

    .line 1358
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    iget-object v1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    .line 1359
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCompleted(Landroid/accessibilityservice/GestureDescription;)V

    goto :goto_1b

    .line 1361
    :cond_10
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    iget-object v1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    .line 1362
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCancelled(Landroid/accessibilityservice/GestureDescription;)V

    .line 1364
    :goto_1b
    return-void
.end method
