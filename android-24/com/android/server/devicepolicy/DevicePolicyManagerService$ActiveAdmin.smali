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
    .line 664
    const-string/jumbo v0, "#00796B"

    #@3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    #@9
    .line 521
    return-void
.end method

.method constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .locals 6
    .param p1, "_info"    # Landroid/app/admin/DeviceAdminInfo;
    .param p2, "parent"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 572
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@a
    .line 575
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@c
    .line 578
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@e
    .line 581
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@10
    .line 584
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@12
    .line 587
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@14
    .line 590
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@16
    .line 593
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@18
    .line 596
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@1a
    .line 599
    iput-wide v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@1c
    .line 602
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@1e
    .line 605
    iput-wide v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@20
    .line 608
    iput-wide v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@22
    .line 612
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@24
    .line 614
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@26
    .line 615
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@28
    .line 616
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@2a
    .line 617
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    #@2c
    .line 618
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@2e
    .line 619
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@30
    .line 620
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@32
    .line 621
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    #@34
    .line 633
    new-instance v0, Landroid/util/ArraySet;

    #@36
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@3b
    .line 649
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@3d
    .line 650
    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@3f
    .line 651
    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@41
    .line 653
    new-instance v0, Landroid/util/ArrayMap;

    #@43
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@46
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    #@48
    .line 660
    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    #@4a
    .line 661
    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    #@4c
    .line 665
    sget v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    #@4e
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    #@50
    .line 668
    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@52
    .line 671
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@54
    .line 672
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    #@56
    .line 670
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
    .line 1100
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 1102
    .local v1, "outerDepthDAM":I
    new-instance v2, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@a
    .line 1103
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
    .line 1104
    if-ne v5, v9, :cond_1

    #@13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v6

    #@17
    if-le v6, v1, :cond_3

    #@19
    .line 1105
    :cond_1
    if-eq v5, v9, :cond_0

    #@1b
    const/4 v6, 0x4

    #@1c
    if-eq v5, v6, :cond_0

    #@1e
    .line 1108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 1109
    .local v3, "tagDAM":Ljava/lang/String;
    const-string/jumbo v6, "component"

    #@25
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_2

    #@2b
    .line 1110
    const-string/jumbo v6, "value"

    #@2e
    const/4 v7, 0x0

    #@2f
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 1111
    .local v0, "component":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@36
    move-result-object v4

    #@37
    .line 1112
    .local v4, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    invoke-virtual {v2, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    goto :goto_0

    #@3b
    .line 1114
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
    .line 1117
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
    .line 1142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 1144
    .local v0, "outerDepthDAM":I
    const/4 v2, 0x0

    #@7
    .line 1145
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
    .line 1146
    if-ne v4, v8, :cond_1

    #@10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v5

    #@14
    if-le v5, v0, :cond_4

    #@16
    .line 1147
    :cond_1
    if-eq v4, v8, :cond_0

    #@18
    const/4 v5, 0x4

    #@19
    if-eq v4, v5, :cond_0

    #@1b
    .line 1150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1151
    .local v3, "tagDAM":Ljava/lang/String;
    const-string/jumbo v5, "provider"

    #@22
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_3

    #@28
    .line 1152
    const-string/jumbo v5, "value"

    #@2b
    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 1153
    .local v1, "provider":Ljava/lang/String;
    if-nez v2, :cond_2

    #@31
    .line 1154
    new-instance v2, Ljava/util/ArrayList;

    #@33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@36
    .line 1156
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 1158
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
    .line 1161
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
    .line 1122
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 1124
    .local v0, "outerDepthDAM":I
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    #@b
    .line 1125
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
    .line 1126
    if-ne v3, v7, :cond_1

    #@14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@17
    move-result v4

    #@18
    if-le v4, v0, :cond_3

    #@1a
    .line 1127
    :cond_1
    if-eq v3, v7, :cond_0

    #@1c
    const/4 v4, 0x4

    #@1d
    if-eq v3, v4, :cond_0

    #@1f
    .line 1130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 1131
    .local v2, "tagDAM":Ljava/lang/String;
    const-string/jumbo v4, "trust-agent-component-options"

    #@26
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_2

    #@2c
    .line 1132
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@2f
    move-result-object v4

    #@30
    iput-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@32
    goto :goto_0

    #@33
    .line 1134
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
    .line 1137
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
    .line 1080
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 1082
    .local v0, "outerDepthDAM":I
    new-instance v1, Landroid/util/ArraySet;

    #@7
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 1083
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
    .line 1084
    if-ne v3, v7, :cond_1

    #@13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v4

    #@17
    if-le v4, v0, :cond_3

    #@19
    .line 1085
    :cond_1
    if-eq v3, v7, :cond_0

    #@1b
    const/4 v4, 0x4

    #@1c
    if-eq v3, v4, :cond_0

    #@1e
    .line 1088
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 1089
    .local v2, "tagDAM":Ljava/lang/String;
    const-string/jumbo v4, "account-type"

    #@25
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_2

    #@2b
    .line 1090
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
    .line 1092
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
    .line 1095
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
    .line 1055
    new-instance v4, Ljava/util/ArrayList;

    #@4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 1056
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@a
    move-result v0

    #@b
    .line 1058
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
    .line 1059
    if-ne v2, v8, :cond_1

    #@14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@17
    move-result v5

    #@18
    if-le v5, v0, :cond_4

    #@1a
    .line 1060
    :cond_1
    if-eq v2, v8, :cond_0

    #@1c
    const/4 v5, 0x4

    #@1d
    if-eq v2, v5, :cond_0

    #@1f
    .line 1063
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 1064
    .local v1, "outerTag":Ljava/lang/String;
    const-string/jumbo v5, "item"

    #@26
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 1065
    const-string/jumbo v5, "value"

    #@2f
    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 1066
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@35
    .line 1067
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 1069
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
    .line 1072
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
    .line 1075
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
    .line 1176
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
    .line 1177
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    const-string/jumbo v2, "policies:"

    #@16
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 1178
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@1b
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    #@1e
    move-result-object v1

    #@1f
    .line 1179
    .local v1, "pols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    if-eqz v1, :cond_0

    #@21
    .line 1180
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
    .line 1181
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
    .line 1180
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1184
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    const-string/jumbo v2, "passwordQuality=0x"

    #@45
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 1185
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@4a
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 1186
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    const-string/jumbo v2, "minimumPasswordLength="

    #@57
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 1187
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@5c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@5f
    .line 1188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    const-string/jumbo v2, "passwordHistoryLength="

    #@65
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    .line 1189
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@6a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@6d
    .line 1190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    const-string/jumbo v2, "minimumPasswordUpperCase="

    #@73
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    .line 1191
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@78
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@7b
    .line 1192
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    const-string/jumbo v2, "minimumPasswordLowerCase="

    #@81
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    .line 1193
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@86
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@89
    .line 1194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    const-string/jumbo v2, "minimumPasswordLetters="

    #@8f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    .line 1195
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@94
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@97
    .line 1196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    const-string/jumbo v2, "minimumPasswordNumeric="

    #@9d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    .line 1197
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@a2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@a5
    .line 1198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string/jumbo v2, "minimumPasswordSymbols="

    #@ab
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    .line 1199
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@b0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@b3
    .line 1200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    const-string/jumbo v2, "minimumPasswordNonLetter="

    #@b9
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bc
    .line 1201
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@be
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@c1
    .line 1202
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c4
    const-string/jumbo v2, "maximumTimeToUnlock="

    #@c7
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ca
    .line 1203
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@cc
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@cf
    .line 1204
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    const-string/jumbo v2, "maximumFailedPasswordsForWipe="

    #@d5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    .line 1205
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@da
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@dd
    .line 1206
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0
    const-string/jumbo v2, "specifiesGlobalProxy="

    #@e3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e6
    .line 1207
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@e8
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@eb
    .line 1208
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    const-string/jumbo v2, "passwordExpirationTimeout="

    #@f1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f4
    .line 1209
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@f6
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@f9
    .line 1210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    const-string/jumbo v2, "passwordExpirationDate="

    #@ff
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    .line 1211
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@104
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@107
    .line 1212
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@109
    if-eqz v2, :cond_1

    #@10b
    .line 1213
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10e
    const-string/jumbo v2, "globalProxySpec="

    #@111
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@114
    .line 1214
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@116
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@119
    .line 1216
    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@11b
    if-eqz v2, :cond_2

    #@11d
    .line 1217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    const-string/jumbo v2, "globalProxyEclusionList="

    #@123
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@126
    .line 1218
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@128
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12b
    .line 1220
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12e
    const-string/jumbo v2, "encryptionRequested="

    #@131
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@134
    .line 1221
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@136
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@139
    .line 1222
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    const-string/jumbo v2, "disableCamera="

    #@13f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142
    .line 1223
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@144
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@147
    .line 1224
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14a
    const-string/jumbo v2, "disableCallerId="

    #@14d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@150
    .line 1225
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@152
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@155
    .line 1226
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@158
    const-string/jumbo v2, "disableContactsSearch="

    #@15b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15e
    .line 1227
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    #@160
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@163
    .line 1228
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@166
    const-string/jumbo v2, "disableBluetoothContactSharing="

    #@169
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    .line 1229
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@16e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@171
    .line 1230
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@174
    const-string/jumbo v2, "disableScreenCapture="

    #@177
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17a
    .line 1231
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@17c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@17f
    .line 1232
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@182
    const-string/jumbo v2, "requireAutoTime="

    #@185
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@188
    .line 1233
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@18a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@18d
    .line 1234
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@190
    const-string/jumbo v2, "forceEphemeralUsers="

    #@193
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@196
    .line 1235
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    #@198
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@19b
    .line 1236
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19e
    const-string/jumbo v2, "disabledKeyguardFeatures="

    #@1a1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a4
    .line 1237
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@1a6
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@1a9
    .line 1238
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ac
    const-string/jumbo v2, "crossProfileWidgetProviders="

    #@1af
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b2
    .line 1239
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@1b4
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1b7
    .line 1240
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@1b9
    if-eqz v2, :cond_3

    #@1bb
    .line 1241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1be
    const-string/jumbo v2, "permittedAccessibilityServices="

    #@1c1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c4
    .line 1242
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@1c6
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1c9
    .line 1244
    :cond_3
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@1cb
    if-eqz v2, :cond_4

    #@1cd
    .line 1245
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d0
    const-string/jumbo v2, "permittedInputMethods="

    #@1d3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d6
    .line 1246
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@1d8
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1db
    .line 1248
    :cond_4
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    #@1dd
    if-eqz v2, :cond_5

    #@1df
    .line 1249
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e2
    const-string/jumbo v2, "keepUninstalledPackages="

    #@1e5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e8
    .line 1250
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    #@1ea
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1ed
    .line 1252
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f0
    const-string/jumbo v2, "organizationColor="

    #@1f3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f6
    .line 1253
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    #@1f8
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@1fb
    .line 1254
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@1fd
    if-eqz v2, :cond_6

    #@1ff
    .line 1255
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@202
    const-string/jumbo v2, "organizationName="

    #@205
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@208
    .line 1256
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@20a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20d
    .line 1258
    :cond_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@210
    const-string/jumbo v2, "userRestrictions:"

    #@213
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@216
    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    #@218
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v2

    #@21f
    const-string/jumbo v3, "  "

    #@222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v2

    #@226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@229
    move-result-object v2

    #@22a
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@22c
    invoke-static {p2, v2, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    #@22f
    .line 1260
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@232
    const-string/jumbo v2, "isParent="

    #@235
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@238
    .line 1261
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    #@23a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@23d
    .line 1262
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@23f
    if-eqz v2, :cond_7

    #@241
    .line 1263
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@244
    const-string/jumbo v2, "parentAdmin:"

    #@247
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24a
    .line 1264
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@24c
    new-instance v3, Ljava/lang/StringBuilder;

    #@24e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@251
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@254
    move-result-object v3

    #@255
    const-string/jumbo v4, "  "

    #@258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v3

    #@25c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25f
    move-result-object v3

    #@260
    invoke-virtual {v2, v3, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@263
    .line 1175
    :cond_7
    return-void
.end method

.method ensureUserRestrictions()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1170
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@b
    .line 1172
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
    .line 676
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@9
    .line 678
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 679
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@11
    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    #@14
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@16
    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@18
    return-object v0

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 676
    goto :goto_0
.end method

.method getUid()I
    .locals 1

    #@0
    .prologue
    .line 688
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
    .line 691
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
    .line 685
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
    .line 1165
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
    .line 918
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@7
    move-result v0

    #@8
    .line 920
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@b
    move-result v2

    #@c
    .local v2, "type":I
    if-eq v2, v4, :cond_2c

    #@e
    .line 921
    if-ne v2, v10, :cond_1

    #@10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v3

    #@14
    if-le v3, v0, :cond_2c

    #@16
    .line 922
    :cond_1
    if-eq v2, v10, :cond_0

    #@18
    if-eq v2, v9, :cond_0

    #@1a
    .line 925
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 926
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v3, "policies"

    #@21
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 927
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@29
    invoke-virtual {v3, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2c
    goto :goto_0

    #@2d
    .line 928
    :cond_2
    const-string/jumbo v3, "password-quality"

    #@30
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_3

    #@36
    .line 930
    const-string/jumbo v3, "value"

    #@39
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 929
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@40
    move-result v3

    #@41
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@43
    goto :goto_0

    #@44
    .line 931
    :cond_3
    const-string/jumbo v3, "min-password-length"

    #@47
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_4

    #@4d
    .line 933
    const-string/jumbo v3, "value"

    #@50
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    .line 932
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@57
    move-result v3

    #@58
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@5a
    goto :goto_0

    #@5b
    .line 934
    :cond_4
    const-string/jumbo v3, "password-history-length"

    #@5e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_5

    #@64
    .line 936
    const-string/jumbo v3, "value"

    #@67
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    .line 935
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6e
    move-result v3

    #@6f
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@71
    goto :goto_0

    #@72
    .line 937
    :cond_5
    const-string/jumbo v3, "min-password-uppercase"

    #@75
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v3

    #@79
    if-eqz v3, :cond_6

    #@7b
    .line 939
    const-string/jumbo v3, "value"

    #@7e
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    .line 938
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@85
    move-result v3

    #@86
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@88
    goto :goto_0

    #@89
    .line 940
    :cond_6
    const-string/jumbo v3, "min-password-lowercase"

    #@8c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_7

    #@92
    .line 942
    const-string/jumbo v3, "value"

    #@95
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    .line 941
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9c
    move-result v3

    #@9d
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@9f
    goto/16 :goto_0

    #@a1
    .line 943
    :cond_7
    const-string/jumbo v3, "min-password-letters"

    #@a4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v3

    #@a8
    if-eqz v3, :cond_8

    #@aa
    .line 945
    const-string/jumbo v3, "value"

    #@ad
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b0
    move-result-object v3

    #@b1
    .line 944
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b4
    move-result v3

    #@b5
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@b7
    goto/16 :goto_0

    #@b9
    .line 946
    :cond_8
    const-string/jumbo v3, "min-password-numeric"

    #@bc
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v3

    #@c0
    if-eqz v3, :cond_9

    #@c2
    .line 948
    const-string/jumbo v3, "value"

    #@c5
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c8
    move-result-object v3

    #@c9
    .line 947
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@cc
    move-result v3

    #@cd
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@cf
    goto/16 :goto_0

    #@d1
    .line 949
    :cond_9
    const-string/jumbo v3, "min-password-symbols"

    #@d4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v3

    #@d8
    if-eqz v3, :cond_a

    #@da
    .line 951
    const-string/jumbo v3, "value"

    #@dd
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e0
    move-result-object v3

    #@e1
    .line 950
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e4
    move-result v3

    #@e5
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@e7
    goto/16 :goto_0

    #@e9
    .line 952
    :cond_a
    const-string/jumbo v3, "min-password-nonletter"

    #@ec
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v3

    #@f0
    if-eqz v3, :cond_b

    #@f2
    .line 954
    const-string/jumbo v3, "value"

    #@f5
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f8
    move-result-object v3

    #@f9
    .line 953
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@fc
    move-result v3

    #@fd
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@ff
    goto/16 :goto_0

    #@101
    .line 955
    :cond_b
    const-string/jumbo v3, "max-time-to-unlock"

    #@104
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@107
    move-result v3

    #@108
    if-eqz v3, :cond_c

    #@10a
    .line 957
    const-string/jumbo v3, "value"

    #@10d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@110
    move-result-object v3

    #@111
    .line 956
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@114
    move-result-wide v6

    #@115
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@117
    goto/16 :goto_0

    #@119
    .line 958
    :cond_c
    const-string/jumbo v3, "max-failed-password-wipe"

    #@11c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v3

    #@120
    if-eqz v3, :cond_d

    #@122
    .line 960
    const-string/jumbo v3, "value"

    #@125
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@128
    move-result-object v3

    #@129
    .line 959
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12c
    move-result v3

    #@12d
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@12f
    goto/16 :goto_0

    #@131
    .line 961
    :cond_d
    const-string/jumbo v3, "specifies-global-proxy"

    #@134
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@137
    move-result v3

    #@138
    if-eqz v3, :cond_e

    #@13a
    .line 963
    const-string/jumbo v3, "value"

    #@13d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@140
    move-result-object v3

    #@141
    .line 962
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@144
    move-result v3

    #@145
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@147
    goto/16 :goto_0

    #@149
    .line 964
    :cond_e
    const-string/jumbo v3, "global-proxy-spec"

    #@14c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14f
    move-result v3

    #@150
    if-eqz v3, :cond_f

    #@152
    .line 966
    const-string/jumbo v3, "value"

    #@155
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@158
    move-result-object v3

    #@159
    .line 965
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@15b
    goto/16 :goto_0

    #@15d
    .line 967
    :cond_f
    const-string/jumbo v3, "global-proxy-exclusion-list"

    #@160
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@163
    move-result v3

    #@164
    if-eqz v3, :cond_10

    #@166
    .line 969
    const-string/jumbo v3, "value"

    #@169
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16c
    move-result-object v3

    #@16d
    .line 968
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@16f
    goto/16 :goto_0

    #@171
    .line 970
    :cond_10
    const-string/jumbo v3, "password-expiration-timeout"

    #@174
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@177
    move-result v3

    #@178
    if-eqz v3, :cond_11

    #@17a
    .line 972
    const-string/jumbo v3, "value"

    #@17d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@180
    move-result-object v3

    #@181
    .line 971
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@184
    move-result-wide v6

    #@185
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@187
    goto/16 :goto_0

    #@189
    .line 973
    :cond_11
    const-string/jumbo v3, "password-expiration-date"

    #@18c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18f
    move-result v3

    #@190
    if-eqz v3, :cond_12

    #@192
    .line 975
    const-string/jumbo v3, "value"

    #@195
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@198
    move-result-object v3

    #@199
    .line 974
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@19c
    move-result-wide v6

    #@19d
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@19f
    goto/16 :goto_0

    #@1a1
    .line 976
    :cond_12
    const-string/jumbo v3, "encryption-requested"

    #@1a4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a7
    move-result v3

    #@1a8
    if-eqz v3, :cond_13

    #@1aa
    .line 978
    const-string/jumbo v3, "value"

    #@1ad
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b0
    move-result-object v3

    #@1b1
    .line 977
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1b4
    move-result v3

    #@1b5
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@1b7
    goto/16 :goto_0

    #@1b9
    .line 979
    :cond_13
    const-string/jumbo v3, "disable-camera"

    #@1bc
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bf
    move-result v3

    #@1c0
    if-eqz v3, :cond_14

    #@1c2
    .line 981
    const-string/jumbo v3, "value"

    #@1c5
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c8
    move-result-object v3

    #@1c9
    .line 980
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1cc
    move-result v3

    #@1cd
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@1cf
    goto/16 :goto_0

    #@1d1
    .line 982
    :cond_14
    const-string/jumbo v3, "disable-caller-id"

    #@1d4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d7
    move-result v3

    #@1d8
    if-eqz v3, :cond_15

    #@1da
    .line 984
    const-string/jumbo v3, "value"

    #@1dd
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e0
    move-result-object v3

    #@1e1
    .line 983
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1e4
    move-result v3

    #@1e5
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@1e7
    goto/16 :goto_0

    #@1e9
    .line 985
    :cond_15
    const-string/jumbo v3, "disable-contacts-search"

    #@1ec
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ef
    move-result v3

    #@1f0
    if-eqz v3, :cond_16

    #@1f2
    .line 987
    const-string/jumbo v3, "value"

    #@1f5
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f8
    move-result-object v3

    #@1f9
    .line 986
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1fc
    move-result v3

    #@1fd
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    #@1ff
    goto/16 :goto_0

    #@201
    .line 988
    :cond_16
    const-string/jumbo v3, "disable-bt-contacts-sharing"

    #@204
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@207
    move-result v3

    #@208
    if-eqz v3, :cond_17

    #@20a
    .line 990
    const-string/jumbo v3, "value"

    #@20d
    .line 989
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@210
    move-result-object v3

    #@211
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@214
    move-result v3

    #@215
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@217
    goto/16 :goto_0

    #@219
    .line 991
    :cond_17
    const-string/jumbo v3, "disable-screen-capture"

    #@21c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21f
    move-result v3

    #@220
    if-eqz v3, :cond_18

    #@222
    .line 993
    const-string/jumbo v3, "value"

    #@225
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@228
    move-result-object v3

    #@229
    .line 992
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@22c
    move-result v3

    #@22d
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@22f
    goto/16 :goto_0

    #@231
    .line 994
    :cond_18
    const-string/jumbo v3, "require_auto_time"

    #@234
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@237
    move-result v3

    #@238
    if-eqz v3, :cond_19

    #@23a
    .line 996
    const-string/jumbo v3, "value"

    #@23d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@240
    move-result-object v3

    #@241
    .line 995
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@244
    move-result v3

    #@245
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@247
    goto/16 :goto_0

    #@249
    .line 997
    :cond_19
    const-string/jumbo v3, "force_ephemeral_users"

    #@24c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24f
    move-result v3

    #@250
    if-eqz v3, :cond_1a

    #@252
    .line 999
    const-string/jumbo v3, "value"

    #@255
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@258
    move-result-object v3

    #@259
    .line 998
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@25c
    move-result v3

    #@25d
    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    #@25f
    goto/16 :goto_0

    #@261
    .line 1000
    :cond_1a
    const-string/jumbo v3, "disable-keyguard-features"

    #@264
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@267
    move-result v3

    #@268
    if-eqz v3, :cond_1b

    #@26a
    .line 1002
    const-string/jumbo v3, "value"

    #@26d
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@270
    move-result-object v3

    #@271
    .line 1001
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@274
    move-result v3

    #@275
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@277
    goto/16 :goto_0

    #@279
    .line 1003
    :cond_1b
    const-string/jumbo v3, "disable-account-management"

    #@27c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27f
    move-result v3

    #@280
    if-eqz v3, :cond_1c

    #@282
    .line 1004
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readDisableAccountInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/Set;

    #@285
    move-result-object v3

    #@286
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@288
    goto/16 :goto_0

    #@28a
    .line 1005
    :cond_1c
    const-string/jumbo v3, "manage-trust-agent-features"

    #@28d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@290
    move-result v3

    #@291
    if-eqz v3, :cond_1d

    #@293
    .line 1006
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;

    #@296
    move-result-object v3

    #@297
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    #@299
    goto/16 :goto_0

    #@29b
    .line 1007
    :cond_1d
    const-string/jumbo v3, "cross-profile-widget-providers"

    #@29e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a1
    move-result v3

    #@2a2
    if-eqz v3, :cond_1e

    #@2a4
    .line 1008
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getCrossProfileWidgetProviders(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@2a7
    move-result-object v3

    #@2a8
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@2aa
    goto/16 :goto_0

    #@2ac
    .line 1009
    :cond_1e
    const-string/jumbo v3, "permitted-accessiblity-services"

    #@2af
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b2
    move-result v3

    #@2b3
    if-eqz v3, :cond_1f

    #@2b5
    .line 1010
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@2b8
    move-result-object v3

    #@2b9
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@2bb
    goto/16 :goto_0

    #@2bd
    .line 1011
    :cond_1f
    const-string/jumbo v3, "permitted-imes"

    #@2c0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c3
    move-result v3

    #@2c4
    if-eqz v3, :cond_20

    #@2c6
    .line 1012
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@2c9
    move-result-object v3

    #@2ca
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@2cc
    goto/16 :goto_0

    #@2ce
    .line 1013
    :cond_20
    const-string/jumbo v3, "keep-uninstalled-packages"

    #@2d1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d4
    move-result v3

    #@2d5
    if-eqz v3, :cond_21

    #@2d7
    .line 1014
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    #@2da
    move-result-object v3

    #@2db
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    #@2dd
    goto/16 :goto_0

    #@2df
    .line 1015
    :cond_21
    const-string/jumbo v3, "user-restrictions"

    #@2e2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e5
    move-result v3

    #@2e6
    if-eqz v3, :cond_22

    #@2e8
    .line 1016
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->ensureUserRestrictions()Landroid/os/Bundle;

    #@2eb
    move-result-object v3

    #@2ec
    invoke-static {p1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    #@2ef
    goto/16 :goto_0

    #@2f1
    .line 1017
    :cond_22
    const-string/jumbo v3, "short-support-message"

    #@2f4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f7
    move-result v3

    #@2f8
    if-eqz v3, :cond_24

    #@2fa
    .line 1018
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2fd
    move-result v2

    #@2fe
    .line 1019
    if-ne v2, v9, :cond_23

    #@300
    .line 1020
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@303
    move-result-object v3

    #@304
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    #@306
    goto/16 :goto_0

    #@308
    .line 1022
    :cond_23
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@30b
    const-string/jumbo v5, "Missing text when loading short support message"

    #@30e
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@311
    goto/16 :goto_0

    #@313
    .line 1024
    :cond_24
    const-string/jumbo v3, "long-support-message"

    #@316
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@319
    move-result v3

    #@31a
    if-eqz v3, :cond_26

    #@31c
    .line 1025
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@31f
    move-result v2

    #@320
    .line 1026
    if-ne v2, v9, :cond_25

    #@322
    .line 1027
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@325
    move-result-object v3

    #@326
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    #@328
    goto/16 :goto_0

    #@32a
    .line 1029
    :cond_25
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@32d
    const-string/jumbo v5, "Missing text when loading long support message"

    #@330
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@333
    goto/16 :goto_0

    #@335
    .line 1031
    :cond_26
    const-string/jumbo v3, "parent-admin"

    #@338
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33b
    move-result v3

    #@33c
    if-eqz v3, :cond_28

    #@33e
    .line 1032
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    #@340
    if-eqz v3, :cond_27

    #@342
    const/4 v3, 0x0

    #@343
    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@346
    .line 1034
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@348
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@34a
    invoke-direct {v3, v5, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    #@34d
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@34f
    .line 1035
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@351
    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@354
    goto/16 :goto_0

    #@356
    :cond_27
    move v3, v4

    #@357
    .line 1032
    goto :goto_1

    #@358
    .line 1036
    :cond_28
    const-string/jumbo v3, "organization-color"

    #@35b
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35e
    move-result v3

    #@35f
    if-eqz v3, :cond_29

    #@361
    .line 1038
    const-string/jumbo v3, "value"

    #@364
    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@367
    move-result-object v3

    #@368
    .line 1037
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@36b
    move-result v3

    #@36c
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    #@36e
    goto/16 :goto_0

    #@370
    .line 1039
    :cond_29
    const-string/jumbo v3, "organization-name"

    #@373
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@376
    move-result v3

    #@377
    if-eqz v3, :cond_2b

    #@379
    .line 1040
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@37c
    move-result v2

    #@37d
    .line 1041
    if-ne v2, v9, :cond_2a

    #@37f
    .line 1042
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@382
    move-result-object v3

    #@383
    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@385
    goto/16 :goto_0

    #@387
    .line 1044
    :cond_2a
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@38a
    const-string/jumbo v5, "Missing text when loading organization name"

    #@38d
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@390
    goto/16 :goto_0

    #@392
    .line 1047
    :cond_2b
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@395
    new-instance v5, Ljava/lang/StringBuilder;

    #@397
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@39a
    const-string/jumbo v6, "Unknown admin tag: "

    #@39d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a0
    move-result-object v5

    #@3a1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a4
    move-result-object v5

    #@3a5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a8
    move-result-object v5

    #@3a9
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3ac
    .line 1048
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3af
    goto/16 :goto_0

    #@3b1
    .line 917
    .end local v1    # "tag":Ljava/lang/String;
    :cond_2c
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
    .line 903
    if-nez p3, :cond_0

    #@3
    .line 904
    return-void

    #@4
    .line 907
    :cond_0
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 908
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
    .line 909
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "item"

    #@1a
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 910
    const-string/jumbo v2, "value"

    #@20
    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 911
    const-string/jumbo v2, "item"

    #@26
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    goto :goto_0

    #@2a
    .line 913
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d
    .line 902
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
    .line 696
    const-string/jumbo v10, "policies"

    #@3
    const/4 v11, 0x0

    #@4
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 697
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@9
    invoke-virtual {v10, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@c
    .line 698
    const-string/jumbo v10, "policies"

    #@f
    const/4 v11, 0x0

    #@10
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13
    .line 699
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@15
    if-eqz v10, :cond_7

    #@17
    .line 700
    const-string/jumbo v10, "password-quality"

    #@1a
    const/4 v11, 0x0

    #@1b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 701
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
    .line 702
    const-string/jumbo v10, "password-quality"

    #@2e
    const/4 v11, 0x0

    #@2f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 703
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@34
    if-eqz v10, :cond_0

    #@36
    .line 704
    const-string/jumbo v10, "min-password-length"

    #@39
    const/4 v11, 0x0

    #@3a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d
    .line 705
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
    .line 706
    const-string/jumbo v10, "min-password-length"

    #@4d
    const/4 v11, 0x0

    #@4e
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 708
    :cond_0
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@53
    if-eqz v10, :cond_1

    #@55
    .line 709
    const-string/jumbo v10, "password-history-length"

    #@58
    const/4 v11, 0x0

    #@59
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5c
    .line 710
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
    .line 711
    const-string/jumbo v10, "password-history-length"

    #@6c
    const/4 v11, 0x0

    #@6d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@70
    .line 713
    :cond_1
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@72
    if-eqz v10, :cond_2

    #@74
    .line 714
    const-string/jumbo v10, "min-password-uppercase"

    #@77
    const/4 v11, 0x0

    #@78
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7b
    .line 715
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
    .line 716
    const-string/jumbo v10, "min-password-uppercase"

    #@8b
    const/4 v11, 0x0

    #@8c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8f
    .line 718
    :cond_2
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@91
    if-eqz v10, :cond_3

    #@93
    .line 719
    const-string/jumbo v10, "min-password-lowercase"

    #@96
    const/4 v11, 0x0

    #@97
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9a
    .line 720
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
    .line 721
    const-string/jumbo v10, "min-password-lowercase"

    #@aa
    const/4 v11, 0x0

    #@ab
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ae
    .line 723
    :cond_3
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@b0
    const/4 v11, 0x1

    #@b1
    if-eq v10, v11, :cond_4

    #@b3
    .line 724
    const-string/jumbo v10, "min-password-letters"

    #@b6
    const/4 v11, 0x0

    #@b7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ba
    .line 725
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
    .line 726
    const-string/jumbo v10, "min-password-letters"

    #@ca
    const/4 v11, 0x0

    #@cb
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ce
    .line 728
    :cond_4
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@d0
    const/4 v11, 0x1

    #@d1
    if-eq v10, v11, :cond_5

    #@d3
    .line 729
    const-string/jumbo v10, "min-password-numeric"

    #@d6
    const/4 v11, 0x0

    #@d7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@da
    .line 730
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
    .line 731
    const-string/jumbo v10, "min-password-numeric"

    #@ea
    const/4 v11, 0x0

    #@eb
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ee
    .line 733
    :cond_5
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@f0
    const/4 v11, 0x1

    #@f1
    if-eq v10, v11, :cond_6

    #@f3
    .line 734
    const-string/jumbo v10, "min-password-symbols"

    #@f6
    const/4 v11, 0x0

    #@f7
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@fa
    .line 735
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
    .line 736
    const-string/jumbo v10, "min-password-symbols"

    #@10a
    const/4 v11, 0x0

    #@10b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10e
    .line 738
    :cond_6
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@110
    if-lez v10, :cond_7

    #@112
    .line 739
    const-string/jumbo v10, "min-password-nonletter"

    #@115
    const/4 v11, 0x0

    #@116
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@119
    .line 740
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
    .line 741
    const-string/jumbo v10, "min-password-nonletter"

    #@129
    const/4 v11, 0x0

    #@12a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12d
    .line 744
    :cond_7
    iget-wide v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@12f
    const-wide/16 v12, 0x0

    #@131
    cmp-long v10, v10, v12

    #@133
    if-eqz v10, :cond_8

    #@135
    .line 745
    const-string/jumbo v10, "max-time-to-unlock"

    #@138
    const/4 v11, 0x0

    #@139
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13c
    .line 746
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
    .line 747
    const-string/jumbo v10, "max-time-to-unlock"

    #@14c
    const/4 v11, 0x0

    #@14d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@150
    .line 749
    :cond_8
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@152
    if-eqz v10, :cond_9

    #@154
    .line 750
    const-string/jumbo v10, "max-failed-password-wipe"

    #@157
    const/4 v11, 0x0

    #@158
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15b
    .line 751
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
    .line 752
    const-string/jumbo v10, "max-failed-password-wipe"

    #@16b
    const/4 v11, 0x0

    #@16c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16f
    .line 754
    :cond_9
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@171
    if-eqz v10, :cond_b

    #@173
    .line 755
    const-string/jumbo v10, "specifies-global-proxy"

    #@176
    const/4 v11, 0x0

    #@177
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17a
    .line 756
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
    .line 757
    const-string/jumbo v10, "specifies-global-proxy"

    #@18a
    const/4 v11, 0x0

    #@18b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18e
    .line 758
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@190
    if-eqz v10, :cond_a

    #@192
    .line 759
    const-string/jumbo v10, "global-proxy-spec"

    #@195
    const/4 v11, 0x0

    #@196
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@199
    .line 760
    const-string/jumbo v10, "value"

    #@19c
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@19e
    const/4 v12, 0x0

    #@19f
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a2
    .line 761
    const-string/jumbo v10, "global-proxy-spec"

    #@1a5
    const/4 v11, 0x0

    #@1a6
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a9
    .line 763
    :cond_a
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@1ab
    if-eqz v10, :cond_b

    #@1ad
    .line 764
    const-string/jumbo v10, "global-proxy-exclusion-list"

    #@1b0
    const/4 v11, 0x0

    #@1b1
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b4
    .line 765
    const-string/jumbo v10, "value"

    #@1b7
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@1b9
    const/4 v12, 0x0

    #@1ba
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1bd
    .line 766
    const-string/jumbo v10, "global-proxy-exclusion-list"

    #@1c0
    const/4 v11, 0x0

    #@1c1
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c4
    .line 769
    :cond_b
    iget-wide v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@1c6
    const-wide/16 v12, 0x0

    #@1c8
    cmp-long v10, v10, v12

    #@1ca
    if-eqz v10, :cond_c

    #@1cc
    .line 770
    const-string/jumbo v10, "password-expiration-timeout"

    #@1cf
    const/4 v11, 0x0

    #@1d0
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d3
    .line 771
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
    .line 772
    const-string/jumbo v10, "password-expiration-timeout"

    #@1e3
    const/4 v11, 0x0

    #@1e4
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e7
    .line 774
    :cond_c
    iget-wide v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@1e9
    const-wide/16 v12, 0x0

    #@1eb
    cmp-long v10, v10, v12

    #@1ed
    if-eqz v10, :cond_d

    #@1ef
    .line 775
    const-string/jumbo v10, "password-expiration-date"

    #@1f2
    const/4 v11, 0x0

    #@1f3
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f6
    .line 776
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
    .line 777
    const-string/jumbo v10, "password-expiration-date"

    #@206
    const/4 v11, 0x0

    #@207
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@20a
    .line 779
    :cond_d
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@20c
    if-eqz v10, :cond_e

    #@20e
    .line 780
    const-string/jumbo v10, "encryption-requested"

    #@211
    const/4 v11, 0x0

    #@212
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@215
    .line 781
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
    .line 782
    const-string/jumbo v10, "encryption-requested"

    #@225
    const/4 v11, 0x0

    #@226
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@229
    .line 784
    :cond_e
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@22b
    if-eqz v10, :cond_f

    #@22d
    .line 785
    const-string/jumbo v10, "disable-camera"

    #@230
    const/4 v11, 0x0

    #@231
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@234
    .line 786
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
    .line 787
    const-string/jumbo v10, "disable-camera"

    #@244
    const/4 v11, 0x0

    #@245
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@248
    .line 789
    :cond_f
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@24a
    if-eqz v10, :cond_10

    #@24c
    .line 790
    const-string/jumbo v10, "disable-caller-id"

    #@24f
    const/4 v11, 0x0

    #@250
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@253
    .line 791
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
    .line 792
    const-string/jumbo v10, "disable-caller-id"

    #@263
    const/4 v11, 0x0

    #@264
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@267
    .line 794
    :cond_10
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    #@269
    if-eqz v10, :cond_11

    #@26b
    .line 795
    const-string/jumbo v10, "disable-contacts-search"

    #@26e
    const/4 v11, 0x0

    #@26f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@272
    .line 796
    const-string/jumbo v10, "value"

    #@275
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    #@277
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@27a
    move-result-object v11

    #@27b
    const/4 v12, 0x0

    #@27c
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27f
    .line 797
    const-string/jumbo v10, "disable-contacts-search"

    #@282
    const/4 v11, 0x0

    #@283
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@286
    .line 799
    :cond_11
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@288
    if-nez v10, :cond_12

    #@28a
    .line 800
    const-string/jumbo v10, "disable-bt-contacts-sharing"

    #@28d
    const/4 v11, 0x0

    #@28e
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@291
    .line 801
    const-string/jumbo v10, "value"

    #@294
    .line 802
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@296
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@299
    move-result-object v11

    #@29a
    .line 801
    const/4 v12, 0x0

    #@29b
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29e
    .line 803
    const-string/jumbo v10, "disable-bt-contacts-sharing"

    #@2a1
    const/4 v11, 0x0

    #@2a2
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a5
    .line 805
    :cond_12
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@2a7
    if-eqz v10, :cond_13

    #@2a9
    .line 806
    const-string/jumbo v10, "disable-screen-capture"

    #@2ac
    const/4 v11, 0x0

    #@2ad
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b0
    .line 807
    const-string/jumbo v10, "value"

    #@2b3
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@2b5
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2b8
    move-result-object v11

    #@2b9
    const/4 v12, 0x0

    #@2ba
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2bd
    .line 808
    const-string/jumbo v10, "disable-screen-capture"

    #@2c0
    const/4 v11, 0x0

    #@2c1
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2c4
    .line 810
    :cond_13
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@2c6
    if-eqz v10, :cond_14

    #@2c8
    .line 811
    const-string/jumbo v10, "require_auto_time"

    #@2cb
    const/4 v11, 0x0

    #@2cc
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2cf
    .line 812
    const-string/jumbo v10, "value"

    #@2d2
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@2d4
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2d7
    move-result-object v11

    #@2d8
    const/4 v12, 0x0

    #@2d9
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2dc
    .line 813
    const-string/jumbo v10, "require_auto_time"

    #@2df
    const/4 v11, 0x0

    #@2e0
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2e3
    .line 815
    :cond_14
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    #@2e5
    if-eqz v10, :cond_15

    #@2e7
    .line 816
    const-string/jumbo v10, "force_ephemeral_users"

    #@2ea
    const/4 v11, 0x0

    #@2eb
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2ee
    .line 817
    const-string/jumbo v10, "value"

    #@2f1
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    #@2f3
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2f6
    move-result-object v11

    #@2f7
    const/4 v12, 0x0

    #@2f8
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2fb
    .line 818
    const-string/jumbo v10, "force_ephemeral_users"

    #@2fe
    const/4 v11, 0x0

    #@2ff
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@302
    .line 820
    :cond_15
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@304
    if-eqz v10, :cond_16

    #@306
    .line 821
    const-string/jumbo v10, "disable-keyguard-features"

    #@309
    const/4 v11, 0x0

    #@30a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@30d
    .line 822
    const-string/jumbo v10, "value"

    #@310
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@312
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@315
    move-result-object v11

    #@316
    const/4 v12, 0x0

    #@317
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31a
    .line 823
    const-string/jumbo v10, "disable-keyguard-features"

    #@31d
    const/4 v11, 0x0

    #@31e
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@321
    .line 825
    :cond_16
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@323
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    #@326
    move-result v10

    #@327
    if-nez v10, :cond_18

    #@329
    .line 826
    const-string/jumbo v10, "disable-account-management"

    #@32c
    const/4 v11, 0x0

    #@32d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@330
    .line 827
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@332
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@335
    move-result-object v1

    #@336
    .local v1, "ac$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@339
    move-result v10

    #@33a
    if-eqz v10, :cond_17

    #@33c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33f
    move-result-object v0

    #@340
    check-cast v0, Ljava/lang/String;

    #@342
    .line 828
    .local v0, "ac":Ljava/lang/String;
    const-string/jumbo v10, "account-type"

    #@345
    const/4 v11, 0x0

    #@346
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@349
    .line 829
    const-string/jumbo v10, "value"

    #@34c
    const/4 v11, 0x0

    #@34d
    invoke-interface {p1, v11, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@350
    .line 830
    const-string/jumbo v10, "account-type"

    #@353
    const/4 v11, 0x0

    #@354
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@357
    goto :goto_0

    #@358
    .line 832
    .end local v0    # "ac":Ljava/lang/String;
    :cond_17
    const-string/jumbo v10, "disable-account-management"

    #@35b
    const/4 v11, 0x0

    #@35c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35f
    .line 834
    .end local v1    # "ac$iterator":Ljava/util/Iterator;
    :cond_18
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    #@361
    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    #@364
    move-result v10

    #@365
    if-nez v10, :cond_1b

    #@367
    .line 835
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    #@369
    invoke-virtual {v10}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@36c
    move-result-object v8

    #@36d
    .line 836
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    const-string/jumbo v10, "manage-trust-agent-features"

    #@370
    const/4 v11, 0x0

    #@371
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@374
    .line 837
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@377
    move-result-object v4

    #@378
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@37b
    move-result v10

    #@37c
    if-eqz v10, :cond_1a

    #@37e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@381
    move-result-object v3

    #@382
    check-cast v3, Ljava/util/Map$Entry;

    #@384
    .line 838
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@387
    move-result-object v9

    #@388
    check-cast v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@38a
    .line 839
    .local v9, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    const-string/jumbo v10, "component"

    #@38d
    const/4 v11, 0x0

    #@38e
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@391
    .line 840
    const-string/jumbo v11, "value"

    #@394
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@397
    move-result-object v10

    #@398
    check-cast v10, Ljava/lang/String;

    #@39a
    const/4 v12, 0x0

    #@39b
    invoke-interface {p1, v12, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39e
    .line 841
    iget-object v10, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@3a0
    if-eqz v10, :cond_19

    #@3a2
    .line 842
    const-string/jumbo v10, "trust-agent-component-options"

    #@3a5
    const/4 v11, 0x0

    #@3a6
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3a9
    .line 844
    :try_start_0
    iget-object v10, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@3ab
    invoke-virtual {v10, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@3ae
    .line 848
    :goto_2
    const-string/jumbo v10, "trust-agent-component-options"

    #@3b1
    const/4 v11, 0x0

    #@3b2
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b5
    .line 850
    :cond_19
    const-string/jumbo v10, "component"

    #@3b8
    const/4 v11, 0x0

    #@3b9
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3bc
    goto :goto_1

    #@3bd
    .line 845
    :catch_0
    move-exception v2

    #@3be
    .line 846
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v10, "DevicePolicyManagerService"

    #@3c1
    const-string/jumbo v11, "Failed to save TrustAgent options"

    #@3c4
    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c7
    goto :goto_2

    #@3c8
    .line 852
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    .end local v9    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_1a
    const-string/jumbo v10, "manage-trust-agent-features"

    #@3cb
    const/4 v11, 0x0

    #@3cc
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3cf
    .line 854
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    :cond_1b
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@3d1
    if-eqz v10, :cond_1c

    #@3d3
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@3d5
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    #@3d8
    move-result v10

    #@3d9
    if-eqz v10, :cond_23

    #@3db
    .line 865
    :cond_1c
    :goto_3
    const-string/jumbo v10, "permitted-accessiblity-services"

    #@3de
    .line 866
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@3e0
    .line 865
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    #@3e3
    .line 867
    const-string/jumbo v10, "permitted-imes"

    #@3e6
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@3e8
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    #@3eb
    .line 868
    const-string/jumbo v10, "keep-uninstalled-packages"

    #@3ee
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    #@3f0
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    #@3f3
    .line 869
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->hasUserRestrictions()Z

    #@3f6
    move-result v10

    #@3f7
    if-eqz v10, :cond_1d

    #@3f9
    .line 871
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    #@3fb
    const-string/jumbo v11, "user-restrictions"

    #@3fe
    .line 870
    invoke-static {p1, v10, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@401
    .line 873
    :cond_1d
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    #@403
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@406
    move-result v10

    #@407
    if-nez v10, :cond_1e

    #@409
    .line 874
    const-string/jumbo v10, "short-support-message"

    #@40c
    const/4 v11, 0x0

    #@40d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@410
    .line 875
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    #@412
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@415
    move-result-object v10

    #@416
    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@419
    .line 876
    const-string/jumbo v10, "short-support-message"

    #@41c
    const/4 v11, 0x0

    #@41d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@420
    .line 878
    :cond_1e
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    #@422
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@425
    move-result v10

    #@426
    if-nez v10, :cond_1f

    #@428
    .line 879
    const-string/jumbo v10, "long-support-message"

    #@42b
    const/4 v11, 0x0

    #@42c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42f
    .line 880
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    #@431
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@434
    move-result-object v10

    #@435
    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@438
    .line 881
    const-string/jumbo v10, "long-support-message"

    #@43b
    const/4 v11, 0x0

    #@43c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43f
    .line 883
    :cond_1f
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@441
    if-eqz v10, :cond_20

    #@443
    .line 884
    const-string/jumbo v10, "parent-admin"

    #@446
    const/4 v11, 0x0

    #@447
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44a
    .line 885
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44c
    invoke-virtual {v10, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@44f
    .line 886
    const-string/jumbo v10, "parent-admin"

    #@452
    const/4 v11, 0x0

    #@453
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@456
    .line 888
    :cond_20
    iget v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    #@458
    sget v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    #@45a
    if-eq v10, v11, :cond_21

    #@45c
    .line 889
    const-string/jumbo v10, "organization-color"

    #@45f
    const/4 v11, 0x0

    #@460
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@463
    .line 890
    const-string/jumbo v10, "value"

    #@466
    iget v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    #@468
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@46b
    move-result-object v11

    #@46c
    const/4 v12, 0x0

    #@46d
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@470
    .line 891
    const-string/jumbo v10, "organization-color"

    #@473
    const/4 v11, 0x0

    #@474
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@477
    .line 893
    :cond_21
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@479
    if-eqz v10, :cond_22

    #@47b
    .line 894
    const-string/jumbo v10, "organization-name"

    #@47e
    const/4 v11, 0x0

    #@47f
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@482
    .line 895
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    #@484
    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@487
    .line 896
    const-string/jumbo v10, "organization-name"

    #@48a
    const/4 v11, 0x0

    #@48b
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@48e
    .line 695
    :cond_22
    return-void

    #@48f
    .line 855
    :cond_23
    const-string/jumbo v10, "cross-profile-widget-providers"

    #@492
    const/4 v11, 0x0

    #@493
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@496
    .line 856
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@498
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@49b
    move-result v7

    #@49c
    .line 857
    .local v7, "providerCount":I
    const/4 v5, 0x0

    #@49d
    .local v5, "i":I
    :goto_4
    if-ge v5, v7, :cond_24

    #@49f
    .line 858
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@4a1
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4a4
    move-result-object v6

    #@4a5
    check-cast v6, Ljava/lang/String;

    #@4a7
    .line 859
    .local v6, "provider":Ljava/lang/String;
    const-string/jumbo v10, "provider"

    #@4aa
    const/4 v11, 0x0

    #@4ab
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4ae
    .line 860
    const-string/jumbo v10, "value"

    #@4b1
    const/4 v11, 0x0

    #@4b2
    invoke-interface {p1, v11, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4b5
    .line 861
    const-string/jumbo v10, "provider"

    #@4b8
    const/4 v11, 0x0

    #@4b9
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4bc
    .line 857
    add-int/lit8 v5, v5, 0x1

    #@4be
    goto :goto_4

    #@4bf
    .line 863
    .end local v6    # "provider":Ljava/lang/String;
    :cond_24
    const-string/jumbo v10, "cross-profile-widget-providers"

    #@4c2
    const/4 v11, 0x0

    #@4c3
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4c6
    goto/16 :goto_3
.end method
