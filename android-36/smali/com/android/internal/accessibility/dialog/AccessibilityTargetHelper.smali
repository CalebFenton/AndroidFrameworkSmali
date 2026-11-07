.class public final Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;
.super Ljava/lang/Object;
.source "AccessibilityTargetHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createAccessibilityServiceTarget(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 273
    invoke-static {p2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected fragment type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :pswitch_f
    new-instance v0, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-object v0

    .line 278
    :pswitch_15
    new-instance v0, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-object v0

    .line 275
    :pswitch_1b
    new-instance v0, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_15
        :pswitch_f
    .end packed-switch
.end method

.method private static blacklist getAccessibilityActivityTargets(Landroid/content/Context;I)Ljava/util/List;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 160
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 162
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 164
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 163
    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityShortcutInfo;>;"
    if-nez v1, :cond_18

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 169
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v2, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 171
    .local v4, "info":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    new-instance v5, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityShortcutInfo;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v4    # "info":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    goto :goto_25

    .line 174
    :cond_3a
    return-object v2
.end method

.method private static blacklist getAccessibilityServiceTargets(Landroid/content/Context;I)Ljava/util/List;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 122
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 124
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 125
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v1, :cond_14

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 130
    :cond_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v2, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 132
    .local v4, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-static {v4, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->isValidServiceTarget(Landroid/accessibilityservice/AccessibilityServiceInfo;I)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 133
    invoke-static {p0, p1, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->createAccessibilityServiceTarget(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v4    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_3a
    goto :goto_21

    .line 137
    :cond_3b
    return-object v2
.end method

.method private static blacklist getAllowListingFeatureTargets(Landroid/content/Context;I)Ljava/util/List;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 182
    .local v7, "uid":I
    new-instance v2, Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;

    .line 185
    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-static {p0, p1, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    .line 189
    const v1, 0x10400fa

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 190
    const v1, 0x10803a0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "accessibility_display_magnification_navbar_enabled"

    const-string v6, "com.android.server.accessibility.MagnificationController"

    move-object v3, p0

    move v4, p1

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "shortcutType":I
    .local v3, "context":Landroid/content/Context;
    .local v4, "shortcutType":I
    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    move-object p0, v2

    .line 192
    .local p0, "magnification":Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object p1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 198
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-static {v3, v4, p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object p1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 199
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 201
    const p1, 0x10401f0

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    const p1, 0x1080395

    invoke-virtual {v3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "accessibility_display_daltonizer_enabled"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    move-object p1, v2

    .line 204
    .local p1, "daltonizer":Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 210
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v3, v4, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 211
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 213
    const v1, 0x10401f1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 214
    const v1, 0x1080397

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "accessibility_display_inversion_enabled"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    move-object v1, v2

    .line 216
    .local v1, "colorInversion":Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object v5, Lcom/android/internal/accessibility/AccessibilityShortcutController;->AUTOCLICK_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 222
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-static {v3, v4, v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->AUTOCLICK_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 223
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 225
    const v8, 0x104017e

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 226
    const v9, 0x1080393

    invoke-virtual {v3, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "accessibility_autoclick_enabled"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    move-object v11, v2

    .line 228
    .local v11, "autoclick":Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->SUPPORT_ONE_HANDED_MODE:Z

    if-eqz v2, :cond_d5

    .line 231
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object v5, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 235
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-static {v3, v4, v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 236
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 238
    const v8, 0x10406f9

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 239
    const v9, 0x10803a2

    invoke-virtual {v3, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "one_handed_mode_activated"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 241
    .local v2, "oneHandedMode":Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v2    # "oneHandedMode":Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
    :cond_d5
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object v5, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 248
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-static {v3, v4, v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 249
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 251
    const v8, 0x1040905

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 252
    const v9, 0x10803a4

    invoke-virtual {v3, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string/jumbo v10, "reduce_bright_colors_activated"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    move-object v12, v2

    .line 254
    .local v12, "reduceBrightColors":Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;

    sget-object v5, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 260
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-static {v3, v4, v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 261
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 263
    const v8, 0x104049c

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 264
    const v9, 0x108039a

    invoke-virtual {v3, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 266
    .local v2, "hearingAids":Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-object v0
.end method

.method public static blacklist getInstalledTargets(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getAccessibilityServiceTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getAccessibilityActivityTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getAllowListingFeatureTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-object v0
.end method

.method public static blacklist getTargets(Landroid/content/Context;I)Ljava/util/List;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getInstalledTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "installedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 76
    .local v1, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v2

    .line 79
    .local v2, "assignedTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    .local v5, "assignedTarget":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 82
    .local v7, "installedTarget":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    const-string v8, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_55

    .line 83
    nop

    .line 84
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 85
    .local v8, "assignedTargetComponentName":Landroid/content/ComponentName;
    nop

    .line 86
    invoke-virtual {v7}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v9

    .line 85
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 87
    .local v9, "targetComponentName":Landroid/content/ComponentName;
    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_55

    .line 88
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    goto :goto_29

    .line 92
    .end local v8    # "assignedTargetComponentName":Landroid/content/ComponentName;
    .end local v9    # "targetComponentName":Landroid/content/ComponentName;
    :cond_55
    invoke-virtual {v7}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 93
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v7    # "installedTarget":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    :cond_62
    goto :goto_29

    .line 96
    .end local v5    # "assignedTarget":Ljava/lang/String;
    :cond_63
    goto :goto_19

    .line 97
    :cond_64
    return-object v3
.end method

.method public static blacklist isAccessibilityTargetAllowed(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 291
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 292
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public static blacklist isValidServiceTarget(Landroid/accessibilityservice/AccessibilityServiceInfo;I)Z
    .registers 7
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p1, "shortcutType"    # I

    .line 151
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 153
    .local v0, "hasRequestAccessibilityButtonFlag":Z
    :goto_b
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-gt v3, v4, :cond_1d

    if-nez v0, :cond_1d

    if-eq p1, v2, :cond_1e

    :cond_1d
    move v1, v2

    :cond_1e
    return v1
.end method

.method public static blacklist sendRestrictedDialogIntent(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 299
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 300
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/accessibility/AccessibilityManager;->sendRestrictedDialogIntent(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method
