.class public Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_DEVICE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_OWNER_CHANGED"

.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final ACTION_MANAGED_PROFILE_PROVISIONED:Ljava/lang/String; = "android.app.action.MANAGED_PROFILE_PROVISIONED"

.field public static final ACTION_PROVISION_MANAGED_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE"

.field public static final ACTION_PROVISION_MANAGED_PROFILE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_PROFILE"

.field public static final ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field public static final ACTION_SET_PROFILE_OWNER:Ljava/lang/String; = "android.app.action.SET_PROFILE_OWNER"

.field public static final ACTION_START_ENCRYPTION:Ljava/lang/String; = "android.app.action.START_ENCRYPTION"

.field public static final ACTION_SYSTEM_UPDATE_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

.field public static final ENCRYPTION_STATUS_ACTIVATING:I = 0x2

.field public static final ENCRYPTION_STATUS_ACTIVE:I = 0x3

.field public static final ENCRYPTION_STATUS_ACTIVE_DEFAULT_KEY:I = 0x4

.field public static final ENCRYPTION_STATUS_INACTIVE:I = 0x1

.field public static final ENCRYPTION_STATUS_UNSUPPORTED:I = 0x0

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

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

.field public static final EXTRA_PROVISIONING_DEVICE_INITIALIZER_COMPONENT_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_INITIALIZER_COMPONENT_NAME"

.field public static final EXTRA_PROVISIONING_DEVICE_INITIALIZER_MINIMUM_VERSION_CODE:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_INITIALIZER_MINIMUM_VERSION_CODE"

.field public static final EXTRA_PROVISIONING_DEVICE_INITIALIZER_PACKAGE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_INITIALIZER_PACKAGE_CHECKSUM"

.field public static final EXTRA_PROVISIONING_DEVICE_INITIALIZER_PACKAGE_DOWNLOAD_COOKIE_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_INITIALIZER_PACKAGE_DOWNLOAD_COOKIE_HEADER"

.field public static final EXTRA_PROVISIONING_DEVICE_INITIALIZER_PACKAGE_DOWNLOAD_LOCATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_INITIALIZER_PACKAGE_DOWNLOAD_LOCATION"

.field public static final EXTRA_PROVISIONING_DEVICE_INITIALIZER_SIGNATURE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_INITIALIZER_SIGNATURE_CHECKSUM"

.field public static final EXTRA_PROVISIONING_EMAIL_ADDRESS:Ljava/lang/String; = "android.app.extra.PROVISIONING_EMAIL_ADDRESS"

.field public static final EXTRA_PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED:Ljava/lang/String; = "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field public static final EXTRA_PROVISIONING_LOCALE:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCALE"

.field public static final EXTRA_PROVISIONING_LOCAL_TIME:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCAL_TIME"

.field public static final EXTRA_PROVISIONING_SKIP_ENCRYPTION:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

.field public static final EXTRA_PROVISIONING_TIME_ZONE:Ljava/lang/String; = "android.app.extra.PROVISIONING_TIME_ZONE"

.field public static final EXTRA_PROVISIONING_WIFI_HIDDEN:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_HIDDEN"

.field public static final EXTRA_PROVISIONING_WIFI_PAC_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PAC_URL"

.field public static final EXTRA_PROVISIONING_WIFI_PASSWORD:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PASSWORD"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_BYPASS:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_HOST:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_PORT:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

.field public static final EXTRA_PROVISIONING_WIFI_SECURITY_TYPE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

.field public static final EXTRA_PROVISIONING_WIFI_SSID:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SSID"

.field public static final FLAG_MANAGED_CAN_ACCESS_PARENT:I = 0x2

.field public static final FLAG_PARENT_CAN_ACCESS_MANAGED:I = 0x1

.field public static final KEYGUARD_DISABLE_FEATURES_ALL:I = 0x7fffffff

.field public static final KEYGUARD_DISABLE_FEATURES_NONE:I = 0x0

.field public static final KEYGUARD_DISABLE_FINGERPRINT:I = 0x20

.field public static final KEYGUARD_DISABLE_SECURE_CAMERA:I = 0x2

.field public static final KEYGUARD_DISABLE_SECURE_NOTIFICATIONS:I = 0x4

.field public static final KEYGUARD_DISABLE_TRUST_AGENTS:I = 0x10

.field public static final KEYGUARD_DISABLE_UNREDACTED_NOTIFICATIONS:I = 0x8

.field public static final KEYGUARD_DISABLE_WIDGETS_ALL:I = 0x1

.field public static final MIME_TYPE_PROVISIONING_NFC:Ljava/lang/String; = "application/com.android.managedprovisioning"

.field public static final MIME_TYPE_PROVISIONING_NFC_V2:Ljava/lang/String; = "application/com.android.managedprovisioning.v2"

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_BIOMETRIC_WEAK:I = 0x8000

.field public static final PASSWORD_QUALITY_COMPLEX:I = 0x60000

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

