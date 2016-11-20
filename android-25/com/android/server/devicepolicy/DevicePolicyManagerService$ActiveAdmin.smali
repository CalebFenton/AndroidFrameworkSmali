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

.field static final DEF_ORGANIZATION_COLOR:I

.field static final DEF_PASSWORD_EXPIRATION_DATE:J = 0x0L

.field static final DEF_PASSWORD_EXPIRATION_TIMEOUT:J = 0x0L

.field static final DEF_PASSWORD_HISTORY_LENGTH:I = 0x0

.field private static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "account-type"

.field private static final TAG_CROSS_PROFILE_WIDGET_PROVIDERS:Ljava/lang/String; = "cross-profile-widget-providers"

.field private static final TAG_DISABLE_ACCOUNT_MANAGEMENT:Ljava/lang/String; = "disable-account-management"

.field private static final TAG_DISABLE_BLUETOOTH_CONTACT_SHARING:Ljava/lang/String; = "disable-bt-contacts-sharing"

.field private static final TAG_DISABLE_CALLER_ID:Ljava/lang/String; = "disable-caller-id"

.field private static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field private static final TAG_DISABLE_CONTACTS_SEARCH:Ljava/lang/String; = "disable-contacts-search"

.field private static final TAG_DISABLE_KEYGUARD_FEATURES:Ljava/lang/String; = "disable-keyguard-features"

.field private static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field private static final TAG_ENCRYPTION_REQUESTED:Ljava/lang/String; = "encryption-requested"

.field private static final TAG_FORCE_EPHEMERAL_USERS:Ljava/lang/String; = "force_ephemeral_users"

.field private static final TAG_GLOBAL_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global-proxy-exclusion-list"

.field private static final TAG_GLOBAL_PROXY_SPEC:Ljava/lang/String; = "global-proxy-spec"

.field private static final TAG_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "keep-uninstalled-packages"

.field private static final TAG_LONG_SUPPORT_MESSAGE:Ljava/lang/String; = "long-support-message"

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

.field private static final TAG_ORGANIZATION_COLOR:Ljava/lang/String; = "organization-color"

.field private static final TAG_ORGANIZATION_NAME:Ljava/lang/String; = "organization-name"

.field private static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PARENT_ADMIN:Ljava/lang/String; = "parent-admin"

.field private static final TAG_PASSWORD_EXPIRATION_DATE:Ljava/lang/String; = "password-expiration-date"

.field private static final TAG_PASSWORD_EXPIRATION_TIMEOUT:Ljava/lang/String; = "password-expiration-timeout"

.field private static final TAG_PASSWORD_HISTORY_LENGTH:Ljava/lang/String; = "password-history-length"

.field private static final TAG_PASSWORD_QUALITY:Ljava/lang/String; = "password-quality"

.field private static final TAG_PERMITTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "permitted-accessiblity-services"

.field private static final TAG_PERMITTED_IMES:Ljava/lang/String; = "permitted-imes"

.field private static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field private static final TAG_PROVIDER:Ljava/lang/String; = "provider"

.field private static final TAG_REQUIRE_AUTO_TIME:Ljava/lang/String; = "require_auto_time"

.field private static final TAG_SHORT_SUPPORT_MESSAGE:Ljava/lang/String; = "short-support-message"

.field private static final TAG_SPECIFIES_GLOBAL_PROXY:Ljava/lang/String; = "specifies-global-proxy"

.field private static final TAG_STRONG_AUTH_UNLOCK_TIMEOUT:Ljava/lang/String; = "strong-auth-unlock-timeout"

.field private static final TAG_TEST_ONLY_ADMIN:Ljava/lang/String; = "test-only-admin"

.field private static final TAG_TRUST_AGENT_COMPONENT:Ljava/lang/String; = "component"

.field private static final TAG_TRUST_AGENT_COMPONENT_OPTIONS:Ljava/lang/String; = "trust-agent-component-options"

.field private static final TAG_USER_RESTRICTIONS:Ljava/lang/String; = "user-restrictions"


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

.field disableContactsSearch:Z

.field disableScreenCapture:Z

.field disabledKeyguardFeatures:I

.field encryptionRequested:Z

.field forceEphemeralUsers:Z

.field globalProxyExclusionList:Ljava/lang/String;

.field globalProxySpec:Ljava/lang/String;

.field final info:Landroid/app/admin/DeviceAdminInfo;

.field final isParent:Z

.field keepUninstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field longSupportMessage:Ljava/lang/CharSequence;

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field minimumPasswordLength:I

.field minimumPasswordLetters:I

.field minimumPasswordLowerCase:I

.field minimumPasswordNonLetter:I

.field minimumPasswordNumeric:I

.field minimumPasswordSymbols:I

.field minimumPasswordUpperCase:I

.field organizationColor:I

.field organizationName:Ljava/lang/String;

.field parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

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

.field shortSupportMessage:Ljava/lang/CharSequence;

.field specifiesGlobalProxy:Z

.field strongAuthUnlockTimeout:J

.field testOnlyAdmin:Z

.field trustAgentInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field userRestrictions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 686
    const-string/jumbo v0, "#00796B"

    #@3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    #@9
    .line 538
    return-void
.end method

.method constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .locals 8
    .param p1, "_info"    # Landroid/app/admin/DeviceAdminInfo;
    .param p2, "parent"    # Z

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 591
    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@a
    .line 594
    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@c
    .line 597
    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@e
    .line 600
    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@10
    .line 603
    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@12
    .line 606
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@14
    .line 609
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@16
    .line 612
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@18
    .line 615
    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@1a
    .line 618
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@1c
    .line 620
    const-wide/32 v0, 0xf731400

    #@1f
    iput-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    #@21
    .line 623
    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@23
    .line 626
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@25
    .line 629
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@27
    .line 633
    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@29
    .line 635
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@2b
    .line 636
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    #@2d
    .line 637
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@2f
    .line 638
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@31
    .line 639
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    #@33
    .line 640
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@35
    .line 641
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@37
    .line 642
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@39
    .line 643
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    #@3b
    .line 655
    new-instance v0, Landroid/util/ArraySet;

    #@3d
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@42
    .line 671
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@44
    .line 672
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@46
    .line 673
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@48
    .line 675
    new-instance v0, Landroid/util/ArrayMap;

    #@4a
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@4d
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    #@4f
    .line 682
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    #@51
    .line 683
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    #@53
    .line 687
    sget v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    #@55
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    #@57
    .line 690
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@59
    .line 693
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@5b
    .line 694
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    #@5d
    .line 692
    return-void
.end method

