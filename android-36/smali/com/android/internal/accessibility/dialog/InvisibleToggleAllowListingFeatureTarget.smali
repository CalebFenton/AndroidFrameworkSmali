.class Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.source "InvisibleToggleAllowListingFeatureTarget.java"


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

    .line 34
    const/4 v3, 0x1

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

    .line 36
    return-void
.end method