.field private static TAG:Ljava/lang/String; = null

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1

.field public static final WIPE_RESET_PROTECTION_DATA:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 85
    const-string/jumbo v0, "DevicePolicyManager"

    #@3
    sput-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@5
    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    #@5
    .line 93
    const-string/jumbo v0, "device_policy"

    #@8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 92
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@12
    .line 90
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 98
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    #@3
    invoke-direct {v0, p0, p1}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@6
    .line 99
    .local v0, "me":Landroid/app/admin/DevicePolicyManager;
    iget-object v2, v0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-eqz v2, :cond_0

    #@a
    .end local v0    # "me":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "me":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    move-object v0, v1

    #@c
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
    .line 2333
    const-string/jumbo v2, "X.509"

    #@3
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v1

    #@7
    .line 2335
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    .line 2334
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@12
    .line 2336
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


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 3457
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3459
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3456
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3460
    :catch_0
    move-exception v0

    #@b
    .line 3461
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4186
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4188
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 4189
    :catch_0
    move-exception v0

    #@c
    .line 4190
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Error calling addCrossProfileWidgetProvider"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 4193
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3173
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3175
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3172
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3176
    :catch_0
    move-exception v0

    #@b
    .line 3177
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3771
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3773
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    const/4 v2, 0x1

    #@7
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 3770
    :cond_0
    :goto_0
    return-void

    #@b
    .line 3774
    :catch_0
    move-exception v0

    #@c
    .line 3775
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3473
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3475
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3472
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3476
    :catch_0
    move-exception v0

    #@b
    .line 3477
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public clearDeviceInitializerApp(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2850
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2852
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->clearDeviceInitializer(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2849
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2853
    :catch_0
    move-exception v0

    #@b
    .line 2854
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed to clear device initializer"

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    goto :goto_0
.end method

.method public clearDeviceOwnerApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2759
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2761
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->clearDeviceOwner(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2758
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2762
    :catch_0
    move-exception v0

    #@b
    .line 2763
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed to clear device owner"

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    goto :goto_0
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3194
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3196
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3193
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3197
    :catch_0
    move-exception v0

    #@b
    .line 3198
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2966
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2968
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->clearProfileOwner(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2965
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2969
    :catch_0
    move-exception v0

    #@b
    .line 2970
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Failed to clear profile owner "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    goto :goto_0
.end method

.method public clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3792
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3794
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 3791
    :cond_0
    :goto_0
    return-void

    #@b
    .line 3795
    :catch_0
    move-exception v0

    #@c
    .line 3796
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3692
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager;->createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 3694
    :catch_0
    move-exception v6

    #@d
    .line 3695
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v1, "Could not create a user"

    #@12
    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3697
    const/4 v0, 0x0

    #@16
    return-object v0
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3654
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 3655
    :catch_0
    move-exception v0

    #@8
    .line 3656
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not create a user"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 3658
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 3868
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3870
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3871
    :catch_0
    move-exception v0

    #@c
    .line 3872
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Failed to install packages matching filter: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 3875
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@26
    return v1
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3849
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3851
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3848
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3852
    :catch_0
    move-exception v0

    #@b
    .line 3853
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Failed to install package: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    goto :goto_0
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3915
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3923
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3925
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
    .line 3926
    :catch_0
    move-exception v0

    #@d
    .line 3927
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed talking with device policy service"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3931
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
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
    .line 865
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getActiveAdminsAsUser(I)Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x0

    #@1
    .line 873
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 875
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
    .line 876
    :catch_0
    move-exception v0

    #@d
    .line 877
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed talking with device policy service"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 880
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getAdminInfo(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 9
    .param p1, "cn"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2602
    :try_start_0
    iget-object v5, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v5

    #@7
    .line 2603
    const/16 v6, 0x80

    #@9
    .line 2602
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v0

    #@d
    .line 2609
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/pm/ResolveInfo;

    #@f
    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    #@12
    .line 2610
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@14
    .line 2613
    :try_start_1
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    #@16
    iget-object v6, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    #@18
    invoke-direct {v5, v6, v4}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    return-object v5

    #@1c
    .line 2604
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    #@1d
    .line 2605
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@1f
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "Unable to retrieve device policy "

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    .line 2606
    return-object v8

    #@37
    .line 2617
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v2

    #@38
    .line 2618
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@3a
    new-instance v6, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v7, "Unable to parse device policy "

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    .line 2619
    return-object v8

    #@52
    .line 2614
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@53
    .line 2615
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v5, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@55
    new-instance v6, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v7, "Unable to parse device policy "

    #@5d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    .line 2616
    return-object v8
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3749
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3751
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3752
    :catch_0
    move-exception v0

    #@d
    .line 3753
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed talking with device policy service"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3756
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getAutoTimeRequired()Z
    .locals 3

    #@0
    .prologue
    .line 2500
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2502
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2503
    :catch_0
    move-exception v0

    #@c
    .line 2504
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 2507
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3415
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3417
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3418
    :catch_0
    move-exception v0

    #@c
    .line 3419
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 3422
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    #@15
    return v1
.end method

.method public getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3434
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3436
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
    .line 3438
    :catch_0
    move-exception v0

    #@10
    .line 3439
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "Failed talking with device policy service"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 3442
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    #@19
    return v1
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2412
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2417
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2419
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
    .line 2420
    :catch_0
    move-exception v0

    #@c
    .line 2421
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 2424
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2373
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2375
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 2376
    :catch_0
    move-exception v0

    #@d
    .line 2377
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed talking with device policy service"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 2380
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3335
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3337
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3338
    :catch_0
    move-exception v0

    #@c
    .line 3339
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 3342
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3352
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3354
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
    .line 3355
    :catch_0
    move-exception v0

    #@10
    .line 3356
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "Failed talking with device policy service"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 3359
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
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
    .line 4234
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 4236
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v2, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v0

    #@a
    .line 4237
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    #@c
    .line 4238
    return-object v0

    #@d
    .line 4240
    .end local v0    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    #@e
    .line 4241
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@10
    const-string/jumbo v3, "Error calling getCrossProfileWidgetProviders"

    #@13
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 4244
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method public getCurrentFailedPasswordAttempts()I
    .locals 3

    #@0
    .prologue
    .line 1636
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1638
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 1639
    :catch_0
    move-exception v0

    #@10
    .line 1640
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "Failed talking with device policy service"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 1643
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    #@19
    return v1
.end method

.method public getDeviceInitializerApp()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2867
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2869
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceInitializer()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 2870
    :catch_0
    move-exception v0

    #@d
    .line 2871
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed to get device initializer"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 2874
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getDeviceInitializerComponent()Landroid/content/ComponentName;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2885
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2887
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceInitializerComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 2888
    :catch_0
    move-exception v0

    #@d
    .line 2889
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed to get device initializer"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 2892
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2771
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2773
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwner()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 2774
    :catch_0
    move-exception v0

    #@d
    .line 2775
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed to get device owner"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 2778
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2783
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2785
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 2786
    :catch_0
    move-exception v0

    #@d
    .line 2787
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed to get device owner"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 2790
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getDoNotAskCredentialsOnBoot()Z
    .locals 3

    #@0
    .prologue
    .line 1653
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1655
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
    .line 1656
    :catch_0
    move-exception v0

    #@c
    .line 1657
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed to call getDoNotAskCredentialsOnBoot()"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1660
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getGlobalProxyAdmin()Landroid/content/ComponentName;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1995
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1997
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1998
    :catch_0
    move-exception v0

    #@11
    .line 1999
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@13
    const-string/jumbo v2, "Failed talking with device policy service"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 2002
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
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
    .line 2241
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2242
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v6, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    if-eqz v6, :cond_0

    #@9
    .line 2244
    :try_start_0
    iget-object v6, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@b
    invoke-interface {v6, p1}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    #@e
    .line 2245
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@10
    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    #@13
    .line 2246
    .local v3, "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-virtual {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    #@16
    move-result-object v6

    #@17
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_0

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@27
    .line 2248
    .local v0, "alias":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@2e
    move-result-object v6

    #@2f
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@32
    goto :goto_0

    #@33
    .line 2249
    :catch_0
    move-exception v2

    #@34
    .line 2250
    .local v2, "ce":Ljava/security/cert/CertificateException;
    :try_start_2
    sget-object v6, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@36
    new-instance v7, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v8, "Could not encode certificate: "

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@4d
    goto :goto_0

    #@4e
    .line 2253
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "alias$iterator":Ljava/util/Iterator;
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .end local v3    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_1
    move-exception v5

    #@4f
    .line 2254
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v6, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@51
    const-string/jumbo v7, "Failed talking with device policy service"

    #@54
    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    .line 2257
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2559
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 2564
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2566
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2567
    :catch_0
    move-exception v0

    #@c
    .line 2568
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 2571
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3970
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3972
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3973
    :catch_0
    move-exception v0

    #@d
    .line 3974
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed talking with device policy service"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3977
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1700
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1705
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1707
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1708
    :catch_0
    move-exception v0

    #@c
    .line 1709
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1712
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1820
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1825
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1827
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-wide v2

    #@a
    return-wide v2

    #@b
    .line 1828
    :catch_0
    move-exception v0

    #@c
    .line 1829
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1832
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    #@16
    return-wide v2
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;)J
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1561
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1563
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-wide v2

    #@e
    return-wide v2

    #@f
    .line 1564
    :catch_0
    move-exception v0

    #@10
    .line 1565
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "Failed talking with device policy service"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 1568
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    #@1a
    return-wide v2
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1540
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1542
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-wide v2

    #@e
    return-wide v2

    #@f
    .line 1543
    :catch_0
    move-exception v0

    #@10
    .line 1544
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "Failed talking with device policy service"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 1547
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    #@1a
    return-wide v2
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1579
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1584
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1586
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1587
    :catch_0
    move-exception v0

    #@c
    .line 1588
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1591
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getPasswordMaximumLength(I)I
    .locals 1
    .param p1, "quality"    # I

    #@0
    .prologue
    .line 1602
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1095
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1100
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1102
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1103
    :catch_0
    move-exception v0

    #@c
    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1275
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1280
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1282
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1283
    :catch_0
    move-exception v0

    #@c
    .line 1284
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1287
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1217
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1222
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1224
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1225
    :catch_0
    move-exception v0

    #@c
    .line 1226
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1451
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1456
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1458
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1459
    :catch_0
    move-exception v0

    #@c
    .line 1460
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1463
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1334
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1339
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1341
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1342
    :catch_0
    move-exception v0

    #@c
    .line 1343
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1346
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1392
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1397
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1399
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1400
    :catch_0
    move-exception v0

    #@c
    .line 1401
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1404
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1156
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1161
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1163
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1164
    :catch_0
    move-exception v0

    #@c
    .line 1165
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1168
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1042
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 1047
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1049
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1050
    :catch_0
    move-exception v0

    #@c
    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1054
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4458
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 4459
    :catch_0
    move-exception v0

    #@8
    .line 4460
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Failed talking with device policy service"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 4461
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4394
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermissionPolicy(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 4395
    :catch_0
    move-exception v0

    #@8
    .line 4396
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getPermittedAccessibilityServices(I)Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x0

    #@1
    .line 3549
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3551
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3552
    :catch_0
    move-exception v0

    #@d
    .line 3553
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed talking with device policy service"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3556
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x0

    #@1
    .line 3525
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3527
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3528
    :catch_0
    move-exception v0

    #@d
    .line 3529
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed talking with device policy service"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3532
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x0

    #@1
    .line 3604
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3606
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3607
    :catch_0
    move-exception v0

    #@d
    .line 3608
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed talking with device policy service"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3611
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x0

    #@1
    .line 3627
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3629
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3630
    :catch_0
    move-exception v0

    #@d
    .line 3631
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed talking with device policy service"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3634
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
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
    .line 3094
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    #@b
    move-result-object v0

    #@c
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
    .line 3102
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3104
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
    .line 3105
    :catch_0
    move-exception v0

    #@d
    .line 3106
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed to get profile owner"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 3107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    .line 3108
    const-string/jumbo v2, "Requested profile owner for invalid userId"

    #@1a
    .line 3107
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v1

    #@1e
    .line 3111
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
    .line 3121
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3123
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
    .line 3124
    :catch_0
    move-exception v0

    #@15
    .line 3125
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@17
    const-string/jumbo v2, "Failed to get profile owner"

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 3126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1f
    .line 3127
    const-string/jumbo v2, "Requested profile owner for invalid userId"

    #@22
    .line 3126
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    throw v1

    #@26
    .line 3130
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
    .line 3142
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3144
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3145
    :catch_0
    move-exception v0

    #@d
    .line 3146
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Failed to get profile owner"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 3147
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    .line 3148
    const-string/jumbo v2, "Requested profile owner for invalid userId"

    #@1a
    .line 3147
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v1

    #@1e
    .line 3151
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1723
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1725
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1726
    :catch_0
    move-exception v0

    #@c
    .line 1727
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1730
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, -0x2710

    #@16
    return v1
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;

    #@0
    .prologue
    .line 2627
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2629
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 2626
    :cond_0
    :goto_0
    return-void

    #@e
    .line 2630
    :catch_0
    move-exception v0

    #@f
    .line 2631
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@11
    const-string/jumbo v2, "Failed talking with device policy service"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2459
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2464
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2466
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
    .line 2467
    :catch_0
    move-exception v0

    #@c
    .line 2468
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 2471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2145
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2147
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 2148
    :catch_0
    move-exception v0

    #@10
    .line 2149
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "Failed talking with device policy service"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 2152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public getStorageEncryptionStatus()I
    .locals 1

    #@0
    .prologue
    .line 2175
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2180
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2182
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryptionStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2183
    :catch_0
    move-exception v0

    #@c
    .line 2184
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 2187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4288
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 4290
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 4291
    :catch_0
    move-exception v0

    #@d
    .line 4292
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v2, "Error calling getSystemUpdatePolicy"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4295
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
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
    .line 3289
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .line 3295
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3297
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 3298
    :catch_0
    move-exception v0

    #@c
    .line 3299
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 3302
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@19
    return-object v1
.end method

.method public hasCaCertInstalled(Landroid/content/ComponentName;[B)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2286
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 2288
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    invoke-interface {v3, p1}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    #@a
    .line 2289
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v3

    #@e
    if-eqz v3, :cond_0

    #@10
    const/4 v2, 0x1

    #@11
    :cond_0
    return v2

    #@12
    .line 2292
    :catch_0
    move-exception v0

    #@13
    .line 2293
    .local v0, "ce":Ljava/security/cert/CertificateException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@15
    const-string/jumbo v4, "Could not parse certificate"

    #@18
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 2296
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :cond_1
    :goto_0
    return v2

    #@1c
    .line 2290
    :catch_1
    move-exception v1

    #@1d
    .line 2291
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@1f
    const-string/jumbo v4, "Failed talking with device policy service"

    #@22
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I

    #@0
    .prologue
    .line 925
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 927
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 928
    :catch_0
    move-exception v0

    #@10
    .line 929
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "Failed talking with device policy service"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 932
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public hasUserSetupCompleted()Z
    .locals 3

    #@0
    .prologue
    .line 2980
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2982
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
    .line 2983
    :catch_0
    move-exception v0

    #@c
    .line 2984
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed to check whether user setup has completed"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 2987
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    #@15
    return v1
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    #@0
    .prologue
    .line 2201
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2203
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->installCaCert(Landroid/content/ComponentName;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2204
    :catch_0
    move-exception v0

    #@c
    .line 2205
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 2208
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    .locals 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "cert"    # Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2314
    const/4 v5, 0x1

    #@2
    :try_start_0
    new-array v5, v5, [Ljava/security/cert/Certificate;

    #@4
    const/4 v6, 0x0

    #@5
    aput-object p3, v5, v6

    #@7
    invoke-static {v5}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    #@a
    move-result-object v3

    #@b
    .line 2315
    .local v3, "pemCert":[B
    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@12
    move-result-object v5

    #@13
    .line 2316
    const-class v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@15
    .line 2315
    invoke-virtual {v5, p2, v6}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@1b
    invoke-virtual {v5}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    #@1e
    move-result-object v4

    #@1f
    .line 2317
    .local v4, "pkcs8Key":[B
    iget-object v5, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@21
    invoke-interface {v5, p1, v4, v3, p4}, Landroid/app/admin/IDevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result v5

    #@25
    return v5

    #@26
    .line 2322
    .end local v3    # "pemCert":[B
    .end local v4    # "pkcs8Key":[B
    :catch_0
    move-exception v1

    #@27
    .line 2323
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@29
    const-string/jumbo v6, "Could not pem-encode certificate"

    #@2c
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 2325
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v7

    #@30
    .line 2320
    :catch_1
    move-exception v2

    #@31
    .line 2321
    .local v2, "e":Ljava/security/GeneralSecurityException;
    sget-object v5, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@33
    const-string/jumbo v6, "Failed to obtain private key material"

    #@36
    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0

    #@3a
    .line 2318
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v0

    #@3b
    .line 2319
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@3d
    const-string/jumbo v6, "Failed talking with device policy service"

    #@40
    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    goto :goto_0
.end method

.method public isActivePasswordSufficient()Z
    .locals 3

    #@0
    .prologue
    .line 1617
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1619
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 1620
    :catch_0
    move-exception v0

    #@10
    .line 1621
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "Failed talking with device policy service"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 1624
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 825
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

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
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 833
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 835
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
    .line 836
    :catch_0
    move-exception v0

    #@c
    .line 837
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 840
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3831
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3833
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3834
    :catch_0
    move-exception v0

    #@c
    .line 3835
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 3838
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public isDeviceInitializerApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2831
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2833
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isDeviceInitializer(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2834
    :catch_0
    move-exception v0

    #@c
    .line 2835
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed to check device initializer"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 2838
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2746
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isDeviceOwnerApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2731
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2733
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isDeviceOwner(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2734
    :catch_0
    move-exception v0

    #@c
    .line 2735
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed to check device owner"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 2738
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3986
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3988
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3989
    :catch_0
    move-exception v0

    #@c
    .line 3990
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 3993
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4114
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4116
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 4117
    :catch_0
    move-exception v0

    #@c
    .line 4118
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed to get isMasterMute on device policy service"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 4121
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public isProfileOwnerApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3073
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 3075
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@7
    .line 3076
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    #@e
    move-result v4

    #@f
    .line 3075
    invoke-interface {v3, v4}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    #@12
    move-result-object v0

    #@13
    .line 3077
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@15
    .line 3078
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result v2

    #@1d
    .line 3077
    :cond_0
    return v2

    #@1e
    .line 3079
    .end local v0    # "profileOwner":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    #@1f
    .line 3080
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@21
    const-string/jumbo v4, "Failed to check profile owner"

    #@24
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 3083
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    return v2
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 848
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 850
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
    .line 851
    :catch_0
    move-exception v0

    #@c
    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 855
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4158
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4160
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 4161
    :catch_0
    move-exception v0

    #@c
    .line 4162
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed to call block uninstall on device policy service"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 4165
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public lockNow()V
    .locals 3

    #@0
    .prologue
    .line 1844
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1846
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->lockNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1843
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1847
    :catch_0
    move-exception v0

    #@b
    .line 1848
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public notifyPendingSystemUpdate(J)V
    .locals 3
    .param p1, "updateReceivedTime"    # J

    #@0
    .prologue
    .line 4352
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4354
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4351
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4355
    :catch_0
    move-exception v0

    #@b
    .line 4356
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Could not notify device owner about pending system update"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 889
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 891
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 892
    :catch_0
    move-exception v0

    #@10
    .line 893
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "Failed talking with device policy service"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 896
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 906
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 908
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 905
    :cond_0
    :goto_0
    return-void

    #@e
    .line 909
    :catch_0
    move-exception v0

    #@f
    .line 910
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@11
    const-string/jumbo v2, "Failed talking with device policy service"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4213
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4215
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 4216
    :catch_0
    move-exception v0

    #@c
    .line 4217
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Error calling removeCrossProfileWidgetProvider"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 4220
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3710
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 3711
    :catch_0
    move-exception v0

    #@8
    .line 3712
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not remove user "

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 3713
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2655
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2657
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2654
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2658
    :catch_0
    move-exception v0

    #@b
    .line 2659
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2668
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2670
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2667
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2671
    :catch_0
    move-exception v0

    #@b
    .line 2672
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1778
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1780
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1781
    :catch_0
    move-exception v0

    #@c
    .line 1782
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1785
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    #@0
    .prologue
    .line 3895
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3897
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3894
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3898
    :catch_0
    move-exception v0

    #@b
    .line 3899
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    #@0
    .prologue
    .line 2592
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@7
    .line 2591
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 3
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 2579
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2581
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2578
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2582
    :catch_0
    move-exception v0

    #@b
    .line 2583
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
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
    .line 2641
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2643
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
    .line 2640
    :cond_0
    :goto_0
    return-void

    #@18
    .line 2645
    :catch_0
    move-exception v10

    #@19
    .line 2646
    .local v10, "e":Landroid/os/RemoteException;
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@1b
    const-string/jumbo v1, "Failed talking with device policy service"

    #@1e
    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public setActiveProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
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
    .line 2942
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 2944
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@8
    move-result v0

    #@9
    .line 2945
    .local v0, "myUserId":I
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-interface {v2, p1, v3, v0}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@f
    .line 2946
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@11
    invoke-interface {v2, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 2947
    .end local v0    # "myUserId":I
    :catch_0
    move-exception v1

    #@17
    .line 2948
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Failed to set profile owner "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 2949
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v3, "Couldn\'t set profile owner."

    #@35
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38
    throw v2

    #@39
    .line 2952
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    return v3
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    #@0
    .prologue
    .line 3813
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3815
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3816
    :catch_0
    move-exception v0

    #@c
    .line 3817
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 3820
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3234
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3236
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3233
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3237
    :catch_0
    move-exception v0

    #@b
    .line 3238
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z

    #@0
    .prologue
    .line 2487
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2489
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2486
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2490
    :catch_0
    move-exception v0

    #@b
    .line 2491
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 3393
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3395
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3392
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3396
    :catch_0
    move-exception v0

    #@b
    .line 3397
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 2396
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2398
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2395
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2399
    :catch_0
    move-exception v0

    #@b
    .line 2400
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 2355
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2357
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2354
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2358
    :catch_0
    move-exception v0

    #@b
    .line 2359
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 3316
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3318
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3315
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3319
    :catch_0
    move-exception v0

    #@b
    .line 3320
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setDeviceInitializer(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "initializer"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2812
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2814
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceInitializer(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2815
    :catch_0
    move-exception v0

    #@c
    .line 2816
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed to set device initializer"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 2819
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public setDeviceOwner(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2688
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2707
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2709
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2710
    :catch_0
    move-exception v0

    #@c
    .line 2711
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed to set device owner"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 2714
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
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
    .line 1914
    .local p3, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    #@2
    .line 1915
    new-instance v11, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v11

    #@8
    .line 1917
    :cond_0
    iget-object v11, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@a
    if-eqz v11, :cond_3

    #@c
    .line 1921
    :try_start_0
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@e
    invoke-virtual {p2, v11}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v11

    #@12
    if-eqz v11, :cond_2

    #@14
    .line 1922
    const/4 v7, 0x0

    #@15
    .line 1923
    .local v7, "hostSpec":Ljava/lang/String;
    const/4 v3, 0x0

    #@16
    .line 1953
    .end local v7    # "hostSpec":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@18
    invoke-interface {v11, p1, v7, v3}, Landroid/app/admin/IDevicePolicyManager;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    #@1b
    move-result-object v11

    #@1c
    return-object v11

    #@1d
    .line 1925
    :cond_2
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@20
    move-result-object v11

    #@21
    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@23
    invoke-virtual {v11, v12}, Ljava/net/Proxy$Type;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v11

    #@27
    if-nez v11, :cond_4

    #@29
    .line 1926
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@2b
    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2e
    throw v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 1954
    :catch_0
    move-exception v0

    #@30
    .line 1955
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v11, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@32
    const-string/jumbo v12, "Failed talking with device policy service"

    #@35
    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    .line 1958
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v11, 0x0

    #@39
    return-object v11

    #@3a
    .line 1928
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@3d
    move-result-object v10

    #@3e
    check-cast v10, Ljava/net/InetSocketAddress;

    #@40
    .line 1929
    .local v10, "sa":Ljava/net/InetSocketAddress;
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 1930
    .local v6, "hostName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    #@47
    move-result v9

    #@48
    .line 1931
    .local v9, "port":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    .line 1932
    .local v5, "hostBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v11

    #@51
    .line 1933
    const-string/jumbo v12, ":"

    #@54
    .line 1932
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v11

    #@58
    .line 1933
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5b
    move-result-object v12

    #@5c
    .line 1932
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v11

    #@60
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    .line 1934
    .local v7, "hostSpec":Ljava/lang/String;
    if-nez p3, :cond_5

    #@66
    .line 1935
    const-string/jumbo v3, ""

    #@69
    .line 1949
    .local v3, "exclSpec":Ljava/lang/String;
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6c
    move-result-object v11

    #@6d
    invoke-static {v6, v11, v3}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@70
    move-result v11

    #@71
    if-eqz v11, :cond_1

    #@73
    .line 1951
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@75
    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@78
    throw v11

    #@79
    .line 1937
    .end local v3    # "exclSpec":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    .line 1938
    .local v8, "listBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    #@7f
    .line 1939
    .local v4, "firstDomain":Z
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@82
    move-result-object v2

    #@83
    .local v2, "exclDomain$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@86
    move-result v11

    #@87
    if-eqz v11, :cond_7

    #@89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8c
    move-result-object v1

    #@8d
    check-cast v1, Ljava/lang/String;

    #@8f
    .line 1940
    .local v1, "exclDomain":Ljava/lang/String;
    if-nez v4, :cond_6

    #@91
    .line 1941
    const-string/jumbo v11, ","

    #@94
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v8

    #@98
    .line 1945
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9b
    move-result-object v11

    #@9c
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v8

    #@a0
    goto :goto_1

    #@a1
    .line 1943
    :cond_6
    const/4 v4, 0x0

    #@a2
    goto :goto_2

    #@a3
    .line 1947
    .end local v1    # "exclDomain":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@a6
    move-result-object v3

    #@a7
    .restart local v3    # "exclSpec":Ljava/lang/String;
    goto :goto_0
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4033
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4035
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4032
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4036
    :catch_0
    move-exception v0

    #@b
    .line 4037
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 4314
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 4315
    :catch_0
    move-exception v0

    #@8
    .line 4316
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Failed talking with device policy service"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 4317
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 2541
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2543
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2540
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2544
    :catch_0
    move-exception v0

    #@b
    .line 2545
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 3954
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3956
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3953
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3957
    :catch_0
    move-exception v0

    #@b
    .line 3958
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    #@0
    .prologue
    .line 4098
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4100
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4097
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4101
    :catch_0
    move-exception v0

    #@b
    .line 4102
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed to setMasterMute on device policy service"

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I

    #@0
    .prologue
    .line 1683
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1685
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1682
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1686
    :catch_0
    move-exception v0

    #@b
    .line 1687
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J

    #@0
    .prologue
    .line 1802
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1804
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1801
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1805
    :catch_0
    move-exception v0

    #@b
    .line 1806
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J

    #@0
    .prologue
    .line 1521
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1523
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1520
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1524
    :catch_0
    move-exception v0

    #@b
    .line 1525
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1489
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1491
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1488
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1492
    :catch_0
    move-exception v0

    #@b
    .line 1493
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1079
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1081
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1078
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1082
    :catch_0
    move-exception v0

    #@b
    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1254
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1256
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1253
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1257
    :catch_0
    move-exception v0

    #@b
    .line 1258
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1194
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1196
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1193
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1197
    :catch_0
    move-exception v0

    #@b
    .line 1198
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1429
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1431
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1428
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1432
    :catch_0
    move-exception v0

    #@b
    .line 1433
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1312
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1314
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1311
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1315
    :catch_0
    move-exception v0

    #@b
    .line 1316
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1371
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1373
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1370
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1374
    :catch_0
    move-exception v0

    #@b
    .line 1375
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1133
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1135
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1132
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1136
    :catch_0
    move-exception v0

    #@b
    .line 1137
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I

    #@0
    .prologue
    .line 1026
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1028
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1025
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1029
    :catch_0
    move-exception v0

    #@b
    .line 1030
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I

    #@0
    .prologue
    .line 4431
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 4432
    :catch_0
    move-exception v0

    #@8
    .line 4433
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Failed talking with device policy service"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 4434
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public setPermissionPolicy(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 4380
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermissionPolicy(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 4378
    :goto_0
    return-void

    #@6
    .line 4381
    :catch_0
    move-exception v0

    #@7
    .line 4382
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Failed talking with device policy service"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 3
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
    .line 3505
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3507
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3508
    :catch_0
    move-exception v0

    #@c
    .line 3509
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 3512
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 3
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
    .line 3583
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3585
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 3586
    :catch_0
    move-exception v0

    #@c
    .line 3587
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 3590
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3034
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3036
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3033
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3037
    :catch_0
    move-exception v0

    #@b
    .line 3038
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3055
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3057
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3054
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3058
    :catch_0
    move-exception v0

    #@b
    .line 3059
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 3
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
    .line 3008
    if-nez p1, :cond_0

    #@2
    .line 3009
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "admin cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 3011
    :cond_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 3013
    if-nez p2, :cond_1

    #@11
    .line 3014
    :try_start_0
    const-string/jumbo p2, ""

    #@14
    .line 3016
    :cond_1
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@16
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v1

    #@1a
    return v1

    #@1b
    .line 3017
    :catch_0
    move-exception v0

    #@1c
    .line 3018
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@1e
    const-string/jumbo v2, "Failed to set profile owner"

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 3019
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v2, "Couldn\'t set profile owner."

    #@29
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v1

    #@2d
    .line 3022
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    #@2e
    return v1
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 1979
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1981
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1978
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1982
    :catch_0
    move-exception v0

    #@b
    .line 1983
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4082
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4084
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4081
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4085
    :catch_0
    move-exception v0

    #@b
    .line 4086
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed to set permission provider on device policy service"

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    goto :goto_0
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 2443
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2445
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2442
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2446
    :catch_0
    move-exception v0

    #@b
    .line 2447
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4061
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4063
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4060
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4064
    :catch_0
    move-exception v0

    #@b
    .line 4065
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 4334
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 4335
    :catch_0
    move-exception v0

    #@8
    .line 4336
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Failed talking with device policy service"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 4337
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z

    #@0
    .prologue
    .line 2125
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2127
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2128
    :catch_0
    move-exception v0

    #@c
    .line 2129
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 2132
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;

    #@0
    .prologue
    .line 4273
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4275
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4272
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4276
    :catch_0
    move-exception v0

    #@b
    .line 4277
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Error calling setSystemUpdatePolicy"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "configuration"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 3264
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3266
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3263
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3267
    :catch_0
    move-exception v0

    #@b
    .line 3268
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    #@0
    .prologue
    .line 4134
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4136
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4133
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4137
    :catch_0
    move-exception v0

    #@b
    .line 4138
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed to call block uninstall on device policy service"

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    goto :goto_0
.end method

.method public setUserEnabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2913
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2915
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setUserEnabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2916
    :catch_0
    move-exception v0

    #@c
    .line 2917
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Failed talking with device policy service"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 2920
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 4255
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 4253
    :goto_0
    return-void

    #@6
    .line 4256
    :catch_0
    move-exception v0

    #@7
    .line 4257
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Could not set the user icon "

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    .locals 4
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "originalIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 3368
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3370
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3367
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3372
    :catch_0
    move-exception v0

    #@b
    .line 3373
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Failed talking with device policy service"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3728
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 3729
    :catch_0
    move-exception v0

    #@8
    .line 3730
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not switch user "

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 3731
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public uninstallAllUserCaCerts(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2268
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2270
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@8
    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    #@b
    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    #@e
    move-result-object v1

    #@f
    .line 2271
    const/4 v3, 0x0

    #@10
    new-array v3, v3, [Ljava/lang/String;

    #@12
    .line 2270
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, [Ljava/lang/String;

    #@18
    invoke-interface {v2, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 2267
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 2272
    :catch_0
    move-exception v0

    #@1d
    .line 2273
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@1f
    const-string/jumbo v2, "Failed talking with device policy service"

    #@22
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_0
.end method

.method public uninstallCaCert(Landroid/content/ComponentName;[B)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    #@0
    .prologue
    .line 2219
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 2221
    :try_start_0
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 2222
    .local v0, "alias":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@a
    const/4 v4, 0x1

    #@b
    new-array v4, v4, [Ljava/lang/String;

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v0, v4, v5

    #@10
    invoke-interface {v3, p1, v4}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 2218
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@14
    .line 2225
    :catch_0
    move-exception v1

    #@15
    .line 2226
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@17
    const-string/jumbo v4, "Failed talking with device policy service"

    #@1a
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0

    #@1e
    .line 2223
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@1f
    .line 2224
    .local v2, "e":Ljava/security/cert/CertificateException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@21
    const-string/jumbo v4, "Unable to parse certificate"

    #@24
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method

.method public wipeData(I)V
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1881
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1883
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->wipeData(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1880
    :cond_0
    :goto_0
    return-void

    #@e
    .line 1884
    :catch_0
    move-exception v0

    #@f
    .line 1885
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    #@11
    const-string/jumbo v2, "Failed talking with device policy service"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method
