.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveAdmin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    }
.end annotation


# static fields
.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEF_KEYGUARD_FEATURES_DISABLED:I = 0x0

.field static final DEF_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE:I = 0x0

.field static final DEF_MAXIMUM_TIME_TO_UNLOCK:J = 0x0L

.field static final DEF_MINIMUM_PASSWORD_LENGTH:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_LETTERS:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_LOWER_CASE:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_NON_LETTER:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_NUMERIC:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_SYMBOLS:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_UPPER_CASE:I = 0x0

.field static final DEF_PASSWORD_EXPIRATION_DATE:J = 0x0L

.field static final DEF_PASSWORD_EXPIRATION_TIMEOUT:J = 0x0L

.field static final DEF_PASSWORD_HISTORY_LENGTH:I = 0x0

.field private static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "account-type"

.field private static final TAG_CROSS_PROFILE_WIDGET_PROVIDERS:Ljava/lang/String; = "cross-profile-widget-providers"

.field private static final TAG_DISABLE_ACCOUNT_MANAGEMENT:Ljava/lang/String; = "disable-account-management"

.field private static final TAG_DISABLE_BLUETOOTH_CONTACT_SHARING:Ljava/lang/String; = "disable-bt-contacts-sharing"

.field private static final TAG_DISABLE_CALLER_ID:Ljava/lang/String; = "disable-caller-id"

.field private static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field private static final TAG_DISABLE_KEYGUARD_FEATURES:Ljava/lang/String; = "disable-keyguard-features"

.field private static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field private static final TAG_ENCRYPTION_REQUESTED:Ljava/lang/String; = "encryption-requested"

.field private static final TAG_GLOBAL_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global-proxy-exclusion-list"

.field private static final TAG_GLOBAL_PROXY_SPEC:Ljava/lang/String; = "global-proxy-spec"

.field private static final TAG_MANAGE_TRUST_AGENT_FEATURES:Ljava/lang/String; = "manage-trust-agent-features"

.field private static final TAG_MAX_FAILED_PASSWORD_WIPE:Ljava/lang/String; = "max-failed-password-wipe"

.field private static final TAG_MAX_TIME_TO_UNLOCK:Ljava/lang/String; = "max-time-to-unlock"

.field private static final TAG_MIN_PASSWORD_LENGTH:Ljava/lang/String; = "min-password-length"

.field private static final TAG_MIN_PASSWORD_LETTERS:Ljava/lang/String; = "min-password-letters"

.field private static final TAG_MIN_PASSWORD_LOWERCASE:Ljava/lang/String; = "min-password-lowercase"

.field private static final TAG_MIN_PASSWORD_NONLETTER:Ljava/lang/String; = "min-password-nonletter"

.field private static final TAG_MIN_PASSWORD_NUMERIC:Ljava/lang/String; = "min-password-numeric"

.field private static final TAG_MIN_PASSWORD_SYMBOLS:Ljava/lang/String; = "min-password-symbols"

.field private static final TAG_MIN_PASSWORD_UPPERCASE:Ljava/lang/String; = "min-password-uppercase"

.field private static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PASSWORD_EXPIRATION_DATE:Ljava/lang/String; = "password-expiration-date"

.field private static final TAG_PASSWORD_EXPIRATION_TIMEOUT:Ljava/lang/String; = "password-expiration-timeout"

.field private static final TAG_PASSWORD_HISTORY_LENGTH:Ljava/lang/String; = "password-history-length"

.field private static final TAG_PASSWORD_QUALITY:Ljava/lang/String; = "password-quality"

.field private static final TAG_PERMITTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "permitted-accessiblity-services"

.field private static final TAG_PERMITTED_IMES:Ljava/lang/String; = "permitted-imes"

.field private static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field private static final TAG_PROVIDER:Ljava/lang/String; = "provider"

.field private static final TAG_REQUIRE_AUTO_TIME:Ljava/lang/String; = "require_auto_time"

.field private static final TAG_SPECIFIES_GLOBAL_PROXY:Ljava/lang/String; = "specifies-global-proxy"

.field private static final TAG_TRUST_AGENT_COMPONENT:Ljava/lang/String; = "component"

.field private static final TAG_TRUST_AGENT_COMPONENT_OPTIONS:Ljava/lang/String; = "trust-agent-component-options"


# instance fields
.field accountTypesWithManagementDisabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field crossProfileWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field disableBluetoothContactSharing:Z

.field disableCallerId:Z

.field disableCamera:Z

.field disableScreenCapture:Z

.field disabledKeyguardFeatures:I

.field encryptionRequested:Z

.field globalProxyExclusionList:Ljava/lang/String;

.field globalProxySpec:Ljava/lang/String;

.field final info:Landroid/app/admin/DeviceAdminInfo;

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field minimumPasswordLength:I

.field minimumPasswordLetters:I

.field minimumPasswordLowerCase:I

.field minimumPasswordNonLetter:I

.field minimumPasswordNumeric:I

.field minimumPasswordSymbols:I

.field minimumPasswordUpperCase:I

.field passwordExpirationDate:J

.field passwordExpirationTimeout:J

.field passwordHistoryLength:I

.field passwordQuality:I

.field permittedAccessiblityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedInputMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requireAutoTime:Z

.field specifiesGlobalProxy:Z

.field trustAgentInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/admin/DeviceAdminInfo;)V
    .locals 5
    .param p1, "_info"    # Landroid/app/admin/DeviceAdminInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-wide/16 v2, 0x0

    #@3
    const/4 v0, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 440
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@a
    .line 443
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@c
    .line 446
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@e
    .line 449
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@10
    .line 452
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@12
    .line 455
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@14
    .line 458
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@16
    .line 461
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@18
    .line 464
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@1a
    .line 467
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@1c
    .line 470
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@1e
    .line 473
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@20
    .line 476
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@22
    .line 480
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@24
    .line 482
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@26
    .line 483
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@28
    .line 484
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@2a
    .line 485
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@2c
    .line 486
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@2e
    .line 487
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@30
    .line 496
    new-instance v0, Ljava/util/HashSet;

    #@32
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@35
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@37
    .line 509
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@39
    .line 510
    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@3b
    .line 511
    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@3d
    .line 513
    new-instance v0, Ljava/util/HashMap;

    #@3f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@42
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    #@44
    .line 518
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@46
    .line 517
    return-void
