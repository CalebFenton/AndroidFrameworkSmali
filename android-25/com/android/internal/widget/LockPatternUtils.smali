.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;,
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field private static final ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field private static final IS_TRUST_USUALLY_MANAGED:Ljava/lang/String; = "lockscreen.istrustusuallymanaged"

.field public static final LEGACY_LOCK_PATTERN_ENABLED:Ljava/lang/String; = "legacy_lock_pattern_enabled"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockoutattempttimeoutmss"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_DEVICE_OWNER_INFO:Ljava/lang/String; = "lockscreen.device_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3

.field public static final MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final PROFILE_KEY_NAME_DECRYPT:Ljava/lang/String; = "profile_key_name_decrypt_"

.field public static final PROFILE_KEY_NAME_ENCRYPT:Ljava/lang/String; = "profile_key_name_encrypt_"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mHandler:Landroid/os/Handler;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/LockPatternUtils;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 232
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    #@6
    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v2

    #@a
    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    #@c
    .line 235
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@f
    move-result-object v0

    #@10
    .line 236
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@12
    new-instance v1, Landroid/os/Handler;

    #@14
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@17
    :cond_0
    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    #@19
    .line 231
    return-void
.end method

.method private static categoryChar(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 763
    const/16 v0, 0x61

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x7a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 764
    :cond_0
    const/16 v0, 0x41

    #@c
    if-gt v0, p0, :cond_1

    #@e
    const/16 v0, 0x5a

    #@10
    if-gt p0, v0, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 765
    :cond_1
    const/16 v0, 0x30

    #@16
    if-gt v0, p0, :cond_2

    #@18
    const/16 v0, 0x39

    #@1a
    if-gt p0, v0, :cond_2

    #@1c
    const/4 v0, 0x2

    #@1d
    return v0

    #@1e
    .line 766
    :cond_2
    const/4 v0, 0x3

    #@1f
    return v0
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 6
    .param p0, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 737
    const/4 v0, 0x0

    #@1
    .line 738
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    #@2
    .line 739
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    .line 740
    .local v3, "len":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@9
    .line 741
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v4

    #@d
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 742
    const/4 v0, 0x1

    #@14
    .line 740
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 744
    :cond_0
    const/4 v1, 0x1

    #@18
    goto :goto_1

    #@19
    .line 748
    :cond_1
    if-eqz v1, :cond_2

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 749
    const/high16 v4, 0x50000

    #@1f
    return v4

    #@20
    .line 751
    :cond_2
    if-eqz v1, :cond_3

    #@22
    .line 752
    const/high16 v4, 0x40000

    #@24
    return v4

    #@25
    .line 754
    :cond_3
    if-eqz v0, :cond_5

    #@27
    .line 755
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    #@2a
    move-result v4

    #@2b
    const/4 v5, 0x3

    #@2c
    if-le v4, v5, :cond_4

    #@2e
    .line 756
    const/high16 v4, 0x20000

    #@30
    .line 755
    :goto_2
    return v4

    #@31
    .line 757
    :cond_4
    const/high16 v4, 0x30000

    #@33
    goto :goto_2

    #@34
    .line 759
    :cond_5
    const/4 v4, 0x0

    #@35
    return v4
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1315
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1316
    :catch_0
    move-exception v0

    #@a
    .line 1317
    .local v0, "re":Landroid/os/RemoteException;
    return p2
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    #@0
    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 242
    const-string/jumbo v1, "lock_settings"

    #@7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    .line 241
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    #@e
    move-result-object v0

    #@f
    .line 243
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    #@11
    .line 245
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    #@13
    return-object v1
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 1332
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-wide v2

    #@8
    return-wide v2

    #@9
    .line 1333
    :catch_0
    move-exception v0

    #@a
    .line 1334
    .local v0, "re":Landroid/os/RemoteException;
    return-wide p2
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 1121
    const-string/jumbo v1, "lockscreen.password_salt"

    #@5
    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    #@8
    move-result-wide v2

    #@9
    .line 1122
    .local v2, "salt":J
    cmp-long v1, v2, v4

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1124
    :try_start_0
    const-string/jumbo v1, "SHA1PRNG"

    #@10
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    #@17
    move-result-wide v2

    #@18
    .line 1125
    const-string/jumbo v1, "lockscreen.password_salt"

    #@1b
    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@1e
    .line 1126
    const-string/jumbo v1, "LockPatternUtils"

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "Initialized lock password salt for user: "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 1132
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 1127
    :catch_0
    move-exception v0

    #@3e
    .line 1129
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@40
    const-string/jumbo v4, "Couldn\'t get SecureRandom number"

    #@43
    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@46
    throw v1
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1349
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@4
    move-result-object v1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 1350
    :catch_0
    move-exception v0

    #@c
    .line 1351
    .local v0, "re":Landroid/os/RemoteException;
    return-object v3
.end method

.method private getTrustManager()Landroid/app/trust/TrustManager;
    .locals 5

    #@0
    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "trust"

    #@5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/trust/TrustManager;

    #@b
    .line 224
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_0

    #@d
    .line 225
    const-string/jumbo v1, "LockPatternUtils"

    #@10
    const-string/jumbo v2, "Can\'t get TrustManagerService: is it running?"

    #@13
    .line 226
    new-instance v3, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v4, "Stack trace:"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    .line 225
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 228
    :cond_0
    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    #@c
    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    #@e
    return-object v0
.end method

.method public static isDeviceEncryptionEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 953
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private isDoNotAskCredentialsOnBootSet()Z
    .locals 1

    #@0
    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    #@2
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isFileEncryptionEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 961
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private isLockPasswordEnabled(II)Z
    .locals 3
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1179
    const/high16 v2, 0x40000

    #@4
    if-eq p1, v2, :cond_0

    #@6
    .line 1180
    const/high16 v2, 0x20000

    #@8
    if-ne p1, v2, :cond_2

    #@a
    .line 1185
    .local v0, "passwordEnabled":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@c
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists(I)Z

    #@f
    move-result v1

    #@10
    :cond_1
    return v1

    #@11
    .line 1181
    .end local v0    # "passwordEnabled":Z
    :cond_2
    const/high16 v2, 0x30000

    #@13
    if-eq p1, v2, :cond_0

    #@15
    .line 1182
    const/high16 v2, 0x50000

    #@17
    if-eq p1, v2, :cond_0

    #@19
    .line 1183
    const/high16 v2, 0x60000

    #@1b
    if-eq p1, v2, :cond_0

    #@1d
    .line 1184
    const/high16 v2, 0x80000

    #@1f
    if-eq p1, v2, :cond_0

    #@21
    move v0, v1

    #@22
    goto :goto_0
.end method

.method private isLockPatternEnabled(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1209
    const/high16 v0, 0x10000

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 1210
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    #@7
    move-result v0

    #@8
    .line 1209
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method private static maxDiffCategory(I)I
    .locals 2
    .param p0, "category"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 770
    if-eqz p0, :cond_0

    #@4
    if-ne p0, v0, :cond_1

    #@6
    :cond_0
    return v0

    #@7
    .line 771
    :cond_1
    const/4 v0, 0x2

    #@8
    if-ne p0, v0, :cond_2

    #@a
    const/16 v0, 0xa

    #@c
    return v0

    #@d
    .line 772
    :cond_2
    return v1
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 12
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 792
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v10

    #@5
    if-nez v10, :cond_0

    #@7
    return v11

    #@8
    .line 793
    :cond_0
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v8

    #@c
    .line 794
    .local v8, "previousChar":C
    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    #@f
    move-result v0

    #@10
    .line 795
    .local v0, "category":I
    const/4 v5, 0x0

    #@11
    .line 796
    .local v5, "diff":I
    const/4 v6, 0x0

    #@12
    .line 797
    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    #@13
    .line 798
    .local v7, "maxLength":I
    const/4 v9, 0x0

    #@14
    .line 799
    .local v9, "startSequence":I
    const/4 v2, 0x1

    #@15
    .local v2, "current":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@18
    move-result v10

    #@19
    if-ge v2, v10, :cond_4

    #@1b
    .line 800
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v3

    #@1f
    .line 801
    .local v3, "currentChar":C
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    #@22
    move-result v1

    #@23
    .line 802
    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    #@25
    .line 803
    .local v4, "currentDiff":I
    if-ne v1, v0, :cond_1

    #@27
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@2a
    move-result v10

    #@2b
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->maxDiffCategory(I)I

    #@2e
    move-result v11

    #@2f
    if-le v10, v11, :cond_2

    #@31
    .line 804
    :cond_1
    sub-int v10, v2, v9

    #@33
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    #@36
    move-result v7

    #@37
    .line 805
    move v9, v2

    #@38
    .line 806
    const/4 v6, 0x0

    #@39
    .line 807
    move v0, v1

    #@3a
    .line 817
    :goto_1
    move v8, v3

    #@3b
    .line 799
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 810
    :cond_2
    if-eqz v6, :cond_3

    #@40
    if-eq v4, v5, :cond_3

    #@42
    .line 811
    sub-int v10, v2, v9

    #@44
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    #@47
    move-result v7

    #@48
    .line 812
    add-int/lit8 v9, v2, -0x1

    #@4a
    .line 814
    :cond_3
    move v5, v4

    #@4b
    .line 815
    const/4 v6, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 819
    .end local v1    # "categoryCurrent":I
    .end local v3    # "currentChar":C
    .end local v4    # "currentDiff":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@50
    move-result v10

    #@51
    sub-int/2addr v10, v9

    #@52
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    #@55
    move-result v7

    #@56
    .line 820
    return v7
.end method

.method private onAfterChangingPassword(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1429
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    #@7
    .line 1428
    return-void
.end method

.method public static patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1080
    if-nez p0, :cond_0

    #@2
    .line 1081
    const-string/jumbo v4, ""

    #@5
    return-object v4

    #@6
    .line 1083
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    .line 1085
    .local v2, "patternSize":I
    new-array v3, v2, [B

    #@c
    .line 1086
    .local v3, "res":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@f
    move-result-object v0

    #@10
    .line 1087
    .local v0, "bytes":[B
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@13
    .line 1088
    aget-byte v4, v0, v1

    #@15
    add-int/lit8 v4, v4, -0x31

    #@17
    int-to-byte v4, v4

    #@18
    aput-byte v4, v3, v1

    #@1a
    .line 1087
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1090
    :cond_1
    new-instance v4, Ljava/lang/String;

    #@1f
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    #@22
    return-object v4
.end method

.method public static patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x0

    #@1
    .line 1101
    if-nez p0, :cond_0

    #@3
    .line 1102
    return-object v7

    #@4
    .line 1105
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v5

    #@8
    .line 1106
    .local v5, "patternSize":I
    new-array v6, v5, [B

    #@a
    .line 1107
    .local v6, "res":[B
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    #@d
    .line 1108
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    #@13
    .line 1109
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    #@16
    move-result v7

    #@17
    mul-int/lit8 v7, v7, 0x3

    #@19
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    #@1c
    move-result v8

    #@1d
    add-int/2addr v7, v8

    #@1e
    int-to-byte v7, v7

    #@1f
    aput-byte v7, v6, v2

    #@21
    .line 1107
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1112
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string/jumbo v7, "SHA-1"

    #@27
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@2a
    move-result-object v3

    #@2b
    .line 1113
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    move-result-object v1

    #@2f
    .line 1114
    .local v1, "hash":[B
    return-object v1

    #@30
    .line 1115
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    #@31
    .line 1116
    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    return-object v6
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1066
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    #@2
    .line 1067
    const-string/jumbo v4, ""

    #@5
    return-object v4

    #@6
    .line 1069
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    .line 1071
    .local v2, "patternSize":I
    new-array v3, v2, [B

    #@c
    .line 1072
    .local v3, "res":[B
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@f
    .line 1073
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    #@15
    .line 1074
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    #@18
    move-result v4

    #@19
    mul-int/lit8 v4, v4, 0x3

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    #@1e
    move-result v5

    #@1f
    add-int/2addr v4, v5

    #@20
    add-int/lit8 v4, v4, 0x31

    #@22
    int-to-byte v4, v4

    #@23
    aput-byte v4, v3, v1

    #@25
    .line 1072
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1076
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    #@2a
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    #@2d
    return-object v4
.end method

.method private savedPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 529
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 530
    :catch_0
    move-exception v0

    #@a
    .line 531
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method private savedPatternExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 517
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 518
    :catch_0
    move-exception v0

    #@a
    .line 519
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1323
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1321
    :goto_0
    return-void

    #@8
    .line 1324
    :catch_0
    move-exception v0

    #@9
    .line 1326
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Couldn\'t write boolean "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 1340
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1338
    :goto_0
    return-void

    #@8
    .line 1341
    :catch_0
    move-exception v0

    #@9
    .line 1343
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Couldn\'t write long "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1357
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1355
    :goto_0
    return-void

    #@8
    .line 1358
    :catch_0
    move-exception v0

    #@9
    .line 1360
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Couldn\'t write string "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    goto :goto_0
.end method

.method private shouldEncryptWithCredentials(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1455
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDoNotAskCredentialsOnBootSet()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1046
    if-nez p0, :cond_0

    #@3
    .line 1047
    return-object v4

    #@4
    .line 1050
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@7
    move-result-object v3

    #@8
    .line 1052
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@b
    move-result-object v1

    #@c
    .line 1053
    .local v1, "bytes":[B
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    array-length v4, v1

    #@e
    if-ge v2, v4, :cond_1

    #@10
    .line 1054
    aget-byte v4, v1, v2

    #@12
    add-int/lit8 v4, v4, -0x31

    #@14
    int-to-byte v0, v4

    #@15
    .line 1055
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    #@17
    rem-int/lit8 v5, v0, 0x3

    #@19
    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    .line 1053
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1057
    .end local v0    # "b":B
    :cond_1
    return-object v3
.end method

.method private throwIfCalledOnMainThread()V
    .locals 2

    #@0
    .prologue
    .line 1459
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1460
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v1, "should not be called from the main thread."

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 1458
    :cond_0
    return-void
.end method

.method private updateCryptoUserInfo(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 671
    if-eqz p1, :cond_0

    #@2
    .line 672
    return-void

    #@3
    .line 675
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_1

    #@9
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 677
    .local v2, "ownerInfo":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "mount"

    #@10
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@13
    move-result-object v3

    #@14
    .line 678
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_2

    #@16
    .line 679
    const-string/jumbo v4, "LockPatternUtils"

    #@19
    const-string/jumbo v5, "Could not find the mount service to update the user info"

    #@1c
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 680
    return-void

    #@20
    .line 675
    .end local v2    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :cond_1
    const-string/jumbo v2, ""

    #@23
    .restart local v2    # "ownerInfo":Ljava/lang/String;
    goto :goto_0

    #@24
    .line 683
    .restart local v3    # "service":Landroid/os/IBinder;
    :cond_2
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@27
    move-result-object v1

    #@28
    .line 685
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "LockPatternUtils"

    #@2b
    const-string/jumbo v5, "Setting owner info"

    #@2e
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 686
    const-string/jumbo v4, "OwnerInfo"

    #@34
    invoke-interface {v1, v4, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 670
    :goto_1
    return-void

    #@38
    .line 687
    :catch_0
    move-exception v0

    #@39
    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "LockPatternUtils"

    #@3c
    const-string/jumbo v5, "Error changing user info"

    #@3f
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    goto :goto_1
.end method

.method private updateEncryptionPassword(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 825
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 826
    return-void

    #@7
    .line 828
    :cond_0
    const-string/jumbo v1, "mount"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 829
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_1

    #@10
    .line 830
    const-string/jumbo v1, "LockPatternUtils"

    #@13
    const-string/jumbo v2, "Could not find the mount service to update the encryption password"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 831
    return-void

    #@1a
    .line 834
    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$1;

    #@1c
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V

    #@1f
    const/4 v2, 0x0

    #@20
    new-array v2, v2, [Ljava/lang/Void;

    #@22
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@25
    .line 824
    return-void
.end method

.method private wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1508
    if-nez p1, :cond_0

    #@3
    .line 1509
    return-object v0

    #@4
    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 1512
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Must construct LockPatternUtils on a looper thread to use progress callbacks."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1515
    :cond_1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$2;

    #@13
    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/LockPatternUtils$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V

    #@16
    return-object v0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public checkPassword(Ljava/lang/String;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 454
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    #@5
    .line 457
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@8
    move-result-object v2

    #@9
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v2, p1, p2, v3}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@10
    move-result-object v1

    #@11
    .line 458
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 459
    return v5

    #@18
    .line 460
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@1b
    move-result v2

    #@1c
    if-ne v2, v5, :cond_1

    #@1e
    .line 461
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    #@23
    move-result v3

    #@24
    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    #@27
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 465
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    #@29
    .line 466
    .local v0, "re":Landroid/os/RemoteException;
    return v4

    #@2a
    .line 463
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return v4
.end method

.method public checkPasswordHistory(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 491
    new-instance v2, Ljava/lang/String;

    #@3
    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    #@6
    move-result-object v5

    #@7
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    .line 491
    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@c
    .line 493
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string/jumbo v5, "lockscreen.passwordhistory"

    #@f
    invoke-direct {p0, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 494
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_0

    #@15
    .line 495
    return v7

    #@16
    .line 498
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@19
    move-result v1

    #@1a
    .line 499
    .local v1, "passwordHashLength":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    #@1d
    move-result v4

    #@1e
    .line 500
    .local v4, "passwordHistoryLength":I
    if-nez v4, :cond_1

    #@20
    .line 501
    return v7

    #@21
    .line 503
    :cond_1
    mul-int v5, v1, v4

    #@23
    add-int/2addr v5, v4

    #@24
    add-int/lit8 v0, v5, -0x1

    #@26
    .line 505
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@29
    move-result v5

    #@2a
    if-le v5, v0, :cond_2

    #@2c
    .line 506
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 508
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@33
    move-result v5

    #@34
    return v5
.end method

.method public checkPattern(Ljava/util/List;I)Z
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public checkPattern(Ljava/util/List;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    .locals 7
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I",
            "Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 359
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    #@5
    .line 362
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@8
    move-result-object v2

    #@9
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 363
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    #@10
    move-result-object v4

    #@11
    .line 362
    invoke-interface {v2, v3, p2, v4}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@14
    move-result-object v1

    #@15
    .line 365
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 366
    return v6

    #@1c
    .line 367
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@1f
    move-result v2

    #@20
    if-ne v2, v6, :cond_1

    #@22
    .line 368
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    #@24
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    #@27
    move-result v3

    #@28
    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    #@2b
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 372
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    #@2d
    .line 373
    .local v0, "re":Landroid/os/RemoteException;
    return v5

    #@2e
    .line 370
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return v5
.end method

.method public checkVoldPassword(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 477
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 478
    :catch_0
    move-exception v0

    #@a
    .line 479
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public clearEncryptionPassword()V
    .locals 2

    #@0
    .prologue
    .line 968
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    #@5
    .line 967
    return-void
.end method

.method public clearLock(I)V
    .locals 11
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 581
    const-string/jumbo v0, "lockscreen.password_type"

    #@5
    const-wide/16 v2, 0x0

    #@7
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@a
    .line 584
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@d
    move-result-object v0

    #@e
    const/4 v2, 0x0

    #@f
    const/4 v3, 0x0

    #@10
    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    #@13
    .line 585
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@16
    move-result-object v0

    #@17
    const/4 v2, 0x0

    #@18
    const/4 v3, 0x0

    #@19
    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 590
    :goto_0
    if-nez p1, :cond_0

    #@1e
    .line 592
    const/4 v0, 0x1

    #@1f
    invoke-direct {p0, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    #@22
    .line 593
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    #@25
    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@28
    move-result-object v0

    #@29
    move v2, v1

    #@2a
    move v3, v1

    #@2b
    move v4, v1

    #@2c
    move v5, v1

    #@2d
    move v6, v1

    #@2e
    move v7, v1

    #@2f
    move v8, v1

    #@30
    move v9, p1

    #@31
    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    #@34
    .line 599
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    #@37
    .line 580
    return-void

    #@38
    .line 586
    :catch_0
    move-exception v10

    #@39
    .local v10, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActivePasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    #@3
    move-result v0

    #@4
    .line 552
    .local v0, "quality":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 554
    return v0

    #@b
    .line 557
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 559
    return v0

    #@12
    .line 562
    :cond_1
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getDeviceOwnerInfo()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 726
    const-string/jumbo v0, "lockscreen.device_owner_info"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "device_policy"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    #@f
    .line 205
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    #@11
    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    #@13
    if-nez v0, :cond_0

    #@15
    .line 208
    const-string/jumbo v0, "LockPatternUtils"

    #@18
    const-string/jumbo v1, "Can\'t get DevicePolicyManagerService: is it running?"

    #@1b
    .line 209
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1d
    const-string/jumbo v3, "Stack trace:"

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    .line 208
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    #@28
    return-object v0
.end method

.method public getEnabledTrustAgents(I)Ljava/util/List;
    .locals 7
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
    .line 1385
    const-string/jumbo v4, "lockscreen.enabledtrustagents"

    #@3
    invoke-direct {p0, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 1386
    .local v2, "serialized":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 1387
    const/4 v4, 0x0

    #@e
    return-object v4

    #@f
    .line 1389
    :cond_0
    const-string/jumbo v4, ","

    #@12
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 1390
    .local v3, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    #@18
    array-length v4, v3

    #@19
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@1c
    .line 1391
    .local v0, "activeTrustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    #@1d
    array-length v5, v3

    #@1e
    :goto_0
    if-ge v4, v5, :cond_2

    #@20
    aget-object v1, v3, v4

    #@22
    .line 1392
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@25
    move-result v6

    #@26
    if-nez v6, :cond_1

    #@28
    .line 1393
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 1391
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1396
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 978
    const-string/jumbo v0, "lockscreen.password_type"

    #@3
    .line 979
    const-wide/16 v2, 0x0

    #@5
    .line 978
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    #@8
    move-result-wide v0

    #@9
    long-to-int v0, v0

    #@a
    return v0
.end method

.method public getLockoutAttemptDeadline(I)J
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 1294
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    #@5
    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    #@8
    move-result-wide v0

    #@9
    .line 1295
    .local v0, "deadline":J
    const-string/jumbo v6, "lockscreen.lockoutattempttimeoutmss"

    #@c
    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    #@f
    move-result-wide v4

    #@10
    .line 1296
    .local v4, "timeoutMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v2

    #@14
    .line 1297
    .local v2, "now":J
    cmp-long v6, v0, v2

    #@16
    if-gez v6, :cond_0

    #@18
    cmp-long v6, v0, v8

    #@1a
    if-eqz v6, :cond_0

    #@1c
    .line 1299
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    #@1f
    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@22
    .line 1300
    const-string/jumbo v6, "lockscreen.lockoutattempttimeoutmss"

    #@25
    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@28
    .line 1301
    return-wide v8

    #@29
    .line 1304
    :cond_0
    add-long v6, v2, v4

    #@2b
    cmp-long v6, v0, v6

    #@2d
    if-lez v6, :cond_1

    #@2f
    .line 1306
    add-long v0, v2, v4

    #@31
    .line 1307
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    #@34
    invoke-direct {p0, v6, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@37
    .line 1310
    :cond_1
    return-wide v0
.end method

.method public getMaximumFailedPasswordsForWipe(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    .line 304
    const/4 v1, 0x0

    #@5
    .line 303
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 703
    const-string/jumbo v0, "lock_screen_owner_info"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getPowerButtonInstantlyLocks(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1369
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getRequestedMinimumPasswordLength(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getRequestedPasswordMinimumLetters(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getRequestedPasswordMinimumNumeric(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getRequestedPasswordMinimumSymbols(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getRequestedPasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getStrongAuthForUser(I)I
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1485
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getStrongAuthForUser(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1486
    :catch_0
    move-exception v0

    #@a
    .line 1487
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    #@d
    const-string/jumbo v2, "Could not get StrongAuth"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 1488
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    #@15
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public isCredentialRequiredToDecrypt(Z)Z
    .locals 5
    .param p1, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 1433
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    .line 1434
    const-string/jumbo v3, "require_password_to_decrypt"

    #@7
    .line 1433
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    .line 1435
    .local v0, "value":I
    if-ne v0, v4, :cond_0

    #@d
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    #@e
    .restart local p1    # "defaultValue":Z
    :cond_0
    if-eqz v0, :cond_1

    #@10
    const/4 p1, 0x1

    #@11
    goto :goto_0

    #@12
    :cond_1
    move p1, v1

    #@13
    goto :goto_0
.end method

.method public isDeviceOwnerInfoEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

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

.method public isFingerprintAllowedForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, -0x5

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isLegacyLockPatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1200
    const-string/jumbo v0, "legacy_lock_pattern_enabled"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isLockPasswordEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1175
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isLockPatternEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 620
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 621
    const-string/jumbo v1, "lockscreen.disabled"

    #@a
    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    #@d
    move-result v0

    #@e
    .line 620
    :cond_0
    return v0
.end method

.method public isOwnerInfoEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 707
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isPatternEverChosen(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 542
    const-string/jumbo v0, "lockscreen.patterneverchosen"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1170
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    #@3
    move-result v0

    #@4
    .line 1171
    .local v0, "mode":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x1

    #@10
    goto :goto_0
.end method

.method public isSeparateProfileChallengeAllowed(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1026
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    .line 1027
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1030
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isSeparateProfileChallengeAllowed(I)Z

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 1028
    :cond_0
    const/4 v1, 0x0

    #@1a
    return v1
.end method

.method public isSeparateProfileChallengeAllowedToUnify(I)Z
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileActivePasswordSufficientForParent(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isSeparateProfileChallengeEnabled(I)Z
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1009
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@8
    move-result-object v1

    #@9
    .line 1010
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@b
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1014
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@14
    move-result-object v2

    #@15
    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->getSeparateProfileChallengeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 1011
    :cond_0
    return v4

    #@1b
    .line 1015
    :catch_0
    move-exception v0

    #@1c
    .line 1016
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LockPatternUtils"

    #@1f
    const-string/jumbo v3, "Couldn\'t get separate profile challenge enabled"

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1018
    return v4
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1272
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    .line 1273
    const-string/jumbo v3, "haptic_feedback_enabled"

    #@7
    const/4 v4, -0x2

    #@8
    .line 1272
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public isTrustAllowedForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1496
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isTrustUsuallyManaged(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 160
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    #@3
    instance-of v1, v1, Lcom/android/internal/widget/ILockSettings$Stub;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 161
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "May only be called by TrustManagerService. Use TrustManager.isTrustUsuallyManaged()"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 165
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "lockscreen.istrustusuallymanaged"

    #@17
    const/4 v3, 0x0

    #@18
    invoke-interface {v1, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 166
    :catch_0
    move-exception v0

    #@1e
    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public isVisiblePatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1217
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public passwordToHash(Ljava/lang/String;I)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1145
    if-nez p1, :cond_0

    #@3
    .line 1146
    return-object v6

    #@4
    .line 1150
    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v6

    #@d
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    #@10
    move-result-object v7

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    #@1c
    move-result-object v4

    #@1d
    .line 1151
    .local v4, "saltedPassword":[B
    const-string/jumbo v6, "SHA-1"

    #@20
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    #@27
    move-result-object v5

    #@28
    .line 1152
    .local v5, "sha1":[B
    const-string/jumbo v6, "MD5"

    #@2b
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    #@32
    move-result-object v3

    #@33
    .line 1154
    .local v3, "md5":[B
    array-length v6, v5

    #@34
    array-length v7, v3

    #@35
    add-int/2addr v6, v7

    #@36
    new-array v0, v6, [B

    #@38
    .line 1155
    .local v0, "combined":[B
    array-length v6, v5

    #@39
    const/4 v7, 0x0

    #@3a
    const/4 v8, 0x0

    #@3b
    invoke-static {v5, v7, v0, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3e
    .line 1156
    array-length v6, v5

    #@3f
    array-length v7, v3

    #@40
    const/4 v8, 0x0

    #@41
    invoke-static {v3, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@44
    .line 1158
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    #@47
    move-result-object v2

    #@48
    .line 1159
    .local v2, "hexEncoded":[C
    new-instance v6, Ljava/lang/String;

    #@4a
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    #@4d
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    move-result-object v6

    #@53
    return-object v6

    #@54
    .line 1160
    .end local v0    # "combined":[B
    .end local v2    # "hexEncoded":[C
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    #@55
    .line 1161
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/AssertionError;

    #@57
    const-string/jumbo v7, "Missing digest algorithm: "

    #@5a
    invoke-direct {v6, v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5d
    throw v6
.end method

.method public registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    #@0
    .prologue
    .line 1466
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    #@6
    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1464
    return-void

    #@a
    .line 1467
    :catch_0
    move-exception v0

    #@b
    .line 1468
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "Could not register StrongAuthTracker"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    #@7
    .line 290
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    #@f
    .line 288
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    #@7
    .line 295
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    #@f
    .line 293
    return-void
.end method

.method public requireCredentialEntry(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1407
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    #@4
    .line 1406
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1422
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1420
    :goto_0
    return-void

    #@8
    .line 1423
    :catch_0
    move-exception v0

    #@9
    .line 1424
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Error while requesting strong auth: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    goto :goto_0
.end method

.method public resetKeyStore(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 570
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->resetKeyStore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 568
    :goto_0
    return-void

    #@8
    .line 571
    :catch_0
    move-exception v0

    #@9
    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Couldn\'t reset keystore "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 33
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 860
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v4

    #@4
    .line 861
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_0

    #@6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    const/4 v6, 0x4

    #@b
    if-ge v5, v6, :cond_1

    #@d
    .line 862
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v6, "password must not be null and at least of length 4"

    #@12
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 940
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v31

    #@17
    .line 942
    .local v31, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "LockPatternUtils"

    #@1a
    new-instance v6, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v13, "Unable to save lock password "

    #@22
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    move-object/from16 v0, v31

    #@28
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 858
    .end local v31    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    #@34
    .line 866
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@37
    move-result-object v5

    #@38
    move-object/from16 v0, p1

    #@3a
    move-object/from16 v1, p2

    #@3c
    move/from16 v2, p4

    #@3e
    invoke-interface {v5, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    #@41
    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@44
    move-result-object v5

    #@45
    const/4 v6, 0x1

    #@46
    const/4 v13, 0x0

    #@47
    move/from16 v0, p4

    #@49
    invoke-interface {v5, v0, v6, v13}, Lcom/android/internal/widget/ILockSettings;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    #@4c
    .line 868
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    #@4f
    move-result v24

    #@50
    .line 871
    .local v24, "computedQuality":I
    if-nez p4, :cond_2

    #@52
    .line 872
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    #@55
    move-result v5

    #@56
    .line 871
    if-eqz v5, :cond_2

    #@58
    .line 873
    const/4 v5, 0x1

    #@59
    move-object/from16 v0, p0

    #@5b
    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    #@5e
    move-result v5

    #@5f
    if-nez v5, :cond_3

    #@61
    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    #@64
    .line 886
    :cond_2
    :goto_1
    const-string/jumbo v5, "lockscreen.password_type"

    #@67
    move/from16 v0, p3

    #@69
    move/from16 v1, v24

    #@6b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@6e
    move-result v6

    #@6f
    int-to-long v14, v6

    #@70
    move-object/from16 v0, p0

    #@72
    move/from16 v1, p4

    #@74
    invoke-direct {v0, v5, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@77
    .line 887
    if-eqz v24, :cond_d

    #@79
    .line 888
    const/4 v7, 0x0

    #@7a
    .line 889
    .local v7, "letters":I
    const/4 v8, 0x0

    #@7b
    .line 890
    .local v8, "uppercase":I
    const/4 v9, 0x0

    #@7c
    .line 891
    .local v9, "lowercase":I
    const/4 v10, 0x0

    #@7d
    .line 892
    .local v10, "numbers":I
    const/4 v11, 0x0

    #@7e
    .line 893
    .local v11, "symbols":I
    const/4 v12, 0x0

    #@7f
    .line 894
    .local v12, "nonletter":I
    const/16 v26, 0x0

    #@81
    .local v26, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@84
    move-result v5

    #@85
    move/from16 v0, v26

    #@87
    if-ge v0, v5, :cond_b

    #@89
    .line 895
    move-object/from16 v0, p1

    #@8b
    move/from16 v1, v26

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@90
    move-result v23

    #@91
    .line 896
    .local v23, "c":C
    const/16 v5, 0x41

    #@93
    move/from16 v0, v23

    #@95
    if-lt v0, v5, :cond_8

    #@97
    const/16 v5, 0x5a

    #@99
    move/from16 v0, v23

    #@9b
    if-gt v0, v5, :cond_8

    #@9d
    .line 897
    add-int/lit8 v7, v7, 0x1

    #@9f
    .line 898
    add-int/lit8 v8, v8, 0x1

    #@a1
    .line 894
    :goto_3
    add-int/lit8 v26, v26, 0x1

    #@a3
    goto :goto_2

    #@a4
    .line 877
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v23    # "c":C
    .end local v26    # "i":I
    :cond_3
    const/high16 v5, 0x20000

    #@a6
    .line 876
    move/from16 v0, v24

    #@a8
    if-ne v0, v5, :cond_5

    #@aa
    const/16 v27, 0x1

    #@ac
    .line 879
    .local v27, "numeric":Z
    :goto_4
    const/high16 v5, 0x30000

    #@ae
    .line 878
    move/from16 v0, v24

    #@b0
    if-ne v0, v5, :cond_6

    #@b2
    const/16 v28, 0x1

    #@b4
    .line 880
    .local v28, "numericComplex":Z
    :goto_5
    if-nez v27, :cond_4

    #@b6
    if-eqz v28, :cond_7

    #@b8
    :cond_4
    const/16 v32, 0x3

    #@ba
    .line 882
    .local v32, "type":I
    :goto_6
    move-object/from16 v0, p0

    #@bc
    move/from16 v1, v32

    #@be
    move-object/from16 v2, p1

    #@c0
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    #@c3
    goto :goto_1

    #@c4
    .line 876
    .end local v27    # "numeric":Z
    .end local v28    # "numericComplex":Z
    .end local v32    # "type":I
    :cond_5
    const/16 v27, 0x0

    #@c6
    .restart local v27    # "numeric":Z
    goto :goto_4

    #@c7
    .line 878
    :cond_6
    const/16 v28, 0x0

    #@c9
    .restart local v28    # "numericComplex":Z
    goto :goto_5

    #@ca
    .line 881
    :cond_7
    const/16 v32, 0x0

    #@cc
    goto :goto_6

    #@cd
    .line 899
    .end local v27    # "numeric":Z
    .end local v28    # "numericComplex":Z
    .restart local v7    # "letters":I
    .restart local v8    # "uppercase":I
    .restart local v9    # "lowercase":I
    .restart local v10    # "numbers":I
    .restart local v11    # "symbols":I
    .restart local v12    # "nonletter":I
    .restart local v23    # "c":C
    .restart local v26    # "i":I
    :cond_8
    const/16 v5, 0x61

    #@cf
    move/from16 v0, v23

    #@d1
    if-lt v0, v5, :cond_9

    #@d3
    const/16 v5, 0x7a

    #@d5
    move/from16 v0, v23

    #@d7
    if-gt v0, v5, :cond_9

    #@d9
    .line 900
    add-int/lit8 v7, v7, 0x1

    #@db
    .line 901
    add-int/lit8 v9, v9, 0x1

    #@dd
    goto :goto_3

    #@de
    .line 902
    :cond_9
    const/16 v5, 0x30

    #@e0
    move/from16 v0, v23

    #@e2
    if-lt v0, v5, :cond_a

    #@e4
    const/16 v5, 0x39

    #@e6
    move/from16 v0, v23

    #@e8
    if-gt v0, v5, :cond_a

    #@ea
    .line 903
    add-int/lit8 v10, v10, 0x1

    #@ec
    .line 904
    add-int/lit8 v12, v12, 0x1

    #@ee
    goto :goto_3

    #@ef
    .line 906
    :cond_a
    add-int/lit8 v11, v11, 0x1

    #@f1
    .line 907
    add-int/lit8 v12, v12, 0x1

    #@f3
    goto :goto_3

    #@f4
    .line 910
    .end local v23    # "c":C
    :cond_b
    move/from16 v0, p3

    #@f6
    move/from16 v1, v24

    #@f8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@fb
    move-result v5

    #@fc
    .line 911
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@ff
    move-result v6

    #@100
    move/from16 v13, p4

    #@102
    .line 910
    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    #@105
    .line 922
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v26    # "i":I
    :goto_7
    const-string/jumbo v5, "lockscreen.passwordhistory"

    #@108
    move-object/from16 v0, p0

    #@10a
    move/from16 v1, p4

    #@10c
    invoke-direct {v0, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    #@10f
    move-result-object v29

    #@110
    .line 923
    .local v29, "passwordHistory":Ljava/lang/String;
    if-nez v29, :cond_c

    #@112
    .line 924
    const-string/jumbo v29, ""

    #@115
    .line 926
    :cond_c
    move-object/from16 v0, p0

    #@117
    move/from16 v1, p4

    #@119
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    #@11c
    move-result v30

    #@11d
    .line 927
    .local v30, "passwordHistoryLength":I
    if-nez v30, :cond_e

    #@11f
    .line 928
    const-string/jumbo v29, ""

    #@122
    .line 938
    :goto_8
    const-string/jumbo v5, "lockscreen.passwordhistory"

    #@125
    move-object/from16 v0, p0

    #@127
    move-object/from16 v1, v29

    #@129
    move/from16 v2, p4

    #@12b
    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@12e
    .line 939
    move-object/from16 v0, p0

    #@130
    move/from16 v1, p4

    #@132
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    #@135
    goto/16 :goto_0

    #@137
    .line 916
    .end local v29    # "passwordHistory":Ljava/lang/String;
    .end local v30    # "passwordHistoryLength":I
    :cond_d
    const/4 v14, 0x0

    #@138
    .line 917
    const/4 v15, 0x0

    #@139
    const/16 v16, 0x0

    #@13b
    const/16 v17, 0x0

    #@13d
    const/16 v18, 0x0

    #@13f
    const/16 v19, 0x0

    #@141
    const/16 v20, 0x0

    #@143
    const/16 v21, 0x0

    #@145
    move-object v13, v4

    #@146
    move/from16 v22, p4

    #@148
    .line 915
    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    #@14b
    goto :goto_7

    #@14c
    .line 930
    .restart local v29    # "passwordHistory":Ljava/lang/String;
    .restart local v30    # "passwordHistoryLength":I
    :cond_e
    move-object/from16 v0, p0

    #@14e
    move-object/from16 v1, p1

    #@150
    move/from16 v2, p4

    #@152
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    #@155
    move-result-object v25

    #@156
    .line 931
    .local v25, "hash":[B
    new-instance v5, Ljava/lang/StringBuilder;

    #@158
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15b
    new-instance v6, Ljava/lang/String;

    #@15d
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@15f
    move-object/from16 v0, v25

    #@161
    invoke-direct {v6, v0, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v5

    #@168
    const-string/jumbo v6, ","

    #@16b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v5

    #@16f
    move-object/from16 v0, v29

    #@171
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v5

    #@175
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v29

    #@179
    .line 934
    move-object/from16 v0, v25

    #@17b
    array-length v5, v0

    #@17c
    mul-int v5, v5, v30

    #@17e
    add-int v5, v5, v30

    #@180
    add-int/lit8 v5, v5, -0x1

    #@182
    .line 935
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    #@185
    move-result v6

    #@186
    .line 934
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@189
    move-result v5

    #@18a
    const/4 v6, 0x0

    #@18b
    move-object/from16 v0, v29

    #@18d
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@190
    move-result-object v29

    #@191
    goto :goto_8
.end method

.method public saveLockPattern(Ljava/util/List;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 630
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    #@4
    .line 629
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V
    .locals 12
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 640
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-eqz p1, :cond_0

    #@2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x4

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 641
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "pattern must not be null and at least 4 dots long."

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 665
    :catch_0
    move-exception v10

    #@13
    .line 666
    .local v10, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Couldn\'t save lock pattern "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 638
    .end local v10    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    #@2e
    .line 645
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@31
    move-result-object v1

    #@32
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    #@39
    .line 646
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3c
    move-result-object v0

    #@3d
    .line 649
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p3, :cond_2

    #@3f
    .line 650
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    #@42
    move-result v1

    #@43
    .line 649
    if-eqz v1, :cond_2

    #@45
    .line 651
    const/4 v1, 0x1

    #@46
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    #@49
    move-result v1

    #@4a
    if-nez v1, :cond_3

    #@4c
    .line 652
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    #@4f
    .line 659
    :cond_2
    :goto_1
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    #@52
    const/4 v2, 0x1

    #@53
    invoke-direct {p0, v1, v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@56
    .line 661
    const-string/jumbo v1, "lockscreen.password_type"

    #@59
    const-wide/32 v2, 0x10000

    #@5c
    invoke-direct {p0, v1, v2, v3, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@5f
    .line 663
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@62
    move-result v2

    #@63
    .line 662
    const/high16 v1, 0x10000

    #@65
    .line 663
    const/4 v3, 0x0

    #@66
    const/4 v4, 0x0

    #@67
    const/4 v5, 0x0

    #@68
    const/4 v6, 0x0

    #@69
    const/4 v7, 0x0

    #@6a
    const/4 v8, 0x0

    #@6b
    move v9, p3

    #@6c
    .line 662
    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    #@6f
    .line 664
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    #@72
    goto :goto_0

    #@73
    .line 654
    :cond_3
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    #@76
    move-result-object v11

    #@77
    .line 655
    .local v11, "stringPattern":Ljava/lang/String;
    const/4 v1, 0x2

    #@78
    invoke-direct {p0, v1, v11}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@7b
    goto :goto_1
.end method

.method public setCredentialRequiredToDecrypt(Z)V
    .locals 3
    .param p1, "required"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1439
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/os/UserManager;->isSystemUser()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/os/UserManager;->isPrimaryUser()Z

    #@12
    move-result v1

    #@13
    :goto_0
    if-nez v1, :cond_1

    #@15
    .line 1440
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    .line 1441
    const-string/jumbo v1, "Only the system or primary user may call setCredentialRequiredForDecrypt()"

    #@1a
    .line 1440
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_0
    move v1, v0

    #@1f
    .line 1439
    goto :goto_0

    #@20
    .line 1444
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 1445
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    #@28
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2b
    move-result-object v1

    #@2c
    .line 1446
    const-string/jumbo v2, "require_password_to_decrypt"

    #@2f
    if-eqz p1, :cond_3

    #@31
    .line 1445
    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@34
    .line 1438
    :cond_2
    return-void

    #@35
    .line 1446
    :cond_3
    const/4 v0, 0x0

    #@36
    goto :goto_1
.end method

.method public setDeviceOwnerInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    #@0
    .prologue
    .line 718
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 719
    const/4 p1, 0x0

    #@9
    .line 722
    .end local p1    # "info":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "lockscreen.device_owner_info"

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@10
    .line 717
    return-void
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1373
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1374
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "cn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/content/ComponentName;

    #@15
    .line 1375
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@18
    move-result v3

    #@19
    if-lez v3, :cond_0

    #@1b
    .line 1376
    const/16 v3, 0x2c

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 1378
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 1380
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    const-string/jumbo v3, "lockscreen.enabledtrustagents"

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-direct {p0, v3, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@32
    .line 1381
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    #@39
    .line 1372
    return-void
.end method

.method public setLegacyLockPatternEnabled(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1205
    const-string/jumbo v0, "lock_pattern_autolock"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@7
    .line 1204
    return-void
.end method

.method public setLockScreenDisabled(ZI)V
    .locals 1
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 610
    const-string/jumbo v0, "lockscreen.disabled"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@6
    .line 609
    return-void
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    #@0
    .prologue
    .line 1282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    int-to-long v4, p2

    #@5
    add-long v0, v2, v4

    #@7
    .line 1283
    .local v0, "deadline":J
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    #@a
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@d
    .line 1284
    const-string/jumbo v2, "lockscreen.lockoutattempttimeoutmss"

    #@10
    int-to-long v4, p2

    #@11
    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@14
    .line 1285
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 693
    const-string/jumbo v0, "lock_screen_owner_info"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@6
    .line 694
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    #@9
    .line 692
    return-void
.end method

.method public setOwnerInfoEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 698
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@6
    .line 699
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    #@9
    .line 697
    return-void
.end method

.method public setPowerButtonInstantlyLocks(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1365
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@6
    .line 1364
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    .locals 4
    .param p1, "userHandle"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 993
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v1

    #@8
    .line 994
    .local v1, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 996
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    #@15
    .line 998
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 992
    :cond_0
    :goto_0
    return-void

    #@19
    .line 999
    :catch_0
    move-exception v0

    #@1a
    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LockPatternUtils"

    #@1d
    const-string/jumbo v3, "Couldn\'t update work profile challenge enabled"

    #@20
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    goto :goto_0
.end method

.method public setTrustUsuallyManaged(ZI)V
    .locals 3
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 173
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "lockscreen.istrustusuallymanaged"

    #@7
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 171
    :goto_0
    return-void

    #@b
    .line 174
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setVisiblePasswordEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1250
    if-eqz p2, :cond_0

    #@2
    .line 1251
    return-void

    #@3
    .line 1254
    :cond_0
    const-string/jumbo v3, "mount"

    #@6
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v2

    #@a
    .line 1255
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    #@c
    .line 1256
    const-string/jumbo v3, "LockPatternUtils"

    #@f
    const-string/jumbo v4, "Could not find the mount service to update the user info"

    #@12
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 1257
    return-void

    #@16
    .line 1260
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@19
    move-result-object v1

    #@1a
    .line 1262
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "PasswordVisible"

    #@1d
    if-eqz p1, :cond_2

    #@1f
    const-string/jumbo v3, "1"

    #@22
    :goto_0
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 1248
    :goto_1
    return-void

    #@26
    .line 1262
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 1263
    :catch_0
    move-exception v0

    #@2b
    .line 1264
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    #@2e
    const-string/jumbo v4, "Error changing password visible state"

    #@31
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    goto :goto_1
.end method

.method public setVisiblePatternEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1224
    const-string/jumbo v3, "lock_pattern_visible_pattern"

    #@3
    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@6
    .line 1227
    if-eqz p2, :cond_0

    #@8
    .line 1228
    return-void

    #@9
    .line 1231
    :cond_0
    const-string/jumbo v3, "mount"

    #@c
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v2

    #@10
    .line 1232
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    #@12
    .line 1233
    const-string/jumbo v3, "LockPatternUtils"

    #@15
    const-string/jumbo v4, "Could not find the mount service to update the user info"

    #@18
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1234
    return-void

    #@1c
    .line 1237
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@1f
    move-result-object v1

    #@20
    .line 1239
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "PatternVisible"

    #@23
    if-eqz p1, :cond_2

    #@25
    const-string/jumbo v3, "1"

    #@28
    :goto_0
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 1223
    :goto_1
    return-void

    #@2c
    .line 1239
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    goto :goto_0

    #@30
    .line 1240
    :catch_0
    move-exception v0

    #@31
    .line 1241
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    #@34
    const-string/jumbo v4, "Error changing pattern visible state"

    #@37
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_1
.end method

.method public unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    #@0
    .prologue
    .line 1474
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    #@6
    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1472
    :goto_0
    return-void

    #@a
    .line 1475
    :catch_0
    move-exception v0

    #@b
    .line 1476
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    #@e
    const-string/jumbo v2, "Could not unregister StrongAuthTracker"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public userPresent(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->userPresent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 179
    return-void

    #@8
    .line 182
    :catch_0
    move-exception v0

    #@9
    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public verifyPassword(Ljava/lang/String;JI)[B
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 388
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    #@4
    .line 391
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@b
    move-result-object v1

    #@c
    .line 393
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 394
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 395
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@1a
    move-result v2

    #@1b
    const/4 v3, 0x1

    #@1c
    if-ne v2, v3, :cond_1

    #@1e
    .line 396
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    #@23
    move-result v3

    #@24
    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    #@27
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 400
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    #@29
    .line 401
    .local v0, "re":Landroid/os/RemoteException;
    return-object v4

    #@2a
    .line 398
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return-object v4
.end method

.method public verifyPattern(Ljava/util/List;JI)[B
    .locals 6
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;JI)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v4, 0x0

    #@1
    .line 318
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    #@4
    .line 321
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@7
    move-result-object v2

    #@8
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, v3, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@f
    move-result-object v1

    #@10
    .line 322
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_0

    #@12
    .line 324
    return-object v4

    #@13
    .line 327
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 328
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 329
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@21
    move-result v2

    #@22
    const/4 v3, 0x1

    #@23
    if-ne v2, v3, :cond_2

    #@25
    .line 330
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    #@27
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    #@2a
    move-result v3

    #@2b
    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    #@2e
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 334
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    #@30
    .line 335
    .local v0, "re":Landroid/os/RemoteException;
    return-object v4

    #@31
    .line 332
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    return-object v4
.end method

.method public verifyTiedProfileChallenge(Ljava/lang/String;ZJI)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "isPattern"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 417
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    #@4
    .line 420
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@7
    move-result-object v1

    #@8
    move-object v2, p1

    #@9
    move v3, p2

    #@a
    move-wide v4, p3

    #@b
    move v6, p5

    #@c
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/ILockSettings;->verifyTiedProfileChallenge(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@f
    move-result-object v7

    #@10
    .line 423
    .local v7, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 424
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 425
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@1e
    move-result v1

    #@1f
    const/4 v2, 0x1

    #@20
    if-ne v1, v2, :cond_1

    #@22
    .line 426
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    #@24
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    #@27
    move-result v2

    #@28
    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    #@2b
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 430
    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    #@2d
    .line 431
    .local v0, "re":Landroid/os/RemoteException;
    return-object v8

    #@2e
    .line 428
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return-object v8
.end method
