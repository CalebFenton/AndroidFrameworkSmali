.class public Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# static fields
.field public static final ACCOUNT_FEATURE_DEVICE_OR_PROFILE_OWNER_ALLOWED:Ljava/lang/String; = "android.account.DEVICE_OR_PROFILE_OWNER_ALLOWED"

.field public static final ACCOUNT_FEATURE_DEVICE_OR_PROFILE_OWNER_DISALLOWED:Ljava/lang/String; = "android.account.DEVICE_OR_PROFILE_OWNER_DISALLOWED"

.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_BUGREPORT_SHARING_ACCEPTED:Ljava/lang/String; = "com.android.server.action.BUGREPORT_SHARING_ACCEPTED"

.field public static final ACTION_BUGREPORT_SHARING_DECLINED:Ljava/lang/String; = "com.android.server.action.BUGREPORT_SHARING_DECLINED"

.field public static final ACTION_DEVICE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_OWNER_CHANGED"

.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final ACTION_MANAGED_PROFILE_PROVISIONED:Ljava/lang/String; = "android.app.action.MANAGED_PROFILE_PROVISIONED"

.field public static final ACTION_PROVISION_FINALIZATION:Ljava/lang/String; = "android.app.action.PROVISION_FINALIZATION"

.field public static final ACTION_PROVISION_MANAGED_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE"

.field public static final ACTION_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

.field public static final ACTION_PROVISION_MANAGED_PROFILE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_PROFILE"

.field public static final ACTION_PROVISION_MANAGED_SHAREABLE_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_SHAREABLE_DEVICE"

.field public static final ACTION_PROVISION_MANAGED_USER:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_USER"

.field public static final ACTION_REMOTE_BUGREPORT_DISPATCH:Ljava/lang/String; = "android.intent.action.REMOTE_BUGREPORT_DISPATCH"

.field public static final ACTION_SET_NEW_PARENT_PROFILE_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

.field public static final ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field public static final ACTION_SET_PROFILE_OWNER:Ljava/lang/String; = "android.app.action.SET_PROFILE_OWNER"

.field public static final ACTION_START_ENCRYPTION:Ljava/lang/String; = "android.app.action.START_ENCRYPTION"

.field public static final ACTION_SYSTEM_UPDATE_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

.field public static final DEFAULT_STRONG_AUTH_TIMEOUT_MS:J = 0xf731400L

.field public static final ENCRYPTION_STATUS_ACTIVATING:I = 0x2

.field public static final ENCRYPTION_STATUS_ACTIVE:I = 0x3

.field public static final ENCRYPTION_STATUS_ACTIVE_DEFAULT_KEY:I = 0x4

.field public static final ENCRYPTION_STATUS_ACTIVE_PER_USER:I = 0x5

.field public static final ENCRYPTION_STATUS_INACTIVE:I = 0x1

.field public static final ENCRYPTION_STATUS_UNSUPPORTED:I = 0x0

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_BUGREPORT_NOTIFICATION_TYPE:Ljava/lang/String; = "android.app.extra.bugreport_notification_type"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final EXTRA_PROFILE_OWNER_NAME:Ljava/lang/String; = "android.app.extra.PROFILE_OWNER_NAME"

.field public static final EXTRA_PROVISIONING_ACCOUNT_TO_MIGRATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

.field public static final EXTRA_PROVISIONING_ADMIN_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM"

.field public static final EXTRA_PROVISIONING_EMAIL_ADDRESS:Ljava/lang/String; = "android.app.extra.PROVISIONING_EMAIL_ADDRESS"

.field public static final EXTRA_PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED:Ljava/lang/String; = "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field public static final EXTRA_PROVISIONING_LOCALE:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCALE"

.field public static final EXTRA_PROVISIONING_LOCAL_TIME:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCAL_TIME"

.field public static final EXTRA_PROVISIONING_LOGO_URI:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOGO_URI"

.field public static final EXTRA_PROVISIONING_MAIN_COLOR:Ljava/lang/String; = "android.app.extra.PROVISIONING_MAIN_COLOR"

.field public static final EXTRA_PROVISIONING_SKIP_ENCRYPTION:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

.field public static final EXTRA_PROVISIONING_SKIP_USER_SETUP:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_USER_SETUP"

.field public static final EXTRA_PROVISIONING_TIME_ZONE:Ljava/lang/String; = "android.app.extra.PROVISIONING_TIME_ZONE"

.field public static final EXTRA_PROVISIONING_WIFI_HIDDEN:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_HIDDEN"

.field public static final EXTRA_PROVISIONING_WIFI_PAC_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PAC_URL"

.field public static final EXTRA_PROVISIONING_WIFI_PASSWORD:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PASSWORD"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_BYPASS:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_HOST:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_PORT:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

.field public static final EXTRA_PROVISIONING_WIFI_SECURITY_TYPE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

.field public static final EXTRA_PROVISIONING_WIFI_SSID:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SSID"

.field public static final EXTRA_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "android.intent.extra.REMOTE_BUGREPORT_HASH"

.field public static final FLAG_MANAGED_CAN_ACCESS_PARENT:I = 0x2

.field public static final FLAG_PARENT_CAN_ACCESS_MANAGED:I = 0x1

.field public static final KEYGUARD_DISABLE_FEATURES_ALL:I = 0x7fffffff

.field public static final KEYGUARD_DISABLE_FEATURES_NONE:I = 0x0

.field public static final KEYGUARD_DISABLE_FINGERPRINT:I = 0x20

.field public static final KEYGUARD_DISABLE_REMOTE_INPUT:I = 0x40

.field public static final KEYGUARD_DISABLE_SECURE_CAMERA:I = 0x2

.field public static final KEYGUARD_DISABLE_SECURE_NOTIFICATIONS:I = 0x4

.field public static final KEYGUARD_DISABLE_TRUST_AGENTS:I = 0x10

.field public static final KEYGUARD_DISABLE_UNREDACTED_NOTIFICATIONS:I = 0x8

.field public static final KEYGUARD_DISABLE_WIDGETS_ALL:I = 0x1

.field public static final MAKE_USER_EPHEMERAL:I = 0x2

.field public static final MIME_TYPE_PROVISIONING_NFC:Ljava/lang/String; = "application/com.android.managedprovisioning"

.field public static final NOTIFICATION_BUGREPORT_ACCEPTED_NOT_FINISHED:I = 0x2

.field public static final NOTIFICATION_BUGREPORT_FINISHED_NOT_ACCEPTED:I = 0x3

.field public static final NOTIFICATION_BUGREPORT_STARTED:I = 0x1

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_BIOMETRIC_WEAK:I = 0x8000

.field public static final PASSWORD_QUALITY_COMPLEX:I = 0x60000

.field public static final PASSWORD_QUALITY_MANAGED:I = 0x80000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_NUMERIC_COMPLEX:I = 0x30000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final PERMISSION_GRANT_STATE_DEFAULT:I = 0x0

.field public static final PERMISSION_GRANT_STATE_DENIED:I = 0x2

.field public static final PERMISSION_GRANT_STATE_GRANTED:I = 0x1

.field public static final PERMISSION_POLICY_AUTO_DENY:I = 0x2

.field public static final PERMISSION_POLICY_AUTO_GRANT:I = 0x1

.field public static final PERMISSION_POLICY_PROMPT:I = 0x0

.field public static final RESET_PASSWORD_DO_NOT_ASK_CREDENTIALS_ON_BOOT:I = 0x2

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field public static final SKIP_SETUP_WIZARD:I = 0x1

.field public static final STATE_USER_PROFILE_COMPLETE:I = 0x4

.field public static final STATE_USER_SETUP_COMPLETE:I = 0x2

.field public static final STATE_USER_SETUP_FINALIZED:I = 0x3

.field public static final STATE_USER_SETUP_INCOMPLETE:I = 0x1

.field public static final STATE_USER_UNMANAGED:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1

.field public static final WIPE_RESET_PROTECTION_DATA:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParentInstance:Z