.end method

.method private getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    .line 854
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 856
    .local v1, "outerDepthDAM":I
    new-instance v2, Ljava/util/HashMap;

    #@7
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 857
    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@d
    move-result v5

    #@e
    .local v5, "typeDAM":I
    const/4 v6, 0x1

    #@f
    if-eq v5, v6, :cond_3

    #@11
    .line 858
    if-ne v5, v9, :cond_1

    #@13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v6

    #@17
    if-le v6, v1, :cond_3

    #@19
    .line 859
    :cond_1
    if-eq v5, v9, :cond_0

    #@1b
    const/4 v6, 0x4

    #@1c
    if-eq v5, v6, :cond_0

    #@1e
    .line 862
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 863
    .local v3, "tagDAM":Ljava/lang/String;
    const-string/jumbo v6, "component"

    #@25
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_2

    #@2b
    .line 864
    const-string/jumbo v6, "value"

    #@2e
    const/4 v7, 0x0

    #@2f
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 865
    .local v0, "component":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@36
    move-result-object v4

    #@37
    .line 866
    .local v4, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    goto :goto_0

    #@3b
    .line 868
    .end local v0    # "component":Ljava/lang/String;
    .end local v4    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_2
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@3e
    new-instance v7, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v8, "Unknown tag under "

    #@46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    const-string/jumbo v8, ": "

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    goto :goto_0

    #@61
    .line 871
    .end local v3    # "tagDAM":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method private getCrossProfileWidgetProviders(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x3

    #@2
    .line 898
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 900
    .local v0, "outerDepthDAM":I
    const/4 v2, 0x0

    #@7
    .line 901
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a
    move-result v4

    #@b
    .local v4, "typeDAM":I
    const/4 v5, 0x1

    #@c
    if-eq v4, v5, :cond_4

    #@e
    .line 902
    if-ne v4, v8, :cond_1

    #@10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v5

    #@14
    if-le v5, v0, :cond_4

    #@16
    .line 903
    :cond_1
    if-eq v4, v8, :cond_0

    #@18
    const/4 v5, 0x4

    #@19
    if-eq v4, v5, :cond_0

    #@1b
    .line 906
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 907
    .local v3, "tagDAM":Ljava/lang/String;
    const-string/jumbo v5, "provider"

    #@22
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_3

    #@28
    .line 908
    const-string/jumbo v5, "value"

    #@2b
    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 909
    .local v1, "provider":Ljava/lang/String;
    if-nez v2, :cond_2

    #@31
    .line 910
    new-instance v2, Ljava/util/ArrayList;

    #@33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@36
    .line 912
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 914
    .end local v1    # "provider":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@3d
    new-instance v6, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v7, "Unknown tag under "

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    const-string/jumbo v7, ": "

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    goto :goto_0

    #@60
    .line 917
    .end local v3    # "tagDAM":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method private getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    .line 876
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 878
    .local v1, "outerDepthDAM":I
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@7
    const/4 v5, 0x0

    #@8
    invoke-direct {v2, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    #@b
    .line 879
    .local v2, "result":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@e
    move-result v4

    #@f
    .local v4, "typeDAM":I
    const/4 v5, 0x1

    #@10
    if-eq v4, v5, :cond_3

    #@12
    .line 880
    if-ne v4, v8, :cond_1

    #@14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@17
    move-result v5

    #@18
    if-le v5, v1, :cond_3

    #@1a
    .line 881
    :cond_1
    if-eq v4, v8, :cond_0

    #@1c
    const/4 v5, 0x4

    #@1d
    if-eq v4, v5, :cond_0

    #@1f
    .line 884
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 885
    .local v3, "tagDAM":Ljava/lang/String;
    const-string/jumbo v5, "trust-agent-component-options"

    #@26
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_2

    #@2c
    .line 886
    new-instance v0, Landroid/os/PersistableBundle;

    #@2e
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    #@31
    .line 887
    .local v0, "bundle":Landroid/os/PersistableBundle;
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@34
    .line 888
    iput-object v0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@36
    goto :goto_0

    #@37
    .line 890
    .end local v0    # "bundle":Landroid/os/PersistableBundle;
    :cond_2
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@3a
    new-instance v6, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v7, "Unknown tag under "

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    const-string/jumbo v7, ": "

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_0

    #@5d
    .line 893
    .end local v3    # "tagDAM":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method private readDisableAccountInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    .line 834
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 836
    .local v0, "outerDepthDAM":I
    new-instance v1, Ljava/util/HashSet;

    #@7
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@a
    .line 837
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@d
    move-result v3

    #@e
    .local v3, "typeDAM":I
    const/4 v4, 0x1

    #@f
    if-eq v3, v4, :cond_3

    #@11
    .line 838
    if-ne v3, v7, :cond_1

    #@13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v4

    #@17
    if-le v4, v0, :cond_3

    #@19
    .line 839
    :cond_1
    if-eq v3, v7, :cond_0

    #@1b
    const/4 v4, 0x4

    #@1c
    if-eq v3, v4, :cond_0

    #@1e
    .line 842
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 843
    .local v2, "tagDAM":Ljava/lang/String;
    const-string/jumbo v4, "account-type"

    #@25
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_2

    #@2b
    .line 844
    const-string/jumbo v4, "value"

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 846
    :cond_2
    const-string/jumbo v4, "DevicePolicyManagerService"

    #@3a
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v6, "Unknown tag under "

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    const-string/jumbo v6, ": "

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_0

    #@5d
    .line 849
    .end local v2    # "tagDAM":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x3

    #@2
    .line 809
    new-instance v4, Ljava/util/ArrayList;

    #@4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 810
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@a
    move-result v0

    #@b
    .line 812
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@e
    move-result v2

    #@f
    .local v2, "outerType":I
    const/4 v5, 0x1

    #@10
    if-eq v2, v5, :cond_4

    #@12
    .line 813
    if-ne v2, v8, :cond_1

    #@14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@17
    move-result v5

    #@18
    if-le v5, v0, :cond_4

    #@1a
    .line 814
    :cond_1
    if-eq v2, v8, :cond_0

    #@1c
    const/4 v5, 0x4

    #@1d
    if-eq v2, v5, :cond_0

    #@1f
    .line 817
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 818
    .local v1, "outerTag":Ljava/lang/String;
    const-string/jumbo v5, "item"

    #@26
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 819
    const-string/jumbo v5, "value"

    #@2f
    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 820
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@35
    .line 821
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 823
    :cond_2
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@3c
    new-instance v6, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v7, "Package name missing under "

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    goto :goto_0

    #@54
    .line 826
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@57
    new-instance v6, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v7, "Unknown tag under "

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    const-string/jumbo v7, ": "

    #@6a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v6

    #@76
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    goto :goto_0

    #@7a
    .line 829
    .end local v1    # "outerTag":Ljava/lang/String;
    :cond_4
    return-object v4
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 921
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v2, "uid="

    #@6
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    #@c
    move-result v2

    #@d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@10
    .line 922
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    const-string/jumbo v2, "policies:"

    #@16
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 923
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@1b
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    #@1e
    move-result-object v1

    #@1f
    .line 924
    .local v1, "pols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    if-eqz v1, :cond_0

    #@21
    .line 925
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v2

    #@26
    if-ge v0, v2, :cond_0

    #@28
    .line 926
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    const-string/jumbo v2, "  "

    #@2e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@37
    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    #@39
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 925
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 929
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    const-string/jumbo v2, "passwordQuality=0x"

    #@45
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 930
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@4a
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 931
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    const-string/jumbo v2, "minimumPasswordLength="

    #@57
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 932
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@5c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@5f
    .line 933
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    const-string/jumbo v2, "passwordHistoryLength="

    #@65
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    .line 934
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@6a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@6d
    .line 935
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    const-string/jumbo v2, "minimumPasswordUpperCase="

    #@73
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    .line 936
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@78
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@7b
    .line 937
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    const-string/jumbo v2, "minimumPasswordLowerCase="

    #@81
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    .line 938
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@86
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@89
    .line 939
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    const-string/jumbo v2, "minimumPasswordLetters="

    #@8f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    .line 940
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@94
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@97
    .line 941
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    const-string/jumbo v2, "minimumPasswordNumeric="

    #@9d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    .line 942
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@a2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@a5
    .line 943
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string/jumbo v2, "minimumPasswordSymbols="

    #@ab
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    .line 944
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@b0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@b3
    .line 945
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    const-string/jumbo v2, "minimumPasswordNonLetter="

    #@b9
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bc
    .line 946
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@be
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@c1
    .line 947
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c4
    const-string/jumbo v2, "maximumTimeToUnlock="

    #@c7
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ca
    .line 948
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@cc
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@cf
    .line 949
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    const-string/jumbo v2, "maximumFailedPasswordsForWipe="

    #@d5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    .line 950
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@da
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@dd
    .line 951
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0
    const-string/jumbo v2, "specifiesGlobalProxy="

    #@e3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e6
    .line 952
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@e8
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@eb
    .line 953
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    const-string/jumbo v2, "passwordExpirationTimeout="

    #@f1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f4
    .line 954
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@f6
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@f9
    .line 955
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    const-string/jumbo v2, "passwordExpirationDate="

    #@ff
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    .line 956
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@104
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@107
    .line 957
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@109
    if-eqz v2, :cond_1

    #@10b
    .line 958
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10e
    const-string/jumbo v2, "globalProxySpec="

    #@111
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@114
    .line 959
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@116
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@119
    .line 961
    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@11b
    if-eqz v2, :cond_2

    #@11d
    .line 962
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    const-string/jumbo v2, "globalProxyEclusionList="

    #@123
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@126
    .line 963
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@128
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12b
    .line 965
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12e
    const-string/jumbo v2, "encryptionRequested="

    #@131
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@134
    .line 966
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@136
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@139
    .line 967
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    const-string/jumbo v2, "disableCamera="

    #@13f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142
    .line 968
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@144
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@147
    .line 969
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14a
    const-string/jumbo v2, "disableCallerId="

    #@14d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@150
    .line 970
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@152
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@155
    .line 971
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@158
    const-string/jumbo v2, "disableBluetoothContactSharing="

    #@15b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15e
    .line 972
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@160
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@163
    .line 973
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@166
    const-string/jumbo v2, "disableScreenCapture="

    #@169
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    .line 974
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@16e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@171
    .line 975
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@174
    const-string/jumbo v2, "requireAutoTime="

    #@177
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17a
    .line 976
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@17c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@17f
    .line 977
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@182
    const-string/jumbo v2, "disabledKeyguardFeatures="

    #@185
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@188
    .line 978
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@18a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@18d
    .line 979
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@190
    const-string/jumbo v2, "crossProfileWidgetProviders="

    #@193
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@196
    .line 980
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@198
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19b
    .line 981
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@19d
    if-eqz v2, :cond_3

    #@19f
    .line 982
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a2
    const-string/jumbo v2, "permittedAccessibilityServices="

    #@1a5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a8
    .line 983
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@1aa
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1ad
    move-result-object v2

    #@1ae
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b1
    .line 985
    :cond_3
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@1b3
    if-eqz v2, :cond_4

    #@1b5
    .line 986
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b8
    const-string/jumbo v2, "permittedInputMethods="

    #@1bb
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1be
    .line 987
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@1c0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v2

    #@1c4
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c7
    .line 920
    :cond_4
    return-void
.end method

.method getUid()I
    .locals 1

    #@0
    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@a
    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    #@0
    .prologue
    .line 524
    new-instance v0, Landroid/os/UserHandle;

    #@2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@4
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    #@7
    move-result-object v1

    #@8
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@c
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@f
    move-result v1

    #@10
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@13
    return-object v0
.end method

.method readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 711
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 713
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v2

    #@a
    .local v2, "type":I
    const/4 v3, 0x1

    #@b
    if-eq v2, v3, :cond_1f

    #@d
    .line 714
    if-ne v2, v7, :cond_1

    #@f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v3

    #@13
    if-le v3, v0, :cond_1f

    #@15
    .line 715
    :cond_1
    if-eq v2, v7, :cond_0

    #@17
    const/4 v3, 0x4

    #@18
    if-eq v2, v3, :cond_0

    #@1a
    .line 718
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 719
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v3, "policies"

    #@21
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 720
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@29
    invoke-virtual {v3, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2c
    goto :goto_0

    #@2d
    .line 721
    :cond_2
    const-string/jumbo v3, "password-quality"

    #@30
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_3

    #@36
    .line 723
    const-string/jumbo v3, "value"

    #@39
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 722
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@40
    move-result v3

    #@41
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@43
    goto :goto_0

    #@44
    .line 724
    :cond_3
    const-string/jumbo v3, "min-password-length"

    #@47
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_4

    #@4d
    .line 726
    const-string/jumbo v3, "value"

    #@50
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    .line 725
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@57
    move-result v3

    #@58
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@5a
    goto :goto_0

    #@5b
    .line 727
    :cond_4
    const-string/jumbo v3, "password-history-length"

    #@5e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_5

    #@64
    .line 729
    const-string/jumbo v3, "value"

    #@67
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    .line 728
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6e
    move-result v3

    #@6f
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@71
    goto :goto_0

    #@72
    .line 730
    :cond_5
    const-string/jumbo v3, "min-password-uppercase"

    #@75
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v3

    #@79
    if-eqz v3, :cond_6

    #@7b
    .line 732
    const-string/jumbo v3, "value"

    #@7e
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    .line 731
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@85
    move-result v3

    #@86
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@88
    goto/16 :goto_0

    #@8a
    .line 733
    :cond_6
    const-string/jumbo v3, "min-password-lowercase"

    #@8d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v3

    #@91
    if-eqz v3, :cond_7

    #@93
    .line 735
    const-string/jumbo v3, "value"

    #@96
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    .line 734
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9d
    move-result v3

    #@9e
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@a0
    goto/16 :goto_0

    #@a2
    .line 736
    :cond_7
    const-string/jumbo v3, "min-password-letters"

    #@a5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v3

    #@a9
    if-eqz v3, :cond_8

    #@ab
    .line 738
    const-string/jumbo v3, "value"

    #@ae
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    .line 737
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b5
    move-result v3

    #@b6
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@b8
    goto/16 :goto_0

    #@ba
    .line 739
    :cond_8
    const-string/jumbo v3, "min-password-numeric"

    #@bd
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v3

    #@c1
    if-eqz v3, :cond_9

    #@c3
    .line 741
    const-string/jumbo v3, "value"

    #@c6
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c9
    move-result-object v3

    #@ca
    .line 740
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@cd
    move-result v3

    #@ce
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@d0
    goto/16 :goto_0

    #@d2
    .line 742
    :cond_9
    const-string/jumbo v3, "min-password-symbols"

    #@d5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v3

    #@d9
    if-eqz v3, :cond_a

    #@db
    .line 744
    const-string/jumbo v3, "value"

    #@de
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e1
    move-result-object v3

    #@e2
    .line 743
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e5
    move-result v3

    #@e6
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@e8
    goto/16 :goto_0

    #@ea
    .line 745
    :cond_a
    const-string/jumbo v3, "min-password-nonletter"

    #@ed
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f0
    move-result v3

    #@f1
    if-eqz v3, :cond_b

    #@f3
    .line 747
    const-string/jumbo v3, "value"

    #@f6
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f9
    move-result-object v3

    #@fa
    .line 746
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@fd
    move-result v3

    #@fe
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@100
    goto/16 :goto_0

    #@102
    .line 748
    :cond_b
    const-string/jumbo v3, "max-time-to-unlock"

    #@105
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@108
    move-result v3

    #@109
    if-eqz v3, :cond_c

    #@10b
    .line 750
    const-string/jumbo v3, "value"

    #@10e
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@111
    move-result-object v3

    #@112
    .line 749
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@115
    move-result-wide v4

    #@116
    iput-wide v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@118
    goto/16 :goto_0

    #@11a
    .line 751
    :cond_c
    const-string/jumbo v3, "max-failed-password-wipe"

    #@11d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@120
    move-result v3

    #@121
    if-eqz v3, :cond_d

    #@123
    .line 753
    const-string/jumbo v3, "value"

    #@126
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@129
    move-result-object v3

    #@12a
    .line 752
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12d
    move-result v3

    #@12e
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@130
    goto/16 :goto_0

    #@132
    .line 754
    :cond_d
    const-string/jumbo v3, "specifies-global-proxy"

    #@135
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@138
    move-result v3

    #@139
    if-eqz v3, :cond_e

    #@13b
    .line 756
    const-string/jumbo v3, "value"

    #@13e
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@141
    move-result-object v3

    #@142
    .line 755
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@145
    move-result v3

    #@146
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@148
    goto/16 :goto_0

    #@14a
    .line 757
    :cond_e
    const-string/jumbo v3, "global-proxy-spec"

    #@14d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@150
    move-result v3

    #@151
    if-eqz v3, :cond_f

    #@153
    .line 759
    const-string/jumbo v3, "value"

    #@156
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@159
    move-result-object v3

    #@15a
    .line 758
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@15c
    goto/16 :goto_0

    #@15e
    .line 760
    :cond_f
    const-string/jumbo v3, "global-proxy-exclusion-list"

    #@161
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@164
    move-result v3

    #@165
    if-eqz v3, :cond_10

    #@167
    .line 762
    const-string/jumbo v3, "value"

    #@16a
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16d
    move-result-object v3

    #@16e
    .line 761
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@170
    goto/16 :goto_0

    #@172
    .line 763
    :cond_10
    const-string/jumbo v3, "password-expiration-timeout"

    #@175
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@178
    move-result v3

    #@179
    if-eqz v3, :cond_11

    #@17b
    .line 765
    const-string/jumbo v3, "value"

    #@17e
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@181
    move-result-object v3

    #@182
    .line 764
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@185
    move-result-wide v4

    #@186
    iput-wide v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@188
    goto/16 :goto_0

    #@18a
    .line 766
    :cond_11
    const-string/jumbo v3, "password-expiration-date"

    #@18d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@190
    move-result v3

    #@191
    if-eqz v3, :cond_12

    #@193
    .line 768
    const-string/jumbo v3, "value"

    #@196
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@199
    move-result-object v3

    #@19a
    .line 767
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@19d
    move-result-wide v4

    #@19e
    iput-wide v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@1a0
    goto/16 :goto_0

    #@1a2
    .line 769
    :cond_12
    const-string/jumbo v3, "encryption-requested"

    #@1a5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a8
    move-result v3

    #@1a9
    if-eqz v3, :cond_13

    #@1ab
    .line 771
    const-string/jumbo v3, "value"

    #@1ae
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b1
    move-result-object v3

    #@1b2
    .line 770
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1b5
    move-result v3

    #@1b6
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@1b8
    goto/16 :goto_0

    #@1ba
    .line 772
    :cond_13
    const-string/jumbo v3, "disable-camera"

    #@1bd
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c0
    move-result v3

    #@1c1
    if-eqz v3, :cond_14

    #@1c3
    .line 774
    const-string/jumbo v3, "value"

    #@1c6
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c9
    move-result-object v3

    #@1ca
    .line 773
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1cd
    move-result v3

    #@1ce
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@1d0
    goto/16 :goto_0

    #@1d2
    .line 775
    :cond_14
    const-string/jumbo v3, "disable-caller-id"

    #@1d5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d8
    move-result v3

    #@1d9
    if-eqz v3, :cond_15

    #@1db
    .line 777
    const-string/jumbo v3, "value"

    #@1de
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e1
    move-result-object v3

    #@1e2
    .line 776
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1e5
    move-result v3

    #@1e6
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@1e8
    goto/16 :goto_0

    #@1ea
    .line 778
    :cond_15
    const-string/jumbo v3, "disable-bt-contacts-sharing"

    #@1ed
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f0
    move-result v3

    #@1f1
    if-eqz v3, :cond_16

    #@1f3
    .line 780
    const-string/jumbo v3, "value"

    #@1f6
    .line 779
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f9
    move-result-object v3

    #@1fa
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1fd
    move-result v3

    #@1fe
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@200
    goto/16 :goto_0

    #@202
    .line 781
    :cond_16
    const-string/jumbo v3, "disable-screen-capture"

    #@205
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@208
    move-result v3

    #@209
    if-eqz v3, :cond_17

    #@20b
    .line 783
    const-string/jumbo v3, "value"

    #@20e
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@211
    move-result-object v3

    #@212
    .line 782
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@215
    move-result v3

    #@216
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@218
    goto/16 :goto_0

    #@21a
    .line 784
    :cond_17
    const-string/jumbo v3, "require_auto_time"

    #@21d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@220
    move-result v3

    #@221
    if-eqz v3, :cond_18

    #@223
    .line 786
    const-string/jumbo v3, "value"

    #@226
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@229
    move-result-object v3

    #@22a
    .line 785
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@22d
    move-result v3

    #@22e
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@230
    goto/16 :goto_0

    #@232
    .line 787
    :cond_18
    const-string/jumbo v3, "disable-keyguard-features"

    #@235
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@238
    move-result v3

    #@239
    if-eqz v3, :cond_19

    #@23b
    .line 789
    const-string/jumbo v3, "value"

    #@23e
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@241
    move-result-object v3

    #@242
    .line 788
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@245
    move-result v3

    #@246
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@248
    goto/16 :goto_0

    #@24a
    .line 790
    :cond_19
    const-string/jumbo v3, "disable-account-management"

    #@24d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@250
    move-result v3

    #@251
    if-eqz v3, :cond_1a

    #@253
    .line 791
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readDisableAccountInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/Set;

    #@256
    move-result-object v3

    #@257
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@259
    goto/16 :goto_0

    #@25b
    .line 792
    :cond_1a
    const-string/jumbo v3, "manage-trust-agent-features"

    #@25e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@261
    move-result v3

    #@262
    if-eqz v3, :cond_1b

    #@264
    .line 793
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/HashMap;

    #@267
    move-result-object v3

    #@268
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    #@26a
    goto/16 :goto_0

    #@26c
    .line 794
    :cond_1b
    const-string/jumbo v3, "cross-profile-widget-providers"

    #@26f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@272
    move-result v3

    #@273
    if-eqz v3, :cond_1c

    #@275
    .line 795
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getCrossProfileWidgetProviders(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@278
    move-result-object v3

    #@279
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@27b
    goto/16 :goto_0

    #@27d
    .line 796
    :cond_1c
    const-string/jumbo v3, "permitted-accessiblity-services"

    #@280
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@283
    move-result v3

    #@284
    if-eqz v3, :cond_1d

    #@286
    .line 797
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@289
    move-result-object v3

    #@28a
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@28c
    goto/16 :goto_0

    #@28e
    .line 798
    :cond_1d
    const-string/jumbo v3, "permitted-imes"

    #@291
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@294
    move-result v3

    #@295
    if-eqz v3, :cond_1e

    #@297
    .line 799
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@29a
    move-result-object v3

    #@29b
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@29d
    goto/16 :goto_0

    #@29f
    .line 801
    :cond_1e
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@2a2
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a7
    const-string/jumbo v5, "Unknown admin tag: "

    #@2aa
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v4

    #@2ae
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v4

    #@2b2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b5
    move-result-object v4

    #@2b6
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b9
    .line 802
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2bc
    goto/16 :goto_0

    #@2be
    .line 710
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 696
    if-nez p3, :cond_0

    #@3
    .line 697
    return-void

    #@4
    .line 700
    :cond_0
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 701
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "packageName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 702
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "item"

    #@1a
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 703
    const-string/jumbo v2, "value"

    #@20
    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 704
    const-string/jumbo v2, "item"

    #@26
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    goto :goto_0

    #@2a
    .line 706
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d
    .line 695
    return-void
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 14
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 529
    const-string/jumbo v10, "policies"

    #@3
    const/4 v11, 0x0

    #@4
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 530
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@9
    invoke-virtual {v10, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@c
    .line 531
    const-string/jumbo v10, "policies"

    #@f
    const/4 v11, 0x0

    #@10
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13
    .line 532
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@15
    if-eqz v10, :cond_7

    #@17
    .line 533
    const-string/jumbo v10, "password-quality"

    #@1a
    const/4 v11, 0x0

    #@1b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 534
    const-string/jumbo v10, "value"

    #@21
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@23
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v11

    #@27
    const/4 v12, 0x0

    #@28
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 535
    const-string/jumbo v10, "password-quality"

    #@2e
    const/4 v11, 0x0

    #@2f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 536
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@34
    if-eqz v10, :cond_0

    #@36
    .line 537
    const-string/jumbo v10, "min-password-length"

    #@39
    const/4 v11, 0x0

    #@3a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d
    .line 538
    const-string/jumbo v10, "value"

    #@40
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@42
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@45
    move-result-object v11

    #@46
    const/4 v12, 0x0

    #@47
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 539
    const-string/jumbo v10, "min-password-length"

    #@4d
    const/4 v11, 0x0

    #@4e
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 541
    :cond_0
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@53
    if-eqz v10, :cond_1

    #@55
    .line 542
    const-string/jumbo v10, "password-history-length"

    #@58
    const/4 v11, 0x0

    #@59
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5c
    .line 543
    const-string/jumbo v10, "value"

    #@5f
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@61
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@64
    move-result-object v11

    #@65
    const/4 v12, 0x0

    #@66
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@69
    .line 544
    const-string/jumbo v10, "password-history-length"

    #@6c
    const/4 v11, 0x0

    #@6d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@70
    .line 546
    :cond_1
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@72
    if-eqz v10, :cond_2

    #@74
    .line 547
    const-string/jumbo v10, "min-password-uppercase"

    #@77
    const/4 v11, 0x0

    #@78
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7b
    .line 548
    const-string/jumbo v10, "value"

    #@7e
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@80
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@83
    move-result-object v11

    #@84
    const/4 v12, 0x0

    #@85
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@88
    .line 549
    const-string/jumbo v10, "min-password-uppercase"

    #@8b
    const/4 v11, 0x0

    #@8c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8f
    .line 551
    :cond_2
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@91
    if-eqz v10, :cond_3

    #@93
    .line 552
    const-string/jumbo v10, "min-password-lowercase"

    #@96
    const/4 v11, 0x0

    #@97
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9a
    .line 553
    const-string/jumbo v10, "value"

    #@9d
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@9f
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a2
    move-result-object v11

    #@a3
    const/4 v12, 0x0

    #@a4
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a7
    .line 554
    const-string/jumbo v10, "min-password-lowercase"

    #@aa
    const/4 v11, 0x0

    #@ab
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ae
    .line 556
    :cond_3
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@b0
    const/4 v11, 0x1

    #@b1
    if-eq v10, v11, :cond_4

    #@b3
    .line 557
    const-string/jumbo v10, "min-password-letters"

    #@b6
    const/4 v11, 0x0

    #@b7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ba
    .line 558
    const-string/jumbo v10, "value"

    #@bd
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@bf
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c2
    move-result-object v11

    #@c3
    const/4 v12, 0x0

    #@c4
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c7
    .line 559
    const-string/jumbo v10, "min-password-letters"

    #@ca
    const/4 v11, 0x0

    #@cb
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ce
    .line 561
    :cond_4
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@d0
    const/4 v11, 0x1

    #@d1
    if-eq v10, v11, :cond_5

    #@d3
    .line 562
    const-string/jumbo v10, "min-password-numeric"

    #@d6
    const/4 v11, 0x0

    #@d7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@da
    .line 563
    const-string/jumbo v10, "value"

    #@dd
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@df
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e2
    move-result-object v11

    #@e3
    const/4 v12, 0x0

    #@e4
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e7
    .line 564
    const-string/jumbo v10, "min-password-numeric"

    #@ea
    const/4 v11, 0x0

    #@eb
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ee
    .line 566
    :cond_5
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@f0
    const/4 v11, 0x1

    #@f1
    if-eq v10, v11, :cond_6

    #@f3
    .line 567
    const-string/jumbo v10, "min-password-symbols"

    #@f6
    const/4 v11, 0x0

    #@f7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@fa
    .line 568
    const-string/jumbo v10, "value"

    #@fd
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@ff
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@102
    move-result-object v11

    #@103
    const/4 v12, 0x0

    #@104
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@107
    .line 569
    const-string/jumbo v10, "min-password-symbols"

    #@10a
    const/4 v11, 0x0

    #@10b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10e
    .line 571
    :cond_6
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@110
    if-lez v10, :cond_7

    #@112
    .line 572
    const-string/jumbo v10, "min-password-nonletter"

    #@115
    const/4 v11, 0x0

    #@116
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@119
    .line 573
    const-string/jumbo v10, "value"

    #@11c
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@11e
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@121
    move-result-object v11

    #@122
    const/4 v12, 0x0

    #@123
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@126
    .line 574
    const-string/jumbo v10, "min-password-nonletter"

    #@129
    const/4 v11, 0x0

    #@12a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12d
    .line 577
    :cond_7
    iget-wide v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@12f
    const-wide/16 v12, 0x0

    #@131
    cmp-long v10, v10, v12

    #@133
    if-eqz v10, :cond_8

    #@135
    .line 578
    const-string/jumbo v10, "max-time-to-unlock"

    #@138
    const/4 v11, 0x0

    #@139
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13c
    .line 579
    const-string/jumbo v10, "value"

    #@13f
    iget-wide v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@141
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@144
    move-result-object v11

    #@145
    const/4 v12, 0x0

    #@146
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@149
    .line 580
    const-string/jumbo v10, "max-time-to-unlock"

    #@14c
    const/4 v11, 0x0

    #@14d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@150
    .line 582
    :cond_8
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@152
    if-eqz v10, :cond_9

    #@154
    .line 583
    const-string/jumbo v10, "max-failed-password-wipe"

    #@157
    const/4 v11, 0x0

    #@158
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15b
    .line 584
    const-string/jumbo v10, "value"

    #@15e
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@160
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@163
    move-result-object v11

    #@164
    const/4 v12, 0x0

    #@165
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@168
    .line 585
    const-string/jumbo v10, "max-failed-password-wipe"

    #@16b
    const/4 v11, 0x0

    #@16c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16f
    .line 587
    :cond_9
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@171
    if-eqz v10, :cond_b

    #@173
    .line 588
    const-string/jumbo v10, "specifies-global-proxy"

    #@176
    const/4 v11, 0x0

    #@177
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17a
    .line 589
    const-string/jumbo v10, "value"

    #@17d
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@17f
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@182
    move-result-object v11

    #@183
    const/4 v12, 0x0

    #@184
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@187
    .line 590
    const-string/jumbo v10, "specifies-global-proxy"

    #@18a
    const/4 v11, 0x0

    #@18b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18e
    .line 591
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@190
    if-eqz v10, :cond_a

    #@192
    .line 592
    const-string/jumbo v10, "global-proxy-spec"

    #@195
    const/4 v11, 0x0

    #@196
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@199
    .line 593
    const-string/jumbo v10, "value"

    #@19c
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@19e
    const/4 v12, 0x0

    #@19f
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a2
    .line 594
    const-string/jumbo v10, "global-proxy-spec"

    #@1a5
    const/4 v11, 0x0

    #@1a6
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a9
    .line 596
    :cond_a
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@1ab
    if-eqz v10, :cond_b

    #@1ad
    .line 597
    const-string/jumbo v10, "global-proxy-exclusion-list"

    #@1b0
    const/4 v11, 0x0

    #@1b1
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b4
    .line 598
    const-string/jumbo v10, "value"

    #@1b7
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@1b9
    const/4 v12, 0x0

    #@1ba
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1bd
    .line 599
    const-string/jumbo v10, "global-proxy-exclusion-list"

    #@1c0
    const/4 v11, 0x0

    #@1c1
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c4
    .line 602
    :cond_b
    iget-wide v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@1c6
    const-wide/16 v12, 0x0

    #@1c8
    cmp-long v10, v10, v12

    #@1ca
    if-eqz v10, :cond_c

    #@1cc
    .line 603
    const-string/jumbo v10, "password-expiration-timeout"

    #@1cf
    const/4 v11, 0x0

    #@1d0
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d3
    .line 604
    const-string/jumbo v10, "value"

    #@1d6
    iget-wide v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@1d8
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1db
    move-result-object v11

    #@1dc
    const/4 v12, 0x0

    #@1dd
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e0
    .line 605
    const-string/jumbo v10, "password-expiration-timeout"

    #@1e3
    const/4 v11, 0x0

    #@1e4
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e7
    .line 607
    :cond_c
    iget-wide v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@1e9
    const-wide/16 v12, 0x0

    #@1eb
    cmp-long v10, v10, v12

    #@1ed
    if-eqz v10, :cond_d

    #@1ef
    .line 608
    const-string/jumbo v10, "password-expiration-date"

    #@1f2
    const/4 v11, 0x0

    #@1f3
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f6
    .line 609
    const-string/jumbo v10, "value"

    #@1f9
    iget-wide v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@1fb
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1fe
    move-result-object v11

    #@1ff
    const/4 v12, 0x0

    #@200
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@203
    .line 610
    const-string/jumbo v10, "password-expiration-date"

    #@206
    const/4 v11, 0x0

    #@207
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@20a
    .line 612
    :cond_d
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@20c
    if-eqz v10, :cond_e

    #@20e
    .line 613
    const-string/jumbo v10, "encryption-requested"

    #@211
    const/4 v11, 0x0

    #@212
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@215
    .line 614
    const-string/jumbo v10, "value"

    #@218
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@21a
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@21d
    move-result-object v11

    #@21e
    const/4 v12, 0x0

    #@21f
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@222
    .line 615
    const-string/jumbo v10, "encryption-requested"

    #@225
    const/4 v11, 0x0

    #@226
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@229
    .line 617
    :cond_e
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@22b
    if-eqz v10, :cond_f

    #@22d
    .line 618
    const-string/jumbo v10, "disable-camera"

    #@230
    const/4 v11, 0x0

    #@231
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@234
    .line 619
    const-string/jumbo v10, "value"

    #@237
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@239
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@23c
    move-result-object v11

    #@23d
    const/4 v12, 0x0

    #@23e
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@241
    .line 620
    const-string/jumbo v10, "disable-camera"

    #@244
    const/4 v11, 0x0

    #@245
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@248
    .line 622
    :cond_f
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@24a
    if-eqz v10, :cond_10

    #@24c
    .line 623
    const-string/jumbo v10, "disable-caller-id"

    #@24f
    const/4 v11, 0x0

    #@250
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@253
    .line 624
    const-string/jumbo v10, "value"

    #@256
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@258
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@25b
    move-result-object v11

    #@25c
    const/4 v12, 0x0

    #@25d
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@260
    .line 625
    const-string/jumbo v10, "disable-caller-id"

    #@263
    const/4 v11, 0x0

    #@264
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@267
    .line 627
    :cond_10
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@269
    if-eqz v10, :cond_11

    #@26b
    .line 628
    const-string/jumbo v10, "disable-bt-contacts-sharing"

    #@26e
    const/4 v11, 0x0

    #@26f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@272
    .line 629
    const-string/jumbo v10, "value"

    #@275
    .line 630
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@277
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@27a
    move-result-object v11

    #@27b
    .line 629
    const/4 v12, 0x0

    #@27c
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27f
    .line 631
    const-string/jumbo v10, "disable-bt-contacts-sharing"

    #@282
    const/4 v11, 0x0

    #@283
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@286
    .line 633
    :cond_11
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@288
    if-eqz v10, :cond_12

    #@28a
    .line 634
    const-string/jumbo v10, "disable-screen-capture"

    #@28d
    const/4 v11, 0x0

    #@28e
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@291
    .line 635
    const-string/jumbo v10, "value"

    #@294
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@296
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@299
    move-result-object v11

    #@29a
    const/4 v12, 0x0

    #@29b
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29e
    .line 636
    const-string/jumbo v10, "disable-screen-capture"

    #@2a1
    const/4 v11, 0x0

    #@2a2
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a5
    .line 638
    :cond_12
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@2a7
    if-eqz v10, :cond_13

    #@2a9
    .line 639
    const-string/jumbo v10, "require_auto_time"

    #@2ac
    const/4 v11, 0x0

    #@2ad
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b0
    .line 640
    const-string/jumbo v10, "value"

    #@2b3
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@2b5
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2b8
    move-result-object v11

    #@2b9
    const/4 v12, 0x0

    #@2ba
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2bd
    .line 641
    const-string/jumbo v10, "require_auto_time"

    #@2c0
    const/4 v11, 0x0

    #@2c1
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2c4
    .line 643
    :cond_13
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@2c6
    if-eqz v10, :cond_14

    #@2c8
    .line 644
    const-string/jumbo v10, "disable-keyguard-features"

    #@2cb
    const/4 v11, 0x0

    #@2cc
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2cf
    .line 645
    const-string/jumbo v10, "value"

    #@2d2
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@2d4
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2d7
    move-result-object v11

    #@2d8
    const/4 v12, 0x0

    #@2d9
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2dc
    .line 646
    const-string/jumbo v10, "disable-keyguard-features"

    #@2df
    const/4 v11, 0x0

    #@2e0
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2e3
    .line 648
    :cond_14
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@2e5
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    #@2e8
    move-result v10

    #@2e9
    if-nez v10, :cond_16

    #@2eb
    .line 649
    const-string/jumbo v10, "disable-account-management"

    #@2ee
    const/4 v11, 0x0

    #@2ef
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f2
    .line 650
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@2f4
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f7
    move-result-object v1

    #@2f8
    .local v1, "ac$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2fb
    move-result v10

    #@2fc
    if-eqz v10, :cond_15

    #@2fe
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@301
    move-result-object v0

    #@302
    check-cast v0, Ljava/lang/String;

    #@304
    .line 651
    .local v0, "ac":Ljava/lang/String;
    const-string/jumbo v10, "account-type"

    #@307
    const/4 v11, 0x0

    #@308
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@30b
    .line 652
    const-string/jumbo v10, "value"

    #@30e
    const/4 v11, 0x0

    #@30f
    invoke-interface {p1, v11, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@312
    .line 653
    const-string/jumbo v10, "account-type"

    #@315
    const/4 v11, 0x0

    #@316
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@319
    goto :goto_0

    #@31a
    .line 655
    .end local v0    # "ac":Ljava/lang/String;
    :cond_15
    const-string/jumbo v10, "disable-account-management"

    #@31d
    const/4 v11, 0x0

    #@31e
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@321
    .line 657
    .end local v1    # "ac$iterator":Ljava/util/Iterator;
    :cond_16
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    #@323
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    #@326
    move-result v10

    #@327
    if-nez v10, :cond_19

    #@329
    .line 658
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    #@32b
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@32e
    move-result-object v8

    #@32f
    .line 659
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    const-string/jumbo v10, "manage-trust-agent-features"

    #@332
    const/4 v11, 0x0

    #@333
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@336
    .line 660
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@339
    move-result-object v4

    #@33a
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@33d
    move-result v10

    #@33e
    if-eqz v10, :cond_18

    #@340
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@343
    move-result-object v3

    #@344
    check-cast v3, Ljava/util/Map$Entry;

    #@346
    .line 661
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@349
    move-result-object v9

    #@34a
    check-cast v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@34c
    .line 662
    .local v9, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    const-string/jumbo v10, "component"

    #@34f
    const/4 v11, 0x0

    #@350
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@353
    .line 663
    const-string/jumbo v11, "value"

    #@356
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@359
    move-result-object v10

    #@35a
    check-cast v10, Ljava/lang/String;

    #@35c
    const/4 v12, 0x0

    #@35d
    invoke-interface {p1, v12, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@360
    .line 664
    iget-object v10, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@362
    if-eqz v10, :cond_17

    #@364
    .line 665
    const-string/jumbo v10, "trust-agent-component-options"

    #@367
    const/4 v11, 0x0

    #@368
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36b
    .line 667
    :try_start_0
    iget-object v10, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@36d
    invoke-virtual {v10, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@370
    .line 671
    :goto_2
    const-string/jumbo v10, "trust-agent-component-options"

    #@373
    const/4 v11, 0x0

    #@374
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@377
    .line 673
    :cond_17
    const-string/jumbo v10, "component"

    #@37a
    const/4 v11, 0x0

    #@37b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@37e
    goto :goto_1

    #@37f
    .line 668
    :catch_0
    move-exception v2

    #@380
    .line 669
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v10, "DevicePolicyManagerService"

    #@383
    const-string/jumbo v11, "Failed to save TrustAgent options"

    #@386
    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@389
    goto :goto_2

    #@38a
    .line 675
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    .end local v9    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_18
    const-string/jumbo v10, "manage-trust-agent-features"

    #@38d
    const/4 v11, 0x0

    #@38e
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@391
    .line 677
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    :cond_19
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@393
    if-eqz v10, :cond_1a

    #@395
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@397
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    #@39a
    move-result v10

    #@39b
    if-eqz v10, :cond_1b

    #@39d
    .line 688
    :cond_1a
    :goto_3
    const-string/jumbo v10, "permitted-accessiblity-services"

    #@3a0
    .line 689
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@3a2
    .line 688
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    #@3a5
    .line 690
    const-string/jumbo v10, "permitted-imes"

    #@3a8
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@3aa
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    #@3ad
    .line 528
    return-void

    #@3ae
    .line 678
    :cond_1b
    const-string/jumbo v10, "cross-profile-widget-providers"

    #@3b1
    const/4 v11, 0x0

    #@3b2
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b5
    .line 679
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@3b7
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@3ba
    move-result v7

    #@3bb
    .line 680
    .local v7, "providerCount":I
    const/4 v5, 0x0

    #@3bc
    .local v5, "i":I
    :goto_4
    if-ge v5, v7, :cond_1c

    #@3be
    .line 681
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@3c0
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c3
    move-result-object v6

    #@3c4
    check-cast v6, Ljava/lang/String;

    #@3c6
    .line 682
    .local v6, "provider":Ljava/lang/String;
    const-string/jumbo v10, "provider"

    #@3c9
    const/4 v11, 0x0

    #@3ca
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3cd
    .line 683
    const-string/jumbo v10, "value"

    #@3d0
    const/4 v11, 0x0

    #@3d1
    invoke-interface {p1, v11, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d4
    .line 684
    const-string/jumbo v10, "provider"

    #@3d7
    const/4 v11, 0x0

    #@3d8
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3db
    .line 680
    add-int/lit8 v5, v5, 0x1

    #@3dd
    goto :goto_4

    #@3de
    .line 686
    .end local v6    # "provider":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v10, "cross-profile-widget-providers"

    #@3e1
    const/4 v11, 0x0

    #@3e2
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3e5
    goto :goto_3
.end method
