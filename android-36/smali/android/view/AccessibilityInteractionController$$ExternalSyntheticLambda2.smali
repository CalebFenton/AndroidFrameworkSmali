.class public final synthetic Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda2;
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

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/window/ScreenCapture$ScreenCaptureListener;

    check-cast p4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-static {p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->$r8$lambda$yE7CpOJ2SFkAuPSRk2j6T8A-Eqc(Landroid/view/AccessibilityInteractionController;ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method
