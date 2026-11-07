.class Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
.source "VolumeShortcutToggleAccessibilityServiceTarget.java"


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;-><init>(Landroid/content/Context;IILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist onCheckedChanged(Z)V
    .registers 4
    .param p1, "isChecked"    # Z

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->getShortcutType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 45
    invoke-super {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    .line 49
    return-void

    .line 47
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected shortcut type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
