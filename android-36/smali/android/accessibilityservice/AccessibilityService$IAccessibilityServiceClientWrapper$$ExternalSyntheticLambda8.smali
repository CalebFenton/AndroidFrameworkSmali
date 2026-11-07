.class public final synthetic Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

.field public final synthetic blacklist f$1:Landroid/view/accessibility/AccessibilityEvent;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;->f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;->f$1:Landroid/view/accessibility/AccessibilityEvent;

    iput-boolean p3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;->f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;->f$1:Landroid/view/accessibility/AccessibilityEvent;

    iget-boolean v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->$r8$lambda$BK9U4O9uTvtOrxe1k6nU74w4nWg(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method
