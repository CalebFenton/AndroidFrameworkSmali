.class public final synthetic Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;->lambda$getTouchConsumingListener$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
