.class public final Lcom/android/wifi/x/android/security/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/wifi/x/android/security/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist aapmApi:Z

.field private static blacklist aflApi:Z

.field private static blacklist asmRestrictionsEnabled:Z

.field private static blacklist certificateTransparencyConfiguration:Z

.field private static blacklist contentUriPermissionApis:Z

.field private static blacklist enableIntentMatchingFlags:Z

.field private static blacklist enforceIntentFilterMatch:Z

.field private static blacklist frpEnforcement:Z

.field private static blacklist fsverityApi:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist keyinfoUnlockedDeviceRequired:Z

.field private static blacklist keystoreGrantApi:Z

.field private static blacklist mgf1DigestSetterV2:Z

.field private static blacklist preventIntentRedirect:Z

.field private static blacklist secureLockdown:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->aapmApi:Z

    .line 12
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->aflApi:Z

    .line 13
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->asmRestrictionsEnabled:Z

    .line 14
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->certificateTransparencyConfiguration:Z

    .line 15
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->contentUriPermissionApis:Z

    .line 16
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->enableIntentMatchingFlags:Z

    .line 17
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->enforceIntentFilterMatch:Z

    .line 18
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->frpEnforcement:Z

    .line 19
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->fsverityApi:Z

    .line 20
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->keyinfoUnlockedDeviceRequired:Z

    .line 21
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->keystoreGrantApi:Z

    .line 22
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->mgf1DigestSetterV2:Z

    .line 23
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->preventIntentRedirect:Z

    .line 24
    sput-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->secureLockdown:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 8

    .line 27
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "android.security"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 28
    .local v2, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v3, "secure_lockdown"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->secureLockdown:Z

    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x24

    if-lt v3, v5, :cond_1a

    move v3, v1

    goto :goto_20

    :cond_1a
    const-string v3, "afl_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_20
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->aflApi:Z

    .line 30
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x23

    if-lt v3, v6, :cond_2a

    move v3, v1

    goto :goto_30

    :cond_2a
    const-string v3, "frp_enforcement"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_30
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->frpEnforcement:Z

    .line 31
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_38

    move v3, v1

    goto :goto_3e

    :cond_38
    const-string v3, "fsverity_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_3e
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->fsverityApi:Z

    .line 32
    const-string v3, "keyinfo_unlocked_device_required"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->keyinfoUnlockedDeviceRequired:Z

    .line 33
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_4e

    move v3, v1

    goto :goto_54

    :cond_4e
    const-string v3, "keystore_grant_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_54
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->keystoreGrantApi:Z

    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_5c

    move v3, v1

    goto :goto_62

    :cond_5c
    const-string v3, "mgf1_digest_setter_v2"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_62
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->mgf1DigestSetterV2:Z

    .line 35
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_6a

    move v3, v1

    goto :goto_70

    :cond_6a
    const-string v3, "certificate_transparency_configuration"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_70
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->certificateTransparencyConfiguration:Z

    .line 36
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_78

    move v3, v1

    goto :goto_7e

    :cond_78
    const-string v3, "enable_intent_matching_flags"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_7e
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->enableIntentMatchingFlags:Z

    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_86

    move v3, v1

    goto :goto_8c

    :cond_86
    const-string v3, "aapm_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_8c
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->aapmApi:Z

    .line 38
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_94

    move v3, v1

    goto :goto_9a

    :cond_94
    const-string v3, "asm_restrictions_enabled"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_9a
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->asmRestrictionsEnabled:Z

    .line 39
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_a2

    move v3, v1

    goto :goto_a8

    :cond_a2
    const-string v3, "content_uri_permission_apis"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_a8
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->contentUriPermissionApis:Z

    .line 40
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_b0

    move v3, v1

    goto :goto_b6

    :cond_b0
    const-string v3, "enforce_intent_filter_match"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_b6
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->enforceIntentFilterMatch:Z

    .line 41
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_be

    move v3, v1

    goto :goto_c4

    :cond_be
    const-string v3, "prevent_intent_redirect"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_c4
    sput-boolean v3, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->preventIntentRedirect:Z
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c6} :catch_d0
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_c6} :catch_c7

    .end local v2    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_d8

    .line 45
    :catch_c7
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/LinkageError;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 42
    .end local v2    # "e":Ljava/lang/LinkageError;
    :catch_d0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_d8
    nop

    .line 50
    :goto_d9
    sput-boolean v1, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist aapmApi()Z
    .registers 2

    .line 54
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 55
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 57
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->aapmApi:Z

    return v0
.end method

.method public blacklist aflApi()Z
    .registers 2

    .line 62
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 63
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 65
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->aflApi:Z

    return v0
.end method

.method public blacklist asmRestrictionsEnabled()Z
    .registers 2

    .line 70
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 71
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 73
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->asmRestrictionsEnabled:Z

    return v0
.end method

.method public blacklist certificateTransparencyConfiguration()Z
    .registers 2

    .line 78
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 79
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 81
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->certificateTransparencyConfiguration:Z

    return v0
.end method

.method public blacklist contentUriPermissionApis()Z
    .registers 2

    .line 86
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 87
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 89
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->contentUriPermissionApis:Z

    return v0
.end method

.method public blacklist enableIntentMatchingFlags()Z
    .registers 2

    .line 94
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 95
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 97
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->enableIntentMatchingFlags:Z

    return v0
.end method

.method public blacklist enforceIntentFilterMatch()Z
    .registers 2

    .line 102
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 103
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 105
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->enforceIntentFilterMatch:Z

    return v0
.end method

.method public blacklist frpEnforcement()Z
    .registers 2

    .line 110
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 111
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 113
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->frpEnforcement:Z

    return v0
.end method

.method public blacklist fsverityApi()Z
    .registers 2

    .line 118
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 119
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 121
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->fsverityApi:Z

    return v0
.end method

.method public blacklist keyinfoUnlockedDeviceRequired()Z
    .registers 2

    .line 126
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 127
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 129
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->keyinfoUnlockedDeviceRequired:Z

    return v0
.end method

.method public blacklist keystoreGrantApi()Z
    .registers 2

    .line 134
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 135
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 137
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->keystoreGrantApi:Z

    return v0
.end method

.method public blacklist mgf1DigestSetterV2()Z
    .registers 2

    .line 142
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 143
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 145
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->mgf1DigestSetterV2:Z

    return v0
.end method

.method public blacklist preventIntentRedirect()Z
    .registers 2

    .line 150
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 151
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 153
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->preventIntentRedirect:Z

    return v0
.end method

.method public blacklist secureLockdown()Z
    .registers 2

    .line 158
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 159
    invoke-direct {p0}, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->init()V

    .line 161
    :cond_7
    sget-boolean v0, Lcom/android/wifi/x/android/security/FeatureFlagsImpl;->secureLockdown:Z

    return v0
.end method
