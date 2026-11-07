.class public final synthetic Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/graphics/Region;

.field public final synthetic blacklist f$3:Landroid/accessibilityservice/MagnificationConfig;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;->f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    iput p2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;->f$1:I

    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;->f$2:Landroid/graphics/Region;

    iput-object p4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;->f$3:Landroid/accessibilityservice/MagnificationConfig;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;->f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;->f$1:I

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;->f$2:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;->f$3:Landroid/accessibilityservice/MagnificationConfig;

    invoke-static {v0, v1, v2, v3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->$r8$lambda$0EMg6AlBBLQoSaqaUqG-rcRzW3Y(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method
