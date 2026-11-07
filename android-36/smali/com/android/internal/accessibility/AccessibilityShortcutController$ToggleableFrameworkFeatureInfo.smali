.class public Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;
.super Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleableFrameworkFeatureInfo"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "settingKey"    # Ljava/lang/String;
    .param p2, "settingOnValue"    # Ljava/lang/String;
    .param p3, "settingOffValue"    # Ljava/lang/String;
    .param p4, "labelStringResourceId"    # I

    .line 828
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 829
    return-void
.end method
