.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;,
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;,
        Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;,
        Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;,
        Lcom/android/internal/widget/LockPatternUtils$VerifyFlag;,
        Lcom/android/internal/widget/LockPatternUtils$CredentialType;
    }
.end annotation


# static fields
.field public static final blacklist AUTO_PIN_CONFIRM:Ljava/lang/String; = "lockscreen.auto_pin_confirm"

.field private static final blacklist CREDENTIAL_TYPE_API:Ljava/lang/String; = "getCredentialType"

.field public static final blacklist CREDENTIAL_TYPE_NONE:I = -0x1

.field public static final blacklist CREDENTIAL_TYPE_PASSWORD:I = 0x4

.field public static final blacklist CREDENTIAL_TYPE_PASSWORD_OR_PIN:I = 0x2

.field public static final blacklist CREDENTIAL_TYPE_PATTERN:I = 0x1

.field public static final blacklist CREDENTIAL_TYPE_PIN:I = 0x3

.field public static final blacklist CURRENT_LSKF_BASED_PROTECTOR_ID_KEY:Ljava/lang/String; = "sp-handle"

.field public static final blacklist DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field private static final blacklist ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final blacklist ENCRYPTED_REMOTE_CREDENTIALS_HEADER:[B

.field public static final blacklist FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final blacklist FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final blacklist FLAG_ENABLE_AUTO_PIN_CONFIRMATION:Ljava/lang/String; = "AutoPinConfirmation__enable_auto_pin_confirmation"

.field private static final blacklist FRP_CREDENTIAL_ENABLED:Z = true

.field private static final blacklist GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final blacklist IS_TRUST_USUALLY_MANAGED:Ljava/lang/String; = "lockscreen.istrustusuallymanaged"

.field private static final blacklist KNOWN_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.knowntrustagents"

.field public static final blacklist LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final blacklist LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final blacklist LOCK_PIN_ENHANCED_PRIVACY:Ljava/lang/String; = "pin_enhanced_privacy"

.field private static final blacklist LOCK_SCREEN_DEVICE_OWNER_INFO:Ljava/lang/String; = "lockscreen.device_owner_info"

.field private static final blacklist LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final blacklist LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final blacklist MIN_AUTO_PIN_REQUIREMENT_LENGTH:I = 0x6

.field public static final blacklist MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field public static final blacklist MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final blacklist MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final blacklist PASSWORD_HISTORY_DELIMITER:Ljava/lang/String; = ","

.field public static final blacklist PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final blacklist PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final blacklist PIN_LENGTH_UNAVAILABLE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "LockPatternUtils"

.field public static final blacklist USER_FRP:I = -0x270f

.field public static final blacklist USER_REPAIR_MODE:I = -0x270e

.field public static final blacklist VERIFY_FLAG_REQUEST_GK_PW_HANDLE:I = 0x1

.field public static final blacklist VERIFY_FLAG_WRITE_REPAIR_MODE_PW:I = 0x2


# instance fields
.field private final greylist mContentResolver:Landroid/content/ContentResolver;

.field private final greylist mContext:Landroid/content/Context;

.field private final blacklist mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCredentialTypeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasSecureLockScreen:Ljava/lang/Boolean;

.field private blacklist mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final blacklist mLockoutDeadlines:Landroid/util/SparseLongArray;

.field private blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 134
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 135
    const-string v1, "encrypted_remote_credentials"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->ENCRYPTED_REMOTE_CREDENTIALS_HEADER:[B

    .line 134
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ILockSettings;)V

    .line 374
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/widget/ILockSettings;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockSettings"    # Lcom/android/internal/widget/ILockSettings;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    .line 1068
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 1093
    new-instance v1, Landroid/app/PropertyInvalidatedCache;

    const-string v5, "getCredentialType"

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    const/4 v2, 0x4

    const-string/jumbo v3, "system_server"

    const-string v4, "getCredentialType"

    invoke-direct/range {v1 .. v6}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;

    .line 378
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 381
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 382
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_36

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    .line 383
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 384
    return-void
.end method

.method public static blacklist byteArrayToPattern([B)Ljava/util/List;
    .registers 6
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .line 1018
    if-nez p0, :cond_4

    .line 1019
    const/4 v0, 0x0

    return-object v0

    .line 1022
    :cond_4
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1024
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    .line 1025
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, -0x31

    int-to-byte v2, v2

    .line 1026
    .local v2, "b":B
    div-int/lit8 v3, v2, 0x3

    rem-int/lit8 v4, v2, 0x3

    invoke-static {v3, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1028
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method

.method public static blacklist canUserEnterRepairMode(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/UserInfo;

    .line 1998
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist credentialTypeToPasswordQuality(I)I
    .registers 4
    .param p0, "credentialType"    # I

    .line 806
    packed-switch p0, :pswitch_data_28

    .line 816
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :pswitch_1c
    const/high16 v0, 0x40000

    return v0

    .line 812
    :pswitch_1f
    const/high16 v0, 0x20000

    return v0

    .line 810
    :pswitch_22
    const/high16 v0, 0x10000

    return v0

    .line 808
    :pswitch_25
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_28
    .packed-switch -0x1
        :pswitch_25
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist credentialTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "credentialType"    # I

    .line 148
    packed-switch p0, :pswitch_data_24

    .line 158
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :pswitch_17
    const-string v0, "PASSWORD"

    return-object v0

    .line 154
    :pswitch_1a
    const-string v0, "PIN"

    return-object v0

    .line 152
    :pswitch_1d
    const-string v0, "PATTERN"

    return-object v0

    .line 150
    :pswitch_20
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_20
        :pswitch_3
        :pswitch_1d
        :pswitch_3
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist deserializeTrustAgents(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "serializedTrustAgents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1352
    :cond_c
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "split":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1354
    .local v1, "trustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_2e

    aget-object v4, v0, v3

    .line 1355
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1356
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    .end local v4    # "s":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1359
    :cond_2e
    return-object v1
.end method

.method public static blacklist frpCredentialEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1973
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private blacklist getBoolean(Ljava/lang/String;ZI)Z
    .registers 5
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .line 1251
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1252
    :catch_9
    move-exception v0

    .line 1253
    .local v0, "re":Landroid/os/RemoteException;
    return p2
.end method

.method private blacklist getEnabledNonTouchInputDevices(I)Ljava/util/List;
    .registers 10
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation

    .line 1168
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    .line 1169
    .local v0, "inputManager":Landroid/hardware/input/InputManagerGlobal;
    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object v1

    .line 1170
    .local v1, "inputIds":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v2, "matchingDevices":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_3b

    aget v5, v1, v4

    .line 1172
    .local v5, "deviceId":I
    invoke-virtual {v0, v5}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    .line 1173
    .local v6, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v6}, Landroid/view/InputDevice;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_38

    .line 1174
    :cond_1e
    const/16 v7, 0x1002

    invoke-virtual {v6, v7}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_38

    .line 1175
    :cond_27
    invoke-virtual {v6}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v7

    if-eqz v7, :cond_2e

    goto :goto_38

    .line 1176
    :cond_2e
    invoke-virtual {v6, p1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v7

    if-nez v7, :cond_35

    goto :goto_38

    .line 1177
    :cond_35
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    .end local v5    # "deviceId":I
    .end local v6    # "inputDevice":Landroid/view/InputDevice;
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1179
    :cond_3b
    return-object v2
.end method

.method private blacklist getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;
    .registers 4

    .line 1534
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 1535
    .local v0, "service":Lcom/android/internal/widget/LockSettingsInternal;
    if-eqz v0, :cond_b

    .line 1538
    return-object v0

    .line 1536
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to system server itself"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getLong(Ljava/lang/String;JI)J
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .line 1268
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 1269
    :catch_9
    move-exception v0

    .line 1270
    .local v0, "re":Landroid/os/RemoteException;
    return-wide p2
.end method

.method private blacklist getRequestedPasswordHistoryLength(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method private blacklist getSalt(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I

    .line 1051
    const-string v0, "lockscreen.password_salt"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 1052
    .local v3, "salt":J
    cmp-long v1, v3, v1

    if-nez v1, :cond_3c

    .line 1054
    :try_start_c
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    move-wide v3, v1

    .line 1055
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1056
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized lock password salt for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_32} :catch_33

    .line 1060
    goto :goto_3c

    .line 1057
    :catch_33
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1062
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_3c
    :goto_3c
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 1287
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    return-object v0

    .line 1288
    :catch_a
    move-exception v1

    .line 1289
    .local v1, "re":Landroid/os/RemoteException;
    return-object v0
.end method

.method private blacklist getTrustManager()Landroid/app/trust/TrustManager;
    .registers 5

    .line 363
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "trust"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 364
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_1b

    .line 365
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Stack trace:"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "LockPatternUtils"

    const-string v3, "Can\'t get TrustManagerService: is it running?"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    :cond_1b
    return-object v0
.end method

.method private blacklist getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 357
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    .line 359
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private blacklist hasActivePointerDeviceAttached()Z
    .registers 2

    .line 1141
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledNonTouchInputDevices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist hasPhysicalKeyboardActive()Z
    .registers 5

    .line 1183
    nop

    .line 1184
    const/16 v0, 0x101

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledNonTouchInputDevices(I)Ljava/util/List;

    move-result-object v0

    .line 1185
    .local v0, "keyboards":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    .line 1186
    .local v2, "keyboard":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    return v1

    .line 1187
    .end local v2    # "keyboard":Landroid/view/InputDevice;
    :cond_1f
    goto :goto_b

    .line 1188
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist hasSeparateChallenge(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .line 990
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getSeparateProfileChallengeEnabled(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 991
    :catch_9
    move-exception v0

    .line 992
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Couldn\'t get separate profile challenge enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v1, 0x0

    return v1
.end method

.method public static final blacklist invalidateCredentialTypeCache()V
    .registers 2

    .line 1102
    const-string/jumbo v0, "system_server"

    const-string v1, "getCredentialType"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method public static blacklist isAutoPinConfirmFeatureAvailable()Z
    .registers 1

    .line 791
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isCredentialShareableWithParent(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .line 1005
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1005
    return v0

    .line 1007
    :catch_11
    move-exception v0

    .line 1008
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist isDeviceEncryptionEnabled()Z
    .registers 1

    .line 913
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public static blacklist isFileEncryptionEnabled()Z
    .registers 1

    .line 921
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    return v0
.end method

.method public static blacklist isGsiRunning()Z
    .registers 2

    .line 2005
    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method private blacklist isManagedProfile(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .line 999
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1000
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static blacklist isQualityAlphabeticPassword(I)Z
    .registers 2
    .param p0, "quality"    # I

    .line 796
    const/high16 v0, 0x40000

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isQualityNumericPin(I)Z
    .registers 2
    .param p0, "quality"    # I

    .line 801
    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_b

    const/high16 v0, 0x30000

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isRepairModeActive(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1989
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "repair_mode_active"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public static blacklist isRepairModeSupported(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1981
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSpecialUserId(I)Z
    .registers 3
    .param p0, "userId"    # I

    .line 2012
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static blacklist isSpecialUserId(Landroid/content/Context;IZ)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "checkDeviceSupported"    # Z

    .line 2023
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_16

    .line 2032
    const/4 v0, 0x0

    return v0

    .line 2029
    :pswitch_6
    if-eqz p2, :cond_d

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeSupported(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2030
    :cond_d
    return v0

    .line 2025
    :pswitch_e
    if-eqz p2, :cond_15

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2026
    :cond_15
    return v0

    :pswitch_data_16
    .packed-switch -0x270f
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist newNonMovableByteArray(I)[B
    .registers 2
    .param p0, "length"    # I

    .line 297
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->secureArrayZeroization()Z

    move-result v0

    if-nez v0, :cond_9

    .line 298
    new-array v0, p0, [B

    return-object v0

    .line 300
    :cond_9
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newNonMovableByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newNonMovableCharArray(I)[C
    .registers 2
    .param p0, "length"    # I

    .line 308
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->secureArrayZeroization()Z

    move-result v0

    if-nez v0, :cond_9

    .line 309
    new-array v0, p0, [C

    return-object v0

    .line 311
    :cond_9
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newNonMovableCharArray(I)[C

    move-result-object v0

    return-object v0
.end method

.method public static blacklist patternToByteArray(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .line 1037
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_6

    .line 1038
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 1040
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1042
    .local v0, "patternSize":I
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->newNonMovableByteArray(I)[B

    move-result-object v1

    .line 1043
    .local v1, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_2a

    .line 1044
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1045
    .local v3, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1043
    .end local v3    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1047
    .end local v2    # "i":I
    :cond_2a
    return-object v1
.end method

.method public static blacklist pinOrPasswordQualityToCredentialType(I)I
    .registers 4
    .param p0, "quality"    # I

    .line 822
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 823
    const/4 v0, 0x4

    return v0

    .line 825
    :cond_8
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityNumericPin(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 826
    const/4 v0, 0x3

    return v0

    .line 828
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quality is neither Pin nor password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist reportEnabledTrustAgentsChanged(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 1392
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1393
    return-void
.end method

.method private blacklist serializeTrustAgents(Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1338
    .local p1, "trustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1339
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1340
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 1341
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1343
    :cond_20
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    .end local v2    # "cn":Landroid/content/ComponentName;
    goto :goto_9

    .line 1345
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist setBoolean(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1259
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1263
    goto :goto_25

    .line 1260
    :catch_8
    move-exception v0

    .line 1262
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write boolean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private greylist setLong(Ljava/lang/String;JI)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 1277
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1281
    goto :goto_25

    .line 1278
    :catch_8
    move-exception v0

    .line 1280
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private greylist setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 1296
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1300
    goto :goto_25

    .line 1297
    :catch_8
    move-exception v0

    .line 1299
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private blacklist throwIfCalledOnMainThread()V
    .registers 3

    .line 1396
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1399
    return-void

    .line 1397
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should not be called from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/UserInfo;

    .line 1969
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private blacklist wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    .line 1522
    if-nez p1, :cond_4

    .line 1523
    const/4 v0, 0x0

    return-object v0

    .line 1525
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 1529
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;-><init>(Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V

    return-object v0

    .line 1526
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must construct LockPatternUtils on a looper thread to use progress callbacks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist zeroize([B)V
    .registers 2
    .param p0, "array"    # [B

    .line 319
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->secureArrayZeroization()Z

    move-result v0

    if-nez v0, :cond_d

    .line 320
    if-eqz p0, :cond_c

    .line 321
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 323
    :cond_c
    return-void

    .line 325
    :cond_d
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 326
    return-void
.end method

.method public static blacklist zeroize([C)V
    .registers 2
    .param p0, "array"    # [C

    .line 333
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->secureArrayZeroization()Z

    move-result v0

    if-nez v0, :cond_d

    .line 334
    if-eqz p0, :cond_c

    .line 335
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 337
    :cond_c
    return-void

    .line 339
    :cond_d
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->zeroize([C)V

    .line 340
    return-void
.end method


# virtual methods
.method public blacklist addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 6
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 1554
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsInternal;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .registers 7
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    .line 1573
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 1574
    :catch_9
    move-exception v0

    .line 1575
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not add weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    .registers 8
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 577
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 579
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 580
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v2

    .line 579
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 581
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_13

    .line 582
    return v0

    .line 583
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1b

    .line 584
    return v3

    .line 585
    :cond_1b
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-eq v2, v3, :cond_22

    .line 588
    return v0

    .line 586
    :cond_22
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    .end local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    throw v2
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2c} :catch_2c

    .line 590
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    .restart local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    :catch_2c
    move-exception v1

    .line 591
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string v3, "failed to check credential"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    return v0
.end method

.method public blacklist checkPasswordHistory([B[BI)Z
    .registers 13
    .param p1, "passwordToCheck"    # [B
    .param p2, "hashFactor"    # [B
    .param p3, "userId"    # I

    .line 650
    const/4 v0, 0x0

    if-eqz p1, :cond_50

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_50

    .line 654
    :cond_7
    const-string v1, "lockscreen.passwordhistory"

    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "passwordHistory":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 656
    return v0

    .line 658
    :cond_14
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v2

    .line 659
    .local v2, "passwordHistoryLength":I
    if-nez v2, :cond_1b

    .line 660
    return v0

    .line 662
    :cond_1b
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 663
    .local v3, "salt":[B
    invoke-static {p1, v3}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B[B)Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, "legacyHash":Ljava/lang/String;
    invoke-static {p1, v3, p2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B[B)Ljava/lang/String;

    move-result-object v5

    .line 666
    .local v5, "passwordHash":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 668
    .local v6, "history":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_32
    array-length v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v7, v8, :cond_4f

    .line 669
    aget-object v8, v6, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    aget-object v8, v6, v7

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    goto :goto_4d

    .line 668
    :cond_4a
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 670
    :cond_4d
    :goto_4d
    const/4 v0, 0x1

    return v0

    .line 673
    .end local v7    # "i":I
    :cond_4f
    return v0

    .line 651
    .end local v1    # "passwordHistory":Ljava/lang/String;
    .end local v2    # "passwordHistoryLength":I
    .end local v3    # "salt":[B
    .end local v4    # "legacyHash":Ljava/lang/String;
    .end local v5    # "passwordHash":Ljava/lang/String;
    .end local v6    # "history":[Ljava/lang/String;
    :cond_50
    :goto_50
    const-string v1, "LockPatternUtils"

    const-string v2, "checkPasswordHistory: empty password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return v0
.end method

.method public blacklist createNewUser(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "userSerialNumber"    # I

    .line 2091
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockSettingsInternal;->createNewUser(II)V

    .line 2092
    return-void
.end method

.method public greylist getActivePasswordQuality(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public blacklist getCredentialTypeForUser(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .line 1112
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getCurrentFailedPasswordAttempts(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 478
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 479
    const/4 v0, 0x0

    return v0

    .line 481
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public blacklist getDeviceOwnerInfo()Ljava/lang/String;
    .registers 3

    .line 898
    const-string v0, "lockscreen.device_owner_info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 345
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 346
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 348
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stack trace:"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "LockPatternUtils"

    const-string v2, "Can\'t get DevicePolicyManagerService: is it running?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public blacklist getEnabledTrustAgents(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1324
    const-string v0, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->deserializeTrustAgents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getKeyguardStoredPasswordQuality(I)I
    .registers 3
    .param p1, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 934
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public blacklist getKnownTrustAgents(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1334
    const-string v0, "lockscreen.knowntrustagents"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->deserializeTrustAgents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    .line 390
    nop

    .line 391
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 390
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 392
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 394
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method public blacklist getLockoutAttemptDeadline(I)J
    .registers 9
    .param p1, "userId"    # I

    .line 1239
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    .line 1240
    .local v3, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1241
    .local v5, "now":J
    cmp-long v0, v3, v5

    if-gez v0, :cond_1a

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1a

    .line 1243
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1244
    return-wide v1

    .line 1246
    :cond_1a
    return-wide v3
.end method

.method public blacklist getMaximumFailedPasswordsForWipe(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 485
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 486
    const/4 v0, 0x0

    return v0

    .line 488
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public blacklist getMaximumPasswordLength(I)I
    .registers 3
    .param p1, "quality"    # I

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    return v0
.end method

.method public greylist getOwnerInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 875
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPasswordHistoryHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .registers 6
    .param p1, "currentPassword"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 633
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 634
    :catch_9
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to get hash factor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getPinLength(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 685
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getPinLength(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 686
    :catch_9
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not fetch PIN length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v1, -0x1

    return v1
.end method

.method public greylist getPowerButtonInstantlyLocks(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1309
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist getRequestedMinimumPasswordLength(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public blacklist getRequestedPasswordComplexity(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(IZ)I

    move-result v0

    return v0
.end method

.method public blacklist getRequestedPasswordComplexity(IZ)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0

    return v0
.end method

.method public blacklist getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 3
    .param p1, "userId"    # I

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z

    .line 418
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStrongAuthForUser(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 1460
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getStrongAuthForUser(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1461
    :catch_9
    move-exception v0

    .line 1462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not get StrongAuth"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1463
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method public blacklist hasPendingEscrowToken(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1947
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->hasPendingEscrowToken(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1948
    :catch_9
    move-exception v0

    .line 1949
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1951
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasSecureLockScreen()Z
    .registers 2

    .line 1958
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;

    if-nez v0, :cond_17

    .line 1960
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->hasSecureLockScreen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    .line 1963
    goto :goto_17

    .line 1961
    :catch_13
    move-exception v0

    .line 1962
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1965
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isAutoPinConfirmEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 781
    const-string v0, "lockscreen.auto_pin_confirm"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist isBiometricAllowedForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1486
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit16 v0, v0, -0x305

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isCredentialsDisabledForUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1471
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist isDeviceOwnerInfoEnabled()Z
    .registers 2

    .line 902
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isEscrowTokenActive(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1626
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsInternal;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isLockPasswordEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1127
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 1128
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method public greylist isLockPatternEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1136
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 1137
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public greylist isLockScreenDisabled(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 752
    return v1

    .line 754
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111013d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 756
    .local v0, "disabledByDefault":Z
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 757
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    if-eqz v2, :cond_30

    .line 758
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_30

    move v3, v4

    goto :goto_31

    :cond_30
    move v3, v1

    .line 759
    .local v3, "isDemoUser":Z
    :goto_31
    const-string v5, "lockscreen.disabled"

    invoke-direct {p0, v5, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v5

    if-nez v5, :cond_3d

    if-nez v0, :cond_3d

    if-eqz v3, :cond_3e

    :cond_3d
    move v1, v4

    :cond_3e
    return v1
.end method

.method public blacklist isManagedProfileWithUnifiedChallenge(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .line 985
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSeparateChallenge(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isOwnerInfoEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 879
    const-string v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist isPinEnhancedPrivacyEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1195
    const/4 v0, 0x0

    .line 1196
    .local v0, "defaultValue":Z
    invoke-static {}, Lcom/android/internal/widget/flags/Flags;->hideLastCharWithPhysicalInput()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1197
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasPhysicalKeyboardActive()Z

    move-result v0

    .line 1199
    :cond_b
    const-string/jumbo v1, "pin_enhanced_privacy"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public blacklist isPinEnhancedPrivacyEverChosen(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1213
    const-string/jumbo v0, "pin_enhanced_privacy"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist isPowerButtonInstantlyLocksEverChosen(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1313
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isProfileWithUnifiedChallenge(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .line 978
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialShareableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSeparateChallenge(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist isSecure(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1121
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 1122
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public blacklist isSeparateProfileChallengeEnabled(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .line 968
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialShareableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSeparateChallenge(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isTrustAllowedForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1479
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isTrustUsuallyManaged(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    instance-of v0, v0, Lcom/android/internal/widget/ILockSettings$Stub;

    if-eqz v0, :cond_14

    .line 252
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lockscreen.istrustusuallymanaged"

    invoke-interface {v1, v2, v0, p1}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    return v0

    .line 253
    :catch_12
    move-exception v1

    .line 254
    .local v1, "e":Landroid/os/RemoteException;
    return v0

    .line 248
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "May only be called by TrustManagerService. Use TrustManager.isTrustUsuallyManaged()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isUserInLockdown(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1490
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist isVisiblePatternEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1149
    const/4 v0, 0x1

    .line 1150
    .local v0, "defaultValue":Z
    invoke-static {}, Lcom/android/internal/widget/flags/Flags;->hideLastCharWithPhysicalInput()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1151
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasActivePointerDeviceAttached()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 1153
    :cond_e
    const-string v1, "lock_pattern_visible_pattern"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public blacklist isVisiblePatternEverChosen(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1164
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isWeakEscrowTokenActive(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1635
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->isWeakEscrowTokenActive(JI)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1636
    :catch_9
    move-exception v0

    .line 1637
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not check the weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWeakEscrowTokenValid(J[BI)Z
    .registers 8
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 1645
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->isWeakEscrowTokenValid(J[BI)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1646
    :catch_9
    move-exception v0

    .line 1647
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not validate the weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist refreshStoredPinLength(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 703
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->refreshStoredPinLength(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 704
    :catch_9
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not store PIN length on disk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .registers 4
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .line 1403
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1406
    goto :goto_10

    .line 1404
    :catch_c
    move-exception v0

    .line 1405
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1407
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public blacklist registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1421
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1422
    :catch_9
    move-exception v0

    .line 1423
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not register WeakEscrowTokenRemovedListener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeCachedUnifiedChallenge(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2058
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeCachedUnifiedChallenge(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2061
    goto :goto_c

    .line 2059
    :catch_8
    move-exception v0

    .line 2060
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2062
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist removeEscrowToken(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1601
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsInternal;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist removeGatekeeperPasswordHandle(J)V
    .registers 6
    .param p1, "gatekeeperPasswordHandle"    # J

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->removeGatekeeperPasswordHandle(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 560
    goto :goto_10

    .line 558
    :catch_8
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to remove gatekeeper password handle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public blacklist removeUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2095
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockSettingsInternal;->removeUser(I)V

    .line 2096
    return-void
.end method

.method public blacklist removeWeakEscrowToken(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1612
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->removeWeakEscrowToken(JI)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1613
    :catch_9
    move-exception v0

    .line 1614
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not remove the weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist reportFailedPasswordAttempt(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 451
    return-void

    .line 453
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 454
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->shouldTrustManagerListenForPrimaryAuth()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 455
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 457
    :cond_1f
    return-void
.end method

.method public blacklist reportPasswordLockout(II)V
    .registers 5
    .param p1, "timeoutMs"    # I
    .param p2, "userId"    # I

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 472
    return-void

    .line 474
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/trust/TrustManager;->reportUnlockLockout(II)V

    .line 475
    return-void
.end method

.method public blacklist reportSuccessfulBiometricUnlock(ZI)V
    .registers 6
    .param p1, "isStrongBiometric"    # Z
    .param p2, "userId"    # I

    .line 1441
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->reportSuccessfulBiometricUnlock(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1444
    goto :goto_10

    .line 1442
    :catch_8
    move-exception v0

    .line 1443
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not report successful biometric unlock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1445
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public greylist reportSuccessfulPasswordAttempt(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 461
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 462
    return-void

    .line 464
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 465
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->shouldTrustManagerListenForPrimaryAuth()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 466
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 468
    :cond_1e
    return-void
.end method

.method public blacklist requireCredentialEntry(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1370
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1371
    return-void
.end method

.method public blacklist requireStrongAuth(II)V
    .registers 6
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 1385
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1388
    goto :goto_21

    .line 1386
    :catch_8
    move-exception v0

    .line 1387
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while requesting strong auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public blacklist resetKeyStore(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 725
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->resetKeyStore(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 729
    goto :goto_21

    .line 726
    :catch_8
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t reset keystore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public blacklist scheduleNonStrongBiometricIdleTimeout(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1449
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->scheduleNonStrongBiometricIdleTimeout(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1452
    goto :goto_10

    .line 1450
    :catch_8
    move-exception v0

    .line 1451
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not schedule non-strong biometric idle timeout"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1453
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public blacklist setAutoPinConfirm(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 770
    const-string v0, "lockscreen.auto_pin_confirm"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 771
    return-void
.end method

.method public blacklist setDeviceOwnerInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 890
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 891
    const/4 p1, 0x0

    .line 894
    :cond_9
    const-string v0, "lockscreen.device_owner_info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 895
    return-void
.end method

.method public blacklist setEnabledTrustAgents(Ljava/util/Collection;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 1318
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    const-string v0, "lockscreen.enabledtrustagents"

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->serializeTrustAgents(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1319
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1320
    return-void
.end method

.method public blacklist setKnownTrustAgents(Ljava/util/Collection;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 1329
    .local p1, "knownTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    const-string v0, "lockscreen.knowntrustagents"

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->serializeTrustAgents(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1330
    return-void
.end method

.method public blacklist setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 7
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userHandle"    # I

    .line 848
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_16

    .line 849
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires the lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_25

    if-nez v0, :cond_22

    .line 855
    const/4 v0, 0x0

    return v0

    .line 859
    :cond_22
    nop

    .line 860
    const/4 v0, 0x1

    return v0

    .line 857
    :catch_25
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to save lock password"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 14
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userHandle"    # I

    .line 1665
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_16

    .line 1666
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires the lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1669
    :cond_16
    :goto_16
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v2

    .line 1671
    .local v2, "localService":Lcom/android/internal/widget/LockSettingsInternal;
    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "tokenHandle":J
    .end local p4    # "token":[B
    .end local p5    # "userHandle":I
    .local v3, "credential":Lcom/android/internal/widget/LockscreenCredential;
    .local v4, "tokenHandle":J
    .local v6, "token":[B
    .local v7, "userHandle":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/LockSettingsInternal;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p1

    return p1
.end method

.method public blacklist setLockScreenDisabled(ZI)V
    .registers 4
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    .line 740
    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 741
    return-void
.end method

.method public greylist setLockoutAttemptDeadline(II)J
    .registers 7
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .line 1223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 1224
    .local v0, "deadline":J
    const/16 v2, -0x270f

    if-ne p1, v2, :cond_b

    .line 1227
    return-wide v0

    .line 1229
    :cond_b
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1230
    return-wide v0
.end method

.method public greylist-max-r setOwnerInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 865
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 866
    return-void
.end method

.method public greylist-max-r setOwnerInfoEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 870
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 871
    return-void
.end method

.method public blacklist setPinEnhancedPrivacyEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1206
    const-string/jumbo v0, "pin_enhanced_privacy"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1207
    return-void
.end method

.method public blacklist setPowerButtonInstantlyLocks(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1304
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1305
    return-void
.end method

.method public blacklist setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 7
    .param p1, "userHandle"    # I
    .param p2, "enabled"    # Z
    .param p3, "profilePassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 949
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialShareableWithParent(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 950
    return-void

    .line 953
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 955
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportEnabledTrustAgentsChanged(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 958
    goto :goto_1a

    .line 956
    :catch_12
    move-exception v0

    .line 957
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Couldn\'t update work profile challenge enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public blacklist setTrustUsuallyManaged(ZI)V
    .registers 5
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v1, "lockscreen.istrustusuallymanaged"

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 263
    goto :goto_b

    .line 261
    :catch_a
    move-exception v0

    .line 264
    :goto_b
    return-void
.end method

.method public blacklist setVisiblePatternEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1160
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1161
    return-void
.end method

.method public blacklist startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;
    .registers 3

    .line 2104
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2105
    :catch_9
    move-exception v0

    .line 2106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist tryUnlockWithCachedUnifiedChallenge(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2049
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->tryUnlockWithCachedUnifiedChallenge(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2050
    :catch_9
    move-exception v0

    .line 2051
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist unlockUserKeyIfUnsecured(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2084
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unlockUserKeyIfUnsecured(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2087
    goto :goto_c

    .line 2085
    :catch_8
    move-exception v0

    .line 2086
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2088
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist unlockUserWithToken(J[BI)Z
    .registers 6
    .param p1, "tokenHandle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 1685
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockSettingsInternal;->unlockUserWithToken(J[BI)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .registers 5
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .line 1411
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1414
    goto :goto_14

    .line 1412
    :catch_c
    move-exception v0

    .line 1413
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not unregister StrongAuthTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1415
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public blacklist unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1432
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1433
    :catch_9
    move-exception v0

    .line 1434
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not register WeakEscrowTokenRemovedListener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist userPresent(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->userPresent(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 271
    nop

    .line 272
    return-void

    .line 269
    :catch_9
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;
    .registers 4
    .param p1, "encryptedCredential"    # [B

    .line 2117
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2118
    :catch_9
    move-exception v0

    .line 2119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 519
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 521
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 523
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v0, :cond_10

    .line 524
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_11

    return-object v1

    .line 526
    :cond_10
    return-object v0

    .line 528
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_11
    move-exception v0

    .line 529
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to verify credential"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method public blacklist verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 12
    .param p1, "gatekeeperPasswordHandle"    # J
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .line 543
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_14

    .line 544
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .end local p1    # "gatekeeperPasswordHandle":J
    .end local p3    # "challenge":J
    .end local p5    # "userId":I
    .local v1, "gatekeeperPasswordHandle":J
    .local v3, "challenge":J
    .local v5, "userId":I
    :try_start_7
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 545
    .local p1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez p1, :cond_10

    .line 546
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11

    return-object p2

    .line 548
    :cond_10
    return-object p1

    .line 549
    .end local p1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .end local v1    # "gatekeeperPasswordHandle":J
    .end local v3    # "challenge":J
    .end local v5    # "userId":I
    .local p1, "gatekeeperPasswordHandle":J
    .restart local p3    # "challenge":J
    .restart local p5    # "userId":I
    :catch_14
    move-exception v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object p1, v0

    .line 550
    .end local p3    # "challenge":J
    .end local p5    # "userId":I
    .restart local v1    # "gatekeeperPasswordHandle":J
    .restart local v3    # "challenge":J
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_19
    const-string p2, "LockPatternUtils"

    const-string p3, "failed to verify gatekeeper password"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p2
.end method

.method public blacklist verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 611
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 613
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 614
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 615
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v0, :cond_10

    .line 616
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_11

    return-object v1

    .line 618
    :cond_10
    return-object v0

    .line 620
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_11
    move-exception v0

    .line 621
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to verify tied profile credential"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method public blacklist writeRepairModeCredential(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 498
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 500
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->writeRepairModeCredential(I)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return v0

    .line 501
    :catch_c
    move-exception v0

    .line 502
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Failed to write repair mode credential"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    const/4 v1, 0x0

    return v1
.end method
