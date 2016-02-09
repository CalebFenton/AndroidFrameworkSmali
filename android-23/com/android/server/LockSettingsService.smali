.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$CredentialUtil;,
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$1;
    }
.end annotation


# static fields
.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFirstCallToVold:Z

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mStorage:Lcom/android/server/LockSettingsStorage;


# direct methods
.method static synthetic -get0(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/LockSettingsService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeUser(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 730
    const/16 v0, 0x10

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    .line 731
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    #@b
    aput-object v1, v0, v3

    #@d
    .line 732
    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    #@10
    aput-object v1, v0, v4

    #@12
    .line 733
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    #@15
    aput-object v1, v0, v5

    #@17
    .line 734
    const-string/jumbo v1, "lockscreen.password_type"

    #@1a
    aput-object v1, v0, v6

    #@1c
    .line 735
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 736
    const-string/jumbo v1, "lockscreen.password_salt"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 737
    const-string/jumbo v1, "lockscreen.disabled"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 738
    const-string/jumbo v1, "lockscreen.options"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 739
    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 740
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 741
    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 742
    const-string/jumbo v1, "lockscreen.passwordhistory"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 743
    const-string/jumbo v1, "lock_pattern_autolock"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 744
    const-string/jumbo v1, "lock_biometric_weak_flags"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 745
    const-string/jumbo v1, "lock_pattern_visible_pattern"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 746
    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 730
    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    #@6e
    .line 750
    new-array v0, v5, [Ljava/lang/String;

    #@70
    .line 751
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    #@73
    aput-object v1, v0, v3

    #@75
    .line 752
    const-string/jumbo v1, "lock_screen_owner_info"

    #@78
    aput-object v1, v0, v4

    #@7a
    .line 750
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@7c
    .line 756
    new-array v0, v6, [Ljava/lang/String;

    #@7e
    .line 757
    const-string/jumbo v1, "lockscreen.password_salt"

    #@81
    aput-object v1, v0, v3

    #@83
    .line 758
    const-string/jumbo v1, "lockscreen.passwordhistory"

    #@86
    aput-object v1, v0, v4

    #@88
    .line 759
    const-string/jumbo v1, "lockscreen.password_type"

    #@8b
    aput-object v1, v0, v5

    #@8d
    .line 756
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@8f
    .line 762
    new-array v0, v5, [Ljava/lang/String;

    #@91
    .line 763
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    #@94
    aput-object v1, v0, v3

    #@96
    .line 764
    const-string/jumbo v1, "lock_screen_owner_info"

    #@99
    aput-object v1, v0, v4

    #@9b
    .line 762
    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    #@9d
    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 85
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    #@4
    .line 111
    new-instance v0, Lcom/android/server/LockSettingsService$1;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    #@9
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@b
    .line 86
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@d
    .line 89
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #@f
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@12
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@14
    .line 90
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    #@17
    .line 92
    new-instance v3, Landroid/content/IntentFilter;

    #@19
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@1c
    .line 93
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@1f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@22
    .line 94
    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    #@25
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@28
    .line 95
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@2b
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2e
    .line 96
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@30
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@32
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@34
    move-object v5, v4

    #@35
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@38
    .line 98
    new-instance v0, Lcom/android/server/LockSettingsStorage;

    #@3a
    new-instance v1, Lcom/android/server/LockSettingsService$2;

    #@3c
    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    #@3f
    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    #@42
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@44
    .line 85
    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@5
    const-string/jumbo v2, "LockSettingsRead"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 260
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 267
    .local v0, "callingUid":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@7
    array-length v3, v3

    #@8
    if-ge v1, v3, :cond_1

    #@a
    .line 268
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@c
    aget-object v2, v3, v1

    #@e
    .line 269
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@16
    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    #@19
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 271
    new-instance v3, Ljava/lang/SecurityException;

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "uid="

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    .line 272
    const-string/jumbo v5, " needs permission "

    #@34
    .line 271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 272
    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    #@3b
    .line 271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 272
    const-string/jumbo v5, " to read "

    #@42
    .line 271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 273
    const-string/jumbo v5, " for user "

    #@4d
    .line 271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v3

    #@5d
    .line 267
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 277
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@61
    :goto_1
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@63
    array-length v3, v3

    #@64
    if-ge v1, v3, :cond_3

    #@66
    .line 278
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@68
    aget-object v2, v3, v1

    #@6a
    .line 279
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v3

    #@6e
    if-eqz v3, :cond_2

    #@70
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@72
    const-string/jumbo v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@75
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@78
    move-result v3

    #@79
    if-eqz v3, :cond_2

    #@7b
    .line 281
    new-instance v3, Ljava/lang/SecurityException;

    #@7d
    new-instance v4, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v5, "uid="

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    .line 282
    const-string/jumbo v5, " needs permission "

    #@90
    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    .line 282
    const-string/jumbo v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@97
    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    .line 282
    const-string/jumbo v5, " to read "

    #@9e
    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    .line 283
    const-string/jumbo v5, " for user "

    #@a9
    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@b8
    throw v3

    #@b9
    .line 277
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@bb
    goto :goto_1

    #@bc
    .line 264
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@5
    const-string/jumbo v2, "LockSettingsWrite"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 256
    return-void
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 568
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@3
    .line 569
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@5
    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@8
    move-result-object v3

    #@9
    .line 571
    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v8, Lcom/android/server/LockSettingsService$4;

    #@b
    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;)V

    #@e
    move-object v1, p0

    #@f
    move v2, p5

    #@10
    move-object v4, p1

    #@11
    move v5, p2

    #@12
    move-wide v6, p3

    #@13
    .line 570
    invoke-direct/range {v1 .. v8}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 512
    move/from16 v0, p5

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@5
    .line 513
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@7
    move/from16 v0, p5

    #@9
    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@c
    move-result-object v5

    #@d
    .line 514
    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v5, :cond_1

    #@f
    iget-boolean v11, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    #@11
    .line 517
    :goto_0
    if-eqz v11, :cond_2

    #@13
    .line 518
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    .line 525
    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/android/server/LockSettingsService$3;

    #@19
    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;)V

    #@1c
    move-object v3, p0

    #@1d
    move/from16 v4, p5

    #@1f
    move v7, p2

    #@20
    move-wide/from16 v8, p3

    #@22
    .line 523
    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@25
    move-result-object v2

    #@26
    .line 545
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_0

    #@2c
    if-eqz v11, :cond_0

    #@2e
    .line 547
    move/from16 v0, p5

    #@30
    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/LockSettingsService;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    #@33
    .line 550
    :cond_0
    return-object v2

    #@34
    .line 514
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "patternToVerify":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    #@35
    .local v11, "shouldReEnrollBaseZero":Z
    goto :goto_0

    #@36
    .line 520
    .end local v11    # "shouldReEnrollBaseZero":Z
    :cond_2
    move-object v6, p1

    #@37
    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_1
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 475
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@4
    .line 476
    if-nez p2, :cond_0

    #@6
    .line 477
    const/4 v0, 0x0

    #@7
    .line 479
    :goto_0
    if-nez p3, :cond_1

    #@9
    .line 480
    const/4 v3, 0x0

    #@a
    .line 482
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v4, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    #@11
    move-result-object v2

    #@12
    .line 485
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    #@14
    .line 486
    return-object v5

    #@15
    .line 478
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object v0

    #@19
    .local v0, "enrolledCredentialBytes":[B
    goto :goto_0

    #@1a
    .line 481
    .end local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    #@1d
    move-result-object v3

    #@1e
    .local v3, "toEnrollBytes":[B
    goto :goto_1

    #@1f
    .line 489
    .end local v3    # "toEnrollBytes":[B
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    #@22
    move-result-object v1

    #@23
    .line 490
    .local v1, "hash":[B
    if-eqz v1, :cond_3

    #@25
    .line 491
    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@28
    .line 496
    :goto_2
    return-object v1

    #@29
    .line 494
    :cond_3
    const-string/jumbo v4, "LockSettingsService"

    #@2c
    const-string/jumbo v5, "Throttled while enrolling a password"

    #@2f
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    goto :goto_2
.end method

.method private getCurrentHandle(I)[B
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 388
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    #@5
    move-result v2

    #@6
    .line 389
    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_0

    #@9
    .line 404
    const/4 v1, 0x0

    #@a
    .line 409
    :goto_0
    const/4 v3, -0x1

    #@b
    if-eq v2, v3, :cond_0

    #@d
    if-nez v1, :cond_0

    #@f
    .line 410
    const-string/jumbo v3, "LockSettingsService"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Stored handle type ["

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    const-string/jumbo v5, "] but no handle available"

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 413
    :cond_0
    return-object v1

    #@31
    .line 391
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@33
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@36
    move-result-object v0

    #@37
    .line 392
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    #@39
    .line 393
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@3b
    .local v1, "currentHandle":[B
    goto :goto_0

    #@3c
    .line 394
    .end local v1    # "currentHandle":[B
    :cond_1
    const/4 v1, 0x0

    #@3d
    .local v1, "currentHandle":[B
    goto :goto_0

    #@3e
    .line 397
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@40
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@43
    move-result-object v0

    #@44
    .line 398
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    #@46
    .line 399
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@48
    .local v1, "currentHandle":[B
    goto :goto_0

    #@49
    .line 400
    .end local v1    # "currentHandle":[B
    :cond_2
    const/4 v1, 0x0

    #@4a
    .local v1, "currentHandle":[B
    goto :goto_0

    #@4b
    .line 389
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 786
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v1

    #@a
    .line 790
    :cond_0
    :try_start_1
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    #@d
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    .line 791
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@13
    .line 792
    new-instance v1, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;

    #@15
    const/4 v2, 0x0

    #@16
    invoke-direct {v1, p0, v2}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;)V

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@1d
    .line 793
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    #@23
    .line 794
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit p0

    #@26
    return-object v1

    #@27
    .line 797
    :cond_1
    :try_start_2
    const-string/jumbo v1, "LockSettingsService"

    #@2a
    const-string/jumbo v2, "Unable to acquire GateKeeperService"

    #@2d
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@30
    monitor-exit p0

    #@31
    .line 798
    return-object v3

    #@32
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    #@33
    monitor-exit p0

    #@34
    throw v1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 768
    const-string/jumbo v1, "mount"

    #@4
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 769
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@a
    .line 770
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 772
    :cond_0
    return-object v2
.end method

.method private migrateOldData()V
    .locals 32

    #@0
    .prologue
    .line 148
    :try_start_0
    const-string/jumbo v28, "migrated"

    #@3
    const/16 v29, 0x0

    #@5
    const/16 v30, 0x0

    #@7
    move-object/from16 v0, p0

    #@9
    move-object/from16 v1, v28

    #@b
    move-object/from16 v2, v29

    #@d
    move/from16 v3, v30

    #@f
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@12
    move-result-object v28

    #@13
    if-nez v28, :cond_2

    #@15
    .line 149
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@19
    move-object/from16 v28, v0

    #@1b
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1e
    move-result-object v10

    #@1f
    .line 150
    .local v10, "cr":Landroid/content/ContentResolver;
    sget-object v29, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    #@21
    const/16 v28, 0x0

    #@23
    move-object/from16 v0, v29

    #@25
    array-length v0, v0

    #@26
    move/from16 v30, v0

    #@28
    :goto_0
    move/from16 v0, v28

    #@2a
    move/from16 v1, v30

    #@2c
    if-ge v0, v1, :cond_1

    #@2e
    aget-object v26, v29, v28

    #@30
    .line 151
    .local v26, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v26

    #@32
    invoke-static {v10, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v27

    #@36
    .line 152
    .local v27, "value":Ljava/lang/String;
    if-eqz v27, :cond_0

    #@38
    .line 153
    const/16 v31, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    move-object/from16 v1, v26

    #@3e
    move-object/from16 v2, v27

    #@40
    move/from16 v3, v31

    #@42
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@45
    .line 150
    :cond_0
    add-int/lit8 v28, v28, 0x1

    #@47
    goto :goto_0

    #@48
    .line 157
    .end local v26    # "validSetting":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v28, "migrated"

    #@4b
    const-string/jumbo v29, "true"

    #@4e
    const/16 v30, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    move-object/from16 v1, v28

    #@54
    move-object/from16 v2, v29

    #@56
    move/from16 v3, v30

    #@58
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@5b
    .line 158
    const-string/jumbo v28, "LockSettingsService"

    #@5e
    const-string/jumbo v29, "Migrated lock settings to new location"

    #@61
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 162
    .end local v10    # "cr":Landroid/content/ContentResolver;
    :cond_2
    const-string/jumbo v28, "migrated_user_specific"

    #@67
    const/16 v29, 0x0

    #@69
    const/16 v30, 0x0

    #@6b
    move-object/from16 v0, p0

    #@6d
    move-object/from16 v1, v28

    #@6f
    move-object/from16 v2, v29

    #@71
    move/from16 v3, v30

    #@73
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@76
    move-result-object v28

    #@77
    if-nez v28, :cond_9

    #@79
    .line 163
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@7d
    move-object/from16 v28, v0

    #@7f
    const-string/jumbo v29, "user"

    #@82
    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@85
    move-result-object v19

    #@86
    check-cast v19, Landroid/os/UserManager;

    #@88
    .line 164
    .local v19, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@8c
    move-object/from16 v28, v0

    #@8e
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@91
    move-result-object v10

    #@92
    .line 165
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@95
    move-result-object v25

    #@96
    .line 166
    .local v25, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v22, 0x0

    #@98
    .local v22, "user":I
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    #@9b
    move-result v28

    #@9c
    move/from16 v0, v22

    #@9e
    move/from16 v1, v28

    #@a0
    if-ge v0, v1, :cond_8

    #@a2
    .line 168
    move-object/from16 v0, v25

    #@a4
    move/from16 v1, v22

    #@a6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a9
    move-result-object v28

    #@aa
    check-cast v28, Landroid/content/pm/UserInfo;

    #@ac
    move-object/from16 v0, v28

    #@ae
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@b0
    move/from16 v24, v0

    #@b2
    .line 169
    .local v24, "userId":I
    const-string/jumbo v6, "lock_screen_owner_info"

    #@b5
    .line 170
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v28, "lock_screen_owner_info"

    #@b8
    move-object/from16 v0, v28

    #@ba
    move/from16 v1, v24

    #@bc
    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@bf
    move-result-object v16

    #@c0
    .line 171
    .local v16, "ownerInfo":Ljava/lang/String;
    if-eqz v16, :cond_3

    #@c2
    .line 172
    const-string/jumbo v28, "lock_screen_owner_info"

    #@c5
    move-object/from16 v0, p0

    #@c7
    move-object/from16 v1, v28

    #@c9
    move-object/from16 v2, v16

    #@cb
    move/from16 v3, v24

    #@cd
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@d0
    .line 173
    const-string/jumbo v28, ""

    #@d3
    move-object/from16 v0, v16

    #@d5
    move-object/from16 v1, v28

    #@d7
    move/from16 v2, v24

    #@d9
    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@dc
    .line 179
    :cond_3
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@df
    .line 182
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v28, "lock_screen_owner_info_enabled"

    #@e2
    move-object/from16 v0, v28

    #@e4
    move/from16 v1, v24

    #@e6
    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e9
    move-result v15

    #@ea
    .line 183
    .local v15, "ivalue":I
    if-eqz v15, :cond_5

    #@ec
    const/4 v12, 0x1

    #@ed
    .line 184
    .local v12, "enabled":Z
    :goto_2
    const-string/jumbo v29, "lock_screen_owner_info_enabled"

    #@f0
    if-eqz v12, :cond_6

    #@f2
    const/16 v28, 0x1

    #@f4
    :goto_3
    move/from16 v0, v28

    #@f6
    int-to-long v0, v0

    #@f7
    move-wide/from16 v30, v0

    #@f9
    move-object/from16 v0, p0

    #@fb
    move-object/from16 v1, v29

    #@fd
    move-wide/from16 v2, v30

    #@ff
    move/from16 v4, v24

    #@101
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@104
    .line 191
    .end local v12    # "enabled":Z
    .end local v15    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string/jumbo v28, "lock_screen_owner_info_enabled"

    #@107
    const/16 v29, 0x0

    #@109
    move-object/from16 v0, v28

    #@10b
    move/from16 v1, v29

    #@10d
    move/from16 v2, v24

    #@10f
    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@112
    .line 166
    add-int/lit8 v22, v22, 0x1

    #@114
    goto :goto_1

    #@115
    .line 183
    .restart local v15    # "ivalue":I
    :cond_5
    const/4 v12, 0x0

    #@116
    .restart local v12    # "enabled":Z
    goto :goto_2

    #@117
    .line 184
    :cond_6
    const/16 v28, 0x0

    #@119
    goto :goto_3

    #@11a
    .line 185
    .end local v12    # "enabled":Z
    .end local v15    # "ivalue":I
    :catch_0
    move-exception v11

    #@11b
    .line 187
    .local v11, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11e
    move-result v28

    #@11f
    if-nez v28, :cond_4

    #@121
    .line 188
    const-string/jumbo v28, "lock_screen_owner_info_enabled"

    #@124
    const-wide/16 v30, 0x1

    #@126
    move-object/from16 v0, p0

    #@128
    move-object/from16 v1, v28

    #@12a
    move-wide/from16 v2, v30

    #@12c
    move/from16 v4, v24

    #@12e
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@131
    goto :goto_4

    #@132
    .line 251
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v16    # "ownerInfo":Ljava/lang/String;
    .end local v19    # "um":Landroid/os/UserManager;
    .end local v22    # "user":I
    .end local v24    # "userId":I
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v17

    #@133
    .line 252
    .local v17, "re":Landroid/os/RemoteException;
    const-string/jumbo v28, "LockSettingsService"

    #@136
    const-string/jumbo v29, "Unable to migrate old data"

    #@139
    move-object/from16 v0, v28

    #@13b
    move-object/from16 v1, v29

    #@13d
    move-object/from16 v2, v17

    #@13f
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@142
    .line 144
    .end local v17    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    return-void

    #@143
    .line 194
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    .restart local v19    # "um":Landroid/os/UserManager;
    .restart local v22    # "user":I
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string/jumbo v28, "migrated_user_specific"

    #@146
    const-string/jumbo v29, "true"

    #@149
    const/16 v30, 0x0

    #@14b
    move-object/from16 v0, p0

    #@14d
    move-object/from16 v1, v28

    #@14f
    move-object/from16 v2, v29

    #@151
    move/from16 v3, v30

    #@153
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@156
    .line 195
    const-string/jumbo v28, "LockSettingsService"

    #@159
    const-string/jumbo v29, "Migrated per-user lock settings to new location"

    #@15c
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@15f
    .line 199
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v19    # "um":Landroid/os/UserManager;
    .end local v22    # "user":I
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string/jumbo v28, "migrated_biometric_weak"

    #@162
    const/16 v29, 0x0

    #@164
    const/16 v30, 0x0

    #@166
    move-object/from16 v0, p0

    #@168
    move-object/from16 v1, v28

    #@16a
    move-object/from16 v2, v29

    #@16c
    move/from16 v3, v30

    #@16e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@171
    move-result-object v28

    #@172
    if-nez v28, :cond_c

    #@174
    .line 200
    move-object/from16 v0, p0

    #@176
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@178
    move-object/from16 v28, v0

    #@17a
    const-string/jumbo v29, "user"

    #@17d
    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@180
    move-result-object v19

    #@181
    check-cast v19, Landroid/os/UserManager;

    #@183
    .line 201
    .restart local v19    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@186
    move-result-object v25

    #@187
    .line 202
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v13, 0x0

    #@188
    .local v13, "i":I
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    #@18b
    move-result v28

    #@18c
    move/from16 v0, v28

    #@18e
    if-ge v13, v0, :cond_b

    #@190
    .line 203
    move-object/from16 v0, v25

    #@192
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@195
    move-result-object v28

    #@196
    check-cast v28, Landroid/content/pm/UserInfo;

    #@198
    move-object/from16 v0, v28

    #@19a
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@19c
    move/from16 v24, v0

    #@19e
    .line 204
    .restart local v24    # "userId":I
    const-string/jumbo v28, "lockscreen.password_type"

    #@1a1
    .line 205
    const-wide/16 v30, 0x0

    #@1a3
    .line 204
    move-object/from16 v0, p0

    #@1a5
    move-object/from16 v1, v28

    #@1a7
    move-wide/from16 v2, v30

    #@1a9
    move/from16 v4, v24

    #@1ab
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    #@1ae
    move-result-wide v20

    #@1af
    .line 207
    .local v20, "type":J
    const-string/jumbo v28, "lockscreen.password_type_alternate"

    #@1b2
    .line 208
    const-wide/16 v30, 0x0

    #@1b4
    .line 207
    move-object/from16 v0, p0

    #@1b6
    move-object/from16 v1, v28

    #@1b8
    move-wide/from16 v2, v30

    #@1ba
    move/from16 v4, v24

    #@1bc
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    #@1bf
    move-result-wide v8

    #@1c0
    .line 210
    .local v8, "alternateType":J
    const-wide/32 v28, 0x8000

    #@1c3
    cmp-long v28, v20, v28

    #@1c5
    if-nez v28, :cond_a

    #@1c7
    .line 211
    const-string/jumbo v28, "lockscreen.password_type"

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    move-object/from16 v1, v28

    #@1ce
    move/from16 v2, v24

    #@1d0
    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    #@1d3
    .line 215
    :cond_a
    const-string/jumbo v28, "lockscreen.password_type_alternate"

    #@1d6
    .line 216
    const-wide/16 v30, 0x0

    #@1d8
    .line 215
    move-object/from16 v0, p0

    #@1da
    move-object/from16 v1, v28

    #@1dc
    move-wide/from16 v2, v30

    #@1de
    move/from16 v4, v24

    #@1e0
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    #@1e3
    .line 202
    add-int/lit8 v13, v13, 0x1

    #@1e5
    goto :goto_6

    #@1e6
    .line 219
    .end local v8    # "alternateType":J
    .end local v20    # "type":J
    .end local v24    # "userId":I
    :cond_b
    const-string/jumbo v28, "migrated_biometric_weak"

    #@1e9
    const-string/jumbo v29, "true"

    #@1ec
    const/16 v30, 0x0

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    move-object/from16 v1, v28

    #@1f2
    move-object/from16 v2, v29

    #@1f4
    move/from16 v3, v30

    #@1f6
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@1f9
    .line 220
    const-string/jumbo v28, "LockSettingsService"

    #@1fc
    const-string/jumbo v29, "Migrated biometric weak to use the fallback instead"

    #@1ff
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@202
    .line 226
    .end local v13    # "i":I
    .end local v19    # "um":Landroid/os/UserManager;
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const-string/jumbo v28, "migrated_lockscreen_disabled"

    #@205
    const/16 v29, 0x0

    #@207
    const/16 v30, 0x0

    #@209
    move-object/from16 v0, p0

    #@20b
    move-object/from16 v1, v28

    #@20d
    move-object/from16 v2, v29

    #@20f
    move/from16 v3, v30

    #@211
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@214
    move-result-object v28

    #@215
    if-nez v28, :cond_7

    #@217
    .line 227
    move-object/from16 v0, p0

    #@219
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@21b
    move-object/from16 v28, v0

    #@21d
    const-string/jumbo v29, "user"

    #@220
    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@223
    move-result-object v19

    #@224
    check-cast v19, Landroid/os/UserManager;

    #@226
    .line 229
    .restart local v19    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@229
    move-result-object v25

    #@22a
    .line 230
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    #@22d
    move-result v23

    #@22e
    .line 231
    .local v23, "userCount":I
    const/16 v18, 0x0

    #@230
    .line 232
    .local v18, "switchableUsers":I
    const/4 v13, 0x0

    #@231
    .restart local v13    # "i":I
    :goto_7
    move/from16 v0, v23

    #@233
    if-ge v13, v0, :cond_e

    #@235
    .line 233
    move-object/from16 v0, v25

    #@237
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23a
    move-result-object v28

    #@23b
    check-cast v28, Landroid/content/pm/UserInfo;

    #@23d
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    #@240
    move-result v28

    #@241
    if-eqz v28, :cond_d

    #@243
    .line 234
    add-int/lit8 v18, v18, 0x1

    #@245
    .line 232
    :cond_d
    add-int/lit8 v13, v13, 0x1

    #@247
    goto :goto_7

    #@248
    .line 238
    :cond_e
    const/16 v28, 0x1

    #@24a
    move/from16 v0, v18

    #@24c
    move/from16 v1, v28

    #@24e
    if-le v0, v1, :cond_10

    #@250
    .line 239
    const/4 v13, 0x0

    #@251
    :goto_8
    move/from16 v0, v23

    #@253
    if-ge v13, v0, :cond_10

    #@255
    .line 240
    move-object/from16 v0, v25

    #@257
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25a
    move-result-object v28

    #@25b
    check-cast v28, Landroid/content/pm/UserInfo;

    #@25d
    move-object/from16 v0, v28

    #@25f
    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    #@261
    .line 242
    .local v14, "id":I
    const-string/jumbo v28, "lockscreen.disabled"

    #@264
    const/16 v29, 0x0

    #@266
    move-object/from16 v0, p0

    #@268
    move-object/from16 v1, v28

    #@26a
    move/from16 v2, v29

    #@26c
    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    #@26f
    move-result v28

    #@270
    if-eqz v28, :cond_f

    #@272
    .line 243
    const-string/jumbo v28, "lockscreen.disabled"

    #@275
    const/16 v29, 0x0

    #@277
    move-object/from16 v0, p0

    #@279
    move-object/from16 v1, v28

    #@27b
    move/from16 v2, v29

    #@27d
    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    #@280
    .line 239
    :cond_f
    add-int/lit8 v13, v13, 0x1

    #@282
    goto :goto_8

    #@283
    .line 248
    .end local v14    # "id":I
    :cond_10
    const-string/jumbo v28, "migrated_lockscreen_disabled"

    #@286
    const-string/jumbo v29, "true"

    #@289
    const/16 v30, 0x0

    #@28b
    move-object/from16 v0, p0

    #@28d
    move-object/from16 v1, v28

    #@28f
    move-object/from16 v2, v29

    #@291
    move/from16 v3, v30

    #@293
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@296
    .line 249
    const-string/jumbo v28, "LockSettingsService"

    #@299
    const-string/jumbo v29, "Migrated lockscreen disabled flag"

    #@29c
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@29f
    goto/16 :goto_5
.end method

.method private removeUser(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 715
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    #@5
    .line 717
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@8
    move-result-object v2

    #@9
    .line 718
    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    #@c
    .line 721
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@f
    move-result-object v1

    #@10
    .line 722
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_0

    #@12
    .line 723
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 714
    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 725
    :catch_0
    move-exception v0

    #@17
    .line 726
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettingsService"

    #@1a
    const-string/jumbo v4, "unable to clear GK secure user id"

    #@1d
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    goto :goto_0
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 364
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "user"

    #@5
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    check-cast v4, Landroid/os/UserManager;

    #@b
    .line 365
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@e
    move-result-object v0

    #@f
    .line 367
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v4, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@12
    move-result-object v3

    #@13
    .line 368
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .local v2, "pi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/content/pm/UserInfo;

    #@23
    .line 369
    .local v1, "pi":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    #@25
    invoke-virtual {v0, v5, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    #@28
    goto :goto_0

    #@29
    .line 363
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    .line 308
    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    #@7
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 309
    const-string/jumbo v0, "com.android.providers.settings"

    #@10
    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    #@13
    .line 306
    :cond_0
    return-void
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 374
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "user"

    #@5
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    check-cast v4, Landroid/os/UserManager;

    #@b
    .line 375
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@e
    move-result-object v0

    #@f
    .line 377
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v4, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@12
    move-result-object v3

    #@13
    .line 378
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .local v2, "pi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/content/pm/UserInfo;

    #@23
    .line 379
    .local v1, "pi":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    #@25
    invoke-virtual {v0, v5, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    #@28
    goto :goto_0

    #@29
    .line 373
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 594
    if-eqz p2, :cond_0

    #@2
    move-object/from16 v0, p2

    #@4
    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@6
    array-length v4, v4

    #@7
    if-nez v4, :cond_1

    #@9
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    .line 596
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@11
    return-object v4

    #@12
    .line 599
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_2

    #@18
    .line 600
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@1a
    return-object v4

    #@1b
    .line 603
    :cond_2
    move-object/from16 v0, p2

    #@1d
    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    #@1f
    if-nez v4, :cond_4

    #@21
    .line 604
    move-object/from16 v0, p7

    #@23
    move-object/from16 v1, p3

    #@25
    move/from16 v2, p1

    #@27
    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    #@2a
    move-result-object v11

    #@2b
    .line 605
    .local v11, "hash":[B
    move-object/from16 v0, p2

    #@2d
    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@2f
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_3

    #@35
    .line 606
    move-object/from16 v0, p7

    #@37
    move-object/from16 v1, p3

    #@39
    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    move-object/from16 v0, p0

    #@3f
    move/from16 v1, p1

    #@41
    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    #@44
    .line 608
    const/4 v4, 0x0

    #@45
    move-object/from16 v0, p7

    #@47
    move-object/from16 v1, p3

    #@49
    move/from16 v2, p1

    #@4b
    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    #@4e
    .line 609
    if-nez p4, :cond_4

    #@50
    .line 610
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@52
    return-object v4

    #@53
    .line 616
    :cond_3
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@55
    return-object v4

    #@56
    .line 621
    .end local v11    # "hash":[B
    :cond_4
    const/4 v14, 0x0

    #@57
    .line 622
    .local v14, "shouldReEnroll":Z
    if-eqz p4, :cond_9

    #@59
    .line 623
    const/4 v15, 0x0

    #@5a
    .line 624
    .local v15, "token":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@5d
    move-result-object v4

    #@5e
    .line 625
    move-object/from16 v0, p2

    #@60
    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@62
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    #@65
    move-result-object v9

    #@66
    move/from16 v5, p1

    #@68
    move-wide/from16 v6, p5

    #@6a
    .line 624
    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    #@6d
    move-result-object v10

    #@6e
    .line 626
    .local v10, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    #@71
    move-result v13

    #@72
    .line 627
    .local v13, "responseCode":I
    const/4 v4, 0x1

    #@73
    if-ne v13, v4, :cond_6

    #@75
    .line 628
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    #@77
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    #@7a
    move-result v4

    #@7b
    invoke-direct {v12, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    #@7e
    .line 656
    .end local v14    # "shouldReEnroll":Z
    .end local v15    # "token":[B
    .local v12, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@81
    move-result v4

    #@82
    if-nez v4, :cond_5

    #@84
    .line 658
    move-object/from16 v0, p0

    #@86
    move-object/from16 v1, p3

    #@88
    move/from16 v2, p1

    #@8a
    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    #@8d
    .line 659
    if-eqz v14, :cond_5

    #@8f
    .line 660
    move-object/from16 v0, p7

    #@91
    move-object/from16 v1, p3

    #@93
    move-object/from16 v2, p3

    #@95
    move/from16 v3, p1

    #@97
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    #@9a
    .line 664
    :cond_5
    return-object v12

    #@9b
    .line 629
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v14    # "shouldReEnroll":Z
    .restart local v15    # "token":[B
    :cond_6
    if-nez v13, :cond_8

    #@9d
    .line 630
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    #@a0
    move-result-object v15

    #@a1
    .line 631
    .local v15, "token":[B
    if-nez v15, :cond_7

    #@a3
    .line 633
    const-string/jumbo v4, "LockSettingsService"

    #@a6
    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    #@a9
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    .line 634
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@ae
    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    #@af
    .line 636
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_7
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    #@b2
    move-result v14

    #@b3
    .line 637
    .local v14, "shouldReEnroll":Z
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    #@b5
    invoke-direct {v12, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    #@b8
    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    #@b9
    .line 640
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v14, "shouldReEnroll":Z
    .local v15, "token":[B
    :cond_8
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@bb
    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    #@bc
    .line 643
    .end local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v13    # "responseCode":I
    .end local v15    # "token":[B
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@bf
    move-result-object v4

    #@c0
    .line 644
    move-object/from16 v0, p2

    #@c2
    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@c4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    #@c7
    move-result-object v6

    #@c8
    .line 643
    move/from16 v0, p1

    #@ca
    invoke-interface {v4, v0, v5, v6}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    #@cd
    move-result-object v10

    #@ce
    .line 645
    .restart local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    #@d1
    move-result v13

    #@d2
    .line 646
    .restart local v13    # "responseCode":I
    const/4 v4, 0x1

    #@d3
    if-ne v13, v4, :cond_a

    #@d5
    .line 647
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    #@d7
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    #@da
    move-result v4

    #@db
    invoke-direct {v12, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    #@de
    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    #@df
    .line 648
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_a
    if-nez v13, :cond_b

    #@e1
    .line 649
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    #@e4
    move-result v14

    #@e5
    .line 650
    .local v14, "shouldReEnroll":Z
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@e7
    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    #@e8
    .line 652
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v14, "shouldReEnroll":Z
    :cond_b
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@ea
    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 557
    const-wide/16 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move v6, p2

    #@6
    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 501
    const-wide/16 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move v6, p2

    #@6
    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public checkVoldPassword(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 669
    iget-boolean v3, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    #@4
    if-nez v3, :cond_0

    #@6
    .line 670
    return v4

    #@7
    .line 672
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    #@9
    .line 674
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@c
    .line 684
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    #@f
    move-result-object v2

    #@10
    .line 685
    .local v2, "service":Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 686
    .local v1, "password":Ljava/lang/String;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->clearPassword()V

    #@17
    .line 687
    if-nez v1, :cond_1

    #@19
    .line 688
    return v4

    #@1a
    .line 692
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@1c
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 693
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_2

    #@2c
    .line 695
    return v5

    #@2d
    .line 698
    :catch_0
    move-exception v0

    #@2e
    .line 702
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@30
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_3

    #@36
    .line 703
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3d
    move-result v3

    #@3e
    if-nez v3, :cond_3

    #@40
    .line 705
    return v5

    #@41
    .line 708
    :catch_1
    move-exception v0

    #@42
    .line 711
    :cond_3
    return v4
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@3
    .line 316
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 317
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    #@f
    .line 318
    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string/jumbo v1, "1"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    const-string/jumbo v1, "true"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result p2

    #@1f
    goto :goto_0

    #@20
    :cond_1
    const/4 p2, 0x1

    #@21
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@3
    .line 325
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 326
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    #@f
    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@12
    move-result-wide p2

    #@13
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@3
    .line 333
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 337
    const-string/jumbo v2, "lock_pattern_autolock"

    #@3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v0

    #@d
    .line 340
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@f
    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    const-string/jumbo v2, "1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 342
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 340
    return-object v2

    #@1c
    :cond_0
    :try_start_1
    const-string/jumbo v2, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 341
    :catchall_0
    move-exception v2

    #@21
    .line 342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 341
    throw v2

    #@25
    .line 346
    .end local v0    # "ident":J
    :cond_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@27
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    return-object v2
.end method

.method public havePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public havePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 291
    if-eqz p2, :cond_0

    #@5
    const-string/jumbo v0, "1"

    #@8
    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    #@b
    .line 289
    return-void

    #@c
    .line 291
    :cond_0
    const-string/jumbo v0, "0"

    #@f
    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 448
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    #@4
    move-result-object v0

    #@5
    .line 450
    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    #@7
    .line 451
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    #@e
    .line 452
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@10
    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    #@13
    .line 453
    invoke-direct {p0, v3, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@16
    .line 454
    return-void

    #@17
    .line 457
    :cond_0
    if-nez v0, :cond_2

    #@19
    .line 458
    if-eqz p2, :cond_1

    #@1b
    .line 459
    const-string/jumbo v2, "LockSettingsService"

    #@1e
    const-string/jumbo v3, "Saved credential provided, but none stored"

    #@21
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 461
    :cond_1
    const/4 p2, 0x0

    #@25
    .line 464
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    #@28
    move-result-object v1

    #@29
    .line 465
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_3

    #@2b
    .line 466
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2d
    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    #@30
    .line 447
    :goto_0
    return-void

    #@31
    .line 468
    :cond_3
    const-string/jumbo v2, "LockSettingsService"

    #@34
    const-string/jumbo v3, "Failed to enroll password"

    #@37
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    goto :goto_0
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 420
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    #@4
    move-result-object v0

    #@5
    .line 422
    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    #@7
    .line 423
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    #@e
    .line 424
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@10
    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    #@13
    .line 425
    invoke-direct {p0, v3, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@16
    .line 426
    return-void

    #@17
    .line 429
    :cond_0
    if-nez v0, :cond_2

    #@19
    .line 430
    if-eqz p2, :cond_1

    #@1b
    .line 431
    const-string/jumbo v2, "LockSettingsService"

    #@1e
    const-string/jumbo v3, "Saved credential provided, but none stored"

    #@21
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 433
    :cond_1
    const/4 p2, 0x0

    #@25
    .line 436
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    #@28
    move-result-object v1

    #@29
    .line 437
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_3

    #@2b
    .line 438
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2d
    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    #@30
    .line 419
    :goto_0
    return-void

    #@31
    .line 440
    :cond_3
    const-string/jumbo v2, "LockSettingsService"

    #@34
    const-string/jumbo v3, "Failed to enroll pattern"

    #@37
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    goto :goto_0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 297
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    #@a
    .line 295
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 303
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    #@6
    .line 301
    return-void
.end method

.method public systemReady()V
    .locals 3

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    #@3
    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 141
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    #@c
    .line 134
    return-void

    #@d
    .line 138
    :catch_0
    move-exception v0

    #@e
    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockSettingsService"

    #@11
    const-string/jumbo v2, "Failure retrieving IGateKeeperService"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 563
    const/4 v3, 0x1

    #@1
    move-object v1, p0

    #@2
    move-object v2, p1

    #@3
    move-wide v4, p2

    #@4
    move v6, p4

    #@5
    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 507
    const/4 v3, 0x1

    #@1
    move-object v1, p0

    #@2
    move-object v2, p1

    #@3
    move-wide v4, p2

    #@4
    move v6, p4

    #@5
    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