.field private final mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 95
    const-string/jumbo v0, "DevicePolicyManager"

    #@3
    sput-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@5
    .line 94
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/admin/IDevicePolicyManager;
    .param p3, "parentInstance"    # Z

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 112
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    #@5
    .line 113
    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    .line 114
    iput-boolean p3, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@9
    .line 111
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentInstance"    # Z

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "device_policy"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 103
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    #@a
    move-result-object v0

    #@b
    .line 102
    invoke-direct {p0, p1, v0, p2}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    #@e
    .line 101
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 119
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, p0, v2}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Z)V

    #@7
    .line 120
    .local v0, "me":Landroid/app/admin/DevicePolicyManager;
    iget-object v2, v0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v2, :cond_0

    #@b
    .end local v0    # "me":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return-object v0

    #@c
    .restart local v0    # "me":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    move-object v0, v1

    #@d
    goto :goto_0
.end method

.method private static getCaCertAlias([B)Ljava/lang/String;
    .locals 3
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 3062
    const-string/jumbo v2, "X.509"

    #@3
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v1

    #@7
    .line 3064
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    .line 3063
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@12
    .line 3065
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@14
    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    #@17
    invoke-virtual {v2, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method private getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;
    .locals 3
    .param p1, "callingUserOnly"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3743
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3745
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3746
    :catch_0
    move-exception v0

    #@d
    .line 3747
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1

    #@12
    .line 3750
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method private isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUserOnly"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3732
    if-nez p1, :cond_0

    #@3
    .line 3733
    return v1

    #@4
    .line 3735
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    #@7
    move-result-object v0

    #@8
    .line 3736
    .local v0, "deviceOwner":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    #@a
    .line 3737
    return v1

    #@b
    .line 3739
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method private throwIfParentInstance(Ljava/lang/String;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6572
    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6573
    new-instance v0, Ljava/lang/SecurityException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, " cannot be called on the parent instance"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 6571
    :cond_0
    return-void
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 4666
    const-string/jumbo v1, "addCrossProfileIntentFilter"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4667
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4669
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4665
    :cond_0
    return-void

    #@10
    .line 4670
    :catch_0
    move-exception v0

    #@11
    .line 4671
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5596
    const-string/jumbo v1, "addCrossProfileWidgetProvider"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5597
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5599
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 5600
    :catch_0
    move-exception v0

    #@12
    .line 5601
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 5604
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4206
    const-string/jumbo v1, "addPersistentPreferredActivity"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4207
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4209
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4205
    :cond_0
    return-void

    #@10
    .line 4210
    :catch_0
    move-exception v0

    #@11
    .line 4211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5123
    const-string/jumbo v1, "addUserRestriction"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5124
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5126
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 5122
    :cond_0
    return-void

    #@11
    .line 5127
    :catch_0
    move-exception v0

    #@12
    .line 5128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public approveCaCert(Ljava/lang/String;IZ)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "approval"    # Z

    #@0
    .prologue
    .line 2811
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2813
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2814
    :catch_0
    move-exception v0

    #@c
    .line 2815
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 2818
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4685
    const-string/jumbo v1, "clearCrossProfileIntentFilters"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4686
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4688
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4684
    :cond_0
    return-void

    #@10
    .line 4689
    :catch_0
    move-exception v0

    #@11
    .line 4690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public clearDeviceOwnerApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3782
    const-string/jumbo v1, "clearDeviceOwnerApp"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3783
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3785
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->clearDeviceOwner(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3781
    :cond_0
    return-void

    #@10
    .line 3786
    :catch_0
    move-exception v0

    #@11
    .line 3787
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4229
    const-string/jumbo v1, "clearPackagePersistentPreferredActivities"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4230
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4232
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4228
    :cond_0
    return-void

    #@10
    .line 4233
    :catch_0
    move-exception v0

    #@11
    .line 4234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3903
    const-string/jumbo v1, "clearProfileOwner"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3904
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3906
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->clearProfileOwner(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3902
    :cond_0
    return-void

    #@10
    .line 3907
    :catch_0
    move-exception v0

    #@11
    .line 3908
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5145
    const-string/jumbo v1, "clearUserRestriction"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5146
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5148
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 5144
    :cond_0
    return-void

    #@11
    .line 5149
    :catch_0
    move-exception v0

    #@12
    .line 5150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4992
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "profileOwner"    # Landroid/content/ComponentName;
    .param p4, "adminExtras"    # Landroid/os/PersistableBundle;
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 5038
    const-string/jumbo v0, "createAndManageUser"

    #@3
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5040
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move v5, p5

    #@d
    invoke-interface/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 5041
    :catch_0
    move-exception v6

    #@13
    .line 5042
    .local v6, "re":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v0

    #@17
    throw v0
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4958
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5253
    const-string/jumbo v1, "enableSystemApp"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5254
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5256
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 5257
    :catch_0
    move-exception v0

    #@12
    .line 5258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 5261
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5232
    const-string/jumbo v1, "enableSystemApp"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5233
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5235
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5231
    :cond_0
    return-void

    #@10
    .line 5236
    :catch_0
    move-exception v0

    #@11
    .line 5237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 6528
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 6526
    return-void

    #@6
    .line 6529
    :catch_0
    move-exception v0

    #@7
    .line 6530
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5307
    const-string/jumbo v0, "getAccountTypesWithManagementDisabled"

    #@3
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5308
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5316
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 5318
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 5319
    :catch_0
    move-exception v0

    #@d
    .line 5320
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1

    #@12
    .line 5324
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1104
    const-string/jumbo v0, "getActiveAdmins"

    #@3
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 1105
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getActiveAdminsAsUser(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1113
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1115
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 1116
    :catch_0
    move-exception v0

    #@d
    .line 1117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1

    #@12
    .line 1120
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3178
    const-string/jumbo v1, "getAlwaysOnVpnPackage"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 3179
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 3181
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 3182
    :catch_0
    move-exception v0

    #@13
    .line 3183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 3186
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5100
    const-string/jumbo v1, "getApplicationRestrictions"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 5101
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 5103
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 5104
    :catch_0
    move-exception v0

    #@13
    .line 5105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 5108
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4280
    const-string/jumbo v1, "getApplicationRestrictionsManagingPackage"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 4281
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 4283
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 4284
    :catch_0
    move-exception v0

    #@13
    .line 4285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 4288
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getAutoTimeRequired()Z
    .locals 2

    #@0
    .prologue
    .line 3353
    const-string/jumbo v1, "getAutoTimeRequired"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3354
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3356
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 3357
    :catch_0
    move-exception v0

    #@12
    .line 3358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 3361
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4622
    const-string/jumbo v1, "getBluetoothContactSharingDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4623
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4625
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 4626
    :catch_0
    move-exception v0

    #@12
    .line 4627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 4630
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    #@18
    return v1
.end method

.method public getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4642
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4644
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabledForUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 4646
    :catch_0
    move-exception v0

    #@10
    .line 4647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v1

    #@14
    throw v1

    #@15
    .line 4650
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3223
    const-string/jumbo v0, "getCameraDisabled"

    #@3
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3224
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 3229
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3231
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3232
    :catch_0
    move-exception v0

    #@c
    .line 3233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 3236
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3110
    const-string/jumbo v1, "getCertInstallerPackage"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 3111
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 3113
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 3114
    :catch_0
    move-exception v0

    #@13
    .line 3115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 3118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4466
    const-string/jumbo v1, "getCrossProfileCallerIdDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4467
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4469
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 4470
    :catch_0
    move-exception v0

    #@12
    .line 4471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 4474
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4484
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4486
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabledForUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 4487
    :catch_0
    move-exception v0

    #@10
    .line 4488
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v1

    #@14
    throw v1

    #@15
    .line 4491
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4528
    const-string/jumbo v1, "getCrossProfileContactsSearchDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4529
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4531
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 4532
    :catch_0
    move-exception v0

    #@12
    .line 4533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 4536
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4547
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4549
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    .line 4550
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@9
    move-result v2

    #@a
    .line 4549
    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabledForUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 4551
    :catch_0
    move-exception v0

    #@10
    .line 4552
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v1

    #@14
    throw v1

    #@15
    .line 4555
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5646
    const-string/jumbo v2, "getCrossProfileWidgetProviders"

    #@3
    invoke-direct {p0, v2}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5647
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 5649
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v2, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v0

    #@10
    .line 5650
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    #@12
    .line 5651
    return-object v0

    #@13
    .line 5653
    .end local v0    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    #@14
    .line 5654
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v2

    #@18
    throw v2

    #@19
    .line 5657
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method public getCurrentFailedPasswordAttempts()I
    .locals 1

    #@0
    .prologue
    .line 2082
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2096
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2098
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 2099
    :catch_0
    move-exception v0

    #@e
    .line 2100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 2103
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    #@14
    return v1
.end method

.method public getDeviceInitializerApp()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3846
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDeviceInitializerComponent()Landroid/content/ComponentName;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3857
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3801
    const-string/jumbo v2, "getDeviceOwner"

    #@4
    invoke-direct {p0, v2}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 3802
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    #@a
    move-result-object v0

    #@b
    .line 3803
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    :cond_0
    return-object v1
.end method

.method public getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 3728
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 3717
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3991
    const-string/jumbo v1, "getDeviceOwnerLockScreenInfo"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 3992
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 3994
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 3995
    :catch_0
    move-exception v0

    #@13
    .line 3996
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 3999
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getDeviceOwnerNameOnAnyUser()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3827
    const-string/jumbo v1, "getDeviceOwnerNameOnAnyUser"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 3828
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 3830
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 3831
    :catch_0
    move-exception v0

    #@13
    .line 3832
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 3835
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getDeviceOwnerUserId()I
    .locals 2

    #@0
    .prologue
    .line 3762
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3764
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3765
    :catch_0
    move-exception v0

    #@c
    .line 3766
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 3769
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, -0x2710

    #@13
    return v1
.end method

.method public getDoNotAskCredentialsOnBoot()Z
    .locals 2

    #@0
    .prologue
    .line 2113
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2115
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2116
    :catch_0
    move-exception v0

    #@c
    .line 2117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 2120
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public getForceEphemeralUsers(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3396
    const-string/jumbo v1, "getForceEphemeralUsers"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3397
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3399
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 3400
    :catch_0
    move-exception v0

    #@12
    .line 3401
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 3404
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public getGlobalProxyAdmin()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2586
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2588
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@a
    move-result v2

    #@b
    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 2589
    :catch_0
    move-exception v0

    #@11
    .line 2590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1

    #@16
    .line 2593
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getGuestUserDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3272
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getInstalledCaCerts(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2896
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2897
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string/jumbo v6, "getInstalledCaCerts"

    #@8
    invoke-direct {p0, v6}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@b
    .line 2898
    iget-object v6, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 2900
    :try_start_0
    iget-object v6, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@11
    invoke-interface {v6, p1}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    #@14
    .line 2901
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@16
    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    #@19
    .line 2902
    .local v3, "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-virtual {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    #@1c
    move-result-object v6

    #@1d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_0

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@2d
    .line 2904
    .local v0, "alias":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@34
    move-result-object v6

    #@35
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@38
    goto :goto_0

    #@39
    .line 2905
    :catch_0
    move-exception v2

    #@3a
    .line 2906
    .local v2, "ce":Ljava/security/cert/CertificateException;
    :try_start_2
    sget-object v6, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@3c
    new-instance v7, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v8, "Could not encode certificate: "

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@53
    goto :goto_0

    #@54
    .line 2909
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "alias$iterator":Ljava/util/Iterator;
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .end local v3    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_1
    move-exception v5

    #@55
    .line 2910
    .local v5, "re":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@58
    move-result-object v6

    #@59
    throw v6

    #@5a
    .line 2913
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4906
    const-string/jumbo v1, "getKeepUninstalledPackages"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 4907
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 4909
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 4910
    :catch_0
    move-exception v0

    #@13
    .line 4911
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 4914
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3472
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 3477
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3479
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 3480
    :catch_0
    move-exception v0

    #@e
    .line 3481
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 3484
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5362
    const-string/jumbo v1, "getLockTaskPackages"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 5363
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 5365
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 5366
    :catch_0
    move-exception v0

    #@13
    .line 5367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 5370
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6052
    const-string/jumbo v1, "getLongSupportMessage"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 6053
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 6055
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 6056
    :catch_0
    move-exception v0

    #@13
    .line 6057
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 6060
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6095
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 6097
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 6098
    :catch_0
    move-exception v0

    #@d
    .line 6099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1

    #@12
    .line 6102
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2171
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2176
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2178
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    .line 2179
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    .line 2178
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 2180
    :catch_0
    move-exception v0

    #@e
    .line 2181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 2184
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2314
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2319
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2321
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-wide v2

    #@c
    return-wide v2

    #@d
    .line 2322
    :catch_0
    move-exception v0

    #@e
    .line 2323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 2326
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    #@15
    return-wide v2
.end method

.method public getMaximumTimeToLockForUserAndProfiles(I)J
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2336
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2338
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-wide v2

    #@a
    return-wide v2

    #@b
    .line 2339
    :catch_0
    move-exception v0

    #@c
    .line 2340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 2343
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    #@13
    return-wide v2
.end method

.method public getOrganizationColor(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 6333
    const-string/jumbo v1, "getOrganizationColor"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6335
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColor(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 6336
    :catch_0
    move-exception v0

    #@e
    .line 6337
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getOrganizationColorForUser(I)I
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 6350
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColorForUser(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 6351
    :catch_0
    move-exception v0

    #@8
    .line 6352
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 6386
    const-string/jumbo v1, "getOrganizationName"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6388
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 6389
    :catch_0
    move-exception v0

    #@e
    .line 6390
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getOrganizationNameForUser(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 6404
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 6405
    :catch_0
    move-exception v0

    #@8
    .line 6406
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 6150
    const-string/jumbo v1, "getParentProfileInstance"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6152
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 6153
    new-instance v1, Ljava/lang/SecurityException;

    #@10
    const-string/jumbo v2, "The current user does not have a parent profile."

    #@13
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 6156
    :catch_0
    move-exception v0

    #@18
    .line 6157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1b
    move-result-object v1

    #@1c
    throw v1

    #@1d
    .line 6155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/app/admin/DevicePolicyManager;

    #@1f
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    #@21
    const/4 v3, 0x1

    #@22
    invoke-direct {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@25
    return-object v1
.end method

.method public getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;
    .locals 3
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    .line 6241
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    #@2
    .line 6242
    const-string/jumbo v1, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    #@5
    .line 6241
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    #@8
    .line 6243
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 6244
    new-instance v0, Ljava/lang/SecurityException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "The user "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 6245
    const-string/jumbo v2, " does not have a parent profile."

    #@25
    .line 6244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 6247
    :cond_0
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    #@33
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    #@35
    const/4 v2, 0x1

    #@36
    invoke-direct {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Z)V

    #@39
    return-object v0
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;)J
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1965
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1967
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@9
    move-result v2

    #@a
    iget-boolean v3, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@c
    invoke-interface {v1, p1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-wide v2

    #@10
    return-wide v2

    #@11
    .line 1968
    :catch_0
    move-exception v0

    #@12
    .line 1969
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 1972
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    #@19
    return-wide v2
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1941
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1943
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@9
    move-result v2

    #@a
    iget-boolean v3, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@c
    invoke-interface {v1, p1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-wide v2

    #@10
    return-wide v2

    #@11
    .line 1944
    :catch_0
    move-exception v0

    #@12
    .line 1945
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 1948
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    #@19
    return-wide v2
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1989
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1994
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1996
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1997
    :catch_0
    move-exception v0

    #@e
    .line 1998
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 2001
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getPasswordMaximumLength(I)I
    .locals 1
    .param p1, "quality"    # I

    #@0
    .prologue
    .line 2012
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1429
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1434
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1436
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1437
    :catch_0
    move-exception v0

    #@e
    .line 1438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 1441
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1635
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1640
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1642
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1643
    :catch_0
    move-exception v0

    #@e
    .line 1644
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 1647
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1567
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1572
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1574
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1575
    :catch_0
    move-exception v0

    #@e
    .line 1576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 1579
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1838
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1843
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1845
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1846
    :catch_0
    move-exception v0

    #@e
    .line 1847
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 1850
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1703
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1708
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1710
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1711
    :catch_0
    move-exception v0

    #@e
    .line 1712
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 1715
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1770
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1775
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1777
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1778
    :catch_0
    move-exception v0

    #@e
    .line 1779
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 1782
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1498
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1503
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1505
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1506
    :catch_0
    move-exception v0

    #@e
    .line 1507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 1510
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1364
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1369
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1371
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1372
    :catch_0
    move-exception v0

    #@e
    .line 1373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 1376
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5877
    const-string/jumbo v1, "getPermissionGrantState"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5879
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 5880
    :catch_0
    move-exception v0

    #@e
    .line 5881
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5811
    const-string/jumbo v1, "getPermissionPolicy"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5813
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermissionPolicy(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 5814
    :catch_0
    move-exception v0

    #@e
    .line 5815
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getPermittedAccessibilityServices(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4785
    const-string/jumbo v1, "getPermittedAccessibilityServices"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 4786
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 4788
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 4789
    :catch_0
    move-exception v0

    #@13
    .line 4790
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 4793
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4737
    const-string/jumbo v1, "getPermittedAccessibilityServices"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 4738
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 4740
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 4741
    :catch_0
    move-exception v0

    #@13
    .line 4742
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 4745
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4839
    const-string/jumbo v1, "getPermittedInputMethods"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 4840
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 4842
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 4843
    :catch_0
    move-exception v0

    #@13
    .line 4844
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 4847
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4885
    const-string/jumbo v1, "getPermittedInputMethodsForCurrentUser"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 4886
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 4888
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 4889
    :catch_0
    move-exception v0

    #@13
    .line 4890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 4893
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getProfileOwner()Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 4130
    const-string/jumbo v0, "getProfileOwner"

    #@3
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4131
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4139
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 4141
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 4142
    :catch_0
    move-exception v0

    #@d
    .line 4143
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1

    #@12
    .line 4146
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getProfileOwnerName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4156
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 4158
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@e
    move-result v2

    #@f
    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 4159
    :catch_0
    move-exception v0

    #@15
    .line 4160
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@18
    move-result-object v1

    #@19
    throw v1

    #@1a
    .line 4163
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getProfileOwnerNameAsUser(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4175
    const-string/jumbo v1, "getProfileOwnerNameAsUser"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 4176
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 4178
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 4179
    :catch_0
    move-exception v0

    #@13
    .line 4180
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 4183
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2195
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2197
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    .line 2198
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    .line 2197
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 2199
    :catch_0
    move-exception v0

    #@e
    .line 2200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 2203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, -0x2710

    #@15
    return v1
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;

    #@0
    .prologue
    .line 3512
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3514
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3511
    :cond_0
    return-void

    #@e
    .line 3515
    :catch_0
    move-exception v0

    #@f
    .line 3516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2403
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2408
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2410
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-wide v2

    #@c
    return-wide v2

    #@d
    .line 2411
    :catch_0
    move-exception v0

    #@e
    .line 2412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 2415
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/32 v2, 0xf731400

    #@16
    return-wide v2
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3309
    const-string/jumbo v0, "getScreenCaptureDisabled"

    #@3
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3310
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 3315
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3317
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3318
    :catch_0
    move-exception v0

    #@c
    .line 3319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 3322
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6006
    const-string/jumbo v1, "getShortSupportMessage"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 6007
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 6009
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 6010
    :catch_0
    move-exception v0

    #@13
    .line 6011
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 6014
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6074
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 6076
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 6077
    :catch_0
    move-exception v0

    #@d
    .line 6078
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1

    #@12
    .line 6081
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2752
    const-string/jumbo v1, "getStorageEncryption"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 2753
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2755
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@f
    move-result v2

    #@10
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 2756
    :catch_0
    move-exception v0

    #@16
    .line 2757
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@19
    move-result-object v1

    #@1a
    throw v1

    #@1b
    .line 2760
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1c
    return v1
.end method

.method public getStorageEncryptionStatus()I
    .locals 1

    #@0
    .prologue
    .line 2784
    const-string/jumbo v0, "getStorageEncryptionStatus"

    #@3
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 2785
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2790
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2792
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v1, v2, p1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryptionStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 2793
    :catch_0
    move-exception v0

    #@12
    .line 2794
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 2797
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5704
    const-string/jumbo v1, "getSystemUpdatePolicy"

    #@4
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 5705
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 5707
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 5708
    :catch_0
    move-exception v0

    #@13
    .line 5709
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 5712
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4416
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4422
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4424
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    .line 4425
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    .line 4424
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/admin/IDevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 4426
    :catch_0
    move-exception v0

    #@e
    .line 4427
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 4430
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@18
    return-object v1
.end method

.method public getUserProvisioningState()I
    .locals 2

    #@0
    .prologue
    .line 6418
    const-string/jumbo v1, "getUserProvisioningState"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6419
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 6421
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getUserProvisioningState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 6422
    :catch_0
    move-exception v0

    #@12
    .line 6423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 6426
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5167
    const-string/jumbo v2, "getUserRestrictions"

    #@3
    invoke-direct {p0, v2}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5168
    const/4 v1, 0x0

    #@7
    .line 5169
    .local v1, "ret":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 5171
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v2, p1}, Landroid/app/admin/IDevicePolicyManager;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    .line 5176
    .end local v1    # "ret":Landroid/os/Bundle;
    :cond_0
    if-nez v1, :cond_1

    #@13
    new-instance v1, Landroid/os/Bundle;

    #@15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@18
    :cond_1
    return-object v1

    #@19
    .line 5172
    .restart local v1    # "ret":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    #@1a
    .line 5173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1d
    move-result-object v2

    #@1e
    throw v2
.end method

.method public getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5943
    const-string/jumbo v1, "getWifiMacAddress"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5945
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 5946
    :catch_0
    move-exception v0

    #@e
    .line 5947
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public hasCaCertInstalled(Landroid/content/ComponentName;[B)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2947
    const-string/jumbo v3, "hasCaCertInstalled"

    #@4
    invoke-direct {p0, v3}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 2948
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 2950
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-interface {v3, p1}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    #@10
    .line 2951
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v3

    #@14
    if-eqz v3, :cond_0

    #@16
    const/4 v2, 0x1

    #@17
    :cond_0
    return v2

    #@18
    .line 2954
    :catch_0
    move-exception v0

    #@19
    .line 2955
    .local v0, "ce":Ljava/security/cert/CertificateException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@1b
    const-string/jumbo v4, "Could not parse certificate"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 2958
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :cond_1
    return v2

    #@22
    .line 2952
    :catch_1
    move-exception v1

    #@23
    .line 2953
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@26
    move-result-object v2

    #@27
    throw v2
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I

    #@0
    .prologue
    .line 1182
    const-string/jumbo v1, "hasGrantedPolicy"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 1183
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1185
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@f
    move-result v2

    #@10
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 1186
    :catch_0
    move-exception v0

    #@16
    .line 1187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@19
    move-result-object v1

    #@1a
    throw v1

    #@1b
    .line 1190
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1c
    return v1
.end method

.method public hasUserSetupCompleted()Z
    .locals 2

    #@0
    .prologue
    .line 3918
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3920
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->hasUserSetupCompleted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3921
    :catch_0
    move-exception v0

    #@c
    .line 3922
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 3925
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    #@12
    return v1
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    #@0
    .prologue
    .line 2850
    const-string/jumbo v1, "installCaCert"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 2851
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2853
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->installCaCert(Landroid/content/ComponentName;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 2854
    :catch_0
    move-exception v0

    #@12
    .line 2855
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 2858
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "cert"    # Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2985
    const/4 v0, 0x1

    #@2
    new-array v3, v0, [Ljava/security/cert/Certificate;

    #@4
    aput-object p3, v3, v5

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p2

    #@9
    move-object v4, p4

    #@a
    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "certs"    # [Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "requestAccess"    # Z

    #@0
    .prologue
    .line 3016
    const-string/jumbo v0, "installKeyPair"

    #@3
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3018
    const/4 v0, 0x1

    #@7
    :try_start_0
    new-array v0, v0, [Ljava/security/cert/Certificate;

    #@9
    const/4 v1, 0x0

    #@a
    aget-object v1, p3, v1

    #@c
    const/4 v5, 0x0

    #@d
    aput-object v1, v0, v5

    #@f
    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    #@12
    move-result-object v3

    #@13
    .line 3019
    .local v3, "pemCert":[B
    const/4 v4, 0x0

    #@14
    .line 3020
    .local v4, "pemChain":[B
    array-length v0, p3

    #@15
    const/4 v1, 0x1

    #@16
    if-le v0, v1, :cond_0

    #@18
    .line 3021
    array-length v0, p3

    #@19
    const/4 v1, 0x1

    #@1a
    invoke-static {p3, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, [Ljava/security/cert/Certificate;

    #@20
    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    #@23
    move-result-object v4

    #@24
    .line 3023
    .end local v4    # "pemChain":[B
    :cond_0
    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@2b
    move-result-object v0

    #@2c
    .line 3024
    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@2e
    .line 3023
    invoke-virtual {v0, p2, v1}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@34
    invoke-virtual {v0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    #@37
    move-result-object v2

    #@38
    .line 3025
    .local v2, "pkcs8Key":[B
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3a
    move-object v1, p1

    #@3b
    move-object v5, p4

    #@3c
    move v6, p5

    #@3d
    invoke-interface/range {v0 .. v6}, Landroid/app/admin/IDevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;[B[B[BLjava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    move-result v0

    #@41
    return v0

    #@42
    .line 3031
    .end local v2    # "pkcs8Key":[B
    .end local v3    # "pemCert":[B
    :catch_0
    move-exception v8

    #@43
    .line 3032
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@45
    const-string/jumbo v1, "Could not pem-encode certificate"

    #@48
    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    .line 3034
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    #@4c
    return v0

    #@4d
    .line 3029
    :catch_1
    move-exception v9

    #@4e
    .line 3030
    .local v9, "e":Ljava/security/GeneralSecurityException;
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@50
    const-string/jumbo v1, "Failed to obtain private key material"

    #@53
    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    goto :goto_0

    #@57
    .line 3027
    .end local v9    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v7

    #@58
    .line 3028
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@5b
    move-result-object v0

    #@5c
    throw v0
.end method

.method public isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 4760
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4762
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 4764
    :catch_0
    move-exception v0

    #@c
    .line 4765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 4768
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public isActivePasswordSufficient()Z
    .locals 4

    #@0
    .prologue
    .line 2034
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2036
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@9
    move-result v2

    #@a
    iget-boolean v3, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@c
    invoke-interface {v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 2037
    :catch_0
    move-exception v0

    #@12
    .line 2038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 2041
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1064
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isAdminActiveAsUser(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1072
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1074
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1075
    :catch_0
    move-exception v0

    #@c
    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 1079
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public isAffiliatedUser()Z
    .locals 2

    #@0
    .prologue
    .line 6481
    const-string/jumbo v1, "isAffiliatedUser"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6483
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isAffiliatedUser()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0

    #@13
    .line 6484
    :catch_0
    move-exception v0

    #@14
    .line 6485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v1

    #@18
    throw v1
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5212
    const-string/jumbo v1, "isApplicationHidden"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5213
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5215
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 5216
    :catch_0
    move-exception v0

    #@12
    .line 5217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 5220
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public isBackupServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 6602
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 6603
    :catch_0
    move-exception v0

    #@8
    .line 6604
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isCaCertApproved(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2827
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2829
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2830
    :catch_0
    move-exception v0

    #@c
    .line 2831
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 2834
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public isCallerApplicationRestrictionsManagingPackage()Z
    .locals 2

    #@0
    .prologue
    .line 4300
    const-string/jumbo v1, "isCallerApplicationRestrictionsManagingPackage"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4301
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4303
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isCallerApplicationRestrictionsManagingPackage()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 4304
    :catch_0
    move-exception v0

    #@12
    .line 4305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 4308
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public isDeviceManaged()Z
    .locals 1

    #@0
    .prologue
    .line 3814
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isDeviceOwnerApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3684
    const-string/jumbo v0, "isDeviceOwnerApp"

    #@3
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3685
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3708
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3696
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 2

    #@0
    .prologue
    .line 6541
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioned()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 6542
    :catch_0
    move-exception v0

    #@8
    .line 6543
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isDeviceProvisioningConfigApplied()Z
    .locals 2

    #@0
    .prologue
    .line 6565
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioningConfigApplied()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 6566
    :catch_0
    move-exception v0

    #@8
    .line 6567
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 4862
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4864
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 4865
    :catch_0
    move-exception v0

    #@c
    .line 4866
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 4869
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5379
    const-string/jumbo v1, "isLockTaskPermitted"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5380
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5382
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 5383
    :catch_0
    move-exception v0

    #@12
    .line 5384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 5387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public isManagedProfile(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5909
    const-string/jumbo v1, "isManagedProfile"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5911
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 5912
    :catch_0
    move-exception v0

    #@e
    .line 5913
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5521
    const-string/jumbo v1, "isMasterVolumeMuted"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5522
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5524
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 5525
    :catch_0
    move-exception v0

    #@12
    .line 5526
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 5529
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 4046
    const-string/jumbo v2, "isPackageSuspended"

    #@3
    invoke-direct {p0, v2}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4047
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 4049
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v2, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 4052
    :catch_0
    move-exception v1

    #@12
    .line 4053
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@14
    invoke-direct {v2, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 4050
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    #@19
    .line 4051
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v2

    #@1d
    throw v2

    #@1e
    .line 4056
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@1f
    return v2
.end method

.method public isProfileActivePasswordSufficientForParent(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2055
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2057
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isProfileActivePasswordSufficientForParent(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2058
    :catch_0
    move-exception v0

    #@c
    .line 2059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 2062
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public isProfileOwnerApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4109
    const-string/jumbo v3, "isProfileOwnerApp"

    #@4
    invoke-direct {p0, v3}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 4110
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 4112
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@10
    move-result v4

    #@11
    invoke-interface {v3, v4}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    #@14
    move-result-object v0

    #@15
    .line 4113
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@17
    .line 4114
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result v2

    #@1f
    .line 4113
    :cond_0
    return v2

    #@20
    .line 4115
    .end local v0    # "profileOwner":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    #@21
    .line 4116
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@24
    move-result-object v2

    #@25
    throw v2

    #@26
    .line 4119
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    return v2
.end method

.method public isProvisioningAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5893
    const-string/jumbo v1, "isProvisioningAllowed"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5895
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isProvisioningAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 5896
    :catch_0
    move-exception v0

    #@e
    .line 5897
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1087
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1089
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1090
    :catch_0
    move-exception v0

    #@c
    .line 1091
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 1094
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 6196
    const-string/jumbo v1, "isSecurityLoggingEnabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6198
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 6199
    :catch_0
    move-exception v0

    #@e
    .line 6200
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public isSeparateProfileChallengeAllowed(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1199
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1201
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isSeparateProfileChallengeAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1202
    :catch_0
    move-exception v0

    #@c
    .line 1203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 1206
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public isSystemOnlyUser(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5926
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isSystemOnlyUser(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 5927
    :catch_0
    move-exception v0

    #@8
    .line 5928
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5568
    const-string/jumbo v1, "isUninstallBlocked"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5569
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5571
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 5572
    :catch_0
    move-exception v0

    #@12
    .line 5573
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 5576
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public isUninstallInQueue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6498
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 6499
    :catch_0
    move-exception v0

    #@8
    .line 6500
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public lockNow()V
    .locals 3

    #@0
    .prologue
    .line 2432
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2434
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->lockNow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 2431
    :cond_0
    return-void

    #@c
    .line 2435
    :catch_0
    move-exception v0

    #@d
    .line 2436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method protected myUserId()I
    .locals 1

    #@0
    .prologue
    .line 126
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public notifyPendingSystemUpdate(J)V
    .locals 3
    .param p1, "updateReceivedTime"    # J

    #@0
    .prologue
    .line 5768
    const-string/jumbo v1, "notifyPendingSystemUpdate"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5769
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5771
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5767
    :cond_0
    return-void

    #@10
    .line 5772
    :catch_0
    move-exception v0

    #@11
    .line 5773
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1129
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1138
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1140
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1141
    :catch_0
    move-exception v0

    #@c
    .line 1142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 1145
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public reboot(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5960
    const-string/jumbo v1, "reboot"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5962
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reboot(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 5959
    return-void

    #@c
    .line 5963
    :catch_0
    move-exception v0

    #@d
    .line 5964
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1161
    const-string/jumbo v1, "removeActiveAdmin"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 1162
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1164
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@f
    move-result v2

    #@10
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1160
    :cond_0
    return-void

    #@14
    .line 1165
    :catch_0
    move-exception v0

    #@15
    .line 1166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@18
    move-result-object v1

    #@19
    throw v1
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5624
    const-string/jumbo v1, "removeCrossProfileWidgetProvider"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5625
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5627
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 5628
    :catch_0
    move-exception v0

    #@12
    .line 5629
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 5632
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3049
    const-string/jumbo v1, "removeKeyPair"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3051
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 3052
    :catch_0
    move-exception v0

    #@e
    .line 3053
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 5056
    const-string/jumbo v1, "removeUser"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5058
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 5059
    :catch_0
    move-exception v0

    #@e
    .line 5060
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public reportFailedFingerprintAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 3566
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3568
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedFingerprintAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3565
    :cond_0
    return-void

    #@a
    .line 3569
    :catch_0
    move-exception v0

    #@b
    .line 3570
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 3540
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3542
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3539
    :cond_0
    return-void

    #@a
    .line 3543
    :catch_0
    move-exception v0

    #@b
    .line 3544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public reportKeyguardDismissed(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 3593
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3595
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3592
    :cond_0
    return-void

    #@a
    .line 3596
    :catch_0
    move-exception v0

    #@b
    .line 3597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public reportKeyguardSecured(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 3607
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3609
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardSecured(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3606
    :cond_0
    return-void

    #@a
    .line 3610
    :catch_0
    move-exception v0

    #@b
    .line 3611
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public reportSuccessfulFingerprintAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 3579
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3581
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulFingerprintAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3578
    :cond_0
    return-void

    #@a
    .line 3582
    :catch_0
    move-exception v0

    #@b
    .line 3583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 3553
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3555
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3552
    :cond_0
    return-void

    #@a
    .line 3556
    :catch_0
    move-exception v0

    #@b
    .line 3557
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public requestBugreport(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3253
    const-string/jumbo v1, "requestBugreport"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3254
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3256
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->requestBugreport(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 3257
    :catch_0
    move-exception v0

    #@12
    .line 3258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 3261
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2260
    const-string/jumbo v1, "resetPassword"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 2261
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2263
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 2264
    :catch_0
    move-exception v0

    #@12
    .line 2265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 2268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6267
    const-string/jumbo v2, "retrievePreRebootSecurityLogs"

    #@4
    invoke-direct {p0, v2}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 6269
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    invoke-interface {v2, p1}, Landroid/app/admin/IDevicePolicyManager;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    #@c
    move-result-object v0

    #@d
    .line 6270
    .local v0, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-eqz v0, :cond_0

    #@f
    .line 6271
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 6273
    :cond_0
    return-object v3

    #@15
    .line 6275
    .end local v0    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :catch_0
    move-exception v1

    #@16
    .line 6276
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@19
    move-result-object v2

    #@1a
    throw v2
.end method

.method public retrieveSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6220
    const-string/jumbo v2, "retrieveSecurityLogs"

    #@4
    invoke-direct {p0, v2}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 6222
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    invoke-interface {v2, p1}, Landroid/app/admin/IDevicePolicyManager;->retrieveSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    #@c
    move-result-object v0

    #@d
    .line 6223
    .local v0, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-eqz v0, :cond_0

    #@f
    .line 6224
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 6227
    :cond_0
    return-object v3

    #@15
    .line 6229
    .end local v0    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :catch_0
    move-exception v1

    #@16
    .line 6230
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@19
    move-result-object v2

    #@1a
    throw v2
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    #@0
    .prologue
    .line 5286
    const-string/jumbo v1, "setAccountManagementDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5287
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5289
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5285
    :cond_0
    return-void

    #@10
    .line 5290
    :catch_0
    move-exception v0

    #@11
    .line 5291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    #@0
    .prologue
    .line 3505
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@7
    .line 3504
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 2
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 3492
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3494
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3491
    :cond_0
    return-void

    #@a
    .line 3495
    :catch_0
    move-exception v0

    #@b
    .line 3496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .locals 11
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I

    #@0
    .prologue
    .line 3526
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3528
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    move v1, p1

    #@7
    move v2, p2

    #@8
    move v3, p3

    #@9
    move v4, p4

    #@a
    move/from16 v5, p5

    #@c
    move/from16 v6, p6

    #@e
    move/from16 v7, p7

    #@10
    move/from16 v8, p8

    #@12
    move/from16 v9, p9

    #@14
    invoke-interface/range {v0 .. v9}, Landroid/app/admin/IDevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 3525
    :cond_0
    return-void

    #@18
    .line 3530
    :catch_0
    move-exception v10

    #@19
    .line 3531
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v0

    #@1d
    throw v0
.end method

.method public setActiveProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3879
    const-string/jumbo v2, "setActiveProfileOwner"

    #@4
    invoke-direct {p0, v2}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@7
    .line 3880
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 3882
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    #@e
    move-result v0

    #@f
    .line 3883
    .local v0, "myUserId":I
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@11
    const/4 v3, 0x0

    #@12
    invoke-interface {v2, p1, v3, v0}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@15
    .line 3884
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@17
    invoke-interface {v2, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result v2

    #@1b
    return v2

    #@1c
    .line 3885
    .end local v0    # "myUserId":I
    :catch_0
    move-exception v1

    #@1d
    .line 3886
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@20
    move-result-object v2

    #@21
    throw v2

    #@22
    .line 3889
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    return v3
.end method

.method public setAffiliationIds(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 6465
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "setAffiliationIds"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6467
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    new-instance v2, Ljava/util/ArrayList;

    #@a
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@d
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 6464
    return-void

    #@11
    .line 6468
    :catch_0
    move-exception v0

    #@12
    .line 6469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 3131
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    #@4
    .line 3130
    return-void
.end method

.method public setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdownEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 3156
    const-string/jumbo v1, "setAlwaysOnVpnPackage"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3157
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3159
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 3160
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@14
    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 3162
    :catch_0
    move-exception v0

    #@19
    .line 3163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1

    #@1e
    .line 3155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    #@0
    .prologue
    .line 5192
    const-string/jumbo v1, "setApplicationHidden"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5193
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5195
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 5196
    :catch_0
    move-exception v0

    #@12
    .line 5197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 5200
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4346
    const-string/jumbo v1, "setApplicationRestrictions"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4347
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4349
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4345
    :cond_0
    return-void

    #@10
    .line 4350
    :catch_0
    move-exception v0

    #@11
    .line 4351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 4258
    const-string/jumbo v1, "setApplicationRestrictionsManagingPackage"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4259
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4261
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 4262
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@14
    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 4264
    :catch_0
    move-exception v0

    #@19
    .line 4265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1

    #@1e
    .line 4257
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z

    #@0
    .prologue
    .line 3339
    const-string/jumbo v1, "setAutoTimeRequired"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3340
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3342
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3338
    :cond_0
    return-void

    #@10
    .line 3343
    :catch_0
    move-exception v0

    #@11
    .line 3344
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 6590
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 6588
    return-void

    #@6
    .line 6591
    :catch_0
    move-exception v0

    #@7
    .line 6592
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 4599
    const-string/jumbo v1, "setBluetoothContactSharingDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4600
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4602
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4598
    :cond_0
    return-void

    #@10
    .line 4603
    :catch_0
    move-exception v0

    #@11
    .line 4604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 3206
    const-string/jumbo v1, "setCameraDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3207
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3209
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3205
    :cond_0
    return-void

    #@10
    .line 3210
    :catch_0
    move-exception v0

    #@11
    .line 3211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 3090
    const-string/jumbo v1, "setCertInstallerPackage"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3091
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3093
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3089
    :cond_0
    return-void

    #@10
    .line 3094
    :catch_0
    move-exception v0

    #@11
    .line 3095
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 4445
    const-string/jumbo v1, "setCrossProfileCallerIdDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4446
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4448
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4444
    :cond_0
    return-void

    #@10
    .line 4449
    :catch_0
    move-exception v0

    #@11
    .line 4450
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 4507
    const-string/jumbo v1, "setCrossProfileContactsSearchDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4508
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4510
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4506
    :cond_0
    return-void

    #@10
    .line 4511
    :catch_0
    move-exception v0

    #@11
    .line 4512
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3626
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3633
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3640
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 3660
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3662
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3663
    :catch_0
    move-exception v0

    #@c
    .line 3664
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 3667
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "info"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3977
    const-string/jumbo v1, "setDeviceOwnerLockScreenInfo"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3978
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3980
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3976
    :cond_0
    return-void

    #@10
    .line 3981
    :catch_0
    move-exception v0

    #@11
    .line 3982
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setDeviceProvisioningConfigApplied()V
    .locals 2

    #@0
    .prologue
    .line 6553
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->setDeviceProvisioningConfigApplied()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 6551
    return-void

    #@6
    .line 6554
    :catch_0
    move-exception v0

    #@7
    .line 6555
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "forceEphemeralUsers"    # Z

    #@0
    .prologue
    .line 3380
    const-string/jumbo v1, "setForceEphemeralUsers"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3381
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3383
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3379
    :cond_0
    return-void

    #@10
    .line 3384
    :catch_0
    move-exception v0

    #@11
    .line 3385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/net/Proxy;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    #@0
    .prologue
    .line 2503
    .local p3, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v11, "setGlobalProxy"

    #@3
    invoke-direct {p0, v11}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 2504
    if-nez p2, :cond_0

    #@8
    .line 2505
    new-instance v11, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v11

    #@e
    .line 2507
    :cond_0
    iget-object v11, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@10
    if-eqz v11, :cond_7

    #@12
    .line 2511
    :try_start_0
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@14
    invoke-virtual {p2, v11}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v11

    #@18
    if-eqz v11, :cond_2

    #@1a
    .line 2512
    const/4 v7, 0x0

    #@1b
    .line 2513
    .local v7, "hostSpec":Ljava/lang/String;
    const/4 v3, 0x0

    #@1c
    .line 2543
    .end local v7    # "hostSpec":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@1e
    invoke-interface {v11, p1, v7, v3}, Landroid/app/admin/IDevicePolicyManager;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    #@21
    move-result-object v11

    #@22
    return-object v11

    #@23
    .line 2515
    :cond_2
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@26
    move-result-object v11

    #@27
    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@29
    invoke-virtual {v11, v12}, Ljava/net/Proxy$Type;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v11

    #@2d
    if-nez v11, :cond_3

    #@2f
    .line 2516
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@31
    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@34
    throw v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 2544
    :catch_0
    move-exception v0

    #@36
    .line 2545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@39
    move-result-object v11

    #@3a
    throw v11

    #@3b
    .line 2518
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@3e
    move-result-object v10

    #@3f
    check-cast v10, Ljava/net/InetSocketAddress;

    #@41
    .line 2519
    .local v10, "sa":Ljava/net/InetSocketAddress;
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    .line 2520
    .local v6, "hostName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    #@48
    move-result v9

    #@49
    .line 2521
    .local v9, "port":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    .line 2522
    .local v5, "hostBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v11

    #@52
    .line 2523
    const-string/jumbo v12, ":"

    #@55
    .line 2522
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v11

    #@59
    .line 2523
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5c
    move-result-object v12

    #@5d
    .line 2522
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v11

    #@61
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    .line 2524
    .local v7, "hostSpec":Ljava/lang/String;
    if-nez p3, :cond_4

    #@67
    .line 2525
    const-string/jumbo v3, ""

    #@6a
    .line 2539
    .local v3, "exclSpec":Ljava/lang/String;
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6d
    move-result-object v11

    #@6e
    invoke-static {v6, v11, v3}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@71
    move-result v11

    #@72
    if-eqz v11, :cond_1

    #@74
    .line 2541
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@76
    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@79
    throw v11

    #@7a
    .line 2527
    .end local v3    # "exclSpec":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    .line 2528
    .local v8, "listBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    #@80
    .line 2529
    .local v4, "firstDomain":Z
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@83
    move-result-object v2

    #@84
    .local v2, "exclDomain$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@87
    move-result v11

    #@88
    if-eqz v11, :cond_6

    #@8a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8d
    move-result-object v1

    #@8e
    check-cast v1, Ljava/lang/String;

    #@90
    .line 2530
    .local v1, "exclDomain":Ljava/lang/String;
    if-nez v4, :cond_5

    #@92
    .line 2531
    const-string/jumbo v11, ","

    #@95
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    .line 2535
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9c
    move-result-object v11

    #@9d
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v8

    #@a1
    goto :goto_1

    #@a2
    .line 2533
    :cond_5
    const/4 v4, 0x0

    #@a3
    goto :goto_2

    #@a4
    .line 2537
    .end local v1    # "exclDomain":Ljava/lang/String;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@a7
    move-result-object v3

    #@a8
    .restart local v3    # "exclSpec":Ljava/lang/String;
    goto :goto_0

    #@a9
    .line 2548
    .end local v2    # "exclDomain$iterator":Ljava/util/Iterator;
    .end local v3    # "exclSpec":Ljava/lang/String;
    .end local v4    # "firstDomain":Z
    .end local v5    # "hostBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "hostName":Ljava/lang/String;
    .end local v7    # "hostSpec":Ljava/lang/String;
    .end local v8    # "listBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "port":I
    .end local v10    # "sa":Ljava/net/InetSocketAddress;
    :cond_7
    const/4 v11, 0x0

    #@aa
    return-object v11
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5428
    const-string/jumbo v1, "setGlobalSetting"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5429
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5431
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5427
    :cond_0
    return-void

    #@10
    .line 5432
    :catch_0
    move-exception v0

    #@11
    .line 5433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4931
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "setKeepUninstalledPackages"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4932
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4934
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4930
    :cond_0
    return-void

    #@10
    .line 4935
    :catch_0
    move-exception v0

    #@11
    .line 4936
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 5730
    const-string/jumbo v1, "setKeyguardDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5732
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 5733
    :catch_0
    move-exception v0

    #@e
    .line 5734
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 3448
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3450
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 3447
    :cond_0
    return-void

    #@c
    .line 3451
    :catch_0
    move-exception v0

    #@d
    .line 3452
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 5345
    const-string/jumbo v1, "setLockTaskPackages"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5346
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5348
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5344
    :cond_0
    return-void

    #@10
    .line 5349
    :catch_0
    move-exception v0

    #@11
    .line 5350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 6033
    const-string/jumbo v1, "setLongSupportMessage"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6034
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 6036
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 6032
    :cond_0
    return-void

    #@10
    .line 6037
    :catch_0
    move-exception v0

    #@11
    .line 6038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    #@0
    .prologue
    .line 5503
    const-string/jumbo v1, "setMasterVolumeMuted"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5504
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5506
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5502
    :cond_0
    return-void

    #@10
    .line 5507
    :catch_0
    move-exception v0

    #@11
    .line 5508
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I

    #@0
    .prologue
    .line 2148
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2150
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 2147
    :cond_0
    return-void

    #@c
    .line 2151
    :catch_0
    move-exception v0

    #@d
    .line 2152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J

    #@0
    .prologue
    .line 2290
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2292
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 2289
    :cond_0
    return-void

    #@c
    .line 2293
    :catch_0
    move-exception v0

    #@d
    .line 2294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setOrganizationColor(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "color"    # I

    #@0
    .prologue
    .line 6293
    const-string/jumbo v1, "setOrganizationColor"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6296
    const/high16 v1, -0x1000000

    #@8
    or-int/2addr p2, v1

    #@9
    .line 6297
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@b
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColor(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 6292
    return-void

    #@f
    .line 6298
    :catch_0
    move-exception v0

    #@10
    .line 6299
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v1

    #@14
    throw v1
.end method

.method public setOrganizationColorForUser(II)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 6317
    const/high16 v1, -0x1000000

    #@2
    or-int/2addr p1, v1

    #@3
    .line 6318
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@5
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColorForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 6314
    return-void

    #@9
    .line 6319
    :catch_0
    move-exception v0

    #@a
    .line 6320
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 6369
    const-string/jumbo v1, "setOrganizationName"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6371
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 6368
    return-void

    #@c
    .line 6372
    :catch_0
    move-exception v0

    #@d
    .line 6373
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "suspended"    # Z

    #@0
    .prologue
    .line 4023
    const-string/jumbo v1, "setPackagesSuspended"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4024
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4026
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 4027
    :catch_0
    move-exception v0

    #@12
    .line 4028
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 4031
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object p2
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J

    #@0
    .prologue
    .line 1917
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1919
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1916
    :cond_0
    return-void

    #@c
    .line 1920
    :catch_0
    move-exception v0

    #@d
    .line 1921
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1879
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1881
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1878
    :cond_0
    return-void

    #@c
    .line 1882
    :catch_0
    move-exception v0

    #@d
    .line 1883
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1406
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1408
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1405
    :cond_0
    return-void

    #@c
    .line 1409
    :catch_0
    move-exception v0

    #@d
    .line 1410
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1607
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1609
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1606
    :cond_0
    return-void

    #@c
    .line 1610
    :catch_0
    move-exception v0

    #@d
    .line 1611
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1538
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1540
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1537
    :cond_0
    return-void

    #@c
    .line 1541
    :catch_0
    move-exception v0

    #@d
    .line 1542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1810
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1812
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1809
    :cond_0
    return-void

    #@c
    .line 1813
    :catch_0
    move-exception v0

    #@d
    .line 1814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1675
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1677
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1674
    :cond_0
    return-void

    #@c
    .line 1678
    :catch_0
    move-exception v0

    #@d
    .line 1679
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1743
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1745
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1742
    :cond_0
    return-void

    #@c
    .line 1746
    :catch_0
    move-exception v0

    #@d
    .line 1747
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1469
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1471
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1468
    :cond_0
    return-void

    #@c
    .line 1472
    :catch_0
    move-exception v0

    #@d
    .line 1473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I

    #@0
    .prologue
    .line 1342
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1344
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1341
    :cond_0
    return-void

    #@c
    .line 1345
    :catch_0
    move-exception v0

    #@d
    .line 1346
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I

    #@0
    .prologue
    .line 5848
    const-string/jumbo v1, "setPermissionGrantState"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5850
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 5851
    :catch_0
    move-exception v0

    #@e
    .line 5852
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public setPermissionPolicy(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 5796
    const-string/jumbo v1, "setPermissionPolicy"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5798
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermissionPolicy(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 5795
    return-void

    #@c
    .line 5799
    :catch_0
    move-exception v0

    #@d
    .line 5800
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4715
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "setPermittedAccessibilityServices"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4716
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4718
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 4719
    :catch_0
    move-exception v0

    #@12
    .line 4720
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 4723
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4816
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "setPermittedInputMethods"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4817
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4819
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 4820
    :catch_0
    move-exception v0

    #@12
    .line 4821
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 4824
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4068
    const-string/jumbo v1, "setProfileEnabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4069
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4071
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4067
    :cond_0
    return-void

    #@10
    .line 4072
    :catch_0
    move-exception v0

    #@11
    .line 4073
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4090
    const-string/jumbo v1, "setProfileName"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 4091
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4093
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4089
    :cond_0
    return-void

    #@10
    .line 4094
    :catch_0
    move-exception v0

    #@11
    .line 4095
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 3946
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 3948
    if-nez p2, :cond_0

    #@6
    .line 3949
    :try_start_0
    const-string/jumbo p2, ""

    #@9
    .line 3951
    :cond_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@b
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 3952
    :catch_0
    move-exception v0

    #@11
    .line 3953
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1

    #@16
    .line 3956
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    #@17
    return v1
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 2569
    const-string/jumbo v1, "setRecommendedGlobalProxy"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 2570
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2572
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 2568
    :cond_0
    return-void

    #@10
    .line 2573
    :catch_0
    move-exception v0

    #@11
    .line 2574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setRequiredStrongAuthTimeout(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J

    #@0
    .prologue
    .line 2378
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2380
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/admin/IDevicePolicyManager;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 2377
    :cond_0
    return-void

    #@c
    .line 2381
    :catch_0
    move-exception v0

    #@d
    .line 2382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5485
    const-string/jumbo v1, "setRestrictionsProvider"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5486
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5488
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5484
    :cond_0
    return-void

    #@10
    .line 5489
    :catch_0
    move-exception v0

    #@11
    .line 5490
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 3292
    const-string/jumbo v1, "setScreenCaptureDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 3293
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3295
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3291
    :cond_0
    return-void

    #@10
    .line 3296
    :catch_0
    move-exception v0

    #@11
    .line 3297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5461
    const-string/jumbo v1, "setSecureSetting"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5462
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5464
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5460
    :cond_0
    return-void

    #@10
    .line 5465
    :catch_0
    move-exception v0

    #@11
    .line 5466
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 6177
    const-string/jumbo v1, "setSecurityLoggingEnabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 6179
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 6176
    return-void

    #@c
    .line 6180
    :catch_0
    move-exception v0

    #@d
    .line 6181
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 5987
    const-string/jumbo v1, "setShortSupportMessage"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5988
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5990
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5986
    :cond_0
    return-void

    #@10
    .line 5991
    :catch_0
    move-exception v0

    #@11
    .line 5992
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 5749
    const-string/jumbo v1, "setStatusBarDisabled"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5751
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 5752
    :catch_0
    move-exception v0

    #@e
    .line 5753
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z

    #@0
    .prologue
    .line 2731
    const-string/jumbo v1, "setStorageEncryption"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 2732
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2734
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 2735
    :catch_0
    move-exception v0

    #@12
    .line 2736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1

    #@17
    .line 2739
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;

    #@0
    .prologue
    .line 5688
    const-string/jumbo v1, "setSystemUpdatePolicy"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5689
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5691
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5687
    :cond_0
    return-void

    #@10
    .line 5692
    :catch_0
    move-exception v0

    #@11
    .line 5693
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "configuration"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 4387
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4389
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    #@8
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/admin/IDevicePolicyManager;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 4386
    :cond_0
    return-void

    #@c
    .line 4390
    :catch_0
    move-exception v0

    #@d
    .line 4391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    #@0
    .prologue
    .line 5542
    const-string/jumbo v1, "setUninstallBlocked"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5543
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5545
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5541
    :cond_0
    return-void

    #@10
    .line 5546
    :catch_0
    move-exception v0

    #@11
    .line 5547
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 5668
    const-string/jumbo v1, "setUserIcon"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5670
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 5667
    return-void

    #@c
    .line 5671
    :catch_0
    move-exception v0

    #@d
    .line 5672
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setUserProvisioningState(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 6437
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 6439
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserProvisioningState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 6436
    :cond_0
    return-void

    #@a
    .line 6440
    :catch_0
    move-exception v0

    #@b
    .line 6441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    .locals 8
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "originalIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4581
    const/4 v4, 0x0

    #@1
    const-wide/16 v5, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-wide v2, p2

    #@6
    move-object v7, p4

    #@7
    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    #@a
    .line 4580
    return-void
.end method

.method public startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    .locals 9
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "isContactIdIgnored"    # Z
    .param p5, "directoryId"    # J
    .param p7, "originalIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4565
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4567
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    move-object v1, p1

    #@7
    move-wide v2, p2

    #@8
    move v4, p4

    #@9
    move-wide v5, p5

    #@a
    move-object/from16 v7, p7

    #@c
    invoke-interface/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4564
    :cond_0
    return-void

    #@10
    .line 4569
    :catch_0
    move-exception v8

    #@11
    .line 4570
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v0

    #@15
    throw v0
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 5074
    const-string/jumbo v1, "switchUser"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 5076
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 5077
    :catch_0
    move-exception v0

    #@e
    .line 5078
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public uninstallAllUserCaCerts(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2926
    const-string/jumbo v1, "uninstallAllUserCaCerts"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 2927
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2929
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@e
    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    #@11
    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    #@14
    move-result-object v1

    #@15
    .line 2930
    const/4 v3, 0x0

    #@16
    new-array v3, v3, [Ljava/lang/String;

    #@18
    .line 2929
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, [Ljava/lang/String;

    #@1e
    invoke-interface {v2, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 2925
    :cond_0
    return-void

    #@22
    .line 2931
    :catch_0
    move-exception v0

    #@23
    .line 2932
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@26
    move-result-object v1

    #@27
    throw v1
.end method

.method public uninstallCaCert(Landroid/content/ComponentName;[B)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    #@0
    .prologue
    .line 2871
    const-string/jumbo v3, "uninstallCaCert"

    #@3
    invoke-direct {p0, v3}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 2872
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 2874
    :try_start_0
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 2875
    .local v0, "alias":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@10
    const/4 v4, 0x1

    #@11
    new-array v4, v4, [Ljava/lang/String;

    #@13
    const/4 v5, 0x0

    #@14
    aput-object v0, v4, v5

    #@16
    invoke-interface {v3, p1, v4}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 2870
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 2878
    :catch_0
    move-exception v1

    #@1b
    .line 2879
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1e
    move-result-object v3

    #@1f
    throw v3

    #@20
    .line 2876
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@21
    .line 2877
    .local v2, "e":Ljava/security/cert/CertificateException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@23
    const-string/jumbo v4, "Unable to parse certificate"

    #@26
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_0
.end method

.method public uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6510
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 6508
    return-void

    #@6
    .line 6511
    :catch_0
    move-exception v0

    #@7
    .line 6512
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public wipeData(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 2469
    const-string/jumbo v1, "wipeData"

    #@3
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    #@6
    .line 2470
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2472
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@c
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->wipeData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 2468
    :cond_0
    return-void

    #@10
    .line 2473
    :catch_0
    move-exception v0

    #@11
    .line 2474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method
