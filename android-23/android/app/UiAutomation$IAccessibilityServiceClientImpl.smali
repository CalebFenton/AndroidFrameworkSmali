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


# instance fields
.field final synthetic this$0:Landroid/app/UiAutomation;


# direct methods
.method public constructor <init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/UiAutomation;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 920
    iput-object p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;->this$0:Landroid/app/UiAutomation;

    #@2
    .line 921
    new-instance v0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;

    #@4
    invoke-direct {v0, p1}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;-><init>(Landroid/app/UiAutomation;)V

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {p0, v1, p2, v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    #@b
    .line 920
    return-void
.end method
