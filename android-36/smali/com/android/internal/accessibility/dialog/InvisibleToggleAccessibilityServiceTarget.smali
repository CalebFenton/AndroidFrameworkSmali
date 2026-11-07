.class public Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
.source "InvisibleToggleAccessibilityServiceTarget.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;-><init>(Landroid/content/Context;IILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 2

    .line 36
    invoke-super {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onCheckedChanged(Z)V
    .registers 6
    .param p1, "isChecked"    # Z

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 52
    .local v0, "componentName":Landroid/content/ComponentName;
    nop

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 52
    invoke-static {v1, v2, v3}, Lcom/android/internal/accessibility/util/ShortcutUtils;->updateInvisibleToggleAccessibilityServiceEnableState(Landroid/content/Context;Ljava/util/Set;I)V

    .line 54
    return-void
.end method

.method public bridge synthetic blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    return-void
.end method
