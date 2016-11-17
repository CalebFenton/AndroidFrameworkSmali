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
.field callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

.field gestureDescription:Landroid/accessibilityservice/GestureDescription;

.field handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;
    .param p2, "callback"    # Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1705
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    #@5
    .line 1706
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    #@7
    .line 1707
    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    #@9
    .line 1704
    return-void
.end method
