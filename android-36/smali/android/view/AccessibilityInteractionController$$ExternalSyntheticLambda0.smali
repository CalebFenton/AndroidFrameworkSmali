.class public final synthetic Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Landroid/view/AccessibilityInteractionController;

    check-cast p2, Landroid/view/accessibility/IWindowSurfaceInfoCallback;

    invoke-static {p1, p2}, Landroid/view/AccessibilityInteractionController;->$r8$lambda$oFlRaXFPJ-FW6XWPk2XCxvRC-T4(Landroid/view/AccessibilityInteractionController;Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V

    return-void
.end method
