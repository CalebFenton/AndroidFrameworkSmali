.class Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GestureResultCallbackInfo"
.end annotation


# instance fields
.field greylist-max-o callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

.field greylist-max-o gestureDescription:Landroid/accessibilityservice/GestureDescription;

.field greylist-max-o handler:Landroid/os/Handler;


# direct methods
.method constructor greylist-max-o <init>(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)V
    .registers 4
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;
    .param p2, "callback"    # Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 3235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3236
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    .line 3237
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    .line 3238
    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    .line 3239
    return-void
.end method
