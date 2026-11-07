.class Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.source "AccessibilityServiceTarget.java"


# instance fields
.field private final blacklist mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;IILandroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "fragmentType"    # I
    .param p4, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 41
    nop

    .line 45
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {p1, p2, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    .line 46
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 48
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 49
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 50
    invoke-static {p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v10

    .line 41
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "shortcutType":I
    .end local p3    # "fragmentType":I
    .local v2, "context":Landroid/content/Context;
    .local v3, "shortcutType":I
    .local v4, "fragmentType":I
    invoke-direct/range {v1 .. v10}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;-><init>(Landroid/content/Context;IIZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 51
    iput-object p4, v1, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v0
.end method

.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .registers 8
    .param p1, "holder"    # Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    .param p2, "shortcutMenuMode"    # I

    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    .line 59
    nop

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getUid()I

    move-result v2

    .line 59
    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->isAccessibilityTargetAllowed(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 61
    .local v0, "isAllowed":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1e

    move v3, v2

    goto :goto_1f

    :cond_1e
    move v3, v1

    .line 63
    .local v3, "isEditMenuMode":Z
    :goto_1f
    if-nez v0, :cond_29

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->isShortcutEnabled()Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_29
    move v1, v2

    .line 64
    .local v1, "enabled":Z
    :cond_2a
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mCheckBoxView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 65
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 66
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 67
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 68
    return-void
.end method
