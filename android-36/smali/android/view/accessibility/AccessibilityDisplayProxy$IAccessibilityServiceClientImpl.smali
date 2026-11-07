.class Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;
.super Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.source "AccessibilityDisplayProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityDisplayProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAccessibilityServiceClientImpl"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/view/accessibility/AccessibilityDisplayProxy;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 272
    new-instance v0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;

    invoke-direct {v0, p1}, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;-><init>(Landroid/view/accessibility/AccessibilityDisplayProxy;)V

    invoke-direct {p0, p2, p3, v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    .line 354
    return-void
.end method
