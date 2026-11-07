.class public Landroid/hardware/biometrics/ParentalControlsUtilsInternal;
.super Ljava/lang/Object;
.source "ParentalControlsUtilsInternal.java"


# static fields
.field private static final blacklist TEST_ALWAYS_REQUIRE_CONSENT_CLASS:Ljava/lang/String; = "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_class"

.field private static final blacklist TEST_ALWAYS_REQUIRE_CONSENT_PACKAGE:Ljava/lang/String; = "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_package"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist containsFlag(II)Z
    .registers 3
    .param p0, "haystack"    # I
    .param p1, "needle"    # I

    .line 127
    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist getSupervisionComponentName(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 3
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTestComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 49
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_a

    goto :goto_b

    .line 56
    :cond_a
    return-object v1

    .line 50
    :cond_b
    :goto_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_package"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_class"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "cls":Ljava/lang/String;
    if-eqz v0, :cond_28

    if-eqz v2, :cond_28

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-object v1
.end method

.method public static blacklist parentConsentRequired(Landroid/app/admin/DevicePolicyManager;Landroid/app/supervision/SupervisionManager;ILandroid/os/UserHandle;)Z
    .registers 9
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "sm"    # Landroid/app/supervision/SupervisionManager;
    .param p2, "modality"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 83
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->deprecateDpmSupervisionApis()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 84
    if-eqz p1, :cond_14

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/supervision/SupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 85
    return v1

    .line 88
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    .local v0, "keyguardDisabledFeatures":I
    goto :goto_26

    .line 90
    .end local v0    # "keyguardDisabledFeatures":I
    :cond_1a
    invoke-static {p0, p3}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->getSupervisionComponentName(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 91
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_21

    .line 92
    return v1

    .line 94
    :cond_21
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    move v0, v1

    .line 97
    .local v0, "keyguardDisabledFeatures":I
    :goto_26
    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v1

    .line 99
    .local v1, "dpmFpDisabled":Z
    const/16 v2, 0x80

    invoke-static {v0, v2}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v2

    .line 101
    .local v2, "dpmFaceDisabled":Z
    const/16 v3, 0x100

    invoke-static {v0, v3}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v3

    .line 105
    .local v3, "dpmIrisDisabled":Z
    const/4 v4, 0x2

    invoke-static {p2, v4}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_43

    if-eqz v1, :cond_43

    .line 106
    const/4 v4, 0x1

    .local v4, "consentRequired":Z
    goto :goto_5b

    .line 107
    .end local v4    # "consentRequired":Z
    :cond_43
    const/16 v4, 0x8

    invoke-static {p2, v4}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_4f

    if-eqz v2, :cond_4f

    .line 108
    const/4 v4, 0x1

    .restart local v4    # "consentRequired":Z
    goto :goto_5b

    .line 109
    .end local v4    # "consentRequired":Z
    :cond_4f
    const/4 v4, 0x4

    invoke-static {p2, v4}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_5a

    if-eqz v3, :cond_5a

    .line 110
    const/4 v4, 0x1

    .restart local v4    # "consentRequired":Z
    goto :goto_5b

    .line 112
    .end local v4    # "consentRequired":Z
    :cond_5a
    const/4 v4, 0x0

    .line 115
    .restart local v4    # "consentRequired":Z
    :goto_5b
    return v4
.end method

.method public static blacklist parentConsentRequired(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Landroid/app/supervision/SupervisionManager;ILandroid/os/UserHandle;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "sm"    # Landroid/app/supervision/SupervisionManager;
    .param p3, "modality"    # I
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .line 66
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->getTestComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 67
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_c
    invoke-static {p1, p2, p3, p4}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->parentConsentRequired(Landroid/app/admin/DevicePolicyManager;Landroid/app/supervision/SupervisionManager;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method
