.class Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
.source "ToggleAccessibilityServiceTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget$StatusViewAlphaScale;
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 50
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;-><init>(Landroid/content/Context;IILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 56
    const v0, 0x1040104

    goto :goto_19

    .line 57
    :cond_16
    const v0, 0x1040103

    :goto_19
    nop

    .line 58
    .local v0, "statusResId":I
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .registers 7
    .param p1, "holder"    # Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    .param p2, "shortcutMenuMode"    # I

    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    .line 66
    nop

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getUid()I

    move-result v2

    .line 66
    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->isAccessibilityTargetAllowed(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 68
    .local v0, "isAllowed":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v1

    .line 70
    .local v2, "isEditMenuMode":Z
    :goto_1e
    iget-object v3, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    if-eqz v2, :cond_24

    const/16 v1, 0x8

    :cond_24
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v1, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 73
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_39

    :cond_37
    const/high16 v3, 0x3f000000    # 0.5f

    .line 72
    :goto_39
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 74
    return-void
.end method
