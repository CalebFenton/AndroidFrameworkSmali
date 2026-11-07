.class public final synthetic Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    check-cast p1, Landroid/view/AccessibilityInteractionController;

    check-cast p2, Landroid/view/SurfaceControl;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-static {p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->$r8$lambda$Rjg_OPdy_5ZedB6yPc2apMyWfwM(Landroid/view/AccessibilityInteractionController;Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method
