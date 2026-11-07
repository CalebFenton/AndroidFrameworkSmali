.class public Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;
.super Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraDimFrameworkFeatureInfo"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "settingKey"    # Ljava/lang/String;
    .param p2, "settingOnValue"    # Ljava/lang/String;
    .param p3, "settingOffValue"    # Ljava/lang/String;
    .param p4, "labelStringResourceId"    # I

    .line 848
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 849
    return-void
.end method

.method private blacklist launchExtraDimDialog(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 878
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.LAUNCH_REMOVE_EXTRA_DIM_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 879
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 880
    nop

    .line 881
    const v1, 0x104003a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 880
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 882
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 883
    return-void
.end method


# virtual methods
.method public blacklist activateShortcut(Landroid/content/Context;I)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 857
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->evenDimmer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 858
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11101a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 860
    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->launchExtraDimDialog(Landroid/content/Context;)V

    .line 861
    return v1

    .line 865
    :cond_18
    new-instance v0, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    .line 866
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 867
    .local v0, "setting":Landroid/provider/SettingsStringUtil$SettingStringHelper;
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 869
    return v1

    .line 871
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->getSettingOffValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 872
    const/4 v1, 0x0

    return v1
.end method
