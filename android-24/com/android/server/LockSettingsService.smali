.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$1;,
        Lcom/android/server/LockSettingsService$CredentialUtil;,
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$Lifecycle;,
        Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;
    }
.end annotation


# static fields
.field private static final ACTION_NULL:Landroid/content/Intent;

.field private static final DEBUG:Z = false

.field private static final FBE_ENCRYPTED_NOTIFICATION:I = 0x0

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFirstCallToVold:Z

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private final mStorage:Lcom/android/server/LockSettingsStorage;

.field private final mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStrongAuth;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

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

.method static synthetic -wrap0(Lcom/android/server/LockSettingsService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->maybeShowEncryptionNotifications()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/LockSettingsService;IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "unknownUser"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->removeUser(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/LockSettingsService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/LockSettingsService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 138
    const/16 v0, 0x3f2

    #@7
    const/16 v1, 0x3f8

    #@9
    .line 139
    const/16 v2, 0x3e8

    #@b
    .line 138
    filled-new-array {v0, v1, v3, v2}, [I

    #@e
    move-result-object v0

    #@f
    sput-object v0, Lcom/android/server/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    #@11
    .line 143
    new-instance v0, Landroid/content/Intent;

    #@13
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19
    sput-object v0, Lcom/android/server/LockSettingsService;->ACTION_NULL:Landroid/content/Intent;

    #@1b
    .line 144
    sget-object v0, Lcom/android/server/LockSettingsService;->ACTION_NULL:Landroid/content/Intent;

    #@1d
    const-string/jumbo v1, "android.intent.category.HOME"

    #@20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@23
    .line 1541
    const/16 v0, 0x10

    #@25
    new-array v0, v0, [Ljava/lang/String;

    #@27
    .line 1542
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    #@2a
    aput-object v1, v0, v3

    #@2c
    .line 1543
    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    #@2f
    aput-object v1, v0, v4

    #@31
    .line 1544
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    #@34
    aput-object v1, v0, v5

    #@36
    .line 1545
    const-string/jumbo v1, "lockscreen.password_type"

    #@39
    aput-object v1, v0, v6

    #@3b
    .line 1546
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    #@3e
    aput-object v1, v0, v7

    #@40
    .line 1547
    const-string/jumbo v1, "lockscreen.password_salt"

    #@43
    const/4 v2, 0x5

    #@44
    aput-object v1, v0, v2

    #@46
    .line 1548
    const-string/jumbo v1, "lockscreen.disabled"

    #@49
    const/4 v2, 0x6

    #@4a
    aput-object v1, v0, v2

    #@4c
    .line 1549
    const-string/jumbo v1, "lockscreen.options"

    #@4f
    const/4 v2, 0x7

    #@50
    aput-object v1, v0, v2

    #@52
    .line 1550
    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    #@55
    const/16 v2, 0x8

    #@57
    aput-object v1, v0, v2

    #@59
    .line 1551
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    #@5c
    const/16 v2, 0x9

    #@5e
    aput-object v1, v0, v2

    #@60
    .line 1552
    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    #@63
    const/16 v2, 0xa

    #@65
    aput-object v1, v0, v2

    #@67
    .line 1553
    const-string/jumbo v1, "lockscreen.passwordhistory"

    #@6a
    const/16 v2, 0xb

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 1554
    const-string/jumbo v1, "lock_pattern_autolock"

    #@71
    const/16 v2, 0xc

    #@73
    aput-object v1, v0, v2

    #@75
    .line 1555
    const-string/jumbo v1, "lock_biometric_weak_flags"

    #@78
    const/16 v2, 0xd

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 1556
    const-string/jumbo v1, "lock_pattern_visible_pattern"

    #@7f
    const/16 v2, 0xe

    #@81
    aput-object v1, v0, v2

    #@83
    .line 1557
    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    #@86
    const/16 v2, 0xf

    #@88
    aput-object v1, v0, v2

    #@8a
    .line 1541
    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    #@8c
    .line 1561
    new-array v0, v5, [Ljava/lang/String;

    #@8e
    .line 1562
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    #@91
    aput-object v1, v0, v3

    #@93
    .line 1563
    const-string/jumbo v1, "lock_screen_owner_info"

    #@96
    aput-object v1, v0, v4

    #@98
    .line 1561
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@9a
    .line 1567
    new-array v0, v7, [Ljava/lang/String;

    #@9c
    .line 1568
    const-string/jumbo v1, "lockscreen.password_salt"

    #@9f
    aput-object v1, v0, v3

    #@a1
    .line 1569
    const-string/jumbo v1, "lockscreen.passwordhistory"

    #@a4
    aput-object v1, v0, v4

    #@a6
    .line 1570
    const-string/jumbo v1, "lockscreen.password_type"

    #@a9
    aput-object v1, v0, v5

    #@ab
    .line 1571
    const-string/jumbo v1, "lockscreen.profilechallenge"

    #@ae
    aput-object v1, v0, v6

    #@b0
    .line 1567
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@b2
    .line 1574
    new-array v0, v5, [Ljava/lang/String;

    #@b4
    .line 1575
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    #@b7
    aput-object v1, v0, v3

    #@b9
    .line 1576
    const-string/jumbo v1, "lock_screen_owner_info"

    #@bc
    aput-object v1, v0, v4

    #@be
    .line 1574
    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    #@c0
    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 260
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    #@4
    .line 119
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    #@b
    .line 133
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    #@11
    .line 420
    new-instance v0, Lcom/android/server/LockSettingsService$1;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    #@16
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@18
    .line 261
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@1a
    .line 262
    new-instance v0, Landroid/os/Handler;

    #@1c
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    #@21
    .line 263
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth;

    #@23
    invoke-direct {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;-><init>(Landroid/content/Context;)V

    #@26
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@28
    .line 266
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #@2a
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@2f
    .line 267
    const/4 v0, 0x1

    #@30
    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    #@32
    .line 269
    new-instance v3, Landroid/content/IntentFilter;

    #@34
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@37
    .line 270
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@3a
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3d
    .line 271
    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    #@40
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@43
    .line 272
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@46
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@49
    .line 273
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@4b
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@4d
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@4f
    move-object v5, v4

    #@50
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@53
    .line 275
    new-instance v0, Lcom/android/server/LockSettingsStorage;

    #@55
    new-instance v1, Lcom/android/server/LockSettingsService$2;

    #@57
    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    #@5a
    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    #@5d
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@5f
    .line 287
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@61
    const-string/jumbo v1, "notification"

    #@64
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    .line 286
    check-cast v0, Landroid/app/NotificationManager;

    #@6a
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    #@6c
    .line 288
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@6e
    const-string/jumbo v1, "user"

    #@71
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Landroid/os/UserManager;

    #@77
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@79
    .line 289
    new-instance v0, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    #@7b
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@7d
    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;-><init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V

    #@80
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    #@82
    .line 290
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    #@84
    invoke-virtual {v0}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->register()V

    #@87
    .line 260
    return-void
.end method

.method private addUserKeyAuth(I[B[B)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1139
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v3

    #@a
    .line 1140
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    #@d
    move-result-object v2

    #@e
    .line 1141
    .local v2, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v0

    #@12
    .line 1143
    .local v0, "callingId":J
    :try_start_0
    iget v4, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    #@14
    invoke-interface {v2, p1, v4, p2, p3}, Landroid/os/storage/IMountService;->addUserKeyAuth(II[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 1145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 1138
    return-void

    #@1b
    .line 1144
    :catchall_0
    move-exception v4

    #@1c
    .line 1145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 1144
    throw v4
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@5
    const-string/jumbo v2, "LockSettingsRead"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 593
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 600
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
    .line 601
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@c
    aget-object v2, v3, v1

    #@e
    .line 602
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
    .line 604
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
    .line 605
    const-string/jumbo v5, " needs permission "

    #@34
    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 605
    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    #@3b
    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 605
    const-string/jumbo v5, " to read "

    #@42
    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 606
    const-string/jumbo v5, " for user "

    #@4d
    .line 604
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
    .line 600
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 610
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
    .line 611
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@68
    aget-object v2, v3, v1

    #@6a
    .line 612
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
    .line 614
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
    .line 615
    const-string/jumbo v5, " needs permission "

    #@90
    .line 614
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    .line 615
    const-string/jumbo v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@97
    .line 614
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    .line 615
    const-string/jumbo v5, " to read "

    #@9e
    .line 614
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    .line 616
    const-string/jumbo v5, " for user "

    #@a9
    .line 614
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
    .line 610
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@bb
    goto :goto_1

    #@bc
    .line 597
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@5
    const-string/jumbo v2, "LockSettingsWrite"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 589
    return-void
.end method

.method private clearUserKeyProtection(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1118
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    #@4
    .line 1117
    return-void
.end method

.method private doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1322
    new-instance v8, Lcom/android/server/LockSettingsService$6;

    #@2
    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$6;-><init>(Lcom/android/server/LockSettingsService;)V

    #@5
    move-object v1, p0

    #@6
    move/from16 v2, p6

    #@8
    move-object v3, p2

    #@9
    move-object v4, p1

    #@a
    move v5, p3

    #@b
    move-wide v6, p4

    #@c
    .line 1321
    invoke-direct/range {v1 .. v8}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
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
    .line 1311
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@3
    .line 1312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Password can\'t be null or empty"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@14
    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@17
    move-result-object v2

    #@18
    .local v2, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    move-object v0, p0

    #@19
    move-object v1, p1

    #@1a
    move v3, p2

    #@1b
    move-wide v4, p3

    #@1c
    move v6, p5

    #@1d
    .line 1316
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method private doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1227
    if-eqz p2, :cond_1

    #@2
    iget-boolean v11, p2, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    #@4
    .line 1230
    .local v11, "shouldReEnrollBaseZero":Z
    :goto_0
    if-eqz v11, :cond_2

    #@6
    .line 1231
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v6

    #@a
    .line 1238
    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/android/server/LockSettingsService$5;

    #@c
    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$5;-><init>(Lcom/android/server/LockSettingsService;)V

    #@f
    move-object v3, p0

    #@10
    move/from16 v4, p6

    #@12
    move-object v5, p2

    #@13
    move v7, p3

    #@14
    move-wide/from16 v8, p4

    #@16
    .line 1236
    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@19
    move-result-object v2

    #@1a
    .line 1258
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_0

    #@20
    if-eqz v11, :cond_0

    #@22
    .line 1260
    move/from16 v0, p6

    #@24
    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    #@27
    .line 1263
    :cond_0
    return-object v2

    #@28
    .line 1227
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "patternToVerify":Ljava/lang/String;
    .end local v11    # "shouldReEnrollBaseZero":Z
    :cond_1
    const/4 v11, 0x0

    #@29
    goto :goto_0

    #@2a
    .line 1233
    .restart local v11    # "shouldReEnrollBaseZero":Z
    :cond_2
    move-object v6, p1

    #@2b
    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_1
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
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
    .line 1217
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@3
    .line 1218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Pattern can\'t be null or empty"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@14
    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@17
    move-result-object v2

    #@18
    .local v2, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    move-object v0, p0

    #@19
    move-object v1, p1

    #@1a
    move v3, p2

    #@1b
    move-wide v4, p3

    #@1c
    move v6, p5

    #@1d
    .line 1222
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@20
    move-result-object v0

    #@21
    return-object v0
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
    .line 1077
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@4
    .line 1078
    if-nez p2, :cond_0

    #@6
    .line 1079
    const/4 v0, 0x0

    #@7
    .line 1081
    :goto_0
    if-nez p3, :cond_1

    #@9
    .line 1082
    const/4 v3, 0x0

    #@a
    .line 1084
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v4, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    #@11
    move-result-object v2

    #@12
    .line 1087
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    #@14
    .line 1088
    return-object v5

    #@15
    .line 1080
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object v0

    #@19
    .local v0, "enrolledCredentialBytes":[B
    goto :goto_0

    #@1a
    .line 1083
    .end local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    #@1d
    move-result-object v3

    #@1e
    .local v3, "toEnrollBytes":[B
    goto :goto_1

    #@1f
    .line 1091
    .end local v3    # "toEnrollBytes":[B
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    #@22
    move-result-object v1

    #@23
    .line 1092
    .local v1, "hash":[B
    if-eqz v1, :cond_3

    #@25
    .line 1093
    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@28
    .line 1098
    :goto_2
    return-object v1

    #@29
    .line 1096
    :cond_3
    const-string/jumbo v4, "LockSettingsService"

    #@2c
    const-string/jumbo v5, "Throttled while enrolling a password"

    #@2f
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    goto :goto_2
.end method

.method private fixateNewestUserKeyAuth(I)V
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1151
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    #@3
    move-result-object v2

    #@4
    .line 1152
    .local v2, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 1154
    .local v0, "callingId":J
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 1156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e
    .line 1150
    return-void

    #@f
    .line 1155
    :catchall_0
    move-exception v3

    #@10
    .line 1156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 1155
    throw v3
.end method

.method private getCurrentHandle(I)[B
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 826
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    #@5
    move-result v2

    #@6
    .line 827
    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_0

    #@9
    .line 842
    const/4 v1, 0x0

    #@a
    .line 847
    :goto_0
    const/4 v3, -0x1

    #@b
    if-eq v2, v3, :cond_0

    #@d
    if-nez v1, :cond_0

    #@f
    .line 848
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
    .line 851
    :cond_0
    return-object v1

    #@31
    .line 829
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@33
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@36
    move-result-object v0

    #@37
    .line 830
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    #@39
    .line 831
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@3b
    .local v1, "currentHandle":[B
    goto :goto_0

    #@3c
    .line 832
    .end local v1    # "currentHandle":[B
    :cond_1
    const/4 v1, 0x0

    #@3d
    .local v1, "currentHandle":[B
    goto :goto_0

    #@3e
    .line 835
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@40
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@43
    move-result-object v0

    #@44
    .line 836
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    #@46
    .line 837
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@48
    .local v1, "currentHandle":[B
    goto :goto_0

    #@49
    .line 838
    .end local v1    # "currentHandle":[B
    :cond_2
    const/4 v1, 0x0

    #@4a
    .local v1, "currentHandle":[B
    goto :goto_0

    #@4b
    .line 827
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0xc

    #@2
    const/4 v9, 0x0

    #@3
    .line 736
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@5
    invoke-virtual {v7, p1}, Lcom/android/server/LockSettingsStorage;->readChildProfileLock(I)[B

    #@8
    move-result-object v6

    #@9
    .line 737
    .local v6, "storedData":[B
    if-nez v6, :cond_0

    #@b
    .line 738
    new-instance v7, Ljava/io/FileNotFoundException;

    #@d
    const-string/jumbo v8, "Child profile lock file not found"

    #@10
    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@13
    throw v7

    #@14
    .line 740
    :cond_0
    const/4 v7, 0x0

    #@15
    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@18
    move-result-object v4

    #@19
    .line 742
    .local v4, "iv":[B
    array-length v7, v6

    #@1a
    .line 741
    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@1d
    move-result-object v3

    #@1e
    .line 744
    .local v3, "encryptedPassword":[B
    const-string/jumbo v7, "AndroidKeyStore"

    #@21
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@24
    move-result-object v5

    #@25
    .line 745
    .local v5, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v5, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    #@28
    .line 747
    new-instance v7, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v8, "profile_key_name_decrypt_"

    #@30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 746
    invoke-virtual {v5, v7, v9}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Ljavax/crypto/SecretKey;

    #@42
    .line 749
    .local v1, "decryptionKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v7, "AES/GCM/NoPadding"

    #@45
    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@48
    move-result-object v0

    #@49
    .line 752
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    #@4b
    const/16 v8, 0x80

    #@4d
    invoke-direct {v7, v8, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    #@50
    const/4 v8, 0x2

    #@51
    invoke-virtual {v0, v8, v1, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@54
    .line 753
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@57
    move-result-object v2

    #@58
    .line 754
    .local v2, "decryptionResult":[B
    new-instance v7, Ljava/lang/String;

    #@5a
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@5c
    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@5f
    return-object v7
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
    .line 1597
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1598
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v1

    #@a
    .line 1602
    :cond_0
    :try_start_1
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    #@d
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    .line 1603
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@13
    .line 1604
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
    .line 1605
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    #@23
    .line 1606
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit p0

    #@26
    return-object v1

    #@27
    .line 1609
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
    .line 1610
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
    .line 1580
    const-string/jumbo v1, "mount"

    #@4
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 1581
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@a
    .line 1582
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 1584
    :cond_0
    return-object v2
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 890
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@11
    move-result v0

    #@12
    .line 889
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 884
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@3
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 885
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@f
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 884
    :cond_0
    :goto_0
    return v0

    #@16
    .line 885
    :cond_1
    const/4 v0, 0x1

    #@17
    goto :goto_0
.end method

.method private maybeShowEncryptionNotifications()V
    .locals 7

    #@0
    .prologue
    .line 299
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@5
    move-result-object v4

    #@6
    .line 300
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@a
    move-result v5

    #@b
    if-ge v0, v5, :cond_2

    #@d
    .line 301
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/content/pm/UserInfo;

    #@13
    .line 302
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@16
    move-result-object v3

    #@17
    .line 303
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v5, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    #@1c
    move-result v5

    #@1d
    if-nez v5, :cond_0

    #@1f
    .line 304
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_1

    #@25
    .line 305
    invoke-direct {p0, v3}, Lcom/android/server/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;)V

    #@28
    .line 300
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 307
    :cond_1
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@2d
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@32
    move-result-object v1

    #@33
    .line 308
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@35
    .line 309
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@37
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    #@3e
    move-result v5

    #@3f
    .line 308
    if-eqz v5, :cond_0

    #@41
    .line 310
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@43
    invoke-virtual {v5, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    #@46
    move-result v5

    #@47
    if-nez v5, :cond_0

    #@49
    .line 313
    invoke-direct {p0, v3}, Lcom/android/server/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    #@4c
    goto :goto_1

    #@4d
    .line 298
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_2
    return-void
.end method

.method private migrateOldData()V
    .locals 34

    #@0
    .prologue
    .line 461
    :try_start_0
    const-string/jumbo v30, "migrated"

    #@3
    const/16 v31, 0x0

    #@5
    const/16 v32, 0x0

    #@7
    move-object/from16 v0, p0

    #@9
    move-object/from16 v1, v30

    #@b
    move-object/from16 v2, v31

    #@d
    move/from16 v3, v32

    #@f
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@12
    move-result-object v30

    #@13
    if-nez v30, :cond_2

    #@15
    .line 462
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@19
    move-object/from16 v30, v0

    #@1b
    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1e
    move-result-object v10

    #@1f
    .line 463
    .local v10, "cr":Landroid/content/ContentResolver;
    sget-object v31, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    #@21
    const/16 v30, 0x0

    #@23
    move-object/from16 v0, v31

    #@25
    array-length v0, v0

    #@26
    move/from16 v32, v0

    #@28
    :goto_0
    move/from16 v0, v30

    #@2a
    move/from16 v1, v32

    #@2c
    if-ge v0, v1, :cond_1

    #@2e
    aget-object v28, v31, v30

    #@30
    .line 464
    .local v28, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v28

    #@32
    invoke-static {v10, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v29

    #@36
    .line 465
    .local v29, "value":Ljava/lang/String;
    if-eqz v29, :cond_0

    #@38
    .line 466
    const/16 v33, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    move-object/from16 v1, v28

    #@3e
    move-object/from16 v2, v29

    #@40
    move/from16 v3, v33

    #@42
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@45
    .line 463
    :cond_0
    add-int/lit8 v30, v30, 0x1

    #@47
    goto :goto_0

    #@48
    .line 470
    .end local v28    # "validSetting":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v30, "migrated"

    #@4b
    const-string/jumbo v31, "true"

    #@4e
    const/16 v32, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    move-object/from16 v1, v30

    #@54
    move-object/from16 v2, v31

    #@56
    move/from16 v3, v32

    #@58
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@5b
    .line 471
    const-string/jumbo v30, "LockSettingsService"

    #@5e
    const-string/jumbo v31, "Migrated lock settings to new location"

    #@61
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 475
    .end local v10    # "cr":Landroid/content/ContentResolver;
    :cond_2
    const-string/jumbo v30, "migrated_user_specific"

    #@67
    const/16 v31, 0x0

    #@69
    const/16 v32, 0x0

    #@6b
    move-object/from16 v0, p0

    #@6d
    move-object/from16 v1, v30

    #@6f
    move-object/from16 v2, v31

    #@71
    move/from16 v3, v32

    #@73
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@76
    move-result-object v30

    #@77
    if-nez v30, :cond_9

    #@79
    .line 476
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@7d
    move-object/from16 v30, v0

    #@7f
    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@82
    move-result-object v10

    #@83
    .line 477
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@87
    move-object/from16 v30, v0

    #@89
    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@8c
    move-result-object v27

    #@8d
    .line 478
    .local v27, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v21, 0x0

    #@8f
    .local v21, "user":I
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    #@92
    move-result v30

    #@93
    move/from16 v0, v21

    #@95
    move/from16 v1, v30

    #@97
    if-ge v0, v1, :cond_8

    #@99
    .line 480
    move-object/from16 v0, v27

    #@9b
    move/from16 v1, v21

    #@9d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a0
    move-result-object v30

    #@a1
    check-cast v30, Landroid/content/pm/UserInfo;

    #@a3
    move-object/from16 v0, v30

    #@a5
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@a7
    move/from16 v25, v0

    #@a9
    .line 481
    .local v25, "userId":I
    const-string/jumbo v6, "lock_screen_owner_info"

    #@ac
    .line 482
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v30, "lock_screen_owner_info"

    #@af
    move-object/from16 v0, v30

    #@b1
    move/from16 v1, v25

    #@b3
    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@b6
    move-result-object v16

    #@b7
    .line 483
    .local v16, "ownerInfo":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ba
    move-result v30

    #@bb
    if-nez v30, :cond_3

    #@bd
    .line 484
    const-string/jumbo v30, "lock_screen_owner_info"

    #@c0
    move-object/from16 v0, p0

    #@c2
    move-object/from16 v1, v30

    #@c4
    move-object/from16 v2, v16

    #@c6
    move/from16 v3, v25

    #@c8
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@cb
    .line 485
    const-string/jumbo v30, "lock_screen_owner_info"

    #@ce
    const-string/jumbo v31, ""

    #@d1
    move-object/from16 v0, v30

    #@d3
    move-object/from16 v1, v31

    #@d5
    move/from16 v2, v25

    #@d7
    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@da
    .line 491
    :cond_3
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@dd
    .line 494
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v30, "lock_screen_owner_info_enabled"

    #@e0
    move-object/from16 v0, v30

    #@e2
    move/from16 v1, v25

    #@e4
    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e7
    move-result v15

    #@e8
    .line 495
    .local v15, "ivalue":I
    if-eqz v15, :cond_5

    #@ea
    const/4 v12, 0x1

    #@eb
    .line 496
    .local v12, "enabled":Z
    :goto_2
    const-string/jumbo v31, "lock_screen_owner_info_enabled"

    #@ee
    if-eqz v12, :cond_6

    #@f0
    const/16 v30, 0x1

    #@f2
    :goto_3
    move/from16 v0, v30

    #@f4
    int-to-long v0, v0

    #@f5
    move-wide/from16 v32, v0

    #@f7
    move-object/from16 v0, p0

    #@f9
    move-object/from16 v1, v31

    #@fb
    move-wide/from16 v2, v32

    #@fd
    move/from16 v4, v25

    #@ff
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@102
    .line 503
    .end local v12    # "enabled":Z
    .end local v15    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string/jumbo v30, "lock_screen_owner_info_enabled"

    #@105
    const/16 v31, 0x0

    #@107
    move-object/from16 v0, v30

    #@109
    move/from16 v1, v31

    #@10b
    move/from16 v2, v25

    #@10d
    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@110
    .line 478
    add-int/lit8 v21, v21, 0x1

    #@112
    goto/16 :goto_1

    #@114
    .line 495
    .restart local v15    # "ivalue":I
    :cond_5
    const/4 v12, 0x0

    #@115
    .restart local v12    # "enabled":Z
    goto :goto_2

    #@116
    .line 496
    :cond_6
    const/16 v30, 0x0

    #@118
    goto :goto_3

    #@119
    .line 497
    .end local v12    # "enabled":Z
    .end local v15    # "ivalue":I
    :catch_0
    move-exception v11

    #@11a
    .line 499
    .local v11, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11d
    move-result v30

    #@11e
    if-nez v30, :cond_4

    #@120
    .line 500
    const-string/jumbo v30, "lock_screen_owner_info_enabled"

    #@123
    const-wide/16 v32, 0x1

    #@125
    move-object/from16 v0, p0

    #@127
    move-object/from16 v1, v30

    #@129
    move-wide/from16 v2, v32

    #@12b
    move/from16 v4, v25

    #@12d
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@130
    goto :goto_4

    #@131
    .line 584
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v16    # "ownerInfo":Ljava/lang/String;
    .end local v21    # "user":I
    .end local v25    # "userId":I
    .end local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v17

    #@132
    .line 585
    .local v17, "re":Landroid/os/RemoteException;
    const-string/jumbo v30, "LockSettingsService"

    #@135
    const-string/jumbo v31, "Unable to migrate old data"

    #@138
    move-object/from16 v0, v30

    #@13a
    move-object/from16 v1, v31

    #@13c
    move-object/from16 v2, v17

    #@13e
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@141
    .line 457
    .end local v17    # "re":Landroid/os/RemoteException;
    :cond_7
    return-void

    #@142
    .line 506
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    .restart local v21    # "user":I
    .restart local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string/jumbo v30, "migrated_user_specific"

    #@145
    const-string/jumbo v31, "true"

    #@148
    const/16 v32, 0x0

    #@14a
    move-object/from16 v0, p0

    #@14c
    move-object/from16 v1, v30

    #@14e
    move-object/from16 v2, v31

    #@150
    move/from16 v3, v32

    #@152
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@155
    .line 507
    const-string/jumbo v30, "LockSettingsService"

    #@158
    const-string/jumbo v31, "Migrated per-user lock settings to new location"

    #@15b
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@15e
    .line 511
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v21    # "user":I
    .end local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string/jumbo v30, "migrated_biometric_weak"

    #@161
    const/16 v31, 0x0

    #@163
    const/16 v32, 0x0

    #@165
    move-object/from16 v0, p0

    #@167
    move-object/from16 v1, v30

    #@169
    move-object/from16 v2, v31

    #@16b
    move/from16 v3, v32

    #@16d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@170
    move-result-object v30

    #@171
    if-nez v30, :cond_c

    #@173
    .line 512
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@177
    move-object/from16 v30, v0

    #@179
    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@17c
    move-result-object v27

    #@17d
    .line 513
    .restart local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v13, 0x0

    #@17e
    .local v13, "i":I
    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    #@181
    move-result v30

    #@182
    move/from16 v0, v30

    #@184
    if-ge v13, v0, :cond_b

    #@186
    .line 514
    move-object/from16 v0, v27

    #@188
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18b
    move-result-object v30

    #@18c
    check-cast v30, Landroid/content/pm/UserInfo;

    #@18e
    move-object/from16 v0, v30

    #@190
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@192
    move/from16 v25, v0

    #@194
    .line 515
    .restart local v25    # "userId":I
    const-string/jumbo v30, "lockscreen.password_type"

    #@197
    .line 516
    const-wide/16 v32, 0x0

    #@199
    .line 515
    move-object/from16 v0, p0

    #@19b
    move-object/from16 v1, v30

    #@19d
    move-wide/from16 v2, v32

    #@19f
    move/from16 v4, v25

    #@1a1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    #@1a4
    move-result-wide v22

    #@1a5
    .line 518
    .local v22, "type":J
    const-string/jumbo v30, "lockscreen.password_type_alternate"

    #@1a8
    .line 519
    const-wide/16 v32, 0x0

    #@1aa
    .line 518
    move-object/from16 v0, p0

    #@1ac
    move-object/from16 v1, v30

    #@1ae
    move-wide/from16 v2, v32

    #@1b0
    move/from16 v4, v25

    #@1b2
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    #@1b5
    move-result-wide v8

    #@1b6
    .line 521
    .local v8, "alternateType":J
    const-wide/32 v30, 0x8000

    #@1b9
    cmp-long v30, v22, v30

    #@1bb
    if-nez v30, :cond_a

    #@1bd
    .line 522
    const-string/jumbo v30, "lockscreen.password_type"

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    move-object/from16 v1, v30

    #@1c4
    move/from16 v2, v25

    #@1c6
    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    #@1c9
    .line 526
    :cond_a
    const-string/jumbo v30, "lockscreen.password_type_alternate"

    #@1cc
    .line 527
    const-wide/16 v32, 0x0

    #@1ce
    .line 526
    move-object/from16 v0, p0

    #@1d0
    move-object/from16 v1, v30

    #@1d2
    move-wide/from16 v2, v32

    #@1d4
    move/from16 v4, v25

    #@1d6
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    #@1d9
    .line 513
    add-int/lit8 v13, v13, 0x1

    #@1db
    goto :goto_5

    #@1dc
    .line 530
    .end local v8    # "alternateType":J
    .end local v22    # "type":J
    .end local v25    # "userId":I
    :cond_b
    const-string/jumbo v30, "migrated_biometric_weak"

    #@1df
    const-string/jumbo v31, "true"

    #@1e2
    const/16 v32, 0x0

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    move-object/from16 v1, v30

    #@1e8
    move-object/from16 v2, v31

    #@1ea
    move/from16 v3, v32

    #@1ec
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@1ef
    .line 531
    const-string/jumbo v30, "LockSettingsService"

    #@1f2
    const-string/jumbo v31, "Migrated biometric weak to use the fallback instead"

    #@1f5
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f8
    .line 537
    .end local v13    # "i":I
    .end local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const-string/jumbo v30, "migrated_lockscreen_disabled"

    #@1fb
    const/16 v31, 0x0

    #@1fd
    const/16 v32, 0x0

    #@1ff
    move-object/from16 v0, p0

    #@201
    move-object/from16 v1, v30

    #@203
    move-object/from16 v2, v31

    #@205
    move/from16 v3, v32

    #@207
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@20a
    move-result-object v30

    #@20b
    if-nez v30, :cond_11

    #@20d
    .line 538
    move-object/from16 v0, p0

    #@20f
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@211
    move-object/from16 v30, v0

    #@213
    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@216
    move-result-object v27

    #@217
    .line 539
    .restart local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    #@21a
    move-result v24

    #@21b
    .line 540
    .local v24, "userCount":I
    const/16 v20, 0x0

    #@21d
    .line 541
    .local v20, "switchableUsers":I
    const/4 v13, 0x0

    #@21e
    .restart local v13    # "i":I
    :goto_6
    move/from16 v0, v24

    #@220
    if-ge v13, v0, :cond_e

    #@222
    .line 542
    move-object/from16 v0, v27

    #@224
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@227
    move-result-object v30

    #@228
    check-cast v30, Landroid/content/pm/UserInfo;

    #@22a
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    #@22d
    move-result v30

    #@22e
    if-eqz v30, :cond_d

    #@230
    .line 543
    add-int/lit8 v20, v20, 0x1

    #@232
    .line 541
    :cond_d
    add-int/lit8 v13, v13, 0x1

    #@234
    goto :goto_6

    #@235
    .line 547
    :cond_e
    const/16 v30, 0x1

    #@237
    move/from16 v0, v20

    #@239
    move/from16 v1, v30

    #@23b
    if-le v0, v1, :cond_10

    #@23d
    .line 548
    const/4 v13, 0x0

    #@23e
    :goto_7
    move/from16 v0, v24

    #@240
    if-ge v13, v0, :cond_10

    #@242
    .line 549
    move-object/from16 v0, v27

    #@244
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@247
    move-result-object v30

    #@248
    check-cast v30, Landroid/content/pm/UserInfo;

    #@24a
    move-object/from16 v0, v30

    #@24c
    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    #@24e
    .line 551
    .local v14, "id":I
    const-string/jumbo v30, "lockscreen.disabled"

    #@251
    const/16 v31, 0x0

    #@253
    move-object/from16 v0, p0

    #@255
    move-object/from16 v1, v30

    #@257
    move/from16 v2, v31

    #@259
    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    #@25c
    move-result v30

    #@25d
    if-eqz v30, :cond_f

    #@25f
    .line 552
    const-string/jumbo v30, "lockscreen.disabled"

    #@262
    const/16 v31, 0x0

    #@264
    move-object/from16 v0, p0

    #@266
    move-object/from16 v1, v30

    #@268
    move/from16 v2, v31

    #@26a
    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    #@26d
    .line 548
    :cond_f
    add-int/lit8 v13, v13, 0x1

    #@26f
    goto :goto_7

    #@270
    .line 557
    .end local v14    # "id":I
    :cond_10
    const-string/jumbo v30, "migrated_lockscreen_disabled"

    #@273
    const-string/jumbo v31, "true"

    #@276
    const/16 v32, 0x0

    #@278
    move-object/from16 v0, p0

    #@27a
    move-object/from16 v1, v30

    #@27c
    move-object/from16 v2, v31

    #@27e
    move/from16 v3, v32

    #@280
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@283
    .line 558
    const-string/jumbo v30, "LockSettingsService"

    #@286
    const-string/jumbo v31, "Migrated lockscreen disabled flag"

    #@289
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@28c
    .line 561
    .end local v13    # "i":I
    .end local v20    # "switchableUsers":I
    .end local v24    # "userCount":I
    .end local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_11
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@290
    move-object/from16 v30, v0

    #@292
    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@295
    move-result-object v27

    #@296
    .line 562
    .restart local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v13, 0x0

    #@297
    .restart local v13    # "i":I
    :goto_8
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    #@29a
    move-result v30

    #@29b
    move/from16 v0, v30

    #@29d
    if-ge v13, v0, :cond_7

    #@29f
    .line 563
    move-object/from16 v0, v27

    #@2a1
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a4
    move-result-object v26

    #@2a5
    check-cast v26, Landroid/content/pm/UserInfo;

    #@2a7
    .line 564
    .local v26, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@2aa
    move-result v30

    #@2ab
    if-eqz v30, :cond_12

    #@2ad
    move-object/from16 v0, p0

    #@2af
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2b1
    move-object/from16 v30, v0

    #@2b3
    move-object/from16 v0, v26

    #@2b5
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@2b7
    move/from16 v31, v0

    #@2b9
    invoke-virtual/range {v30 .. v31}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    #@2bc
    move-result v30

    #@2bd
    if-eqz v30, :cond_12

    #@2bf
    .line 571
    const-string/jumbo v30, "lockscreen.password_type"

    #@2c2
    .line 572
    const-wide/16 v32, 0x0

    #@2c4
    move-object/from16 v0, v26

    #@2c6
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@2c8
    move/from16 v31, v0

    #@2ca
    .line 571
    move-object/from16 v0, p0

    #@2cc
    move-object/from16 v1, v30

    #@2ce
    move-wide/from16 v2, v32

    #@2d0
    move/from16 v4, v31

    #@2d2
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    #@2d5
    move-result-wide v18

    #@2d6
    .line 573
    .local v18, "quality":J
    const-wide/16 v30, 0x0

    #@2d8
    cmp-long v30, v18, v30

    #@2da
    if-nez v30, :cond_13

    #@2dc
    .line 575
    const-string/jumbo v30, "LockSettingsService"

    #@2df
    const-string/jumbo v31, "Migrated tied profile lock type"

    #@2e2
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2e5
    .line 576
    const-string/jumbo v30, "lockscreen.password_type"

    #@2e8
    .line 577
    const-wide/32 v32, 0x50000

    #@2eb
    move-object/from16 v0, v26

    #@2ed
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@2ef
    move/from16 v31, v0

    #@2f1
    .line 576
    move-object/from16 v0, p0

    #@2f3
    move-object/from16 v1, v30

    #@2f5
    move-wide/from16 v2, v32

    #@2f7
    move/from16 v4, v31

    #@2f9
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    #@2fc
    .line 562
    .end local v18    # "quality":J
    :cond_12
    :goto_9
    add-int/lit8 v13, v13, 0x1

    #@2fe
    goto :goto_8

    #@2ff
    .line 578
    .restart local v18    # "quality":J
    :cond_13
    const-wide/32 v30, 0x50000

    #@302
    cmp-long v30, v18, v30

    #@304
    if-eqz v30, :cond_12

    #@306
    .line 580
    const-string/jumbo v30, "LockSettingsService"

    #@309
    new-instance v31, Ljava/lang/StringBuilder;

    #@30b
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@30e
    const-string/jumbo v32, "Invalid tied profile lock type: "

    #@311
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@314
    move-result-object v31

    #@315
    move-object/from16 v0, v31

    #@317
    move-wide/from16 v1, v18

    #@319
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@31c
    move-result-object v31

    #@31d
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@320
    move-result-object v31

    #@321
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@324
    goto :goto_9
.end method

.method private onUserLockChanged(I)V
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 855
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@3
    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@6
    move-result-object v6

    #@7
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 856
    return-void

    #@e
    .line 858
    :cond_0
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@10
    invoke-virtual {v6, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    #@13
    move-result v6

    #@14
    if-nez v6, :cond_2

    #@16
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@18
    invoke-virtual {v6, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    #@1b
    move-result v1

    #@1c
    .line 859
    :goto_0
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@1e
    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@21
    move-result-object v4

    #@22
    .line 860
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@25
    move-result v5

    #@26
    .line 861
    .local v5, "size":I
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_5

    #@29
    .line 862
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Landroid/content/pm/UserInfo;

    #@2f
    .line 863
    .local v3, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_1

    #@35
    .line 864
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    #@37
    .line 865
    .local v2, "managedUserId":I
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@39
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_3

    #@3f
    .line 861
    .end local v2    # "managedUserId":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_1

    #@42
    .line 858
    .end local v0    # "i":I
    .end local v3    # "profile":Landroid/content/pm/UserInfo;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "size":I
    :cond_2
    const/4 v1, 0x1

    #@43
    .local v1, "isSecure":Z
    goto :goto_0

    #@44
    .line 868
    .end local v1    # "isSecure":Z
    .restart local v0    # "i":I
    .restart local v2    # "managedUserId":I
    .restart local v3    # "profile":Landroid/content/pm/UserInfo;
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "size":I
    :cond_3
    if-eqz v1, :cond_4

    #@46
    .line 869
    invoke-virtual {p0, v2, v7}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    #@49
    goto :goto_2

    #@4a
    .line 871
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    #@4d
    .line 872
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@50
    move-result-object v6

    #@51
    invoke-interface {v6, v2}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    #@54
    .line 873
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@56
    invoke-virtual {v6, v7, v2}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    #@59
    .line 874
    invoke-direct {p0, v7, v2}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@5c
    .line 875
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    #@5f
    .line 876
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@61
    invoke-virtual {v6, v2}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    #@64
    .line 877
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V

    #@67
    goto :goto_2

    #@68
    .line 854
    .end local v2    # "managedUserId":I
    .end local v3    # "profile":Landroid/content/pm/UserInfo;
    :cond_5
    return-void
.end method

.method private removeKeystoreProfileKey(I)V
    .locals 5
    .param p1, "targetUserId"    # I

    #@0
    .prologue
    .line 1500
    :try_start_0
    const-string/jumbo v2, "AndroidKeyStore"

    #@3
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@6
    move-result-object v1

    #@7
    .line 1501
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    #@8
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    #@b
    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "profile_key_name_encrypt_"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    #@22
    .line 1503
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "profile_key_name_decrypt_"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 1497
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    :goto_0
    return-void

    #@3a
    .line 1505
    :catch_0
    move-exception v0

    #@3b
    .line 1507
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LockSettingsService"

    #@3e
    new-instance v3, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v4, "Unable to remove keystore profile key for user:"

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    goto :goto_0
.end method

.method private removeUser(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "unknownUser"    # Z

    #@0
    .prologue
    .line 1478
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    #@5
    .line 1479
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@7
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStrongAuth;->removeUser(I)V

    #@a
    .line 1481
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@d
    move-result-object v2

    #@e
    .line 1482
    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    #@11
    .line 1485
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@14
    move-result-object v1

    #@15
    .line 1486
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_0

    #@17
    .line 1487
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1492
    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    #@1c
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@1e
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 1493
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V

    #@2b
    .line 1477
    :cond_2
    return-void

    #@2c
    .line 1489
    :catch_0
    move-exception v0

    #@2d
    .line 1490
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettingsService"

    #@30
    const-string/jumbo v4, "unable to clear GK secure user id"

    #@33
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto :goto_0
.end method

.method private static secretFromCredential(Ljava/lang/String;)[B
    .locals 5
    .param p0, "credential"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1123
    :try_start_0
    const-string/jumbo v3, "SHA-512"

    #@3
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v0

    #@7
    .line 1125
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string/jumbo v3, "Android FBE credential hash"

    #@a
    .line 1126
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@c
    .line 1125
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@f
    move-result-object v2

    #@10
    .line 1128
    .local v2, "personalization":[B
    const/16 v3, 0x80

    #@12
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    #@15
    move-result-object v2

    #@16
    .line 1129
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    #@19
    .line 1130
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1b
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    #@22
    .line 1131
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v3

    #@26
    return-object v3

    #@27
    .line 1132
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "personalization":[B
    :catch_0
    move-exception v1

    #@28
    .line 1133
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@2a
    const-string/jumbo v4, "NoSuchAlgorithmException for SHA-512"

    #@2d
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 720
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@3
    move-result-object v0

    #@4
    .line 721
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    #@7
    .line 719
    return-void
.end method

.method private setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
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
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 970
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    #@5
    move-result-object v7

    #@6
    .line 971
    .local v7, "currentHandle":[B
    if-nez p1, :cond_0

    #@8
    .line 972
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    #@b
    .line 973
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    #@12
    .line 974
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@14
    invoke-virtual {v0, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    #@17
    .line 975
    invoke-direct {p0, v1, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@1a
    .line 976
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    #@1d
    .line 977
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    #@20
    .line 978
    return-void

    #@21
    .line 981
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 984
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result-object p2

    #@2b
    .line 1002
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0, v7, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    #@2e
    move-result-object v10

    #@2f
    .line 1003
    .local v10, "enrolledHandle":[B
    if-eqz v10, :cond_4

    #@31
    .line 1005
    new-instance v2, Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@33
    invoke-direct {v2, v10, v3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    #@36
    .line 1007
    .local v2, "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    const-wide/16 v4, 0x0

    #@38
    move-object v0, p0

    #@39
    move-object v1, p1

    #@3a
    move v6, p3

    #@3b
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@3e
    move-result-object v0

    #@3f
    .line 1006
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    #@42
    .line 1008
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@44
    invoke-virtual {v0, v10, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    #@47
    .line 1009
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    #@4a
    .line 1010
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    #@4d
    .line 969
    return-void

    #@4e
    .line 990
    .end local v2    # "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v10    # "enrolledHandle":[B
    .restart local p2    # "savedCredential":Ljava/lang/String;
    :catch_0
    move-exception v9

    #@4f
    .line 991
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "LockSettingsService"

    #@52
    const-string/jumbo v1, "Failed to decrypt child profile key"

    #@55
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@58
    goto :goto_0

    #@59
    .line 985
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    #@5a
    .line 986
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v0, "LockSettingsService"

    #@5d
    const-string/jumbo v1, "Child profile key not found"

    #@60
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    goto :goto_0

    #@64
    .line 994
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    if-nez v7, :cond_1

    #@66
    .line 995
    if-eqz p2, :cond_3

    #@68
    .line 996
    const-string/jumbo v0, "LockSettingsService"

    #@6b
    const-string/jumbo v1, "Saved credential provided, but none stored"

    #@6e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 998
    :cond_3
    const/4 p2, 0x0

    #@72
    .local p2, "savedCredential":Ljava/lang/String;
    goto :goto_0

    #@73
    .line 1012
    .end local p2    # "savedCredential":Ljava/lang/String;
    .restart local v10    # "enrolledHandle":[B
    :cond_4
    new-instance v0, Landroid/os/RemoteException;

    #@75
    const-string/jumbo v1, "Failed to enroll password"

    #@78
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v0
.end method

.method private setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
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
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 907
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    #@5
    move-result-object v7

    #@6
    .line 909
    .local v7, "currentHandle":[B
    if-nez p1, :cond_0

    #@8
    .line 910
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    #@b
    .line 911
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    #@12
    .line 912
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@14
    invoke-virtual {v0, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    #@17
    .line 913
    invoke-direct {p0, v1, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@1a
    .line 914
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    #@1d
    .line 915
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    #@20
    .line 916
    return-void

    #@21
    .line 919
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 922
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result-object p2

    #@2b
    .line 942
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0, v7, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    #@2e
    move-result-object v9

    #@2f
    .line 943
    .local v9, "enrolledHandle":[B
    if-eqz v9, :cond_5

    #@31
    .line 945
    new-instance v2, Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@33
    invoke-direct {v2, v9, v3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    #@36
    .line 947
    .local v2, "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    const-wide/16 v4, 0x0

    #@38
    move-object v0, p0

    #@39
    move-object v1, p1

    #@3a
    move v6, p3

    #@3b
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@3e
    move-result-object v0

    #@3f
    .line 946
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    #@42
    .line 948
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@44
    invoke-virtual {v0, v9, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    #@47
    .line 949
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    #@4a
    .line 950
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    #@4d
    .line 906
    return-void

    #@4e
    .line 926
    .end local v2    # "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v9    # "enrolledHandle":[B
    .restart local p2    # "savedCredential":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@4f
    .line 927
    .local v8, "e":Ljava/lang/Exception;
    instance-of v0, v8, Ljava/io/FileNotFoundException;

    #@51
    if-eqz v0, :cond_2

    #@53
    .line 928
    const-string/jumbo v0, "LockSettingsService"

    #@56
    const-string/jumbo v1, "Child profile key not found"

    #@59
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_0

    #@5d
    .line 930
    :cond_2
    const-string/jumbo v0, "LockSettingsService"

    #@60
    const-string/jumbo v1, "Failed to decrypt child profile key"

    #@63
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@66
    goto :goto_0

    #@67
    .line 934
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    if-nez v7, :cond_1

    #@69
    .line 935
    if-eqz p2, :cond_4

    #@6b
    .line 936
    const-string/jumbo v0, "LockSettingsService"

    #@6e
    const-string/jumbo v1, "Saved credential provided, but none stored"

    #@71
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 938
    :cond_4
    const/4 p2, 0x0

    #@75
    .local p2, "savedCredential":Ljava/lang/String;
    goto :goto_0

    #@76
    .line 952
    .end local p2    # "savedCredential":Ljava/lang/String;
    .restart local v9    # "enrolledHandle":[B
    :cond_5
    new-instance v0, Landroid/os/RemoteException;

    #@78
    const-string/jumbo v1, "Failed to enroll pattern"

    #@7b
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v0
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    .line 664
    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    #@7
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 665
    const-string/jumbo v0, "com.android.providers.settings"

    #@10
    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    #@13
    .line 662
    :cond_0
    return-void
.end method

.method private setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "vcr"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1103
    if-nez p3, :cond_0

    #@2
    .line 1104
    new-instance v1, Landroid/os/RemoteException;

    #@4
    const-string/jumbo v2, "Null response verifying a credential we just set"

    #@7
    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1106
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1107
    new-instance v1, Landroid/os/RemoteException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Non-OK response verifying a credential we just set: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 1108
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@22
    move-result v3

    #@23
    .line 1107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 1110
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@32
    move-result-object v0

    #@33
    .line 1111
    .local v0, "token":[B
    if-nez v0, :cond_2

    #@35
    .line 1112
    new-instance v1, Landroid/os/RemoteException;

    #@37
    const-string/jumbo v2, "Empty payload verifying a credential we just set"

    #@3a
    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1

    #@3e
    .line 1114
    :cond_2
    invoke-static {p2}, Lcom/android/server/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    #@41
    move-result-object v1

    #@42
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    #@45
    .line 1102
    return-void
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v6

    #@6
    .line 344
    .local v6, "r":Landroid/content/res/Resources;
    const v0, 0x10405de

    #@9
    .line 343
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@c
    move-result-object v2

    #@d
    .line 346
    .local v2, "title":Ljava/lang/CharSequence;
    const v0, 0x10405df

    #@10
    .line 345
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@13
    move-result-object v3

    #@14
    .line 348
    .local v3, "message":Ljava/lang/CharSequence;
    const v0, 0x10405e0

    #@17
    .line 347
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@1a
    move-result-object v4

    #@1b
    .line 350
    .local v4, "detail":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@1d
    sget-object v1, Lcom/android/server/LockSettingsService;->ACTION_NULL:Landroid/content/Intent;

    #@1f
    const/4 v7, 0x0

    #@20
    .line 351
    const/high16 v8, 0x8000000

    #@22
    .line 350
    invoke-static {v0, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@25
    move-result-object v5

    #@26
    .local v5, "intent":Landroid/app/PendingIntent;
    move-object v0, p0

    #@27
    move-object v1, p1

    #@28
    .line 353
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@2b
    .line 341
    return-void
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "detail"    # Ljava/lang/CharSequence;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 361
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return-void

    #@9
    .line 363
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    #@b
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@d
    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@10
    .line 364
    const v2, 0x1080432

    #@13
    .line 363
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@16
    move-result-object v1

    #@17
    .line 365
    const-wide/16 v2, 0x0

    #@19
    .line 363
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@28
    move-result-object v1

    #@29
    .line 369
    const/4 v2, 0x2

    #@2a
    .line 363
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@2d
    move-result-object v1

    #@2e
    .line 370
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@30
    .line 371
    const v3, 0x1060059

    #@33
    .line 370
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    #@36
    move-result v2

    #@37
    .line 363
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@52
    move-result-object v0

    #@53
    .line 378
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    #@55
    const/4 v2, 0x0

    #@56
    invoke-virtual {v1, v2, v4, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@59
    .line 357
    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 321
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v7

    #@7
    .line 323
    .local v7, "r":Landroid/content/res/Resources;
    const v0, 0x10405de

    #@a
    .line 322
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v2

    #@e
    .line 325
    .local v2, "title":Ljava/lang/CharSequence;
    const v0, 0x10405e2

    #@11
    .line 324
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@14
    move-result-object v3

    #@15
    .line 327
    .local v3, "message":Ljava/lang/CharSequence;
    const v0, 0x10405e1

    #@18
    .line 326
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@1b
    move-result-object v4

    #@1c
    .line 329
    .local v4, "detail":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@1e
    const-string/jumbo v1, "keyguard"

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    check-cast v6, Landroid/app/KeyguardManager;

    #@27
    .line 330
    .local v6, "km":Landroid/app/KeyguardManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v0

    #@2b
    invoke-virtual {v6, v9, v9, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    #@2e
    move-result-object v8

    #@2f
    .line 331
    .local v8, "unlockIntent":Landroid/content/Intent;
    if-nez v8, :cond_0

    #@31
    .line 332
    return-void

    #@32
    .line 334
    :cond_0
    const/high16 v0, 0x10800000

    #@34
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@37
    .line 335
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@39
    const/4 v1, 0x0

    #@3a
    .line 336
    const/high16 v9, 0x8000000

    #@3c
    .line 335
    invoke-static {v0, v1, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@3f
    move-result-object v5

    #@40
    .local v5, "intent":Landroid/app/PendingIntent;
    move-object v0, p0

    #@41
    move-object v1, p1

    #@42
    .line 338
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@45
    .line 320
    return-void
.end method

.method private tieProfileLockToParent(ILjava/lang/String;)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1018
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    move-object/from16 v0, p2

    #@4
    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@7
    move-result-object v10

    #@8
    .line 1022
    .local v10, "randomLockSeed":[B
    :try_start_0
    const-string/jumbo v12, "AES"

    #@b
    invoke-static {v12}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    #@e
    move-result-object v6

    #@f
    .line 1023
    .local v6, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v12, Ljava/security/SecureRandom;

    #@11
    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    #@14
    invoke-virtual {v6, v12}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    #@17
    .line 1024
    invoke-virtual {v6}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    #@1a
    move-result-object v11

    #@1b
    .line 1026
    .local v11, "secretKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v12, "AndroidKeyStore"

    #@1e
    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@21
    move-result-object v7

    #@22
    .line 1027
    .local v7, "keyStore":Ljava/security/KeyStore;
    const/4 v12, 0x0

    #@23
    invoke-virtual {v7, v12}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    #@26
    .line 1029
    new-instance v12, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v13, "profile_key_name_encrypt_"

    #@2e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v12

    #@32
    move/from16 v0, p1

    #@34
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v12

    #@38
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v12

    #@3c
    .line 1030
    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    #@3e
    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    #@41
    .line 1031
    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    #@43
    const/4 v15, 0x1

    #@44
    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    #@47
    const/4 v15, 0x1

    #@48
    new-array v15, v15, [Ljava/lang/String;

    #@4a
    .line 1032
    const-string/jumbo v16, "GCM"

    #@4d
    const/16 v17, 0x0

    #@4f
    aput-object v16, v15, v17

    #@51
    .line 1031
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@54
    move-result-object v14

    #@55
    const/4 v15, 0x1

    #@56
    new-array v15, v15, [Ljava/lang/String;

    #@58
    .line 1033
    const-string/jumbo v16, "NoPadding"

    #@5b
    const/16 v17, 0x0

    #@5d
    aput-object v16, v15, v17

    #@5f
    .line 1031
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@62
    move-result-object v14

    #@63
    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    #@66
    move-result-object v14

    #@67
    .line 1028
    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    #@6a
    .line 1036
    new-instance v12, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v13, "profile_key_name_decrypt_"

    #@72
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v12

    #@76
    move/from16 v0, p1

    #@78
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v12

    #@7c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v12

    #@80
    .line 1037
    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    #@82
    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    #@85
    .line 1038
    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    #@87
    const/4 v15, 0x2

    #@88
    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    #@8b
    const/4 v15, 0x1

    #@8c
    new-array v15, v15, [Ljava/lang/String;

    #@8e
    .line 1039
    const-string/jumbo v16, "GCM"

    #@91
    const/16 v17, 0x0

    #@93
    aput-object v16, v15, v17

    #@95
    .line 1038
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@98
    move-result-object v14

    #@99
    const/4 v15, 0x1

    #@9a
    new-array v15, v15, [Ljava/lang/String;

    #@9c
    .line 1040
    const-string/jumbo v16, "NoPadding"

    #@9f
    const/16 v17, 0x0

    #@a1
    aput-object v16, v15, v17

    #@a3
    .line 1038
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@a6
    move-result-object v14

    #@a7
    .line 1041
    const/4 v15, 0x1

    #@a8
    .line 1038
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    #@ab
    move-result-object v14

    #@ac
    .line 1042
    const/16 v15, 0x1e

    #@ae
    .line 1038
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    #@b1
    move-result-object v14

    #@b2
    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    #@b5
    move-result-object v14

    #@b6
    .line 1035
    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    #@b9
    .line 1047
    new-instance v12, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v13, "profile_key_name_encrypt_"

    #@c1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v12

    #@c5
    move/from16 v0, p1

    #@c7
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v12

    #@cb
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v12

    #@cf
    const/4 v13, 0x0

    #@d0
    .line 1046
    invoke-virtual {v7, v12, v13}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    #@d3
    move-result-object v8

    #@d4
    check-cast v8, Ljavax/crypto/SecretKey;

    #@d6
    .line 1051
    .local v8, "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v12, "AES/GCM/NoPadding"

    #@d9
    .line 1050
    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@dc
    move-result-object v1

    #@dd
    .line 1053
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v12, 0x1

    #@de
    invoke-virtual {v1, v12, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@e1
    .line 1054
    invoke-virtual {v1, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@e4
    move-result-object v4

    #@e5
    .line 1055
    .local v4, "encryptionResult":[B
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    #@e8
    move-result-object v5

    #@e9
    .line 1061
    .local v5, "iv":[B
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    #@eb
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@ee
    .line 1063
    .local v9, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    array-length v12, v5

    #@ef
    const/16 v13, 0xc

    #@f1
    if-eq v12, v13, :cond_0

    #@f3
    .line 1064
    new-instance v12, Ljava/lang/RuntimeException;

    #@f5
    new-instance v13, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string/jumbo v14, "Invalid iv length: "

    #@fd
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v13

    #@101
    array-length v14, v5

    #@102
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@105
    move-result-object v13

    #@106
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v13

    #@10a
    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10d
    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@10e
    .line 1068
    :catch_0
    move-exception v2

    #@10f
    .line 1069
    .local v2, "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/RuntimeException;

    #@111
    const-string/jumbo v13, "Failed to concatenate byte arrays"

    #@114
    invoke-direct {v12, v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@117
    throw v12

    #@118
    .line 1058
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "encryptionResult":[B
    .end local v5    # "iv":[B
    .end local v6    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v7    # "keyStore":Ljava/security/KeyStore;
    .end local v8    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .end local v9    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v3

    #@119
    .line 1059
    .local v3, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/RuntimeException;

    #@11b
    const-string/jumbo v13, "Failed to encrypt key"

    #@11e
    invoke-direct {v12, v13, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@121
    throw v12

    #@122
    .line 1066
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "encryptionResult":[B
    .restart local v5    # "iv":[B
    .restart local v6    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .restart local v7    # "keyStore":Ljava/security/KeyStore;
    .restart local v8    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .restart local v9    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_0
    :try_start_2
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@125
    .line 1067
    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@128
    .line 1071
    move-object/from16 v0, p0

    #@12a
    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@12c
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@12f
    move-result-object v13

    #@130
    move/from16 v0, p1

    #@132
    invoke-virtual {v12, v0, v13}, Lcom/android/server/LockSettingsStorage;->writeChildProfileLock(I[B)V

    #@135
    .line 1016
    return-void
.end method

.method private unlockChildProfile(I)V
    .locals 7
    .param p1, "profileHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 759
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 760
    const-wide/16 v4, 0x0

    #@6
    .line 759
    const/4 v3, 0x0

    #@7
    move-object v1, p0

    #@8
    move v6, p1

    #@9
    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 757
    :goto_0
    return-void

    #@d
    .line 764
    :catch_0
    move-exception v0

    #@e
    .line 765
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 766
    const-string/jumbo v1, "LockSettingsService"

    #@15
    const-string/jumbo v2, "Child profile key not found"

    #@18
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    goto :goto_0

    #@1c
    .line 768
    :cond_0
    const-string/jumbo v1, "LockSettingsService"

    #@1f
    const-string/jumbo v2, "Failed to decrypt child profile key"

    #@22
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_0
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 726
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@3
    move-result-object v0

    #@4
    .line 727
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    #@7
    .line 724
    return-void
.end method

.method private unlockUser(I[B[B)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    #@0
    .prologue
    .line 775
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    #@2
    const/4 v7, 0x1

    #@3
    invoke-direct {v2, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@6
    .line 776
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lcom/android/server/LockSettingsService$4;

    #@8
    invoke-direct {v3, p0, v2}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    #@b
    .line 795
    .local v3, "listener":Landroid/os/IProgressListener;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@e
    move-result-object v7

    #@f
    invoke-interface {v7, p1, p2, p3, v3}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@12
    .line 801
    const-wide/16 v8, 0xf

    #@14
    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@16
    invoke-virtual {v2, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    #@19
    .line 806
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@1b
    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@22
    move-result v7

    #@23
    if-nez v7, :cond_1

    #@25
    .line 807
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@27
    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@2a
    move-result-object v6

    #@2b
    .line 808
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v5

    #@2f
    .local v5, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_1

    #@35
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Landroid/content/pm/UserInfo;

    #@3b
    .line 810
    .local v4, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@3e
    move-result v7

    #@3f
    if-eqz v7, :cond_0

    #@41
    .line 811
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@43
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    #@45
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@48
    move-result v7

    #@49
    if-nez v7, :cond_0

    #@4b
    .line 812
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@4d
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    #@4f
    invoke-virtual {v7, v8}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    #@52
    move-result v7

    #@53
    .line 810
    if-eqz v7, :cond_0

    #@55
    .line 813
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    #@57
    invoke-direct {p0, v7}, Lcom/android/server/LockSettingsService;->unlockChildProfile(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@5a
    goto :goto_1

    #@5b
    .line 817
    .end local v4    # "pi":Landroid/content/pm/UserInfo;
    .end local v5    # "pi$iterator":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    #@5c
    .line 818
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "LockSettingsService"

    #@5f
    const-string/jumbo v8, "Failed to unlock child profile"

    #@62
    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@65
    .line 773
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void

    #@66
    .line 796
    :catch_1
    move-exception v0

    #@67
    .line 797
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@6a
    move-result-object v7

    #@6b
    throw v7

    #@6c
    .line 802
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    #@6d
    .line 803
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    #@74
    goto :goto_0
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 19
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
    .line 1345
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
    .line 1347
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@11
    return-object v4

    #@12
    .line 1350
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_2

    #@18
    .line 1351
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@1a
    return-object v4

    #@1b
    .line 1354
    :cond_2
    move-object/from16 v0, p2

    #@1d
    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    #@1f
    if-nez v4, :cond_4

    #@21
    .line 1355
    move-object/from16 v0, p7

    #@23
    move-object/from16 v1, p3

    #@25
    move/from16 v2, p1

    #@27
    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    #@2a
    move-result-object v12

    #@2b
    .line 1356
    .local v12, "hash":[B
    move-object/from16 v0, p2

    #@2d
    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@2f
    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_3

    #@35
    .line 1357
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
    .line 1361
    const-string/jumbo v4, "LockSettingsService"

    #@47
    new-instance v5, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v6, "Unlocking user with fake token: "

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    move/from16 v0, p1

    #@55
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 1362
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    #@67
    move-result-object v10

    #@68
    .line 1363
    .local v10, "fakeToken":[B
    move-object/from16 v0, p0

    #@6a
    move/from16 v1, p1

    #@6c
    invoke-direct {v0, v1, v10, v10}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    #@6f
    .line 1366
    const/4 v4, 0x0

    #@70
    move-object/from16 v0, p7

    #@72
    move-object/from16 v1, p3

    #@74
    move/from16 v2, p1

    #@76
    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    #@79
    .line 1367
    if-nez p4, :cond_4

    #@7b
    .line 1368
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@7d
    return-object v4

    #@7e
    .line 1374
    .end local v10    # "fakeToken":[B
    :cond_3
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@80
    return-object v4

    #@81
    .line 1379
    .end local v12    # "hash":[B
    :cond_4
    const/4 v15, 0x0

    #@82
    .line 1380
    .local v15, "shouldReEnroll":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@85
    move-result-object v4

    #@86
    .line 1381
    move-object/from16 v0, p2

    #@88
    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@8a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    #@8d
    move-result-object v9

    #@8e
    move/from16 v5, p1

    #@90
    move-wide/from16 v6, p5

    #@92
    .line 1380
    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    #@95
    move-result-object v11

    #@96
    .line 1382
    .local v11, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    #@99
    move-result v14

    #@9a
    .line 1383
    .local v14, "responseCode":I
    const/4 v4, 0x1

    #@9b
    if-ne v14, v4, :cond_7

    #@9d
    .line 1384
    new-instance v13, Lcom/android/internal/widget/VerifyCredentialResponse;

    #@9f
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    #@a2
    move-result v4

    #@a3
    invoke-direct {v13, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    #@a6
    .line 1399
    .end local v15    # "shouldReEnroll":Z
    .local v13, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@a9
    move-result v4

    #@aa
    if-nez v4, :cond_a

    #@ac
    .line 1401
    move-object/from16 v0, p0

    #@ae
    move-object/from16 v1, p3

    #@b0
    move/from16 v2, p1

    #@b2
    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    #@b5
    .line 1403
    const-string/jumbo v4, "LockSettingsService"

    #@b8
    new-instance v5, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v6, "Unlocking user "

    #@c0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    move/from16 v0, p1

    #@c6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v5

    #@ca
    .line 1404
    const-string/jumbo v6, " with token length "

    #@cd
    .line 1403
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v5

    #@d1
    .line 1404
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@d4
    move-result-object v6

    #@d5
    array-length v6, v6

    #@d6
    .line 1403
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v5

    #@da
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v5

    #@de
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 1405
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@e4
    move-result-object v4

    #@e5
    invoke-static/range {p3 .. p3}, Lcom/android/server/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    #@e8
    move-result-object v5

    #@e9
    move-object/from16 v0, p0

    #@eb
    move/from16 v1, p1

    #@ed
    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    #@f0
    .line 1407
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    #@f3
    move-result v4

    #@f4
    if-eqz v4, :cond_5

    #@f6
    .line 1409
    move-object/from16 v0, p0

    #@f8
    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@fa
    const-string/jumbo v5, "trust"

    #@fd
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@100
    move-result-object v17

    #@101
    check-cast v17, Landroid/app/trust/TrustManager;

    #@103
    .line 1410
    .local v17, "trustManager":Landroid/app/trust/TrustManager;
    const/4 v4, 0x0

    #@104
    move-object/from16 v0, v17

    #@106
    move/from16 v1, p1

    #@108
    invoke-virtual {v0, v1, v4}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    #@10b
    .line 1412
    .end local v17    # "trustManager":Landroid/app/trust/TrustManager;
    :cond_5
    if-eqz v15, :cond_6

    #@10d
    .line 1413
    move-object/from16 v0, p7

    #@10f
    move-object/from16 v1, p3

    #@111
    move-object/from16 v2, p3

    #@113
    move/from16 v3, p1

    #@115
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    #@118
    .line 1421
    :cond_6
    :goto_1
    return-object v13

    #@119
    .line 1385
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v15    # "shouldReEnroll":Z
    :cond_7
    if-nez v14, :cond_9

    #@11b
    .line 1386
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    #@11e
    move-result-object v16

    #@11f
    .line 1387
    .local v16, "token":[B
    if-nez v16, :cond_8

    #@121
    .line 1389
    const-string/jumbo v4, "LockSettingsService"

    #@124
    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    #@127
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12a
    .line 1390
    sget-object v13, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@12c
    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    #@12e
    .line 1392
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_8
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    #@131
    move-result v15

    #@132
    .line 1393
    .local v15, "shouldReEnroll":Z
    new-instance v13, Lcom/android/internal/widget/VerifyCredentialResponse;

    #@134
    move-object/from16 v0, v16

    #@136
    invoke-direct {v13, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    #@139
    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    #@13b
    .line 1396
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v16    # "token":[B
    .local v15, "shouldReEnroll":Z
    :cond_9
    sget-object v13, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@13d
    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    #@13f
    .line 1415
    .end local v15    # "shouldReEnroll":Z
    :cond_a
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@142
    move-result v4

    #@143
    const/4 v5, 0x1

    #@144
    if-ne v4, v5, :cond_6

    #@146
    .line 1416
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    #@149
    move-result v4

    #@14a
    if-lez v4, :cond_6

    #@14c
    .line 1417
    const/16 v4, 0x8

    #@14e
    move-object/from16 v0, p0

    #@150
    move/from16 v1, p1

    #@152
    invoke-virtual {v0, v4, v1}, Lcom/android/server/LockSettingsService;->requireStrongAuth(II)V

    #@155
    goto :goto_1
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
    .line 1269
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
    .line 1206
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
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1426
    iget-boolean v5, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    #@4
    if-nez v5, :cond_0

    #@6
    .line 1427
    return v6

    #@7
    .line 1429
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    #@9
    .line 1431
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@c
    .line 1441
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    #@f
    move-result-object v4

    #@10
    .line 1443
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@13
    move-result-wide v2

    #@14
    .line 1445
    .local v2, "identity":J
    :try_start_0
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 1446
    .local v1, "password":Ljava/lang/String;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->clearPassword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 1448
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 1450
    if-nez v1, :cond_1

    #@20
    .line 1451
    return v6

    #@21
    .line 1447
    .end local v1    # "password":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@22
    .line 1448
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 1447
    throw v5

    #@26
    .line 1455
    .restart local v1    # "password":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@28
    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_2

    #@2e
    .line 1456
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@35
    move-result v5

    #@36
    if-nez v5, :cond_2

    #@38
    .line 1458
    return v7

    #@39
    .line 1461
    :catch_0
    move-exception v0

    #@3a
    .line 1465
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@3c
    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_3

    #@42
    .line 1466
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@49
    move-result v5

    #@4a
    if-nez v5, :cond_3

    #@4c
    .line 1468
    return v7

    #@4d
    .line 1471
    :catch_1
    move-exception v0

    #@4e
    .line 1474
    :cond_3
    return v6
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
    .line 671
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@3
    .line 672
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 673
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
    .line 674
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
    .line 679
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@3
    .line 680
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 681
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

.method public getSeparateProfileChallengeEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 623
    const-string/jumbo v0, "lockscreen.profilechallenge"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@6
    .line 624
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 625
    :try_start_0
    const-string/jumbo v0, "lockscreen.profilechallenge"

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v0

    #@11
    monitor-exit v1

    #@12
    return v0

    #@13
    .line 624
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
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
    .line 686
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@3
    .line 687
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
    .line 691
    const-string/jumbo v2, "lock_pattern_autolock"

    #@3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 692
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v0

    #@d
    .line 694
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
    .line 696
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 694
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
    .line 695
    :catchall_0
    move-exception v2

    #@21
    .line 696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 695
    throw v2

    #@25
    .line 700
    .end local v0    # "ident":J
    :cond_1
    const-string/jumbo v2, "legacy_lock_pattern_enabled"

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_2

    #@2e
    .line 701
    const-string/jumbo p1, "lock_pattern_autolock"

    #@31
    .line 704
    :cond_2
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@33
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    return-object v2
.end method

.method public getStrongAuthForUser(I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1537
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@3
    .line 1538
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    #@8
    move-result v0

    #@9
    return v0
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
    .line 710
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
    .line 716
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hideEncryptionNotification(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@7
    .line 381
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 387
    new-instance v0, Landroid/os/UserHandle;

    #@2
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    #@8
    .line 386
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 392
    new-instance v4, Landroid/os/UserHandle;

    #@2
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@5
    invoke-virtual {p0, v4}, Lcom/android/server/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    #@8
    .line 394
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@a
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 397
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    #@16
    new-instance v5, Lcom/android/server/LockSettingsService$3;

    #@18
    invoke-direct {v5, p0, p1}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;I)V

    #@1b
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1e
    .line 407
    :cond_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@20
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@23
    move-result-object v2

    #@24
    .line 408
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    #@25
    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@28
    move-result v4

    #@29
    if-ge v0, v4, :cond_3

    #@2b
    .line 409
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Landroid/content/pm/UserInfo;

    #@31
    .line 410
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_1

    #@37
    .line 411
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@3a
    move-result-object v3

    #@3b
    .line 412
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@3d
    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    #@40
    move-result v4

    #@41
    if-nez v4, :cond_1

    #@43
    .line 413
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@45
    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_2

    #@4b
    .line 408
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 414
    .restart local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    #@51
    goto :goto_1

    #@52
    .line 390
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_3
    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    #@0
    .prologue
    .line 1513
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@4
    .line 1514
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@9
    .line 1512
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 1
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1525
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 1526
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    #@8
    .line 1524
    return-void
.end method

.method public resetKeyStore(I)V
    .locals 17
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1162
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 1164
    const/4 v3, -0x1

    #@4
    .line 1165
    .local v3, "managedUserId":I
    const/4 v2, 0x0

    #@5
    .line 1166
    .local v2, "managedUserDecryptedPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7
    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@9
    move/from16 v0, p1

    #@b
    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@e
    move-result-object v7

    #@f
    .line 1167
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v5

    #@13
    .end local v2    # "managedUserDecryptedPassword":Ljava/lang/String;
    .local v5, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v9

    #@17
    if-eqz v9, :cond_2

    #@19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Landroid/content/pm/UserInfo;

    #@1f
    .line 1169
    .local v4, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@22
    move-result v9

    #@23
    if-eqz v9, :cond_0

    #@25
    .line 1170
    move-object/from16 v0, p0

    #@27
    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@29
    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    #@2b
    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@2e
    move-result v9

    #@2f
    if-nez v9, :cond_0

    #@31
    .line 1171
    move-object/from16 v0, p0

    #@33
    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@35
    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    #@37
    invoke-virtual {v9, v10}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    #@3a
    move-result v9

    #@3b
    .line 1169
    if-eqz v9, :cond_0

    #@3d
    .line 1173
    const/4 v9, -0x1

    #@3e
    if-ne v3, v9, :cond_1

    #@40
    .line 1174
    :try_start_0
    iget v9, v4, Landroid/content/pm/UserInfo;->id:I

    #@42
    move-object/from16 v0, p0

    #@44
    invoke-direct {v0, v9}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 1175
    .local v2, "managedUserDecryptedPassword":Ljava/lang/String;
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    #@4a
    goto :goto_0

    #@4b
    .line 1178
    .end local v2    # "managedUserDecryptedPassword":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "LockSettingsService"

    #@4e
    new-instance v10, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v11, "More than one managed profile, uid1:"

    #@56
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v10

    #@5e
    .line 1179
    const-string/jumbo v11, ", uid2:"

    #@61
    .line 1178
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v10

    #@65
    .line 1179
    iget v11, v4, Landroid/content/pm/UserInfo;->id:I

    #@67
    .line 1178
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v10

    #@6b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v10

    #@6f
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    goto :goto_0

    #@73
    .line 1184
    :catch_0
    move-exception v1

    #@74
    .line 1185
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "LockSettingsService"

    #@77
    const-string/jumbo v10, "Failed to decrypt child profile key"

    #@7a
    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7d
    goto :goto_0

    #@7e
    .line 1191
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "pi":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@80
    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@82
    move/from16 v0, p1

    #@84
    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    #@87
    move-result-object v11

    #@88
    const/4 v9, 0x0

    #@89
    array-length v12, v11

    #@8a
    move v10, v9

    #@8b
    :goto_1
    if-ge v10, v12, :cond_4

    #@8d
    aget v6, v11, v10

    #@8f
    .line 1192
    .local v6, "profileId":I
    sget-object v13, Lcom/android/server/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    #@91
    const/4 v9, 0x0

    #@92
    array-length v14, v13

    #@93
    :goto_2
    if-ge v9, v14, :cond_3

    #@95
    aget v8, v13, v9

    #@97
    .line 1193
    .local v8, "uid":I
    move-object/from16 v0, p0

    #@99
    iget-object v15, v0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    #@9b
    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    #@9e
    move-result v16

    #@9f
    invoke-virtual/range {v15 .. v16}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a2
    .line 1192
    add-int/lit8 v9, v9, 0x1

    #@a4
    goto :goto_2

    #@a5
    .line 1191
    .end local v8    # "uid":I
    :cond_3
    add-int/lit8 v9, v10, 0x1

    #@a7
    move v10, v9

    #@a8
    goto :goto_1

    #@a9
    .line 1197
    .end local v6    # "profileId":I
    :cond_4
    const/4 v9, -0x1

    #@aa
    if-eq v3, v9, :cond_5

    #@ac
    if-eqz v2, :cond_5

    #@ae
    .line 1199
    move-object/from16 v0, p0

    #@b0
    invoke-direct {v0, v3, v2}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    #@b3
    .line 1161
    :cond_5
    return-void

    #@b4
    .line 1196
    :catchall_0
    move-exception v9

    #@b5
    .line 1197
    const/4 v10, -0x1

    #@b6
    if-eq v3, v10, :cond_6

    #@b8
    if-eqz v2, :cond_6

    #@ba
    .line 1199
    move-object/from16 v0, p0

    #@bc
    invoke-direct {v0, v3, v2}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    #@bf
    .line 1196
    :cond_6
    throw v9
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
    .line 646
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 647
    if-eqz p2, :cond_0

    #@5
    const-string/jumbo v0, "1"

    #@8
    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    #@b
    .line 645
    return-void

    #@c
    .line 647
    :cond_0
    const-string/jumbo v0, "0"

    #@f
    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
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
    .line 961
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 962
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 963
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    #@9
    .line 964
    const/4 v0, 0x1

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {p0, p3, v0, v2}, Lcom/android/server/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 960
    return-void

    #@10
    .line 962
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
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
    .line 898
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 899
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 900
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    #@9
    .line 901
    const/4 v0, 0x1

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {p0, p3, v0, v2}, Lcom/android/server/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 897
    return-void

    #@10
    .line 899
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
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
    .line 652
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 653
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    #@a
    .line 651
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 633
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 634
    :try_start_0
    const-string/jumbo v0, "lockscreen.profilechallenge"

    #@9
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    #@c
    .line 635
    if-eqz p2, :cond_0

    #@e
    .line 636
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    #@13
    .line 637
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :goto_0
    monitor-exit v1

    #@17
    .line 631
    return-void

    #@18
    .line 639
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 633
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
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
    .line 658
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 659
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    #@6
    .line 657
    return-void
.end method

.method public systemReady()V
    .locals 3

    #@0
    .prologue
    .line 447
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    #@3
    .line 449
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 454
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    #@c
    .line 446
    return-void

    #@d
    .line 450
    :catch_0
    move-exception v0

    #@e
    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockSettingsService"

    #@11
    const-string/jumbo v2, "Failure retrieving IGateKeeperService"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method public tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    .locals 8
    .param p1, "managedUserId"    # I
    .param p2, "managedUserPassword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 225
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_0

    #@10
    .line 226
    return-void

    #@11
    .line 229
    :cond_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@13
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 230
    return-void

    #@1a
    .line 233
    :cond_1
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@1c
    invoke-virtual {v4, p1}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_2

    #@22
    .line 234
    return-void

    #@23
    .line 237
    :cond_2
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@25
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@28
    move-result-object v4

    #@29
    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    #@2b
    .line 238
    .local v2, "parentId":I
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2d
    invoke-virtual {v4, v2}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_3

    #@33
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@35
    invoke-virtual {v4, v2}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_4

    #@3b
    .line 243
    :cond_3
    const/4 v4, 0x0

    #@3c
    new-array v3, v4, [B

    #@3e
    .line 245
    .local v3, "randomLockSeed":[B
    :try_start_0
    const-string/jumbo v4, "SHA1PRNG"

    #@41
    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    #@44
    move-result-object v4

    #@45
    const/16 v5, 0x28

    #@47
    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->generateSeed(I)[B

    #@4a
    move-result-object v3

    #@4b
    .line 246
    invoke-static {v3}, Llibcore/util/HexEncoding;->encode([B)[C

    #@4e
    move-result-object v4

    #@4f
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 247
    .local v1, "newPassword":Ljava/lang/String;
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    #@56
    .line 251
    const-string/jumbo v4, "lockscreen.password_type"

    #@59
    .line 252
    const-wide/32 v6, 0x50000

    #@5c
    .line 251
    invoke-virtual {p0, v4, v6, v7, p1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    #@5f
    .line 253
    invoke-direct {p0, p1, v1}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    .line 222
    .end local v1    # "newPassword":Ljava/lang/String;
    :goto_0
    return-void

    #@63
    .line 240
    .end local v3    # "randomLockSeed":[B
    :cond_4
    return-void

    #@64
    .line 254
    .restart local v3    # "randomLockSeed":[B
    :catch_0
    move-exception v0

    #@65
    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LockSettingsService"

    #@68
    const-string/jumbo v5, "Fail to tie managed profile"

    #@6b
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    goto :goto_0
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    #@0
    .prologue
    .line 1519
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@4
    .line 1520
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@9
    .line 1518
    return-void
.end method

.method public userPresent(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1531
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 1532
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->reportUnlock(I)V

    #@8
    .line 1530
    return-void
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
    .line 1275
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
    .line 1212
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

.method public verifyTiedProfileChallenge(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "isPattern"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1281
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p5

    #@4
    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@7
    .line 1282
    move-object/from16 v0, p0

    #@9
    move/from16 v1, p5

    #@b
    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1283
    new-instance v3, Landroid/os/RemoteException;

    #@13
    const-string/jumbo v4, "User id must be managed profile with unified lock"

    #@16
    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 1285
    :cond_0
    move-object/from16 v0, p0

    #@1c
    iget-object v3, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@1e
    move/from16 v0, p5

    #@20
    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@23
    move-result-object v3

    #@24
    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    #@26
    .line 1287
    .local v8, "parentProfileId":I
    if-eqz p2, :cond_1

    #@28
    .line 1288
    const/4 v5, 0x1

    #@29
    move-object/from16 v3, p0

    #@2b
    move-object/from16 v4, p1

    #@2d
    move-wide/from16 v6, p3

    #@2f
    invoke-direct/range {v3 .. v8}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@32
    move-result-object v15

    #@33
    .line 1290
    .local v15, "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_2

    #@39
    .line 1292
    return-object v15

    #@3a
    .line 1289
    .end local v15    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    const/4 v5, 0x1

    #@3b
    move-object/from16 v3, p0

    #@3d
    move-object/from16 v4, p1

    #@3f
    move-wide/from16 v6, p3

    #@41
    invoke-direct/range {v3 .. v8}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@44
    move-result-object v15

    #@45
    goto :goto_0

    #@46
    .line 1297
    .restart local v15    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    #@48
    move/from16 v1, p5

    #@4a
    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    #@4d
    move-result-object v10

    #@4e
    const/4 v11, 0x1

    #@4f
    move-object/from16 v9, p0

    #@51
    move-wide/from16 v12, p3

    #@53
    move/from16 v14, p5

    #@55
    invoke-direct/range {v9 .. v14}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    move-result-object v3

    #@59
    return-object v3

    #@5a
    .line 1303
    :catch_0
    move-exception v2

    #@5b
    .line 1304
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LockSettingsService"

    #@5e
    const-string/jumbo v4, "Failed to decrypt child profile key"

    #@61
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@64
    .line 1305
    new-instance v3, Landroid/os/RemoteException;

    #@66
    const-string/jumbo v4, "Unable to get tied profile token"

    #@69
    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v3
.end method
