.class Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;
.super Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiAutomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAccessibilityServiceClientImpl"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/app/UiAutomation;Landroid/os/Looper;I)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "generationId"    # I
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

    .line 1871
    new-instance v0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;

    invoke-direct {v0, p1, p3}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;-><init>(Landroid/app/UiAutomation;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    .line 2027
    return-void
.end method