.method private getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap",
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
    .line 1138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 1140
    .local v1, "outerDepthDAM":I
    new-instance v2, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@a
    .line 1141
    .local v2, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
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
    .line 1142
    if-ne v5, v9, :cond_1

    #@13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v6

    #@17
    if-le v6, v1, :cond_3

    #@19
    .line 1143
    :cond_1
    if-eq v5, v9, :cond_0

    #@1b
    const/4 v6, 0x4

    #@1c
    if-eq v5, v6, :cond_0

    #@1e
    .line 1146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 1147
    .local v3, "tagDAM":Ljava/lang/String;
    const-string/jumbo v6, "component"

    #@25
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_2

    #@2b
    .line 1148
    const-string/jumbo v6, "value"

    #@2e
    const/4 v7, 0x0

    #@2f
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 1149
    .local v0, "component":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@36
    move-result-object v4

    #@37
    .line 1150
    .local v4, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    invoke-virtual {v2, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    goto :goto_0

    #@3b
    .line 1152
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
    .line 1155
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
    .line 1180
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 1182
    .local v0, "outerDepthDAM":I
    const/4 v2, 0x0

    #@7
    .line 1183
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
    .line 1184
    if-ne v4, v8, :cond_1

    #@10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v5

    #@14
    if-le v5, v0, :cond_4

    #@16
    .line 1185
    :cond_1
    if-eq v4, v8, :cond_0

    #@18
    const/4 v5, 0x4

    #@19
    if-eq v4, v5, :cond_0

    #@1b
    .line 1188
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1189
    .local v3, "tagDAM":Ljava/lang/String;
    const-string/jumbo v5, "provider"

    #@22
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_3

    #@28
    .line 1190
    const-string/jumbo v5, "value"

    #@2b
    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 1191
    .local v1, "provider":Ljava/lang/String;
    if-nez v2, :cond_2

    #@31
    .line 1192
    new-instance v2, Ljava/util/ArrayList;

    #@33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@36
    .line 1194
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 1196
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
    .line 1199
    .end local v3    # "tagDAM":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method private getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .locals 8
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
    const/4 v7, 0x3

    #@1
    .line 1160
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 1162
    .local v0, "outerDepthDAM":I
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    #@b
    .line 1163
    .local v1, "result":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@e
    move-result v3

    #@f
    .local v3, "typeDAM":I
    const/4 v4, 0x1

    #@10
    if-eq v3, v4, :cond_3

    #@12
    .line 1164
    if-ne v3, v7, :cond_1

    #@14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@17
    move-result v4

    #@18
    if-le v4, v0, :cond_3

    #@1a
    .line 1165
    :cond_1
    if-eq v3, v7, :cond_0

    #@1c
    const/4 v4, 0x4

    #@1d
    if-eq v3, v4, :cond_0

    #@1f
    .line 1168
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 1169
    .local v2, "tagDAM":Ljava/lang/String;
    const-string/jumbo v4, "trust-agent-component-options"

    #@26
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_2

    #@2c
    .line 1170
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@2f
    move-result-object v4

    #@30
    iput-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@32
    goto :goto_0

    #@33
    .line 1172
    :cond_2
    const-string/jumbo v4, "DevicePolicyManagerService"

    #@36
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v6, "Unknown tag under "

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    const-string/jumbo v6, ": "

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_0

    #@59
    .line 1175
    .end local v2    # "tagDAM":Ljava/lang/String;
    :cond_3
    return-object v1
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
    .line 1118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 1120
    .local v0, "outerDepthDAM":I
    new-instance v1, Landroid/util/ArraySet;

    #@7
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 1121
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
    .line 1122
    if-ne v3, v7, :cond_1

    #@13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v4

    #@17
    if-le v4, v0, :cond_3

    #@19
    .line 1123
    :cond_1
    if-eq v3, v7, :cond_0

    #@1b
    const/4 v4, 0x4

    #@1c
    if-eq v3, v4, :cond_0

    #@1e
    .line 1126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 1127
    .local v2, "tagDAM":Ljava/lang/String;
    const-string/jumbo v4, "account-type"

    #@25
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_2

    #@2b
    .line 1128
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
    .line 1130
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
    .line 1133
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
    .line 1093
    new-instance v4, Ljava/util/ArrayList;

    #@4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 1094
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@a
    move-result v0

    #@b
    .line 1096
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
    .line 1097
    if-ne v2, v8, :cond_1

    #@14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@17
    move-result v5

    #@18
    if-le v5, v0, :cond_4

    #@1a
    .line 1098
    :cond_1
    if-eq v2, v8, :cond_0

    #@1c
    const/4 v5, 0x4

    #@1d
    if-eq v2, v5, :cond_0

    #@1f
    .line 1101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 1102
    .local v1, "outerTag":Ljava/lang/String;
    const-string/jumbo v5, "item"

    #@26
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 1103
    const-string/jumbo v5, "value"

    #@2f
    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 1104
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@35
    .line 1105
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 1107
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
    .line 1110
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
    .line 1113
    .end local v1    # "outerTag":Ljava/lang/String;
    :cond_4
    return-object v4
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1214
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
    .line 1215
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    const-string/jumbo v2, "testOnlyAdmin="

    #@16
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 1216
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    #@1b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@1e
    .line 1217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    const-string/jumbo v2, "policies:"

    #@24
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27
    .line 1218
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@29
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    #@2c
    move-result-object v1

    #@2d
    .line 1219
    .local v1, "pols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    if-eqz v1, :cond_0

    #@2f
    .line 1220
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v2

    #@34
    if-ge v0, v2, :cond_0

    #@36
    .line 1221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    const-string/jumbo v2, "  "

    #@3c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@45
    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    #@47
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a
    .line 1220
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 1224
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    const-string/jumbo v2, "passwordQuality=0x"

    #@53
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 1225
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@58
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 1226
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    const-string/jumbo v2, "minimumPasswordLength="

    #@65
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    .line 1227
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@6a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@6d
    .line 1228
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    const-string/jumbo v2, "passwordHistoryLength="

    #@73
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    .line 1229
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@78
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@7b
    .line 1230
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    const-string/jumbo v2, "minimumPasswordUpperCase="

    #@81
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    .line 1231
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@86
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@89
    .line 1232
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    const-string/jumbo v2, "minimumPasswordLowerCase="

    #@8f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    .line 1233
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@94
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@97
    .line 1234
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    const-string/jumbo v2, "minimumPasswordLetters="

    #@9d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    .line 1235
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@a2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@a5
    .line 1236
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string/jumbo v2, "minimumPasswordNumeric="

    #@ab
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    .line 1237
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@b0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@b3
    .line 1238
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    const-string/jumbo v2, "minimumPasswordSymbols="

    #@b9
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bc
    .line 1239
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@be
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@c1
    .line 1240
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c4
    const-string/jumbo v2, "minimumPasswordNonLetter="

    #@c7
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ca
    .line 1241
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@cc
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@cf
    .line 1242
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    const-string/jumbo v2, "maximumTimeToUnlock="

    #@d5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    .line 1243
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@da
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@dd
    .line 1244
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0
    const-string/jumbo v2, "strongAuthUnlockTimeout="

    #@e3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e6
    .line 1245
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    #@e8
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@eb
    .line 1246
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    const-string/jumbo v2, "maximumFailedPasswordsForWipe="

    #@f1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f4
    .line 1247
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@f6
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@f9
    .line 1248
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    const-string/jumbo v2, "specifiesGlobalProxy="

    #@ff
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    .line 1249
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@104
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@107
    .line 1250
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10a
    const-string/jumbo v2, "passwordExpirationTimeout="

    #@10d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@110
    .line 1251
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@112
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@115
    .line 1252
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@118
    const-string/jumbo v2, "passwordExpirationDate="

    #@11b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11e
    .line 1253
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@120
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@123
    .line 1254
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@125
    if-eqz v2, :cond_1

    #@127
    .line 1255
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12a
    const-string/jumbo v2, "globalProxySpec="

    #@12d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@130
    .line 1256
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@132
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@135
    .line 1258
    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@137
    if-eqz v2, :cond_2

    #@139
    .line 1259
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    const-string/jumbo v2, "globalProxyEclusionList="

    #@13f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142
    .line 1260
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@144
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@147
    .line 1262
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14a
    const-string/jumbo v2, "encryptionRequested="

    #@14d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@150
    .line 1263
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@152
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@155
    .line 1264
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@158
    const-string/jumbo v2, "disableCamera="

    #@15b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15e
    .line 1265
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@160
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@163
    .line 1266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@166
    const-string/jumbo v2, "disableCallerId="

    #@169
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    .line 1267
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@16e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@171
    .line 1268
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@174
    const-string/jumbo v2, "disableContactsSearch="

    #@177
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17a
    .line 1269
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    #@17c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@17f
    .line 1270
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@182
    const-string/jumbo v2, "disableBluetoothContactSharing="

    #@185
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@188
    .line 1271
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@18a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@18d
    .line 1272
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@190
    const-string/jumbo v2, "disableScreenCapture="

    #@193
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@196
    .line 1273
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@198
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@19b
    .line 1274
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19e
    const-string/jumbo v2, "requireAutoTime="

    #@1a1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a4
    .line 1275
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@1a6
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@1a9
    .line 1276
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ac
    const-string/jumbo v2, "forceEphemeralUsers="

    #@1af
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b2
    .line 1277
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    #@1b4
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@1b7
    .line 1278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ba
    const-string/jumbo v2, "disabledKeyguardFeatures="

    #@1bd
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c0
    .line 1279
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@1c2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@1c5
    .line 1280
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c8
    const-string/jumbo v2, "crossProfileWidgetProviders="

    #@1cb
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ce
    .line 1281
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@1d0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1d3
    .line 1282
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@1d5
    if-eqz v2, :cond_3

    #@1d7
    .line 1283
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1da
    const-string/jumbo v2, "permittedAccessibilityServices="

    #@1dd
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e0
    .line 1284
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@1e2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1e5
    .line 1286
    :cond_3
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@1e7
    if-eqz v2, :cond_4

    #@1e9
    .line 1287
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ec
    const-string/jumbo v2, "permittedInputMethods="

    #@1ef
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f2
    .line 1288
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@1f4
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1f7
    .line 1290
    :cond_4
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    #@1f9
    if-eqz v2, :cond_5

    #@1fb
    .line 1291
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fe
    const-string/jumbo v2, "keepUninstalledPackages="

    #@201
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@204
    .line 1292
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    #@206
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@209
    .line 1294
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20c
    const-string/jumbo v2, "organizationColor="

    #@20f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@212
    .line 1295
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    #@214
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@217
    .line 1296
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@219
    if-eqz v2, :cond_6

    #@21b
    .line 1297
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21e
    const-string/jumbo v2, "organizationName="

    #@221
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@224
    .line 1298
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@226
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@229
    .line 1300
    :cond_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22c
    const-string/jumbo v2, "userRestrictions:"

    #@22f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@232
    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    #@234
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@237
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v2

    #@23b
    const-string/jumbo v3, "  "

    #@23e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    move-result-object v2

    #@242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@245
    move-result-object v2

    #@246
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@248
    invoke-static {p2, v2, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    #@24b
    .line 1302
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24e
    const-string/jumbo v2, "isParent="

    #@251
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@254
    .line 1303
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    #@256
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@259
    .line 1304
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@25b
    if-eqz v2, :cond_7

    #@25d
    .line 1305
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@260
    const-string/jumbo v2, "parentAdmin:"

    #@263
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@266
    .line 1306
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@268
    new-instance v3, Ljava/lang/StringBuilder;

    #@26a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@270
    move-result-object v3

    #@271
    const-string/jumbo v4, "  "

    #@274
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@277
    move-result-object v3

    #@278
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27b
    move-result-object v3

    #@27c
    invoke-virtual {v2, v3, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@27f
    .line 1213
    :cond_7
    return-void
.end method

.method ensureUserRestrictions()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1208
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@b
    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@d
    return-object v0
.end method

.method getParentActiveAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 698
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@9
    .line 700
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 701
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@11
    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    #@14
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@16
    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@18
    return-object v0

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 698
    goto :goto_0
.end method

.method getUid()I
    .locals 1

    #@0
    .prologue
    .line 710
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
    .locals 1

    #@0
    .prologue
    .line 713
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
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@d
    move-result v0

    #@e
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method hasParentActiveAdmin()Z
    .locals 1

    #@0
    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method hasUserRestrictions()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1203
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@7
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v9, 0x4

    #@3
    const/4 v8, 0x0

    #@4
    .line 950
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@7
    move-result v0

    #@8
    .line 952
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@b
    move-result v2

    #@c
    .local v2, "type":I
    if-eq v2, v4, :cond_2e

    #@e
    .line 953
    if-ne v2, v10, :cond_1

    #@10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v3

    #@14
    if-le v3, v0, :cond_2e

    #@16
    .line 954
    :cond_1
    if-eq v2, v10, :cond_0

    #@18
    if-eq v2, v9, :cond_0

    #@1a
    .line 957
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 958
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v3, "policies"

    #@21
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 959
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@29
    invoke-virtual {v3, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2c
    goto :goto_0

    #@2d
    .line 960
    :cond_2
    const-string/jumbo v3, "password-quality"

    #@30
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_3

    #@36
    .line 962
    const-string/jumbo v3, "value"

    #@39
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 961
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@40
    move-result v3

    #@41
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@43
    goto :goto_0

    #@44
    .line 963
    :cond_3
    const-string/jumbo v3, "min-password-length"

    #@47
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_4

    #@4d
    .line 965
    const-string/jumbo v3, "value"

    #@50
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    .line 964
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@57
    move-result v3

    #@58
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@5a
    goto :goto_0

    #@5b
    .line 966
    :cond_4
    const-string/jumbo v3, "password-history-length"

    #@5e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_5

    #@64
    .line 968
    const-string/jumbo v3, "value"

    #@67
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    .line 967
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6e
    move-result v3

    #@6f
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@71
    goto :goto_0

    #@72
    .line 969
    :cond_5
    const-string/jumbo v3, "min-password-uppercase"

    #@75
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v3

    #@79
    if-eqz v3, :cond_6

    #@7b
    .line 971
    const-string/jumbo v3, "value"

    #@7e
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    .line 970
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@85
    move-result v3

    #@86
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@88
    goto :goto_0

    #@89
    .line 972
    :cond_6
    const-string/jumbo v3, "min-password-lowercase"

    #@8c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_7

    #@92
    .line 974
    const-string/jumbo v3, "value"

    #@95
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    .line 973
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9c
    move-result v3

    #@9d
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@9f
    goto/16 :goto_0

    #@a1
    .line 975
    :cond_7
    const-string/jumbo v3, "min-password-letters"

    #@a4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v3

    #@a8
    if-eqz v3, :cond_8

    #@aa
    .line 977
    const-string/jumbo v3, "value"

    #@ad
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b0
    move-result-object v3

    #@b1
    .line 976
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b4
    move-result v3

    #@b5
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@b7
    goto/16 :goto_0

    #@b9
    .line 978
    :cond_8
    const-string/jumbo v3, "min-password-numeric"

    #@bc
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v3

    #@c0
    if-eqz v3, :cond_9

    #@c2
    .line 980
    const-string/jumbo v3, "value"

    #@c5
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c8
    move-result-object v3

    #@c9
    .line 979
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@cc
    move-result v3

    #@cd
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@cf
    goto/16 :goto_0

    #@d1
    .line 981
    :cond_9
    const-string/jumbo v3, "min-password-symbols"

    #@d4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v3

    #@d8
    if-eqz v3, :cond_a

    #@da
    .line 983
    const-string/jumbo v3, "value"

    #@dd
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e0
    move-result-object v3

    #@e1
    .line 982
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e4
    move-result v3

    #@e5
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@e7
    goto/16 :goto_0

    #@e9
    .line 984
    :cond_a
    const-string/jumbo v3, "min-password-nonletter"

    #@ec
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v3

    #@f0
    if-eqz v3, :cond_b

    #@f2
    .line 986
    const-string/jumbo v3, "value"

    #@f5
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f8
    move-result-object v3

    #@f9
    .line 985
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@fc
    move-result v3

    #@fd
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@ff
    goto/16 :goto_0

    #@101
    .line 987
    :cond_b
    const-string/jumbo v3, "max-time-to-unlock"

    #@104
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@107
    move-result v3

    #@108
    if-eqz v3, :cond_c

    #@10a
    .line 989
    const-string/jumbo v3, "value"

    #@10d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@110
    move-result-object v3

    #@111
    .line 988
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@114
    move-result-wide v6

    #@115
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@117
    goto/16 :goto_0

    #@119
    .line 990
    :cond_c
    const-string/jumbo v3, "strong-auth-unlock-timeout"

    #@11c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v3

    #@120
    if-eqz v3, :cond_d

    #@122
    .line 992
    const-string/jumbo v3, "value"

    #@125
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@128
    move-result-object v3

    #@129
    .line 991
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@12c
    move-result-wide v6

    #@12d
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    #@12f
    goto/16 :goto_0

    #@131
    .line 993
    :cond_d
    const-string/jumbo v3, "max-failed-password-wipe"

    #@134
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@137
    move-result v3

    #@138
    if-eqz v3, :cond_e

    #@13a
    .line 995
    const-string/jumbo v3, "value"

    #@13d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@140
    move-result-object v3

    #@141
    .line 994
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@144
    move-result v3

    #@145
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@147
    goto/16 :goto_0

    #@149
    .line 996
    :cond_e
    const-string/jumbo v3, "specifies-global-proxy"

    #@14c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14f
    move-result v3

    #@150
    if-eqz v3, :cond_f

    #@152
    .line 998
    const-string/jumbo v3, "value"

    #@155
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@158
    move-result-object v3

    #@159
    .line 997
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@15c
    move-result v3

    #@15d
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@15f
    goto/16 :goto_0

    #@161
    .line 999
    :cond_f
    const-string/jumbo v3, "global-proxy-spec"

    #@164
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@167
    move-result v3

    #@168
    if-eqz v3, :cond_10

    #@16a
    .line 1001
    const-string/jumbo v3, "value"

    #@16d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@170
    move-result-object v3

    #@171
    .line 1000
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@173
    goto/16 :goto_0

    #@175
    .line 1002
    :cond_10
    const-string/jumbo v3, "global-proxy-exclusion-list"

    #@178
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17b
    move-result v3

    #@17c
    if-eqz v3, :cond_11

    #@17e
    .line 1004
    const-string/jumbo v3, "value"

    #@181
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@184
    move-result-object v3

    #@185
    .line 1003
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@187
    goto/16 :goto_0

    #@189
    .line 1005
    :cond_11
    const-string/jumbo v3, "password-expiration-timeout"

    #@18c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18f
    move-result v3

    #@190
    if-eqz v3, :cond_12

    #@192
    .line 1007
    const-string/jumbo v3, "value"

    #@195
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@198
    move-result-object v3

    #@199
    .line 1006
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@19c
    move-result-wide v6

    #@19d
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@19f
    goto/16 :goto_0

    #@1a1
    .line 1008
    :cond_12
    const-string/jumbo v3, "password-expiration-date"

    #@1a4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a7
    move-result v3

    #@1a8
    if-eqz v3, :cond_13

    #@1aa
    .line 1010
    const-string/jumbo v3, "value"

    #@1ad
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b0
    move-result-object v3

    #@1b1
    .line 1009
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1b4
    move-result-wide v6

    #@1b5
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@1b7
    goto/16 :goto_0

    #@1b9
    .line 1011
    :cond_13
    const-string/jumbo v3, "encryption-requested"

    #@1bc
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bf
    move-result v3

    #@1c0
    if-eqz v3, :cond_14

    #@1c2
    .line 1013
    const-string/jumbo v3, "value"

    #@1c5
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c8
    move-result-object v3

    #@1c9
    .line 1012
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1cc
    move-result v3

    #@1cd
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@1cf
    goto/16 :goto_0

    #@1d1
    .line 1014
    :cond_14
    const-string/jumbo v3, "test-only-admin"

    #@1d4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d7
    move-result v3

    #@1d8
    if-eqz v3, :cond_15

    #@1da
    .line 1016
    const-string/jumbo v3, "value"

    #@1dd
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e0
    move-result-object v3

    #@1e1
    .line 1015
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1e4
    move-result v3

    #@1e5
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    #@1e7
    goto/16 :goto_0

    #@1e9
    .line 1017
    :cond_15
    const-string/jumbo v3, "disable-camera"

    #@1ec
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ef
    move-result v3

    #@1f0
    if-eqz v3, :cond_16

    #@1f2
    .line 1019
    const-string/jumbo v3, "value"

    #@1f5
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f8
    move-result-object v3

    #@1f9
    .line 1018
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1fc
    move-result v3

    #@1fd
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@1ff
    goto/16 :goto_0

    #@201
    .line 1020
    :cond_16
    const-string/jumbo v3, "disable-caller-id"

    #@204
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@207
    move-result v3

    #@208
    if-eqz v3, :cond_17

    #@20a
    .line 1022
    const-string/jumbo v3, "value"

    #@20d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@210
    move-result-object v3

    #@211
    .line 1021
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@214
    move-result v3

    #@215
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@217
    goto/16 :goto_0

    #@219
    .line 1023
    :cond_17
    const-string/jumbo v3, "disable-contacts-search"

    #@21c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21f
    move-result v3

    #@220
    if-eqz v3, :cond_18

    #@222
    .line 1025
    const-string/jumbo v3, "value"

    #@225
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@228
    move-result-object v3

    #@229
    .line 1024
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@22c
    move-result v3

    #@22d
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    #@22f
    goto/16 :goto_0

    #@231
    .line 1026
    :cond_18
    const-string/jumbo v3, "disable-bt-contacts-sharing"

    #@234
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@237
    move-result v3

    #@238
    if-eqz v3, :cond_19

    #@23a
    .line 1028
    const-string/jumbo v3, "value"

    #@23d
    .line 1027
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@240
    move-result-object v3

    #@241
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@244
    move-result v3

    #@245
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@247
    goto/16 :goto_0

    #@249
    .line 1029
    :cond_19
    const-string/jumbo v3, "disable-screen-capture"

    #@24c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24f
    move-result v3

    #@250
    if-eqz v3, :cond_1a

    #@252
    .line 1031
    const-string/jumbo v3, "value"

    #@255
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@258
    move-result-object v3

    #@259
    .line 1030
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@25c
    move-result v3

    #@25d
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@25f
    goto/16 :goto_0

    #@261
    .line 1032
    :cond_1a
    const-string/jumbo v3, "require_auto_time"

    #@264
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@267
    move-result v3

    #@268
    if-eqz v3, :cond_1b

    #@26a
    .line 1034
    const-string/jumbo v3, "value"

    #@26d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@270
    move-result-object v3

    #@271
    .line 1033
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@274
    move-result v3

    #@275
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@277
    goto/16 :goto_0

    #@279
    .line 1035
    :cond_1b
    const-string/jumbo v3, "force_ephemeral_users"

    #@27c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27f
    move-result v3

    #@280
    if-eqz v3, :cond_1c

    #@282
    .line 1037
    const-string/jumbo v3, "value"

    #@285
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@288
    move-result-object v3

    #@289
    .line 1036
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@28c
    move-result v3

    #@28d
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    #@28f
    goto/16 :goto_0

    #@291
    .line 1038
    :cond_1c
    const-string/jumbo v3, "disable-keyguard-features"

    #@294
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@297
    move-result v3

    #@298
    if-eqz v3, :cond_1d

    #@29a
    .line 1040
    const-string/jumbo v3, "value"

    #@29d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2a0
    move-result-object v3

    #@2a1
    .line 1039
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a4
    move-result v3

    #@2a5
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@2a7
    goto/16 :goto_0

    #@2a9
    .line 1041
    :cond_1d
    const-string/jumbo v3, "disable-account-management"

    #@2ac
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2af
    move-result v3

    #@2b0
    if-eqz v3, :cond_1e

    #@2b2
    .line 1042
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readDisableAccountInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/Set;

    #@2b5
    move-result-object v3

    #@2b6
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@2b8
    goto/16 :goto_0

    #@2ba
    .line 1043
    :cond_1e
    const-string/jumbo v3, "manage-trust-agent-features"

    #@2bd
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c0
    move-result v3

    #@2c1
    if-eqz v3, :cond_1f

    #@2c3
    .line 1044
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;

    #@2c6
    move-result-object v3

    #@2c7
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    #@2c9
    goto/16 :goto_0

    #@2cb
    .line 1045
    :cond_1f
    const-string/jumbo v3, "cross-profile-widget-providers"

    #@2ce
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d1
    move-result v3

    #@2d2
    if-eqz v3, :cond_20

    #@2d4
    .line 1046
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getCrossProfileWidgetProviders(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@2d7
    move-result-object v3

    #@2d8
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@2da
    goto/16 :goto_0

    #@2dc
    .line 1047
    :cond_20
    const-string/jumbo v3, "permitted-accessiblity-services"

    #@2df
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e2
    move-result v3

    #@2e3
    if-eqz v3, :cond_21

    #@2e5
    .line 1048
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@2e8
    move-result-object v3

    #@2e9
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@2eb
    goto/16 :goto_0

    #@2ed
    .line 1049
    :cond_21
    const-string/jumbo v3, "permitted-imes"

    #@2f0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f3
    move-result v3

    #@2f4
    if-eqz v3, :cond_22

    #@2f6
    .line 1050
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@2f9
    move-result-object v3

    #@2fa
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@2fc
    goto/16 :goto_0

    #@2fe
    .line 1051
    :cond_22
    const-string/jumbo v3, "keep-uninstalled-packages"

    #@301
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@304
    move-result v3

    #@305
    if-eqz v3, :cond_23

    #@307
    .line 1052
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@30a
    move-result-object v3

    #@30b
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    #@30d
    goto/16 :goto_0

    #@30f
    .line 1053
    :cond_23
    const-string/jumbo v3, "user-restrictions"

    #@312
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@315
    move-result v3

    #@316
    if-eqz v3, :cond_24

    #@318
    .line 1054
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->ensureUserRestrictions()Landroid/os/Bundle;

    #@31b
    move-result-object v3

    #@31c
    invoke-static {p1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    #@31f
    goto/16 :goto_0

    #@321
    .line 1055
    :cond_24
    const-string/jumbo v3, "short-support-message"

    #@324
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@327
    move-result v3

    #@328
    if-eqz v3, :cond_26

    #@32a
    .line 1056
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@32d
    move-result v2

    #@32e
    .line 1057
    if-ne v2, v9, :cond_25

    #@330
    .line 1058
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@333
    move-result-object v3

    #@334
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    #@336
    goto/16 :goto_0

    #@338
    .line 1060
    :cond_25
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@33b
    const-string/jumbo v5, "Missing text when loading short support message"

    #@33e
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@341
    goto/16 :goto_0

    #@343
    .line 1062
    :cond_26
    const-string/jumbo v3, "long-support-message"

    #@346
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@349
    move-result v3

    #@34a
    if-eqz v3, :cond_28

    #@34c
    .line 1063
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@34f
    move-result v2

    #@350
    .line 1064
    if-ne v2, v9, :cond_27

    #@352
    .line 1065
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@355
    move-result-object v3

    #@356
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    #@358
    goto/16 :goto_0

    #@35a
    .line 1067
    :cond_27
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@35d
    const-string/jumbo v5, "Missing text when loading long support message"

    #@360
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@363
    goto/16 :goto_0

    #@365
    .line 1069
    :cond_28
    const-string/jumbo v3, "parent-admin"

    #@368
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36b
    move-result v3

    #@36c
    if-eqz v3, :cond_2a

    #@36e
    .line 1070
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    #@370
    if-eqz v3, :cond_29

    #@372
    const/4 v3, 0x0

    #@373
    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@376
    .line 1072
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@378
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@37a
    invoke-direct {v3, v5, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    #@37d
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@37f
    .line 1073
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@381
    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@384
    goto/16 :goto_0

    #@386
    :cond_29
    move v3, v4

    #@387
    .line 1070
    goto :goto_1

    #@388
    .line 1074
    :cond_2a
    const-string/jumbo v3, "organization-color"

    #@38b
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38e
    move-result v3

    #@38f
    if-eqz v3, :cond_2b

    #@391
    .line 1076
    const-string/jumbo v3, "value"

    #@394
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@397
    move-result-object v3

    #@398
    .line 1075
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@39b
    move-result v3

    #@39c
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    #@39e
    goto/16 :goto_0

    #@3a0
    .line 1077
    :cond_2b
    const-string/jumbo v3, "organization-name"

    #@3a3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a6
    move-result v3

    #@3a7
    if-eqz v3, :cond_2d

    #@3a9
    .line 1078
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3ac
    move-result v2

    #@3ad
    .line 1079
    if-ne v2, v9, :cond_2c

    #@3af
    .line 1080
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@3b2
    move-result-object v3

    #@3b3
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@3b5
    goto/16 :goto_0

    #@3b7
    .line 1082
    :cond_2c
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@3ba
    const-string/jumbo v5, "Missing text when loading organization name"

    #@3bd
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c0
    goto/16 :goto_0

    #@3c2
    .line 1085
    :cond_2d
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@3c5
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3ca
    const-string/jumbo v6, "Unknown admin tag: "

    #@3cd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v5

    #@3d1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d4
    move-result-object v5

    #@3d5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d8
    move-result-object v5

    #@3d9
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3dc
    .line 1086
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3df
    goto/16 :goto_0

    #@3e1
    .line 949
    .end local v1    # "tag":Ljava/lang/String;
    :cond_2e
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
    .line 935
    if-nez p3, :cond_0

    #@3
    .line 936
    return-void

    #@4
    .line 939
    :cond_0
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 940
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
    .line 941
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "item"

    #@1a
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 942
    const-string/jumbo v2, "value"

    #@20
    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 943
    const-string/jumbo v2, "item"

    #@26
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    goto :goto_0

    #@2a
    .line 945
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d
    .line 934
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
    .line 718
    const-string/jumbo v10, "policies"

    #@3
    const/4 v11, 0x0

    #@4
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 719
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@9
    invoke-virtual {v10, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@c
    .line 720
    const-string/jumbo v10, "policies"

    #@f
    const/4 v11, 0x0

    #@10
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13
    .line 721
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@15
    if-eqz v10, :cond_7

    #@17
    .line 722
    const-string/jumbo v10, "password-quality"

    #@1a
    const/4 v11, 0x0

    #@1b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 723
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
    .line 724
    const-string/jumbo v10, "password-quality"

    #@2e
    const/4 v11, 0x0

    #@2f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 725
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@34
    if-eqz v10, :cond_0

    #@36
    .line 726
    const-string/jumbo v10, "min-password-length"

    #@39
    const/4 v11, 0x0

    #@3a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d
    .line 727
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
    .line 728
    const-string/jumbo v10, "min-password-length"

    #@4d
    const/4 v11, 0x0

    #@4e
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 730
    :cond_0
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@53
    if-eqz v10, :cond_1

    #@55
    .line 731
    const-string/jumbo v10, "password-history-length"

    #@58
    const/4 v11, 0x0

    #@59
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5c
    .line 732
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
    .line 733
    const-string/jumbo v10, "password-history-length"

    #@6c
    const/4 v11, 0x0

    #@6d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@70
    .line 735
    :cond_1
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@72
    if-eqz v10, :cond_2

    #@74
    .line 736
    const-string/jumbo v10, "min-password-uppercase"

    #@77
    const/4 v11, 0x0

    #@78
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7b
    .line 737
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
    .line 738
    const-string/jumbo v10, "min-password-uppercase"

    #@8b
    const/4 v11, 0x0

    #@8c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8f
    .line 740
    :cond_2
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@91
    if-eqz v10, :cond_3

    #@93
    .line 741
    const-string/jumbo v10, "min-password-lowercase"

    #@96
    const/4 v11, 0x0

    #@97
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9a
    .line 742
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
    .line 743
    const-string/jumbo v10, "min-password-lowercase"

    #@aa
    const/4 v11, 0x0

    #@ab
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ae
    .line 745
    :cond_3
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@b0
    const/4 v11, 0x1

    #@b1
    if-eq v10, v11, :cond_4

    #@b3
    .line 746
    const-string/jumbo v10, "min-password-letters"

    #@b6
    const/4 v11, 0x0

    #@b7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ba
    .line 747
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
    .line 748
    const-string/jumbo v10, "min-password-letters"

    #@ca
    const/4 v11, 0x0

    #@cb
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ce
    .line 750
    :cond_4
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@d0
    const/4 v11, 0x1

    #@d1
    if-eq v10, v11, :cond_5

    #@d3
    .line 751
    const-string/jumbo v10, "min-password-numeric"

    #@d6
    const/4 v11, 0x0

    #@d7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@da
    .line 752
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
    .line 753
    const-string/jumbo v10, "min-password-numeric"

    #@ea
    const/4 v11, 0x0

    #@eb
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ee
    .line 755
    :cond_5
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@f0
    const/4 v11, 0x1

    #@f1
    if-eq v10, v11, :cond_6

    #@f3
    .line 756
    const-string/jumbo v10, "min-password-symbols"

    #@f6
    const/4 v11, 0x0

    #@f7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@fa
    .line 757
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
    .line 758
    const-string/jumbo v10, "min-password-symbols"

    #@10a
    const/4 v11, 0x0

    #@10b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10e
    .line 760
    :cond_6
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@110
    if-lez v10, :cond_7

    #@112
    .line 761
    const-string/jumbo v10, "min-password-nonletter"

    #@115
    const/4 v11, 0x0

    #@116
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@119
    .line 762
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
    .line 763
    const-string/jumbo v10, "min-password-nonletter"

    #@129
    const/4 v11, 0x0

    #@12a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12d
    .line 766
    :cond_7
    iget-wide v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@12f
    const-wide/16 v12, 0x0

    #@131
    cmp-long v10, v10, v12

    #@133
    if-eqz v10, :cond_8

    #@135
    .line 767
    const-string/jumbo v10, "max-time-to-unlock"

    #@138
    const/4 v11, 0x0

    #@139
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13c
    .line 768
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
    .line 769
    const-string/jumbo v10, "max-time-to-unlock"

    #@14c
    const/4 v11, 0x0

    #@14d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@150
    .line 771
    :cond_8
    iget-wide v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    #@152
    const-wide/32 v12, 0xf731400

    #@155
    cmp-long v10, v10, v12

    #@157
    if-eqz v10, :cond_9

    #@159
    .line 772
    const-string/jumbo v10, "strong-auth-unlock-timeout"

    #@15c
    const/4 v11, 0x0

    #@15d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@160
    .line 773
    const-string/jumbo v10, "value"

    #@163
    iget-wide v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    #@165
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@168
    move-result-object v11

    #@169
    const/4 v12, 0x0

    #@16a
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16d
    .line 774
    const-string/jumbo v10, "strong-auth-unlock-timeout"

    #@170
    const/4 v11, 0x0

    #@171
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@174
    .line 776
    :cond_9
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@176
    if-eqz v10, :cond_a

    #@178
    .line 777
    const-string/jumbo v10, "max-failed-password-wipe"

    #@17b
    const/4 v11, 0x0

    #@17c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17f
    .line 778
    const-string/jumbo v10, "value"

    #@182
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@184
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@187
    move-result-object v11

    #@188
    const/4 v12, 0x0

    #@189
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18c
    .line 779
    const-string/jumbo v10, "max-failed-password-wipe"

    #@18f
    const/4 v11, 0x0

    #@190
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@193
    .line 781
    :cond_a
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@195
    if-eqz v10, :cond_c

    #@197
    .line 782
    const-string/jumbo v10, "specifies-global-proxy"

    #@19a
    const/4 v11, 0x0

    #@19b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19e
    .line 783
    const-string/jumbo v10, "value"

    #@1a1
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@1a3
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@1a6
    move-result-object v11

    #@1a7
    const/4 v12, 0x0

    #@1a8
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1ab
    .line 784
    const-string/jumbo v10, "specifies-global-proxy"

    #@1ae
    const/4 v11, 0x0

    #@1af
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b2
    .line 785
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@1b4
    if-eqz v10, :cond_b

    #@1b6
    .line 786
    const-string/jumbo v10, "global-proxy-spec"

    #@1b9
    const/4 v11, 0x0

    #@1ba
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1bd
    .line 787
    const-string/jumbo v10, "value"

    #@1c0
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@1c2
    const/4 v12, 0x0

    #@1c3
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c6
    .line 788
    const-string/jumbo v10, "global-proxy-spec"

    #@1c9
    const/4 v11, 0x0

    #@1ca
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1cd
    .line 790
    :cond_b
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@1cf
    if-eqz v10, :cond_c

    #@1d1
    .line 791
    const-string/jumbo v10, "global-proxy-exclusion-list"

    #@1d4
    const/4 v11, 0x0

    #@1d5
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d8
    .line 792
    const-string/jumbo v10, "value"

    #@1db
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@1dd
    const/4 v12, 0x0

    #@1de
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e1
    .line 793
    const-string/jumbo v10, "global-proxy-exclusion-list"

    #@1e4
    const/4 v11, 0x0

    #@1e5
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e8
    .line 796
    :cond_c
    iget-wide v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@1ea
    const-wide/16 v12, 0x0

    #@1ec
    cmp-long v10, v10, v12

    #@1ee
    if-eqz v10, :cond_d

    #@1f0
    .line 797
    const-string/jumbo v10, "password-expiration-timeout"

    #@1f3
    const/4 v11, 0x0

    #@1f4
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f7
    .line 798
    const-string/jumbo v10, "value"

    #@1fa
    iget-wide v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@1fc
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1ff
    move-result-object v11

    #@200
    const/4 v12, 0x0

    #@201
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@204
    .line 799
    const-string/jumbo v10, "password-expiration-timeout"

    #@207
    const/4 v11, 0x0

    #@208
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@20b
    .line 801
    :cond_d
    iget-wide v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@20d
    const-wide/16 v12, 0x0

    #@20f
    cmp-long v10, v10, v12

    #@211
    if-eqz v10, :cond_e

    #@213
    .line 802
    const-string/jumbo v10, "password-expiration-date"

    #@216
    const/4 v11, 0x0

    #@217
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@21a
    .line 803
    const-string/jumbo v10, "value"

    #@21d
    iget-wide v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@21f
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@222
    move-result-object v11

    #@223
    const/4 v12, 0x0

    #@224
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@227
    .line 804
    const-string/jumbo v10, "password-expiration-date"

    #@22a
    const/4 v11, 0x0

    #@22b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@22e
    .line 806
    :cond_e
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@230
    if-eqz v10, :cond_f

    #@232
    .line 807
    const-string/jumbo v10, "encryption-requested"

    #@235
    const/4 v11, 0x0

    #@236
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@239
    .line 808
    const-string/jumbo v10, "value"

    #@23c
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@23e
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@241
    move-result-object v11

    #@242
    const/4 v12, 0x0

    #@243
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@246
    .line 809
    const-string/jumbo v10, "encryption-requested"

    #@249
    const/4 v11, 0x0

    #@24a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@24d
    .line 811
    :cond_f
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    #@24f
    if-eqz v10, :cond_10

    #@251
    .line 812
    const-string/jumbo v10, "test-only-admin"

    #@254
    const/4 v11, 0x0

    #@255
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@258
    .line 813
    const-string/jumbo v10, "value"

    #@25b
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    #@25d
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@260
    move-result-object v11

    #@261
    const/4 v12, 0x0

    #@262
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@265
    .line 814
    const-string/jumbo v10, "test-only-admin"

    #@268
    const/4 v11, 0x0

    #@269
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@26c
    .line 816
    :cond_10
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@26e
    if-eqz v10, :cond_11

    #@270
    .line 817
    const-string/jumbo v10, "disable-camera"

    #@273
    const/4 v11, 0x0

    #@274
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@277
    .line 818
    const-string/jumbo v10, "value"

    #@27a
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@27c
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@27f
    move-result-object v11

    #@280
    const/4 v12, 0x0

    #@281
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@284
    .line 819
    const-string/jumbo v10, "disable-camera"

    #@287
    const/4 v11, 0x0

    #@288
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@28b
    .line 821
    :cond_11
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@28d
    if-eqz v10, :cond_12

    #@28f
    .line 822
    const-string/jumbo v10, "disable-caller-id"

    #@292
    const/4 v11, 0x0

    #@293
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@296
    .line 823
    const-string/jumbo v10, "value"

    #@299
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@29b
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@29e
    move-result-object v11

    #@29f
    const/4 v12, 0x0

    #@2a0
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a3
    .line 824
    const-string/jumbo v10, "disable-caller-id"

    #@2a6
    const/4 v11, 0x0

    #@2a7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2aa
    .line 826
    :cond_12
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    #@2ac
    if-eqz v10, :cond_13

    #@2ae
    .line 827
    const-string/jumbo v10, "disable-contacts-search"

    #@2b1
    const/4 v11, 0x0

    #@2b2
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b5
    .line 828
    const-string/jumbo v10, "value"

    #@2b8
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    #@2ba
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2bd
    move-result-object v11

    #@2be
    const/4 v12, 0x0

    #@2bf
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2c2
    .line 829
    const-string/jumbo v10, "disable-contacts-search"

    #@2c5
    const/4 v11, 0x0

    #@2c6
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2c9
    .line 831
    :cond_13
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@2cb
    if-nez v10, :cond_14

    #@2cd
    .line 832
    const-string/jumbo v10, "disable-bt-contacts-sharing"

    #@2d0
    const/4 v11, 0x0

    #@2d1
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d4
    .line 833
    const-string/jumbo v10, "value"

    #@2d7
    .line 834
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@2d9
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2dc
    move-result-object v11

    #@2dd
    .line 833
    const/4 v12, 0x0

    #@2de
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2e1
    .line 835
    const-string/jumbo v10, "disable-bt-contacts-sharing"

    #@2e4
    const/4 v11, 0x0

    #@2e5
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2e8
    .line 837
    :cond_14
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@2ea
    if-eqz v10, :cond_15

    #@2ec
    .line 838
    const-string/jumbo v10, "disable-screen-capture"

    #@2ef
    const/4 v11, 0x0

    #@2f0
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f3
    .line 839
    const-string/jumbo v10, "value"

    #@2f6
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@2f8
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2fb
    move-result-object v11

    #@2fc
    const/4 v12, 0x0

    #@2fd
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@300
    .line 840
    const-string/jumbo v10, "disable-screen-capture"

    #@303
    const/4 v11, 0x0

    #@304
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@307
    .line 842
    :cond_15
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@309
    if-eqz v10, :cond_16

    #@30b
    .line 843
    const-string/jumbo v10, "require_auto_time"

    #@30e
    const/4 v11, 0x0

    #@30f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@312
    .line 844
    const-string/jumbo v10, "value"

    #@315
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@317
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@31a
    move-result-object v11

    #@31b
    const/4 v12, 0x0

    #@31c
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31f
    .line 845
    const-string/jumbo v10, "require_auto_time"

    #@322
    const/4 v11, 0x0

    #@323
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@326
    .line 847
    :cond_16
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    #@328
    if-eqz v10, :cond_17

    #@32a
    .line 848
    const-string/jumbo v10, "force_ephemeral_users"

    #@32d
    const/4 v11, 0x0

    #@32e
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@331
    .line 849
    const-string/jumbo v10, "value"

    #@334
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    #@336
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@339
    move-result-object v11

    #@33a
    const/4 v12, 0x0

    #@33b
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33e
    .line 850
    const-string/jumbo v10, "force_ephemeral_users"

    #@341
    const/4 v11, 0x0

    #@342
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@345
    .line 852
    :cond_17
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@347
    if-eqz v10, :cond_18

    #@349
    .line 853
    const-string/jumbo v10, "disable-keyguard-features"

    #@34c
    const/4 v11, 0x0

    #@34d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@350
    .line 854
    const-string/jumbo v10, "value"

    #@353
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@355
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@358
    move-result-object v11

    #@359
    const/4 v12, 0x0

    #@35a
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35d
    .line 855
    const-string/jumbo v10, "disable-keyguard-features"

    #@360
    const/4 v11, 0x0

    #@361
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@364
    .line 857
    :cond_18
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@366
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    #@369
    move-result v10

    #@36a
    if-nez v10, :cond_1a

    #@36c
    .line 858
    const-string/jumbo v10, "disable-account-management"

    #@36f
    const/4 v11, 0x0

    #@370
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@373
    .line 859
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@375
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@378
    move-result-object v1

    #@379
    .local v1, "ac$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37c
    move-result v10

    #@37d
    if-eqz v10, :cond_19

    #@37f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@382
    move-result-object v0

    #@383
    check-cast v0, Ljava/lang/String;

    #@385
    .line 860
    .local v0, "ac":Ljava/lang/String;
    const-string/jumbo v10, "account-type"

    #@388
    const/4 v11, 0x0

    #@389
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@38c
    .line 861
    const-string/jumbo v10, "value"

    #@38f
    const/4 v11, 0x0

    #@390
    invoke-interface {p1, v11, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@393
    .line 862
    const-string/jumbo v10, "account-type"

    #@396
    const/4 v11, 0x0

    #@397
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39a
    goto :goto_0

    #@39b
    .line 864
    .end local v0    # "ac":Ljava/lang/String;
    :cond_19
    const-string/jumbo v10, "disable-account-management"

    #@39e
    const/4 v11, 0x0

    #@39f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3a2
    .line 866
    .end local v1    # "ac$iterator":Ljava/util/Iterator;
    :cond_1a
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    #@3a4
    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    #@3a7
    move-result v10

    #@3a8
    if-nez v10, :cond_1d

    #@3aa
    .line 867
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    #@3ac
    invoke-virtual {v10}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@3af
    move-result-object v8

    #@3b0
    .line 868
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    const-string/jumbo v10, "manage-trust-agent-features"

    #@3b3
    const/4 v11, 0x0

    #@3b4
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b7
    .line 869
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3ba
    move-result-object v4

    #@3bb
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3be
    move-result v10

    #@3bf
    if-eqz v10, :cond_1c

    #@3c1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c4
    move-result-object v3

    #@3c5
    check-cast v3, Ljava/util/Map$Entry;

    #@3c7
    .line 870
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3ca
    move-result-object v9

    #@3cb
    check-cast v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@3cd
    .line 871
    .local v9, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    const-string/jumbo v10, "component"

    #@3d0
    const/4 v11, 0x0

    #@3d1
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d4
    .line 872
    const-string/jumbo v11, "value"

    #@3d7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3da
    move-result-object v10

    #@3db
    check-cast v10, Ljava/lang/String;

    #@3dd
    const/4 v12, 0x0

    #@3de
    invoke-interface {p1, v12, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3e1
    .line 873
    iget-object v10, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@3e3
    if-eqz v10, :cond_1b

    #@3e5
    .line 874
    const-string/jumbo v10, "trust-agent-component-options"

    #@3e8
    const/4 v11, 0x0

    #@3e9
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3ec
    .line 876
    :try_start_0
    iget-object v10, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@3ee
    invoke-virtual {v10, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f1
    .line 880
    :goto_2
    const-string/jumbo v10, "trust-agent-component-options"

    #@3f4
    const/4 v11, 0x0

    #@3f5
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3f8
    .line 882
    :cond_1b
    const-string/jumbo v10, "component"

    #@3fb
    const/4 v11, 0x0

    #@3fc
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3ff
    goto :goto_1

    #@400
    .line 877
    :catch_0
    move-exception v2

    #@401
    .line 878
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v10, "DevicePolicyManagerService"

    #@404
    const-string/jumbo v11, "Failed to save TrustAgent options"

    #@407
    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40a
    goto :goto_2

    #@40b
    .line 884
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    .end local v9    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_1c
    const-string/jumbo v10, "manage-trust-agent-features"

    #@40e
    const/4 v11, 0x0

    #@40f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@412
    .line 886
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    :cond_1d
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@414
    if-eqz v10, :cond_1e

    #@416
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@418
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    #@41b
    move-result v10

    #@41c
    if-eqz v10, :cond_25

    #@41e
    .line 897
    :cond_1e
    :goto_3
    const-string/jumbo v10, "permitted-accessiblity-services"

    #@421
    .line 898
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@423
    .line 897
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    #@426
    .line 899
    const-string/jumbo v10, "permitted-imes"

    #@429
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@42b
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    #@42e
    .line 900
    const-string/jumbo v10, "keep-uninstalled-packages"

    #@431
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    #@433
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    #@436
    .line 901
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->hasUserRestrictions()Z

    #@439
    move-result v10

    #@43a
    if-eqz v10, :cond_1f

    #@43c
    .line 903
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@43e
    const-string/jumbo v11, "user-restrictions"

    #@441
    .line 902
    invoke-static {p1, v10, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@444
    .line 905
    :cond_1f
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    #@446
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@449
    move-result v10

    #@44a
    if-nez v10, :cond_20

    #@44c
    .line 906
    const-string/jumbo v10, "short-support-message"

    #@44f
    const/4 v11, 0x0

    #@450
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@453
    .line 907
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    #@455
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@458
    move-result-object v10

    #@459
    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@45c
    .line 908
    const-string/jumbo v10, "short-support-message"

    #@45f
    const/4 v11, 0x0

    #@460
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@463
    .line 910
    :cond_20
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    #@465
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@468
    move-result v10

    #@469
    if-nez v10, :cond_21

    #@46b
    .line 911
    const-string/jumbo v10, "long-support-message"

    #@46e
    const/4 v11, 0x0

    #@46f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@472
    .line 912
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    #@474
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@477
    move-result-object v10

    #@478
    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@47b
    .line 913
    const-string/jumbo v10, "long-support-message"

    #@47e
    const/4 v11, 0x0

    #@47f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@482
    .line 915
    :cond_21
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@484
    if-eqz v10, :cond_22

    #@486
    .line 916
    const-string/jumbo v10, "parent-admin"

    #@489
    const/4 v11, 0x0

    #@48a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@48d
    .line 917
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@48f
    invoke-virtual {v10, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@492
    .line 918
    const-string/jumbo v10, "parent-admin"

    #@495
    const/4 v11, 0x0

    #@496
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@499
    .line 920
    :cond_22
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    #@49b
    sget v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    #@49d
    if-eq v10, v11, :cond_23

    #@49f
    .line 921
    const-string/jumbo v10, "organization-color"

    #@4a2
    const/4 v11, 0x0

    #@4a3
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a6
    .line 922
    const-string/jumbo v10, "value"

    #@4a9
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    #@4ab
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4ae
    move-result-object v11

    #@4af
    const/4 v12, 0x0

    #@4b0
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4b3
    .line 923
    const-string/jumbo v10, "organization-color"

    #@4b6
    const/4 v11, 0x0

    #@4b7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4ba
    .line 925
    :cond_23
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@4bc
    if-eqz v10, :cond_24

    #@4be
    .line 926
    const-string/jumbo v10, "organization-name"

    #@4c1
    const/4 v11, 0x0

    #@4c2
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4c5
    .line 927
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@4c7
    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4ca
    .line 928
    const-string/jumbo v10, "organization-name"

    #@4cd
    const/4 v11, 0x0

    #@4ce
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d1
    .line 717
    :cond_24
    return-void

    #@4d2
    .line 887
    :cond_25
    const-string/jumbo v10, "cross-profile-widget-providers"

    #@4d5
    const/4 v11, 0x0

    #@4d6
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d9
    .line 888
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@4db
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@4de
    move-result v7

    #@4df
    .line 889
    .local v7, "providerCount":I
    const/4 v5, 0x0

    #@4e0
    .local v5, "i":I
    :goto_4
    if-ge v5, v7, :cond_26

    #@4e2
    .line 890
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@4e4
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4e7
    move-result-object v6

    #@4e8
    check-cast v6, Ljava/lang/String;

    #@4ea
    .line 891
    .local v6, "provider":Ljava/lang/String;
    const-string/jumbo v10, "provider"

    #@4ed
    const/4 v11, 0x0

    #@4ee
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4f1
    .line 892
    const-string/jumbo v10, "value"

    #@4f4
    const/4 v11, 0x0

    #@4f5
    invoke-interface {p1, v11, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4f8
    .line 893
    const-string/jumbo v10, "provider"

    #@4fb
    const/4 v11, 0x0

    #@4fc
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4ff
    .line 889
    add-int/lit8 v5, v5, 0x1

    #@501
    goto :goto_4

    #@502
    .line 895
    .end local v6    # "provider":Ljava/lang/String;
    :cond_26
    const-string/jumbo v10, "cross-profile-widget-providers"

    #@505
    const/4 v11, 0x0

    #@506
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@509
    goto/16 :goto_3
.end method
