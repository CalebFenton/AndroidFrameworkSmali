.class Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.source "ToggleAllowListingFeatureTarget.java"


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "isShortcutSwitched"    # Z
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "label"    # Ljava/lang/CharSequence;
    .param p7, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "key"    # Ljava/lang/String;

    .line 40
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;-><init>(Landroid/content/Context;IIZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->isFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 44
    const v1, 0x1040104

    goto :goto_1d

    .line 45
    :cond_1a
    const v1, 0x1040103

    :goto_1d
    nop

    .line 46
    .local v1, "statusResId":I
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method private blacklist isFeatureEnabled()Z
    .registers 4

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 61
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    move v2, v1

    :cond_15
    return v2
.end method


# virtual methods
.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    .param p2, "shortcutMenuMode"    # I

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_8

    goto :goto_9

    :cond_8
    move v1, v0

    .line 56
    .local v1, "isEditMenuMode":Z
    :goto_9
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    const/16 v0, 0x8

    :cond_f
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
