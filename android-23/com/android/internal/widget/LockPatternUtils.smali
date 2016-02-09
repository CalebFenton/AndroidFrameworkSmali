.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
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

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 175
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    #@5
    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    #@b
    .line 174
    return-void
.end method

.method private static categoryChar(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 602
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
    .line 603
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
    .line 604
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
    .line 605
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
    .line 576
    const/4 v0, 0x0

    #@1
    .line 577
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    #@2
    .line 578
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    .line 579
    .local v3, "len":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@9
    .line 580
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
    .line 581
    const/4 v0, 0x1

    #@14
    .line 579
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 583
    :cond_0
    const/4 v1, 0x1

    #@18
    goto :goto_1

    #@19
    .line 587
    :cond_1
    if-eqz v1, :cond_2

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 588
    const/high16 v4, 0x50000

    #@1f
    return v4

    #@20
    .line 590
    :cond_2
    if-eqz v1, :cond_3

    #@22
    .line 591
    const/high16 v4, 0x40000

    #@24
    return v4

    #@25
    .line 593
    :cond_3
    if-eqz v0, :cond_5

    #@27
    .line 594
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    #@2a
    move-result v4

    #@2b
    const/4 v5, 0x3

    #@2c
    if-le v4, v5, :cond_4

    #@2e
    .line 595
    const/high16 v4, 0x20000

    #@30
    .line 594
    :goto_2
    return v4

    #@31
    .line 596
    :cond_4
    const/high16 v4, 0x30000

    #@33
    goto :goto_2

    #@34
    .line 598
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
    .line 1081
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
    .line 1082
    :catch_0
    move-exception v0

    #@a
    .line 1083
    .local v0, "re":Landroid/os/RemoteException;
    return p2
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    #@0
    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 182
    const-string/jumbo v1, "lock_settings"

    #@7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    .line 181
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    #@e
    move-result-object v0

    #@f
    .line 183
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    #@11
    .line 185
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
    .line 1098
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
    .line 1099
    :catch_0
    move-exception v0

    #@a
    .line 1100
    .local v0, "re":Landroid/os/RemoteException;
    return-wide p2
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 201
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
    .line 911
    const-string/jumbo v1, "lockscreen.password_salt"

    #@5
    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    #@8
    move-result-wide v2

    #@9
    .line 912
    .local v2, "salt":J
    cmp-long v1, v2, v4

    #@b
    if-nez v1, :cond_0

    #@d
    .line 914
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
    .line 915
    const-string/jumbo v1, "lockscreen.password_salt"

    #@1b
    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@1e
    .line 916
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
    .line 922
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 917
    :catch_0
    move-exception v0

    #@3e
    .line 919
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
    .line 1115
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
    .line 1116
    :catch_0
    move-exception v0

    #@c
    .line 1117
    .local v0, "re":Landroid/os/RemoteException;
    return-object v3
.end method

.method private getTrustManager()Landroid/app/trust/TrustManager;
    .locals 5

    #@0
    .prologue
    .line 166
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
    .line 167
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_0

    #@d
    .line 168
    const-string/jumbo v1, "LockPatternUtils"

    #@10
    const-string/jumbo v2, "Can\'t get TrustManagerService: is it running?"

    #@13
    .line 169
    new-instance v3, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v4, "Stack trace:"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    .line 168
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 171
    :cond_0
    return-object v0
.end method

.method public static isDeviceEncrypted()Z
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 791
    const-string/jumbo v4, "mount"

    #@5
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@8
    move-result-object v4

    #@9
    .line 790
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@c
    move-result-object v0

    #@d
    .line 793
    .local v0, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getEncryptionState()I

    #@10
    move-result v4

    #@11
    if-eq v4, v2, :cond_1

    #@13
    .line 794
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v4

    #@17
    if-eq v4, v2, :cond_0

    #@19
    .line 793
    :goto_0
    return v2

    #@1a
    :cond_0
    move v2, v3

    #@1b
    .line 794
    goto :goto_0

    #@1c
    :cond_1
    move v2, v3

    #@1d
    .line 793
    goto :goto_0

    #@1e
    .line 795
    :catch_0
    move-exception v1

    #@1f
    .line 796
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    #@22
    const-string/jumbo v4, "Error getting encryption state"

    #@25
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    .line 798
    return v2
.end method

.method public static isDeviceEncryptionEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 808
    const-string/jumbo v1, "ro.crypto.state"

    #@3
    const-string/jumbo v2, "unsupported"

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 809
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "encrypted"

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method private isDoNotAskCredentialsOnBootSet()Z
    .locals 1

    #@0
    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    #@2
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private isLockPasswordEnabled(II)Z
    .locals 2
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 969
    const/high16 v1, 0x40000

    #@2
    if-eq p1, v1, :cond_0

    #@4
    .line 970
    const/high16 v1, 0x20000

    #@6
    if-ne p1, v1, :cond_1

    #@8
    .line 969
    :cond_0
    const/4 v0, 0x1

    #@9
    .line 974
    .local v0, "passwordEnabled":Z
    :goto_0
    if-eqz v0, :cond_3

    #@b
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists(I)Z

    #@e
    move-result v1

    #@f
    :goto_1
    return v1

    #@10
    .line 971
    .end local v0    # "passwordEnabled":Z
    :cond_1
    const/high16 v1, 0x30000

    #@12
    if-eq p1, v1, :cond_0

    #@14
    .line 972
    const/high16 v1, 0x50000

    #@16
    if-eq p1, v1, :cond_0

    #@18
    .line 973
    const/high16 v1, 0x60000

    #@1a
    if-ne p1, v1, :cond_2

    #@1c
    const/4 v0, 0x1

    #@1d
    .restart local v0    # "passwordEnabled":Z
    goto :goto_0

    #@1e
    .end local v0    # "passwordEnabled":Z
    :cond_2
    const/4 v0, 0x0

    #@1f
    .restart local v0    # "passwordEnabled":Z
    goto :goto_0

    #@20
    .line 974
    :cond_3
    const/4 v1, 0x0

    #@21
    goto :goto_1
.end method

.method private isLockPatternEnabled(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 985
    const/high16 v0, 0x10000

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 986
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    #@7
    move-result v0

    #@8
    .line 985
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
    .line 609
    if-eqz p0, :cond_0

    #@4
    if-ne p0, v0, :cond_1

    #@6
    :cond_0
    return v0

    #@7
    .line 610
    :cond_1
    const/4 v0, 0x2

    #@8
    if-ne p0, v0, :cond_2

    #@a
    const/16 v0, 0xa

    #@c
    return v0

    #@d
    .line 611
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
    .line 631
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v10

    #@5
    if-nez v10, :cond_0

    #@7
    return v11

    #@8
    .line 632
    :cond_0
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v8

    #@c
    .line 633
    .local v8, "previousChar":C
    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    #@f
    move-result v0

    #@10
    .line 634
    .local v0, "category":I
    const/4 v5, 0x0

    #@11
    .line 635
    .local v5, "diff":I
    const/4 v6, 0x0

    #@12
    .line 636
    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    #@13
    .line 637
    .local v7, "maxLength":I
    const/4 v9, 0x0

    #@14
    .line 638
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
    .line 639
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v3

    #@1f
    .line 640
    .local v3, "currentChar":C
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    #@22
    move-result v1

    #@23
    .line 641
    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    #@25
    .line 642
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
    .line 643
    :cond_1
    sub-int v10, v2, v9

    #@33
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    #@36
    move-result v7

    #@37
    .line 644
    move v9, v2

    #@38
    .line 645
    const/4 v6, 0x0

    #@39
    .line 646
    move v0, v1

    #@3a
    .line 656
    :goto_1
    move v8, v3

    #@3b
    .line 638
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 649
    :cond_2
    if-eqz v6, :cond_3

    #@40
    if-eq v4, v5, :cond_3

    #@42
    .line 650
    sub-int v10, v2, v9

    #@44
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    #@47
    move-result v7

    #@48
    .line 651
    add-int/lit8 v9, v2, -0x1

    #@4a
    .line 653
    :cond_3
    move v5, v4

    #@4b
    .line 654
    const/4 v6, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 658
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
    .line 659
    return v7
.end method

.method private onAfterChangingPassword(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1173
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    #@7
    .line 1172
    return-void
.end method

.method public static patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 870
    if-nez p0, :cond_0

    #@2
    .line 871
    const-string/jumbo v4, ""

    #@5
    return-object v4

    #@6
    .line 873
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    .line 875
    .local v2, "patternSize":I
    new-array v3, v2, [B

    #@c
    .line 876
    .local v3, "res":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@f
    move-result-object v0

    #@10
    .line 877
    .local v0, "bytes":[B
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@13
    .line 878
    aget-byte v4, v0, v1

    #@15
    add-int/lit8 v4, v4, -0x31

    #@17
    int-to-byte v4, v4

    #@18
    aput-byte v4, v3, v1

    #@1a
    .line 877
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 880
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
    .line 891
    if-nez p0, :cond_0

    #@3
    .line 892
    return-object v7

    #@4
    .line 895
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v5

    #@8
    .line 896
    .local v5, "patternSize":I
    new-array v6, v5, [B

    #@a
    .line 897
    .local v6, "res":[B
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    #@d
    .line 898
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    #@13
    .line 899
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
    .line 897
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 902
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string/jumbo v7, "SHA-1"

    #@27
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@2a
    move-result-object v3

    #@2b
    .line 903
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    move-result-object v1

    #@2f
    .line 904
    .local v1, "hash":[B
    return-object v1

    #@30
    .line 905
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    #@31
    .line 906
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
    .line 856
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    #@2
    .line 857
    const-string/jumbo v4, ""

    #@5
    return-object v4

    #@6
    .line 859
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    .line 861
    .local v2, "patternSize":I
    new-array v3, v2, [B

    #@c
    .line 862
    .local v3, "res":[B
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@f
    .line 863
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    #@15
    .line 864
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
    .line 862
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 866
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
    .line 402
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
    .line 403
    :catch_0
    move-exception v0

    #@a
    .line 404
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
    .line 390
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
    .line 391
    :catch_0
    move-exception v0

    #@a
    .line 392
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
    .line 1089
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1087
    :goto_0
    return-void

    #@8
    .line 1090
    :catch_0
    move-exception v0

    #@9
    .line 1092
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
    .line 1106
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1104
    :goto_0
    return-void

    #@8
    .line 1107
    :catch_0
    move-exception v0

    #@9
    .line 1109
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
    .line 1123
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1121
    :goto_0
    return-void

    #@8
    .line 1124
    :catch_0
    move-exception v0

    #@9
    .line 1126
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
    .line 1199
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
    .line 836
    if-nez p0, :cond_0

    #@3
    .line 837
    return-object v4

    #@4
    .line 840
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@7
    move-result-object v3

    #@8
    .line 842
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@b
    move-result-object v1

    #@c
    .line 843
    .local v1, "bytes":[B
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    array-length v4, v1

    #@e
    if-ge v2, v4, :cond_1

    #@10
    .line 844
    aget-byte v4, v1, v2

    #@12
    add-int/lit8 v4, v4, -0x31

    #@14
    int-to-byte v0, v4

    #@15
    .line 845
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
    .line 843
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 847
    .end local v0    # "b":B
    :cond_1
    return-object v3
.end method

.method private updateCryptoUserInfo(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 533
    if-eqz p1, :cond_0

    #@2
    .line 534
    return-void

    #@3
    .line 537
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
    .line 539
    .local v2, "ownerInfo":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "mount"

    #@10
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@13
    move-result-object v3

    #@14
    .line 540
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_2

    #@16
    .line 541
    const-string/jumbo v4, "LockPatternUtils"

    #@19
    const-string/jumbo v5, "Could not find the mount service to update the user info"

    #@1c
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 542
    return-void

    #@20
    .line 537
    .end local v2    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :cond_1
    const-string/jumbo v2, ""

    #@23
    .restart local v2    # "ownerInfo":Ljava/lang/String;
    goto :goto_0

    #@24
    .line 545
    .restart local v3    # "service":Landroid/os/IBinder;
    :cond_2
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@27
    move-result-object v1

    #@28
    .line 547
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "LockPatternUtils"

    #@2b
    const-string/jumbo v5, "Setting owner info"

    #@2e
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 548
    const-string/jumbo v4, "OwnerInfo"

    #@34
    invoke-interface {v1, v4, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 532
    :goto_1
    return-void

    #@38
    .line 549
    :catch_0
    move-exception v0

    #@39
    .line 550
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
    .line 664
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 665
    return-void

    #@7
    .line 667
    :cond_0
    const-string/jumbo v1, "mount"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 668
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_1

    #@10
    .line 669
    const-string/jumbo v1, "LockPatternUtils"

    #@13
    const-string/jumbo v2, "Could not find the mount service to update the encryption password"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 670
    return-void

    #@1a
    .line 673
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
    .line 663
    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 330
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@9
    move-result-object v1

    #@a
    .line 331
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 332
    return v4

    #@11
    .line 333
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@14
    move-result v2

    #@15
    if-ne v2, v4, :cond_1

    #@17
    .line 334
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    #@1c
    move-result v3

    #@1d
    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    #@20
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 338
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    #@22
    .line 339
    .local v0, "re":Landroid/os/RemoteException;
    return v4

    #@23
    .line 336
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return v3
.end method

.method public checkPasswordHistory(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 364
    new-instance v2, Ljava/lang/String;

    #@3
    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    #@6
    move-result-object v5

    #@7
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    .line 364
    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@c
    .line 366
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string/jumbo v5, "lockscreen.passwordhistory"

    #@f
    invoke-direct {p0, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 367
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_0

    #@15
    .line 368
    return v7

    #@16
    .line 371
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@19
    move-result v1

    #@1a
    .line 372
    .local v1, "passwordHashLength":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    #@1d
    move-result v4

    #@1e
    .line 373
    .local v4, "passwordHistoryLength":I
    if-nez v4, :cond_1

    #@20
    .line 374
    return v7

    #@21
    .line 376
    :cond_1
    mul-int v5, v1, v4

    #@23
    add-int/2addr v5, v4

    #@24
    add-int/lit8 v0, v5, -0x1

    #@26
    .line 378
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@29
    move-result v5

    #@2a
    if-le v5, v0, :cond_2

    #@2c
    .line 379
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 381
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@33
    move-result v5

    #@34
    return v5
.end method

.method public checkPattern(Ljava/util/List;I)Z
    .locals 6
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
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 280
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@5
    move-result-object v2

    #@6
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v2, v3, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@d
    move-result-object v1

    #@e
    .line 282
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 283
    return v4

    #@15
    .line 284
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@18
    move-result v2

    #@19
    if-ne v2, v4, :cond_1

    #@1b
    .line 285
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    #@20
    move-result v3

    #@21
    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    #@24
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 289
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    #@26
    .line 290
    .local v0, "re":Landroid/os/RemoteException;
    return v4

    #@27
    .line 287
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
    .line 350
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
    .line 351
    :catch_0
    move-exception v0

    #@a
    .line 352
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public clearEncryptionPassword()V
    .locals 2

    #@0
    .prologue
    .line 816
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    #@5
    .line 815
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
    .line 442
    const-string/jumbo v0, "lockscreen.password_type"

    #@5
    const-wide/16 v2, 0x0

    #@7
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@a
    .line 445
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
    .line 446
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
    .line 451
    :goto_0
    if-nez p1, :cond_0

    #@1e
    .line 453
    const/4 v0, 0x1

    #@1f
    invoke-direct {p0, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    #@22
    .line 456
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    #@25
    .line 458
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
    .line 461
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    #@37
    .line 441
    return-void

    #@38
    .line 447
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
    .line 423
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    #@3
    move-result v0

    #@4
    .line 425
    .local v0, "quality":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 427
    return v0

    #@b
    .line 430
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 432
    return v0

    #@12
    .line 435
    :cond_1
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 156
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
    .line 155
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    #@11
    .line 157
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    #@13
    if-nez v0, :cond_0

    #@15
    .line 158
    const-string/jumbo v0, "LockPatternUtils"

    #@18
    const-string/jumbo v1, "Can\'t get DevicePolicyManagerService: is it running?"

    #@1b
    .line 159
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1d
    const-string/jumbo v3, "Stack trace:"

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    .line 158
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 162
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
    .line 1151
    const-string/jumbo v4, "lockscreen.enabledtrustagents"

    #@3
    invoke-direct {p0, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 1152
    .local v2, "serialized":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 1153
    const/4 v4, 0x0

    #@e
    return-object v4

    #@f
    .line 1155
    :cond_0
    const-string/jumbo v4, ","

    #@12
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 1156
    .local v3, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    #@18
    array-length v4, v3

    #@19
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@1c
    .line 1157
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
    .line 1158
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@25
    move-result v6

    #@26
    if-nez v6, :cond_1

    #@28
    .line 1159
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 1157
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1162
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 826
    const-string/jumbo v0, "lockscreen.password_type"

    #@3
    .line 827
    const-wide/16 v2, 0x0

    #@5
    .line 826
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
    .line 1070
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    #@5
    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    #@8
    move-result-wide v0

    #@9
    .line 1071
    .local v0, "deadline":J
    const-string/jumbo v6, "lockscreen.lockoutattempttimeoutmss"

    #@c
    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    #@f
    move-result-wide v4

    #@10
    .line 1072
    .local v4, "timeoutMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v2

    #@14
    .line 1073
    .local v2, "now":J
    cmp-long v6, v0, v2

    #@16
    if-ltz v6, :cond_0

    #@18
    add-long v6, v2, v4

    #@1a
    cmp-long v6, v0, v6

    #@1c
    if-lez v6, :cond_1

    #@1e
    .line 1074
    :cond_0
    return-wide v8

    #@1f
    .line 1076
    :cond_1
    return-wide v0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 565
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
    .line 1135
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
    .line 189
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
    .line 205
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
    .line 213
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
    .line 225
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
    .line 217
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
    .line 221
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
    .line 209
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
    .line 197
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

.method public isCredentialRequiredToDecrypt(Z)Z
    .locals 5
    .param p1, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 1177
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    .line 1178
    const-string/jumbo v3, "require_password_to_decrypt"

    #@7
    .line 1177
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    .line 1179
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

.method public isLockPasswordEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 965
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
    .line 981
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
    .line 482
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 483
    const-string/jumbo v1, "lockscreen.disabled"

    #@a
    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    #@d
    move-result v0

    #@e
    .line 482
    :cond_0
    return v0
.end method

.method public isOwnerInfoEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 569
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
    .line 415
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
    .line 960
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    #@3
    move-result v0

    #@4
    .line 961
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

.method public isTactileFeedbackEnabled()Z
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1048
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    .line 1049
    const-string/jumbo v3, "haptic_feedback_enabled"

    #@7
    const/4 v4, -0x2

    #@8
    .line 1048
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

.method public isVisiblePatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 993
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
    .line 935
    if-nez p1, :cond_0

    #@3
    .line 936
    return-object v6

    #@4
    .line 940
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
    .line 941
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
    .line 942
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
    .line 944
    .local v3, "md5":[B
    array-length v6, v5

    #@34
    array-length v7, v3

    #@35
    add-int/2addr v6, v7

    #@36
    new-array v0, v6, [B

    #@38
    .line 945
    .local v0, "combined":[B
    array-length v6, v5

    #@39
    const/4 v7, 0x0

    #@3a
    const/4 v8, 0x0

    #@3b
    invoke-static {v5, v7, v0, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3e
    .line 946
    array-length v6, v5

    #@3f
    array-length v7, v3

    #@40
    const/4 v8, 0x0

    #@41
    invoke-static {v3, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@44
    .line 948
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    #@47
    move-result-object v2

    #@48
    .line 949
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
    .line 950
    .end local v0    # "combined":[B
    .end local v2    # "hexEncoded":[C
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    #@55
    .line 951
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/AssertionError;

    #@57
    const-string/jumbo v7, "Missing digest algorithm: "

    #@5a
    invoke-direct {v6, v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5d
    throw v6
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    #@7
    .line 230
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    #@f
    .line 231
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportRequireCredentialEntry(I)V

    #@16
    .line 228
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    #@7
    .line 236
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    #@f
    .line 234
    return-void
.end method

.method public requireCredentialEntry(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1169
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportRequireCredentialEntry(I)V

    #@7
    .line 1168
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 33
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 699
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3
    move-result-object v4

    #@4
    .line 700
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
    .line 701
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
    .line 778
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v31

    #@17
    .line 780
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
    .line 697
    .end local v31    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    #@34
    .line 705
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
    .line 706
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    #@44
    move-result v24

    #@45
    .line 709
    .local v24, "computedQuality":I
    if-nez p4, :cond_2

    #@47
    .line 710
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    #@4a
    move-result v5

    #@4b
    .line 709
    if-eqz v5, :cond_2

    #@4d
    .line 711
    const/4 v5, 0x1

    #@4e
    move-object/from16 v0, p0

    #@50
    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    #@53
    move-result v5

    #@54
    if-nez v5, :cond_3

    #@56
    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    #@59
    .line 724
    :cond_2
    :goto_1
    const-string/jumbo v5, "lockscreen.password_type"

    #@5c
    move/from16 v0, p3

    #@5e
    move/from16 v1, v24

    #@60
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@63
    move-result v6

    #@64
    int-to-long v14, v6

    #@65
    move-object/from16 v0, p0

    #@67
    move/from16 v1, p4

    #@69
    invoke-direct {v0, v5, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@6c
    .line 725
    if-eqz v24, :cond_d

    #@6e
    .line 726
    const/4 v7, 0x0

    #@6f
    .line 727
    .local v7, "letters":I
    const/4 v8, 0x0

    #@70
    .line 728
    .local v8, "uppercase":I
    const/4 v9, 0x0

    #@71
    .line 729
    .local v9, "lowercase":I
    const/4 v10, 0x0

    #@72
    .line 730
    .local v10, "numbers":I
    const/4 v11, 0x0

    #@73
    .line 731
    .local v11, "symbols":I
    const/4 v12, 0x0

    #@74
    .line 732
    .local v12, "nonletter":I
    const/16 v26, 0x0

    #@76
    .local v26, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@79
    move-result v5

    #@7a
    move/from16 v0, v26

    #@7c
    if-ge v0, v5, :cond_b

    #@7e
    .line 733
    move-object/from16 v0, p1

    #@80
    move/from16 v1, v26

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@85
    move-result v23

    #@86
    .line 734
    .local v23, "c":C
    const/16 v5, 0x41

    #@88
    move/from16 v0, v23

    #@8a
    if-lt v0, v5, :cond_8

    #@8c
    const/16 v5, 0x5a

    #@8e
    move/from16 v0, v23

    #@90
    if-gt v0, v5, :cond_8

    #@92
    .line 735
    add-int/lit8 v7, v7, 0x1

    #@94
    .line 736
    add-int/lit8 v8, v8, 0x1

    #@96
    .line 732
    :goto_3
    add-int/lit8 v26, v26, 0x1

    #@98
    goto :goto_2

    #@99
    .line 715
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

    #@9b
    .line 714
    move/from16 v0, v24

    #@9d
    if-ne v0, v5, :cond_5

    #@9f
    const/16 v27, 0x1

    #@a1
    .line 717
    .local v27, "numeric":Z
    :goto_4
    const/high16 v5, 0x30000

    #@a3
    .line 716
    move/from16 v0, v24

    #@a5
    if-ne v0, v5, :cond_6

    #@a7
    const/16 v28, 0x1

    #@a9
    .line 718
    .local v28, "numericComplex":Z
    :goto_5
    if-nez v27, :cond_4

    #@ab
    if-eqz v28, :cond_7

    #@ad
    :cond_4
    const/16 v32, 0x3

    #@af
    .line 720
    .local v32, "type":I
    :goto_6
    move-object/from16 v0, p0

    #@b1
    move/from16 v1, v32

    #@b3
    move-object/from16 v2, p1

    #@b5
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    #@b8
    goto :goto_1

    #@b9
    .line 714
    .end local v27    # "numeric":Z
    .end local v28    # "numericComplex":Z
    .end local v32    # "type":I
    :cond_5
    const/16 v27, 0x0

    #@bb
    .restart local v27    # "numeric":Z
    goto :goto_4

    #@bc
    .line 716
    :cond_6
    const/16 v28, 0x0

    #@be
    .restart local v28    # "numericComplex":Z
    goto :goto_5

    #@bf
    .line 719
    :cond_7
    const/16 v32, 0x0

    #@c1
    .restart local v32    # "type":I
    goto :goto_6

    #@c2
    .line 737
    .end local v27    # "numeric":Z
    .end local v28    # "numericComplex":Z
    .end local v32    # "type":I
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

    #@c4
    move/from16 v0, v23

    #@c6
    if-lt v0, v5, :cond_9

    #@c8
    const/16 v5, 0x7a

    #@ca
    move/from16 v0, v23

    #@cc
    if-gt v0, v5, :cond_9

    #@ce
    .line 738
    add-int/lit8 v7, v7, 0x1

    #@d0
    .line 739
    add-int/lit8 v9, v9, 0x1

    #@d2
    goto :goto_3

    #@d3
    .line 740
    :cond_9
    const/16 v5, 0x30

    #@d5
    move/from16 v0, v23

    #@d7
    if-lt v0, v5, :cond_a

    #@d9
    const/16 v5, 0x39

    #@db
    move/from16 v0, v23

    #@dd
    if-gt v0, v5, :cond_a

    #@df
    .line 741
    add-int/lit8 v10, v10, 0x1

    #@e1
    .line 742
    add-int/lit8 v12, v12, 0x1

    #@e3
    goto :goto_3

    #@e4
    .line 744
    :cond_a
    add-int/lit8 v11, v11, 0x1

    #@e6
    .line 745
    add-int/lit8 v12, v12, 0x1

    #@e8
    goto :goto_3

    #@e9
    .line 748
    .end local v23    # "c":C
    :cond_b
    move/from16 v0, p3

    #@eb
    move/from16 v1, v24

    #@ed
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@f0
    move-result v5

    #@f1
    .line 749
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@f4
    move-result v6

    #@f5
    move/from16 v13, p4

    #@f7
    .line 748
    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    #@fa
    .line 760
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v26    # "i":I
    :goto_7
    const-string/jumbo v5, "lockscreen.passwordhistory"

    #@fd
    move-object/from16 v0, p0

    #@ff
    move/from16 v1, p4

    #@101
    invoke-direct {v0, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    #@104
    move-result-object v29

    #@105
    .line 761
    .local v29, "passwordHistory":Ljava/lang/String;
    if-nez v29, :cond_c

    #@107
    .line 762
    const-string/jumbo v29, ""

    #@10a
    .line 764
    :cond_c
    move-object/from16 v0, p0

    #@10c
    move/from16 v1, p4

    #@10e
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    #@111
    move-result v30

    #@112
    .line 765
    .local v30, "passwordHistoryLength":I
    if-nez v30, :cond_e

    #@114
    .line 766
    const-string/jumbo v29, ""

    #@117
    .line 776
    :goto_8
    const-string/jumbo v5, "lockscreen.passwordhistory"

    #@11a
    move-object/from16 v0, p0

    #@11c
    move-object/from16 v1, v29

    #@11e
    move/from16 v2, p4

    #@120
    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@123
    .line 777
    move-object/from16 v0, p0

    #@125
    move/from16 v1, p4

    #@127
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    #@12a
    goto/16 :goto_0

    #@12c
    .line 754
    .end local v29    # "passwordHistory":Ljava/lang/String;
    .end local v30    # "passwordHistoryLength":I
    :cond_d
    const/4 v14, 0x0

    #@12d
    .line 755
    const/4 v15, 0x0

    #@12e
    const/16 v16, 0x0

    #@130
    const/16 v17, 0x0

    #@132
    const/16 v18, 0x0

    #@134
    const/16 v19, 0x0

    #@136
    const/16 v20, 0x0

    #@138
    const/16 v21, 0x0

    #@13a
    move-object v13, v4

    #@13b
    move/from16 v22, p4

    #@13d
    .line 753
    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    #@140
    goto :goto_7

    #@141
    .line 768
    .restart local v29    # "passwordHistory":Ljava/lang/String;
    .restart local v30    # "passwordHistoryLength":I
    :cond_e
    move-object/from16 v0, p0

    #@143
    move-object/from16 v1, p1

    #@145
    move/from16 v2, p4

    #@147
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    #@14a
    move-result-object v25

    #@14b
    .line 769
    .local v25, "hash":[B
    new-instance v5, Ljava/lang/StringBuilder;

    #@14d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@150
    new-instance v6, Ljava/lang/String;

    #@152
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@154
    move-object/from16 v0, v25

    #@156
    invoke-direct {v6, v0, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v5

    #@15d
    const-string/jumbo v6, ","

    #@160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v5

    #@164
    move-object/from16 v0, v29

    #@166
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v5

    #@16a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v29

    #@16e
    .line 772
    move-object/from16 v0, v25

    #@170
    array-length v5, v0

    #@171
    mul-int v5, v5, v30

    #@173
    add-int v5, v5, v30

    #@175
    add-int/lit8 v5, v5, -0x1

    #@177
    .line 773
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    #@17a
    move-result v6

    #@17b
    .line 772
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@17e
    move-result v5

    #@17f
    const/4 v6, 0x0

    #@180
    move-object/from16 v0, v29

    #@182
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@185
    move-result-object v29

    #@186
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
    .line 492
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    #@4
    .line 491
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
    .line 502
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
    .line 503
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
    .line 527
    :catch_0
    move-exception v10

    #@13
    .line 528
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
    .line 500
    .end local v10    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    #@2e
    .line 507
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
    .line 508
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@3c
    move-result-object v0

    #@3d
    .line 511
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p3, :cond_2

    #@3f
    .line 512
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    #@42
    move-result v1

    #@43
    .line 511
    if-eqz v1, :cond_2

    #@45
    .line 513
    const/4 v1, 0x1

    #@46
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    #@49
    move-result v1

    #@4a
    if-nez v1, :cond_3

    #@4c
    .line 514
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    #@4f
    .line 521
    :cond_2
    :goto_1
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    #@52
    const/4 v2, 0x1

    #@53
    invoke-direct {p0, v1, v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@56
    .line 523
    const-string/jumbo v1, "lockscreen.password_type"

    #@59
    const-wide/32 v2, 0x10000

    #@5c
    invoke-direct {p0, v1, v2, v3, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@5f
    .line 525
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@62
    move-result v2

    #@63
    .line 524
    const/high16 v1, 0x10000

    #@65
    .line 525
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
    .line 524
    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    #@6f
    .line 526
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    #@72
    goto :goto_0

    #@73
    .line 516
    :cond_3
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    #@76
    move-result-object v11

    #@77
    .line 517
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
    const/4 v0, 0x0

    #@1
    .line 1183
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1184
    const-string/jumbo v0, "LockPatternUtils"

    #@a
    const-string/jumbo v1, "Only device owner may call setCredentialRequiredForDecrypt()"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1185
    return-void

    #@11
    .line 1188
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 1189
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1c
    move-result-object v1

    #@1d
    .line 1190
    const-string/jumbo v2, "require_password_to_decrypt"

    #@20
    if-eqz p1, :cond_1

    #@22
    const/4 v0, 0x1

    #@23
    .line 1189
    :cond_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@26
    .line 1182
    :cond_2
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
    .line 1139
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1140
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
    .line 1141
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@18
    move-result v3

    #@19
    if-lez v3, :cond_0

    #@1b
    .line 1142
    const/16 v3, 0x2c

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 1144
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 1146
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
    .line 1147
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    #@39
    .line 1138
    return-void
.end method

.method public setLockScreenDisabled(ZI)V
    .locals 1
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 472
    const-string/jumbo v0, "lockscreen.disabled"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@6
    .line 471
    return-void
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    #@0
    .prologue
    .line 1058
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    int-to-long v4, p2

    #@5
    add-long v0, v2, v4

    #@7
    .line 1059
    .local v0, "deadline":J
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    #@a
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@d
    .line 1060
    const-string/jumbo v2, "lockscreen.lockoutattempttimeoutmss"

    #@10
    int-to-long v4, p2

    #@11
    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    #@14
    .line 1061
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 555
    const-string/jumbo v0, "lock_screen_owner_info"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@6
    .line 556
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    #@9
    .line 554
    return-void
.end method

.method public setOwnerInfoEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 560
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@6
    .line 561
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    #@9
    .line 559
    return-void
.end method

.method public setPowerButtonInstantlyLocks(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1131
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@6
    .line 1130
    return-void
.end method

.method public setVisiblePasswordEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1026
    if-eqz p2, :cond_0

    #@2
    .line 1027
    return-void

    #@3
    .line 1030
    :cond_0
    const-string/jumbo v3, "mount"

    #@6
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v2

    #@a
    .line 1031
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    #@c
    .line 1032
    const-string/jumbo v3, "LockPatternUtils"

    #@f
    const-string/jumbo v4, "Could not find the mount service to update the user info"

    #@12
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 1033
    return-void

    #@16
    .line 1036
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@19
    move-result-object v1

    #@1a
    .line 1038
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
    .line 1024
    :goto_1
    return-void

    #@26
    .line 1038
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 1039
    :catch_0
    move-exception v0

    #@2b
    .line 1040
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
    .line 1000
    const-string/jumbo v3, "lock_pattern_visible_pattern"

    #@3
    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    #@6
    .line 1003
    if-eqz p2, :cond_0

    #@8
    .line 1004
    return-void

    #@9
    .line 1007
    :cond_0
    const-string/jumbo v3, "mount"

    #@c
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v2

    #@10
    .line 1008
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    #@12
    .line 1009
    const-string/jumbo v3, "LockPatternUtils"

    #@15
    const-string/jumbo v4, "Could not find the mount service to update the user info"

    #@18
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1010
    return-void

    #@1c
    .line 1013
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@1f
    move-result-object v1

    #@20
    .line 1015
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
    .line 999
    :goto_1
    return-void

    #@2c
    .line 1015
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    goto :goto_0

    #@30
    .line 1016
    :catch_0
    move-exception v0

    #@31
    .line 1017
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    #@34
    const-string/jumbo v4, "Error changing pattern visible state"

    #@37
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_1
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
    .line 307
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@8
    move-result-object v1

    #@9
    .line 309
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 310
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 311
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@17
    move-result v2

    #@18
    const/4 v3, 0x1

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    .line 312
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    #@20
    move-result v3

    #@21
    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    #@24
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 316
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    #@26
    .line 317
    .local v0, "re":Landroid/os/RemoteException;
    return-object v4

    #@27
    .line 314
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
    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    #@4
    move-result-object v2

    #@5
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v2, v3, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@c
    move-result-object v1

    #@d
    .line 253
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_0

    #@f
    .line 255
    return-object v4

    #@10
    .line 258
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    .line 259
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 260
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@1e
    move-result v2

    #@1f
    const/4 v3, 0x1

    #@20
    if-ne v2, v3, :cond_2

    #@22
    .line 261
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
    .line 265
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    #@2d
    .line 266
    .local v0, "re":Landroid/os/RemoteException;
    return-object v4

    #@2e
    .line 263
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    return-object v4
.end method
