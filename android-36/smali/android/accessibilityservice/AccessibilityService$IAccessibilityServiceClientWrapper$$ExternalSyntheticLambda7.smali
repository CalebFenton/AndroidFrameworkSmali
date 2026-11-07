.class public final synthetic Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

.field public final synthetic blacklist f$1:Landroid/accessibilityservice/AccessibilityGestureEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda7;->f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda7;->f$1:Landroid/accessibilityservice/AccessibilityGestureEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda7;->f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda7;->f$1:Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->$r8$lambda$-HFXTC8zgOUh2cwD2xU2Qq2cfsU(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method
