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
    .line 139
    const/16 v0, 0x3f2

    #@7
    const/16 v1, 0x3f8

    #@9
    .line 140
    const/16 v2, 0x3e8

    #@b
    .line 139
    filled-new-array {v0, v1, v3, v2}, [I

    #@e
    move-result-object v0

    #@f
    sput-object v0, Lcom/android/server/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    #@11
    .line 144
    new-instance v0, Landroid/content/Intent;

    #@13
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19
    sput-object v0, Lcom/android/server/LockSettingsService;->ACTION_NULL:Landroid/content/Intent;

    #@1b
    .line 145
    sget-object v0, Lcom/android/server/LockSettingsService;->ACTION_NULL:Landroid/content/Intent;

    #@1d
    const-string/jumbo v1, "android.intent.category.HOME"

    #@20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@23
    .line 1569
    const/16 v0, 0x10

    #@25
    new-array v0, v0, [Ljava/lang/String;

    #@27
    .line 1570
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    #@2a
    aput-object v1, v0, v3

    #@2c
    .line 1571
    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    #@2f
    aput-object v1, v0, v4

    #@31
    .line 1572
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    #@34
    aput-object v1, v0, v5

    #@36
    .line 1573
    const-string/jumbo v1, "lockscreen.password_type"

    #@39
    aput-object v1, v0, v6

    #@3b
    .line 1574
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    #@3e
    aput-object v1, v0, v7

    #@40
    .line 1575
    const-string/jumbo v1, "lockscreen.password_salt"

    #@43
    const/4 v2, 0x5

    #@44
    aput-object v1, v0, v2

    #@46
    .line 1576
    const-string/jumbo v1, "lockscreen.disabled"

    #@49
    const/4 v2, 0x6

    #@4a
    aput-object v1, v0, v2

    #@4c
    .line 1577
    const-string/jumbo v1, "lockscreen.options"

    #@4f
    const/4 v2, 0x7

    #@50
    aput-object v1, v0, v2

    #@52
    .line 1578
    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    #@55
    const/16 v2, 0x8

    #@57
    aput-object v1, v0, v2

    #@59
    .line 1579
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    #@5c
    const/16 v2, 0x9

    #@5e
    aput-object v1, v0, v2

    #@60
    .line 1580
    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    #@63
    const/16 v2, 0xa

    #@65
    aput-object v1, v0, v2

    #@67
    .line 1581
    const-string/jumbo v1, "lockscreen.passwordhistory"

    #@6a
    const/16 v2, 0xb

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 1582
    const-string/jumbo v1, "lock_pattern_autolock"

    #@71
    const/16 v2, 0xc

    #@73
    aput-object v1, v0, v2

    #@75
    .line 1583
    const-string/jumbo v1, "lock_biometric_weak_flags"

    #@78
    const/16 v2, 0xd

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 1584
    const-string/jumbo v1, "lock_pattern_visible_pattern"

    #@7f
    const/16 v2, 0xe

    #@81
    aput-object v1, v0, v2

    #@83
    .line 1585
    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    #@86
    const/16 v2, 0xf

    #@88
    aput-object v1, v0, v2

    #@8a
    .line 1569
    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    #@8c
    .line 1589
    new-array v0, v5, [Ljava/lang/String;

    #@8e
    .line 1590
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    #@91
    aput-object v1, v0, v3

    #@93
    .line 1591
    const-string/jumbo v1, "lock_screen_owner_info"

    #@96
    aput-object v1, v0, v4

    #@98
    .line 1589
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@9a
    .line 1595
    new-array v0, v7, [Ljava/lang/String;

    #@9c
    .line 1596
    const-string/jumbo v1, "lockscreen.password_salt"

    #@9f
    aput-object v1, v0, v3

    #@a1
    .line 1597
    const-string/jumbo v1, "lockscreen.passwordhistory"

    #@a4
    aput-object v1, v0, v4

    #@a6
    .line 1598
    const-string/jumbo v1, "lockscreen.password_type"

    #@a9
    aput-object v1, v0, v5

    #@ab
    .line 1599
    const-string/jumbo v1, "lockscreen.profilechallenge"

    #@ae
    aput-object v1, v0, v6

    #@b0
    .line 1595
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@b2
    .line 1602
    new-array v0, v5, [Ljava/lang/String;

    #@b4
    .line 1603
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    #@b7
    aput-object v1, v0, v3

    #@b9
    .line 1604
    const-string/jumbo v1, "lock_screen_owner_info"

    #@bc
    aput-object v1, v0, v4

    #@be
    .line 1602
    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    #@c0
    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 261
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    #@4
    .line 120
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    #@b
    .line 134
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    #@11
    .line 411
    new-instance v0, Lcom/android/server/LockSettingsService$1;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    #@16
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@18
    .line 262
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@1a
    .line 263
    new-instance v0, Landroid/os/Handler;

    #@1c
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    #@21
    .line 264
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth;

    #@23
    invoke-direct {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;-><init>(Landroid/content/Context;)V

    #@26
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@28
    .line 267
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #@2a
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@2f
    .line 268
    const/4 v0, 0x1

    #@30
    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    #@32
    .line 270
    new-instance v3, Landroid/content/IntentFilter;

    #@34
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@37
    .line 271
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@3a
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3d
    .line 272
    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    #@40
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@43
    .line 273
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@46
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@49
    .line 274
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
    .line 276
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
    .line 288
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@61
    const-string/jumbo v1, "notification"

    #@64
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    .line 287
    check-cast v0, Landroid/app/NotificationManager;

    #@6a
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    #@6c
    .line 289
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
    .line 290
    new-instance v0, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    #@7b
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@7d
    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;-><init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V

    #@80
    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    #@82
    .line 291
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    #@84
    invoke-virtual {v0}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->register()V

    #@87
    .line 261
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
    .line 1144
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
    .line 1145
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    #@d
    move-result-object v2

    #@e
    .line 1146
    .local v2, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v0

    #@12
    .line 1148
    .local v0, "callingId":J
    :try_start_0
    iget v4, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    #@14
    invoke-interface {v2, p1, v4, p2, p3}, Landroid/os/storage/IMountService;->addUserKeyAuth(II[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 1150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 1143
    return-void

    #@1b
    .line 1149
    :catchall_0
    move-exception v4

    #@1c
    .line 1150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 1149
    throw v4
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@5
    const-string/jumbo v2, "LockSettingsRead"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 596
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 603
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
    .line 604
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@c
    aget-object v2, v3, v1

    #@e
    .line 605
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
    .line 607
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
    .line 608
    const-string/jumbo v5, " needs permission "

    #@34
    .line 607
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 608
    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    #@3b
    .line 607
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 608
    const-string/jumbo v5, " to read "

    #@42
    .line 607
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 609
    const-string/jumbo v5, " for user "

    #@4d
    .line 607
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
    .line 603
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 613
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
    .line 614
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    #@68
    aget-object v2, v3, v1

    #@6a
    .line 615
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
    .line 617
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
    .line 618
    const-string/jumbo v5, " needs permission "

    #@90
    .line 617
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    .line 618
    const-string/jumbo v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@97
    .line 617
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    .line 618
    const-string/jumbo v5, " to read "

    #@9e
    .line 617
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    .line 619
    const-string/jumbo v5, " for user "

    #@a9
    .line 617
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
    .line 613
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@bb
    goto :goto_1

    #@bc
    .line 600
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@5
    const-string/jumbo v2, "LockSettingsWrite"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 592
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
    .line 1123
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    #@4
    .line 1122
    return-void
.end method

.method private doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I
    .param p7, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Password can\'t be null or empty"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1344
    :cond_0
    new-instance v8, Lcom/android/server/LockSettingsService$6;

    #@11
    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$6;-><init>(Lcom/android/server/LockSettingsService;)V

    #@14
    move-object v1, p0

    #@15
    move/from16 v2, p6

    #@17
    move-object v3, p2

    #@18
    move-object v4, p1

    #@19
    move v5, p3

    #@1a
    move-wide v6, p4

    #@1b
    move-object/from16 v9, p7

    #@1d
    .line 1343
    invoke-direct/range {v1 .. v9}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1328
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@3
    .line 1329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Password can\'t be null or empty"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1332
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
    move-object v7, p6

    #@1e
    .line 1333
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method private doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 14
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I
    .param p7, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1238
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "Pattern can\'t be null or empty"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 1240
    :cond_0
    if-eqz p2, :cond_2

    #@11
    move-object/from16 v0, p2

    #@13
    iget-boolean v12, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    #@15
    .line 1243
    .local v12, "shouldReEnrollBaseZero":Z
    :goto_0
    if-eqz v12, :cond_3

    #@17
    .line 1244
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 1251
    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/android/server/LockSettingsService$5;

    #@1d
    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$5;-><init>(Lcom/android/server/LockSettingsService;)V

    #@20
    move-object v3, p0

    #@21
    move/from16 v4, p6

    #@23
    move-object/from16 v5, p2

    #@25
    move/from16 v7, p3

    #@27
    move-wide/from16 v8, p4

    #@29
    move-object/from16 v11, p7

    #@2b
    .line 1249
    invoke-direct/range {v3 .. v11}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@2e
    move-result-object v2

    #@2f
    .line 1272
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@32
    move-result v3

    #@33
    if-nez v3, :cond_1

    #@35
    if-eqz v12, :cond_1

    #@37
    .line 1274
    move/from16 v0, p6

    #@39
    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    #@3c
    .line 1277
    :cond_1
    return-object v2

    #@3d
    .line 1240
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "patternToVerify":Ljava/lang/String;
    .end local v12    # "shouldReEnrollBaseZero":Z
    :cond_2
    const/4 v12, 0x0

    #@3e
    goto :goto_0

    #@3f
    .line 1246
    .restart local v12    # "shouldReEnrollBaseZero":Z
    :cond_3
    move-object v6, p1

    #@40
    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_1
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1224
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@3
    .line 1225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Pattern can\'t be null or empty"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1228
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
    move-object v7, p6

    #@1e
    .line 1229
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@21
    move-result-object v0

    #@22
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
    .line 1082
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@4
    .line 1083
    if-nez p2, :cond_0

    #@6
    .line 1084
    const/4 v0, 0x0

    #@7
    .line 1086
    :goto_0
    if-nez p3, :cond_1

    #@9
    .line 1087
    const/4 v3, 0x0

    #@a
    .line 1089
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v4, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    #@11
    move-result-object v2

    #@12
    .line 1092
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    #@14
    .line 1093
    return-object v5

    #@15
    .line 1085
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object v0

    #@19
    .local v0, "enrolledCredentialBytes":[B
    goto :goto_0

    #@1a
    .line 1088
    .end local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    #@1d
    move-result-object v3

    #@1e
    .local v3, "toEnrollBytes":[B
    goto :goto_1

    #@1f
    .line 1096
    .end local v3    # "toEnrollBytes":[B
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    #@22
    move-result-object v1

    #@23
    .line 1097
    .local v1, "hash":[B
    if-eqz v1, :cond_3

    #@25
    .line 1098
    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@28
    .line 1103
    :goto_2
    return-object v1

    #@29
    .line 1101
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
    .line 1156
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    #@3
    move-result-object v2

    #@4
    .line 1157
    .local v2, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 1159
    .local v0, "callingId":J
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 1161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e
    .line 1155
    return-void

    #@f
    .line 1160
    :catchall_0
    move-exception v3

    #@10
    .line 1161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 1160
    throw v3
.end method

.method private getCurrentHandle(I)[B
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 829
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    #@5
    move-result v2

    #@6
    .line 830
    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_0

    #@9
    .line 845
    const/4 v1, 0x0

    #@a
    .line 850
    :goto_0
    const/4 v3, -0x1

    #@b
    if-eq v2, v3, :cond_0

    #@d
    if-nez v1, :cond_0

    #@f
    .line 851
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
    .line 854
    :cond_0
    return-object v1

    #@31
    .line 832
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@33
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@36
    move-result-object v0

    #@37
    .line 833
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    #@39
    .line 834
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@3b
    .local v1, "currentHandle":[B
    goto :goto_0

    #@3c
    .line 835
    .end local v1    # "currentHandle":[B
    :cond_1
    const/4 v1, 0x0

    #@3d
    .local v1, "currentHandle":[B
    goto :goto_0

    #@3e
    .line 838
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@40
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@43
    move-result-object v0

    #@44
    .line 839
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    #@46
    .line 840
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    #@48
    .local v1, "currentHandle":[B
    goto :goto_0

    #@49
    .line 841
    .end local v1    # "currentHandle":[B
    :cond_2
    const/4 v1, 0x0

    #@4a
    .local v1, "currentHandle":[B
    goto :goto_0

    #@4b
    .line 830
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
    .line 739
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@5
    invoke-virtual {v7, p1}, Lcom/android/server/LockSettingsStorage;->readChildProfileLock(I)[B

    #@8
    move-result-object v6

    #@9
    .line 740
    .local v6, "storedData":[B
    if-nez v6, :cond_0

    #@b
    .line 741
    new-instance v7, Ljava/io/FileNotFoundException;

    #@d
    const-string/jumbo v8, "Child profile lock file not found"

    #@10
    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@13
    throw v7

    #@14
    .line 743
    :cond_0
    const/4 v7, 0x0

    #@15
    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@18
    move-result-object v4

    #@19
    .line 745
    .local v4, "iv":[B
    array-length v7, v6

    #@1a
    .line 744
    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@1d
    move-result-object v3

    #@1e
    .line 747
    .local v3, "encryptedPassword":[B
    const-string/jumbo v7, "AndroidKeyStore"

    #@21
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@24
    move-result-object v5

    #@25
    .line 748
    .local v5, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v5, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    #@28
    .line 750
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
    .line 749
    invoke-virtual {v5, v7, v9}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Ljavax/crypto/SecretKey;

    #@42
    .line 752
    .local v1, "decryptionKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v7, "AES/GCM/NoPadding"

    #@45
    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@48
    move-result-object v0

    #@49
    .line 755
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
    .line 756
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@57
    move-result-object v2

    #@58
    .line 757
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
    .line 1625
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1626
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v1

    #@a
    .line 1630
    :cond_0
    :try_start_1
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    #@d
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    .line 1631
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@13
    .line 1632
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
    .line 1633
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    #@23
    .line 1634
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit p0

    #@26
    return-object v1

    #@27
    .line 1637
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
    .line 1638
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
    .line 1608
    const-string/jumbo v1, "mount"

    #@4
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 1609
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@a
    .line 1610
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 1612
    :cond_0
    return-object v2
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 892
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
    .line 893
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@11
    move-result v0

    #@12
    .line 892
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
    .line 887
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
    .line 888
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@f
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 887
    :cond_0
    :goto_0
    return v0

    #@16
    .line 888
    :cond_1
    const/4 v0, 0x1

    #@17
    goto :goto_0
.end method

.method private maybeShowEncryptionNotifications()V
    .locals 8

    #@0
    .prologue
    .line 300
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@5
    move-result-object v5

    #@6
    .line 301
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@a
    move-result v6

    #@b
    if-ge v0, v6, :cond_3

    #@d
    .line 302
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/content/pm/UserInfo;

    #@13
    .line 303
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@16
    move-result-object v4

    #@17
    .line 304
    .local v4, "userHandle":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@19
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    #@1b
    invoke-virtual {v6, v7}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_1

    #@21
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@23
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    #@25
    invoke-virtual {v6, v7}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    #@28
    move-result v1

    #@29
    .line 305
    .local v1, "isSecure":Z
    :goto_1
    if-eqz v1, :cond_0

    #@2b
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@2d
    invoke-virtual {v6, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_2

    #@33
    .line 301
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 304
    .end local v1    # "isSecure":Z
    :cond_1
    const/4 v1, 0x1

    #@37
    goto :goto_1

    #@38
    .line 306
    .restart local v1    # "isSecure":Z
    :cond_2
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_0

    #@3e
    .line 311
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@40
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    #@42
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@45
    move-result-object v2

    #@46
    .line 312
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@48
    .line 313
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@4a
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    #@51
    move-result v6

    #@52
    .line 312
    if-eqz v6, :cond_0

    #@54
    .line 314
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@56
    invoke-virtual {v6, v4}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    #@59
    move-result v6

    #@5a
    if-nez v6, :cond_0

    #@5c
    .line 317
    invoke-direct {p0, v4}, Lcom/android/server/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    #@5f
    goto :goto_2

    #@60
    .line 299
    .end local v1    # "isSecure":Z
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_3
    return-void
.end method

.method private migrateOldData()V
    .locals 38

    #@0
    .prologue
    .line 452
    :try_start_0
    const-string/jumbo v33, "migrated"

    #@3
    const/16 v34, 0x0

    #@5
    const/16 v35, 0x0

    #@7
    move-object/from16 v0, p0

    #@9
    move-object/from16 v1, v33

    #@b
    move-object/from16 v2, v34

    #@d
    move/from16 v3, v35

    #@f
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@12
    move-result-object v33

    #@13
    if-nez v33, :cond_2

    #@15
    .line 453
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@19
    move-object/from16 v33, v0

    #@1b
    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1e
    move-result-object v9

    #@1f
    .line 454
    .local v9, "cr":Landroid/content/ContentResolver;
    sget-object v34, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    #@21
    const/16 v33, 0x0

    #@23
    move-object/from16 v0, v34

    #@25
    array-length v0, v0

    #@26
    move/from16 v35, v0

    #@28
    :goto_0
    move/from16 v0, v33

    #@2a
    move/from16 v1, v35

    #@2c
    if-ge v0, v1, :cond_1

    #@2e
    aget-object v31, v34, v33

    #@30
    .line 455
    .local v31, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v31

    #@32
    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v32

    #@36
    .line 456
    .local v32, "value":Ljava/lang/String;
    if-eqz v32, :cond_0

    #@38
    .line 457
    const/16 v36, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    move-object/from16 v1, v31

    #@3e
    move-object/from16 v2, v32

    #@40
    move/from16 v3, v36

    #@42
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@45
    .line 454
    :cond_0
    add-int/lit8 v33, v33, 0x1

    #@47
    goto :goto_0

    #@48
    .line 461
    .end local v31    # "validSetting":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v33, "migrated"

    #@4b
    const-string/jumbo v34, "true"

    #@4e
    const/16 v35, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    move-object/from16 v1, v33

    #@54
    move-object/from16 v2, v34

    #@56
    move/from16 v3, v35

    #@58
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@5b
    .line 462
    const-string/jumbo v33, "LockSettingsService"

    #@5e
    const-string/jumbo v34, "Migrated lock settings to new location"

    #@61
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 466
    .end local v9    # "cr":Landroid/content/ContentResolver;
    :cond_2
    const-string/jumbo v33, "migrated_user_specific"

    #@67
    const/16 v34, 0x0

    #@69
    const/16 v35, 0x0

    #@6b
    move-object/from16 v0, p0

    #@6d
    move-object/from16 v1, v33

    #@6f
    move-object/from16 v2, v34

    #@71
    move/from16 v3, v35

    #@73
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@76
    move-result-object v33

    #@77
    if-nez v33, :cond_9

    #@79
    .line 467
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@7d
    move-object/from16 v33, v0

    #@7f
    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@82
    move-result-object v9

    #@83
    .line 468
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@87
    move-object/from16 v33, v0

    #@89
    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@8c
    move-result-object v30

    #@8d
    .line 469
    .local v30, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v26, 0x0

    #@8f
    .local v26, "user":I
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    #@92
    move-result v33

    #@93
    move/from16 v0, v26

    #@95
    move/from16 v1, v33

    #@97
    if-ge v0, v1, :cond_8

    #@99
    .line 471
    move-object/from16 v0, v30

    #@9b
    move/from16 v1, v26

    #@9d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a0
    move-result-object v33

    #@a1
    check-cast v33, Landroid/content/pm/UserInfo;

    #@a3
    move-object/from16 v0, v33

    #@a5
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@a7
    move/from16 v28, v0

    #@a9
    .line 472
    .local v28, "userId":I
    const-string/jumbo v6, "lock_screen_owner_info"

    #@ac
    .line 473
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v33, "lock_screen_owner_info"

    #@af
    move-object/from16 v0, v33

    #@b1
    move/from16 v1, v28

    #@b3
    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@b6
    move-result-object v19

    #@b7
    .line 474
    .local v19, "ownerInfo":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ba
    move-result v33

    #@bb
    if-nez v33, :cond_3

    #@bd
    .line 475
    const-string/jumbo v33, "lock_screen_owner_info"

    #@c0
    move-object/from16 v0, p0

    #@c2
    move-object/from16 v1, v33

    #@c4
    move-object/from16 v2, v19

    #@c6
    move/from16 v3, v28

    #@c8
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@cb
    .line 476
    const-string/jumbo v33, "lock_screen_owner_info"

    #@ce
    const-string/jumbo v34, ""

    #@d1
    move-object/from16 v0, v33

    #@d3
    move-object/from16 v1, v34

    #@d5
    move/from16 v2, v28

    #@d7
    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@da
    .line 482
    :cond_3
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@dd
    .line 485
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v33, "lock_screen_owner_info_enabled"

    #@e0
    move-object/from16 v0, v33

    #@e2
    move/from16 v1, v28

    #@e4
    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e7
    move-result v17

    #@e8
    .line 486
    .local v17, "ivalue":I
    if-eqz v17, :cond_5

    #@ea
    const/4 v14, 0x1

    #@eb
    .line 487
    .local v14, "enabled":Z
    :goto_2
    const-string/jumbo v34, "lock_screen_owner_info_enabled"

    #@ee
    if-eqz v14, :cond_6

    #@f0
    const/16 v33, 0x1

    #@f2
    :goto_3
    move/from16 v0, v33

    #@f4
    int-to-long v0, v0

    #@f5
    move-wide/from16 v36, v0

    #@f7
    move-object/from16 v0, p0

    #@f9
    move-object/from16 v1, v34

    #@fb
    move-wide/from16 v2, v36

    #@fd
    move/from16 v4, v28

    #@ff
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@102
    .line 494
    .end local v14    # "enabled":Z
    .end local v17    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string/jumbo v33, "lock_screen_owner_info_enabled"

    #@105
    const/16 v34, 0x0

    #@107
    move-object/from16 v0, v33

    #@109
    move/from16 v1, v34

    #@10b
    move/from16 v2, v28

    #@10d
    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@110
    .line 469
    add-int/lit8 v26, v26, 0x1

    #@112
    goto/16 :goto_1

    #@114
    .line 486
    .restart local v17    # "ivalue":I
    :cond_5
    const/4 v14, 0x0

    #@115
    .restart local v14    # "enabled":Z
    goto :goto_2

    #@116
    .line 487
    :cond_6
    const/16 v33, 0x0

    #@118
    goto :goto_3

    #@119
    .line 488
    .end local v14    # "enabled":Z
    .end local v17    # "ivalue":I
    :catch_0
    move-exception v12

    #@11a
    .line 490
    .local v12, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11d
    move-result v33

    #@11e
    if-nez v33, :cond_4

    #@120
    .line 491
    const-string/jumbo v33, "lock_screen_owner_info_enabled"

    #@123
    const-wide/16 v34, 0x1

    #@125
    move-object/from16 v0, p0

    #@127
    move-object/from16 v1, v33

    #@129
    move-wide/from16 v2, v34

    #@12b
    move/from16 v4, v28

    #@12d
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@130
    goto :goto_4

    #@131
    .line 587
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v19    # "ownerInfo":Ljava/lang/String;
    .end local v26    # "user":I
    .end local v28    # "userId":I
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v22

    #@132
    .line 588
    .local v22, "re":Landroid/os/RemoteException;
    const-string/jumbo v33, "LockSettingsService"

    #@135
    const-string/jumbo v34, "Unable to migrate old data"

    #@138
    move-object/from16 v0, v33

    #@13a
    move-object/from16 v1, v34

    #@13c
    move-object/from16 v2, v22

    #@13e
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@141
    .line 448
    .end local v22    # "re":Landroid/os/RemoteException;
    :cond_7
    return-void

    #@142
    .line 497
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .restart local v26    # "user":I
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string/jumbo v33, "migrated_user_specific"

    #@145
    const-string/jumbo v34, "true"

    #@148
    const/16 v35, 0x0

    #@14a
    move-object/from16 v0, p0

    #@14c
    move-object/from16 v1, v33

    #@14e
    move-object/from16 v2, v34

    #@150
    move/from16 v3, v35

    #@152
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@155
    .line 498
    const-string/jumbo v33, "LockSettingsService"

    #@158
    const-string/jumbo v34, "Migrated per-user lock settings to new location"

    #@15b
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@15e
    .line 502
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v26    # "user":I
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string/jumbo v33, "migrated_biometric_weak"

    #@161
    const/16 v34, 0x0

    #@163
    const/16 v35, 0x0

    #@165
    move-object/from16 v0, p0

    #@167
    move-object/from16 v1, v33

    #@169
    move-object/from16 v2, v34

    #@16b
    move/from16 v3, v35

    #@16d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@170
    move-result-object v33

    #@171
    if-nez v33, :cond_c

    #@173
    .line 503
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@177
    move-object/from16 v33, v0

    #@179
    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@17c
    move-result-object v30

    #@17d
    .line 504
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v15, 0x0

    #@17e
    .local v15, "i":I
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    #@181
    move-result v33

    #@182
    move/from16 v0, v33

    #@184
    if-ge v15, v0, :cond_b

    #@186
    .line 505
    move-object/from16 v0, v30

    #@188
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18b
    move-result-object v33

    #@18c
    check-cast v33, Landroid/content/pm/UserInfo;

    #@18e
    move-object/from16 v0, v33

    #@190
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@192
    move/from16 v28, v0

    #@194
    .line 506
    .restart local v28    # "userId":I
    const-string/jumbo v33, "lockscreen.password_type"

    #@197
    .line 507
    const-wide/16 v34, 0x0

    #@199
    .line 506
    move-object/from16 v0, p0

    #@19b
    move-object/from16 v1, v33

    #@19d
    move-wide/from16 v2, v34

    #@19f
    move/from16 v4, v28

    #@1a1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    #@1a4
    move-result-wide v24

    #@1a5
    .line 509
    .local v24, "type":J
    const-string/jumbo v33, "lockscreen.password_type_alternate"

    #@1a8
    .line 510
    const-wide/16 v34, 0x0

    #@1aa
    .line 509
    move-object/from16 v0, p0

    #@1ac
    move-object/from16 v1, v33

    #@1ae
    move-wide/from16 v2, v34

    #@1b0
    move/from16 v4, v28

    #@1b2
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    #@1b5
    move-result-wide v10

    #@1b6
    .line 512
    .local v10, "alternateType":J
    const-wide/32 v34, 0x8000

    #@1b9
    cmp-long v33, v24, v34

    #@1bb
    if-nez v33, :cond_a

    #@1bd
    .line 513
    const-string/jumbo v33, "lockscreen.password_type"

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    move-object/from16 v1, v33

    #@1c4
    move/from16 v2, v28

    #@1c6
    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    #@1c9
    .line 517
    :cond_a
    const-string/jumbo v33, "lockscreen.password_type_alternate"

    #@1cc
    .line 518
    const-wide/16 v34, 0x0

    #@1ce
    .line 517
    move-object/from16 v0, p0

    #@1d0
    move-object/from16 v1, v33

    #@1d2
    move-wide/from16 v2, v34

    #@1d4
    move/from16 v4, v28

    #@1d6
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    #@1d9
    .line 504
    add-int/lit8 v15, v15, 0x1

    #@1db
    goto :goto_5

    #@1dc
    .line 521
    .end local v10    # "alternateType":J
    .end local v24    # "type":J
    .end local v28    # "userId":I
    :cond_b
    const-string/jumbo v33, "migrated_biometric_weak"

    #@1df
    const-string/jumbo v34, "true"

    #@1e2
    const/16 v35, 0x0

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    move-object/from16 v1, v33

    #@1e8
    move-object/from16 v2, v34

    #@1ea
    move/from16 v3, v35

    #@1ec
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@1ef
    .line 522
    const-string/jumbo v33, "LockSettingsService"

    #@1f2
    const-string/jumbo v34, "Migrated biometric weak to use the fallback instead"

    #@1f5
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f8
    .line 528
    .end local v15    # "i":I
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const-string/jumbo v33, "migrated_lockscreen_disabled"

    #@1fb
    const/16 v34, 0x0

    #@1fd
    const/16 v35, 0x0

    #@1ff
    move-object/from16 v0, p0

    #@201
    move-object/from16 v1, v33

    #@203
    move-object/from16 v2, v34

    #@205
    move/from16 v3, v35

    #@207
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@20a
    move-result-object v33

    #@20b
    if-nez v33, :cond_11

    #@20d
    .line 529
    move-object/from16 v0, p0

    #@20f
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@211
    move-object/from16 v33, v0

    #@213
    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@216
    move-result-object v30

    #@217
    .line 530
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    #@21a
    move-result v27

    #@21b
    .line 531
    .local v27, "userCount":I
    const/16 v23, 0x0

    #@21d
    .line 532
    .local v23, "switchableUsers":I
    const/4 v15, 0x0

    #@21e
    .restart local v15    # "i":I
    :goto_6
    move/from16 v0, v27

    #@220
    if-ge v15, v0, :cond_e

    #@222
    .line 533
    move-object/from16 v0, v30

    #@224
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@227
    move-result-object v33

    #@228
    check-cast v33, Landroid/content/pm/UserInfo;

    #@22a
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    #@22d
    move-result v33

    #@22e
    if-eqz v33, :cond_d

    #@230
    .line 534
    add-int/lit8 v23, v23, 0x1

    #@232
    .line 532
    :cond_d
    add-int/lit8 v15, v15, 0x1

    #@234
    goto :goto_6

    #@235
    .line 538
    :cond_e
    const/16 v33, 0x1

    #@237
    move/from16 v0, v23

    #@239
    move/from16 v1, v33

    #@23b
    if-le v0, v1, :cond_10

    #@23d
    .line 539
    const/4 v15, 0x0

    #@23e
    :goto_7
    move/from16 v0, v27

    #@240
    if-ge v15, v0, :cond_10

    #@242
    .line 540
    move-object/from16 v0, v30

    #@244
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@247
    move-result-object v33

    #@248
    check-cast v33, Landroid/content/pm/UserInfo;

    #@24a
    move-object/from16 v0, v33

    #@24c
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@24e
    move/from16 v16, v0

    #@250
    .line 542
    .local v16, "id":I
    const-string/jumbo v33, "lockscreen.disabled"

    #@253
    const/16 v34, 0x0

    #@255
    move-object/from16 v0, p0

    #@257
    move-object/from16 v1, v33

    #@259
    move/from16 v2, v34

    #@25b
    move/from16 v3, v16

    #@25d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    #@260
    move-result v33

    #@261
    if-eqz v33, :cond_f

    #@263
    .line 543
    const-string/jumbo v33, "lockscreen.disabled"

    #@266
    const/16 v34, 0x0

    #@268
    move-object/from16 v0, p0

    #@26a
    move-object/from16 v1, v33

    #@26c
    move/from16 v2, v34

    #@26e
    move/from16 v3, v16

    #@270
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    #@273
    .line 539
    :cond_f
    add-int/lit8 v15, v15, 0x1

    #@275
    goto :goto_7

    #@276
    .line 548
    .end local v16    # "id":I
    :cond_10
    const-string/jumbo v33, "migrated_lockscreen_disabled"

    #@279
    const-string/jumbo v34, "true"

    #@27c
    const/16 v35, 0x0

    #@27e
    move-object/from16 v0, p0

    #@280
    move-object/from16 v1, v33

    #@282
    move-object/from16 v2, v34

    #@284
    move/from16 v3, v35

    #@286
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@289
    .line 549
    const-string/jumbo v33, "LockSettingsService"

    #@28c
    const-string/jumbo v34, "Migrated lockscreen disabled flag"

    #@28f
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@292
    .line 552
    .end local v15    # "i":I
    .end local v23    # "switchableUsers":I
    .end local v27    # "userCount":I
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_11
    move-object/from16 v0, p0

    #@294
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@296
    move-object/from16 v33, v0

    #@298
    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@29b
    move-result-object v30

    #@29c
    .line 553
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v15, 0x0

    #@29d
    .restart local v15    # "i":I
    :goto_8
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    #@2a0
    move-result v33

    #@2a1
    move/from16 v0, v33

    #@2a3
    if-ge v15, v0, :cond_7

    #@2a5
    .line 554
    move-object/from16 v0, v30

    #@2a7
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2aa
    move-result-object v29

    #@2ab
    check-cast v29, Landroid/content/pm/UserInfo;

    #@2ad
    .line 555
    .local v29, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@2b0
    move-result v33

    #@2b1
    if-eqz v33, :cond_12

    #@2b3
    move-object/from16 v0, p0

    #@2b5
    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2b7
    move-object/from16 v33, v0

    #@2b9
    move-object/from16 v0, v29

    #@2bb
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@2bd
    move/from16 v34, v0

    #@2bf
    invoke-virtual/range {v33 .. v34}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    #@2c2
    move-result v33

    #@2c3
    if-eqz v33, :cond_12

    #@2c5
    .line 562
    const-string/jumbo v33, "lockscreen.password_type"

    #@2c8
    .line 563
    const-wide/16 v34, 0x0

    #@2ca
    move-object/from16 v0, v29

    #@2cc
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@2ce
    move/from16 v36, v0

    #@2d0
    .line 562
    move-object/from16 v0, p0

    #@2d2
    move-object/from16 v1, v33

    #@2d4
    move-wide/from16 v2, v34

    #@2d6
    move/from16 v4, v36

    #@2d8
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    #@2db
    move-result-wide v20

    #@2dc
    .line 564
    .local v20, "quality":J
    const-wide/16 v34, 0x0

    #@2de
    cmp-long v33, v20, v34

    #@2e0
    if-nez v33, :cond_14

    #@2e2
    .line 566
    const-string/jumbo v33, "LockSettingsService"

    #@2e5
    const-string/jumbo v34, "Migrated tied profile lock type"

    #@2e8
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2eb
    .line 567
    const-string/jumbo v33, "lockscreen.password_type"

    #@2ee
    .line 568
    const-wide/32 v34, 0x50000

    #@2f1
    move-object/from16 v0, v29

    #@2f3
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@2f5
    move/from16 v36, v0

    #@2f7
    .line 567
    move-object/from16 v0, p0

    #@2f9
    move-object/from16 v1, v33

    #@2fb
    move-wide/from16 v2, v34

    #@2fd
    move/from16 v4, v36

    #@2ff
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@302
    .line 575
    .end local v20    # "quality":J
    :cond_12
    :goto_9
    :try_start_4
    new-instance v33, Ljava/lang/StringBuilder;

    #@304
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@307
    const-string/jumbo v34, "profile_key_name_encrypt_"

    #@30a
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30d
    move-result-object v33

    #@30e
    move-object/from16 v0, v29

    #@310
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@312
    move/from16 v34, v0

    #@314
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@317
    move-result-object v33

    #@318
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31b
    move-result-object v8

    #@31c
    .line 577
    .local v8, "alias":Ljava/lang/String;
    const-string/jumbo v33, "AndroidKeyStore"

    #@31f
    invoke-static/range {v33 .. v33}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@322
    move-result-object v18

    #@323
    .line 578
    .local v18, "keyStore":Ljava/security/KeyStore;
    const/16 v33, 0x0

    #@325
    move-object/from16 v0, v18

    #@327
    move-object/from16 v1, v33

    #@329
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    #@32c
    .line 579
    move-object/from16 v0, v18

    #@32e
    invoke-virtual {v0, v8}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    #@331
    move-result v33

    #@332
    if-eqz v33, :cond_13

    #@334
    .line 580
    move-object/from16 v0, v18

    #@336
    invoke-virtual {v0, v8}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@339
    .line 553
    .end local v8    # "alias":Ljava/lang/String;
    .end local v18    # "keyStore":Ljava/security/KeyStore;
    :cond_13
    :goto_a
    add-int/lit8 v15, v15, 0x1

    #@33b
    goto/16 :goto_8

    #@33d
    .line 569
    .restart local v20    # "quality":J
    :cond_14
    const-wide/32 v34, 0x50000

    #@340
    cmp-long v33, v20, v34

    #@342
    if-eqz v33, :cond_12

    #@344
    .line 571
    :try_start_5
    const-string/jumbo v33, "LockSettingsService"

    #@347
    new-instance v34, Ljava/lang/StringBuilder;

    #@349
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@34c
    const-string/jumbo v35, "Invalid tied profile lock type: "

    #@34f
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@352
    move-result-object v34

    #@353
    move-object/from16 v0, v34

    #@355
    move-wide/from16 v1, v20

    #@357
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35a
    move-result-object v34

    #@35b
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35e
    move-result-object v34

    #@35f
    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@362
    goto :goto_9

    #@363
    .line 583
    .end local v20    # "quality":J
    :catch_2
    move-exception v13

    #@364
    .line 584
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v33, "LockSettingsService"

    #@367
    const-string/jumbo v34, "Unable to remove tied profile key"

    #@36a
    move-object/from16 v0, v33

    #@36c
    move-object/from16 v1, v34

    #@36e
    invoke-static {v0, v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    #@371
    goto :goto_a
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
    .line 858
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
    .line 859
    return-void

    #@e
    .line 861
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
    .line 862
    :goto_0
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@1e
    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@21
    move-result-object v4

    #@22
    .line 863
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@25
    move-result v5

    #@26
    .line 864
    .local v5, "size":I
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_5

    #@29
    .line 865
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Landroid/content/pm/UserInfo;

    #@2f
    .line 866
    .local v3, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_1

    #@35
    .line 867
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    #@37
    .line 868
    .local v2, "managedUserId":I
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@39
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_3

    #@3f
    .line 864
    .end local v2    # "managedUserId":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_1

    #@42
    .line 861
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
    .line 871
    .end local v1    # "isSecure":Z
    .restart local v0    # "i":I
    .restart local v2    # "managedUserId":I
    .restart local v3    # "profile":Landroid/content/pm/UserInfo;
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "size":I
    :cond_3
    if-eqz v1, :cond_4

    #@46
    .line 872
    invoke-virtual {p0, v2, v7}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    #@49
    goto :goto_2

    #@4a
    .line 874
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    #@4d
    .line 875
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@50
    move-result-object v6

    #@51
    invoke-interface {v6, v2}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    #@54
    .line 876
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@56
    invoke-virtual {v6, v7, v2}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    #@59
    .line 877
    invoke-direct {p0, v7, v2}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@5c
    .line 878
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    #@5f
    .line 879
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@61
    invoke-virtual {v6, v2}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    #@64
    .line 880
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V

    #@67
    goto :goto_2

    #@68
    .line 857
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
    .line 1528
    :try_start_0
    const-string/jumbo v2, "AndroidKeyStore"

    #@3
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@6
    move-result-object v1

    #@7
    .line 1529
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    #@8
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    #@b
    .line 1530
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
    .line 1531
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
    .line 1525
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    :goto_0
    return-void

    #@3a
    .line 1533
    :catch_0
    move-exception v0

    #@3b
    .line 1535
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
    .line 1506
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    #@5
    .line 1507
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@7
    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStrongAuth;->removeUser(I)V

    #@a
    .line 1509
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@d
    move-result-object v2

    #@e
    .line 1510
    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    #@11
    .line 1513
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@14
    move-result-object v1

    #@15
    .line 1514
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_0

    #@17
    .line 1515
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1520
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
    .line 1521
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V

    #@2b
    .line 1505
    :cond_2
    return-void

    #@2c
    .line 1517
    :catch_0
    move-exception v0

    #@2d
    .line 1518
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
    .line 1128
    :try_start_0
    const-string/jumbo v3, "SHA-512"

    #@3
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v0

    #@7
    .line 1130
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string/jumbo v3, "Android FBE credential hash"

    #@a
    .line 1131
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@c
    .line 1130
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@f
    move-result-object v2

    #@10
    .line 1133
    .local v2, "personalization":[B
    const/16 v3, 0x80

    #@12
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    #@15
    move-result-object v2

    #@16
    .line 1134
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    #@19
    .line 1135
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1b
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    #@22
    .line 1136
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v3

    #@26
    return-object v3

    #@27
    .line 1137
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "personalization":[B
    :catch_0
    move-exception v1

    #@28
    .line 1138
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
    .line 723
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@3
    move-result-object v0

    #@4
    .line 724
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    #@7
    .line 722
    return-void
.end method

.method private setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
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
    const/4 v7, 0x0

    #@2
    .line 973
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    #@5
    move-result-object v8

    #@6
    .line 974
    .local v8, "currentHandle":[B
    if-nez p1, :cond_0

    #@8
    .line 975
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    #@b
    .line 976
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    #@12
    .line 977
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@14
    invoke-virtual {v0, v7, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    #@17
    .line 978
    invoke-direct {p0, v7, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@1a
    .line 979
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    #@1d
    .line 980
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    #@20
    .line 981
    return-void

    #@21
    .line 984
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 987
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
    .line 1005
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0, v8, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    #@2e
    move-result-object v11

    #@2f
    .line 1006
    .local v11, "enrolledHandle":[B
    if-eqz v11, :cond_4

    #@31
    .line 1008
    new-instance v2, Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@33
    invoke-direct {v2, v11, v3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    #@36
    .line 1010
    .local v2, "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    const-wide/16 v4, 0x0

    #@38
    move-object v0, p0

    #@39
    move-object v1, p1

    #@3a
    move v6, p3

    #@3b
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@3e
    move-result-object v0

    #@3f
    .line 1009
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    #@42
    .line 1012
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@44
    invoke-virtual {v0, v11, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    #@47
    .line 1013
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    #@4a
    .line 1014
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    #@4d
    .line 972
    return-void

    #@4e
    .line 993
    .end local v2    # "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v11    # "enrolledHandle":[B
    .restart local p2    # "savedCredential":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@4f
    .line 994
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "LockSettingsService"

    #@52
    const-string/jumbo v1, "Failed to decrypt child profile key"

    #@55
    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@58
    goto :goto_0

    #@59
    .line 988
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    #@5a
    .line 989
    .local v9, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v0, "LockSettingsService"

    #@5d
    const-string/jumbo v1, "Child profile key not found"

    #@60
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    goto :goto_0

    #@64
    .line 997
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    if-nez v8, :cond_1

    #@66
    .line 998
    if-eqz p2, :cond_3

    #@68
    .line 999
    const-string/jumbo v0, "LockSettingsService"

    #@6b
    const-string/jumbo v1, "Saved credential provided, but none stored"

    #@6e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 1001
    :cond_3
    const/4 p2, 0x0

    #@72
    .local p2, "savedCredential":Ljava/lang/String;
    goto :goto_0

    #@73
    .line 1016
    .end local p2    # "savedCredential":Ljava/lang/String;
    .restart local v11    # "enrolledHandle":[B
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
    .locals 11
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
    const/4 v7, 0x0

    #@2
    .line 910
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    #@5
    move-result-object v8

    #@6
    .line 912
    .local v8, "currentHandle":[B
    if-nez p1, :cond_0

    #@8
    .line 913
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    #@b
    .line 914
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    #@12
    .line 915
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@14
    invoke-virtual {v0, v7, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    #@17
    .line 916
    invoke-direct {p0, v7, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    #@1a
    .line 917
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    #@1d
    .line 918
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    #@20
    .line 919
    return-void

    #@21
    .line 922
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 925
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
    .line 945
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0, v8, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    #@2e
    move-result-object v10

    #@2f
    .line 946
    .local v10, "enrolledHandle":[B
    if-eqz v10, :cond_5

    #@31
    .line 948
    new-instance v2, Lcom/android/server/LockSettingsStorage$CredentialHash;

    #@33
    invoke-direct {v2, v10, v3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    #@36
    .line 950
    .local v2, "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    const-wide/16 v4, 0x0

    #@38
    move-object v0, p0

    #@39
    move-object v1, p1

    #@3a
    move v6, p3

    #@3b
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@3e
    move-result-object v0

    #@3f
    .line 949
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    #@42
    .line 951
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@44
    invoke-virtual {v0, v10, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    #@47
    .line 952
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    #@4a
    .line 953
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    #@4d
    .line 909
    return-void

    #@4e
    .line 929
    .end local v2    # "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v10    # "enrolledHandle":[B
    .restart local p2    # "savedCredential":Ljava/lang/String;
    :catch_0
    move-exception v9

    #@4f
    .line 930
    .local v9, "e":Ljava/lang/Exception;
    instance-of v0, v9, Ljava/io/FileNotFoundException;

    #@51
    if-eqz v0, :cond_2

    #@53
    .line 931
    const-string/jumbo v0, "LockSettingsService"

    #@56
    const-string/jumbo v1, "Child profile key not found"

    #@59
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_0

    #@5d
    .line 933
    :cond_2
    const-string/jumbo v0, "LockSettingsService"

    #@60
    const-string/jumbo v1, "Failed to decrypt child profile key"

    #@63
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@66
    goto :goto_0

    #@67
    .line 937
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    if-nez v8, :cond_1

    #@69
    .line 938
    if-eqz p2, :cond_4

    #@6b
    .line 939
    const-string/jumbo v0, "LockSettingsService"

    #@6e
    const-string/jumbo v1, "Saved credential provided, but none stored"

    #@71
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 941
    :cond_4
    const/4 p2, 0x0

    #@75
    .local p2, "savedCredential":Ljava/lang/String;
    goto :goto_0

    #@76
    .line 955
    .end local p2    # "savedCredential":Ljava/lang/String;
    .restart local v10    # "enrolledHandle":[B
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
    .line 666
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@2
    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    .line 667
    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    #@7
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 668
    const-string/jumbo v0, "com.android.providers.settings"

    #@10
    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    #@13
    .line 665
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
    .line 1108
    if-nez p3, :cond_0

    #@2
    .line 1109
    new-instance v1, Landroid/os/RemoteException;

    #@4
    const-string/jumbo v2, "Null response verifying a credential we just set"

    #@7
    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1111
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1112
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
    .line 1113
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@22
    move-result v3

    #@23
    .line 1112
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
    .line 1115
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@32
    move-result-object v0

    #@33
    .line 1116
    .local v0, "token":[B
    if-nez v0, :cond_2

    #@35
    .line 1117
    new-instance v1, Landroid/os/RemoteException;

    #@37
    const-string/jumbo v2, "Empty payload verifying a credential we just set"

    #@3a
    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1

    #@3e
    .line 1119
    :cond_2
    invoke-static {p2}, Lcom/android/server/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    #@41
    move-result-object v1

    #@42
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    #@45
    .line 1107
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
    .line 350
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return-void

    #@9
    .line 352
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    #@b
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@d
    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@10
    .line 353
    const v2, 0x1080448

    #@13
    .line 352
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@16
    move-result-object v1

    #@17
    .line 354
    const-wide/16 v2, 0x0

    #@19
    .line 352
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
    .line 358
    const/4 v2, 0x2

    #@2a
    .line 352
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@2d
    move-result-object v1

    #@2e
    .line 359
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@30
    .line 360
    const v3, 0x106005b

    #@33
    .line 359
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    #@36
    move-result v2

    #@37
    .line 352
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
    .line 367
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    #@55
    const/4 v2, 0x0

    #@56
    invoke-virtual {v1, v2, v4, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@59
    .line 346
    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 325
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v7

    #@7
    .line 327
    .local v7, "r":Landroid/content/res/Resources;
    const v0, 0x10405ed

    #@a
    .line 326
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v2

    #@e
    .line 329
    .local v2, "title":Ljava/lang/CharSequence;
    const v0, 0x10405f1

    #@11
    .line 328
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@14
    move-result-object v3

    #@15
    .line 331
    .local v3, "message":Ljava/lang/CharSequence;
    const v0, 0x10405f0

    #@18
    .line 330
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@1b
    move-result-object v4

    #@1c
    .line 333
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
    .line 334
    .local v6, "km":Landroid/app/KeyguardManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v0

    #@2b
    invoke-virtual {v6, v9, v9, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    #@2e
    move-result-object v8

    #@2f
    .line 335
    .local v8, "unlockIntent":Landroid/content/Intent;
    if-nez v8, :cond_0

    #@31
    .line 336
    return-void

    #@32
    .line 338
    :cond_0
    const/high16 v0, 0x10800000

    #@34
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@37
    .line 339
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@39
    const/4 v1, 0x0

    #@3a
    .line 340
    const/high16 v9, 0x8000000

    #@3c
    .line 339
    invoke-static {v0, v1, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@3f
    move-result-object v5

    #@40
    .local v5, "intent":Landroid/app/PendingIntent;
    move-object v0, p0

    #@41
    move-object v1, p1

    #@42
    .line 342
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@45
    .line 324
    return-void
.end method

.method private tieProfileLockToParent(ILjava/lang/String;)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1022
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    move-object/from16 v0, p2

    #@4
    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@7
    move-result-object v10

    #@8
    .line 1026
    .local v10, "randomLockSeed":[B
    :try_start_0
    const-string/jumbo v12, "AES"

    #@b
    invoke-static {v12}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    #@e
    move-result-object v6

    #@f
    .line 1027
    .local v6, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v12, Ljava/security/SecureRandom;

    #@11
    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    #@14
    invoke-virtual {v6, v12}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    #@17
    .line 1028
    invoke-virtual {v6}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    #@1a
    move-result-object v11

    #@1b
    .line 1029
    .local v11, "secretKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v12, "AndroidKeyStore"

    #@1e
    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@21
    move-result-object v7

    #@22
    .line 1030
    .local v7, "keyStore":Ljava/security/KeyStore;
    const/4 v12, 0x0

    #@23
    invoke-virtual {v7, v12}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
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

    #@26
    .line 1033
    :try_start_1
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
    .line 1034
    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    #@3e
    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    #@41
    .line 1035
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
    .line 1036
    const-string/jumbo v16, "GCM"

    #@4d
    const/16 v17, 0x0

    #@4f
    aput-object v16, v15, v17

    #@51
    .line 1035
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@54
    move-result-object v14

    #@55
    const/4 v15, 0x1

    #@56
    new-array v15, v15, [Ljava/lang/String;

    #@58
    .line 1037
    const-string/jumbo v16, "NoPadding"

    #@5b
    const/16 v17, 0x0

    #@5d
    aput-object v16, v15, v17

    #@5f
    .line 1035
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@62
    move-result-object v14

    #@63
    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    #@66
    move-result-object v14

    #@67
    .line 1032
    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    #@6a
    .line 1040
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
    .line 1041
    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    #@82
    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    #@85
    .line 1042
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
    .line 1043
    const-string/jumbo v16, "GCM"

    #@91
    const/16 v17, 0x0

    #@93
    aput-object v16, v15, v17

    #@95
    .line 1042
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@98
    move-result-object v14

    #@99
    const/4 v15, 0x1

    #@9a
    new-array v15, v15, [Ljava/lang/String;

    #@9c
    .line 1044
    const-string/jumbo v16, "NoPadding"

    #@9f
    const/16 v17, 0x0

    #@a1
    aput-object v16, v15, v17

    #@a3
    .line 1042
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@a6
    move-result-object v14

    #@a7
    .line 1045
    const/4 v15, 0x1

    #@a8
    .line 1042
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    #@ab
    move-result-object v14

    #@ac
    .line 1046
    const/16 v15, 0x1e

    #@ae
    .line 1042
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    #@b1
    move-result-object v14

    #@b2
    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    #@b5
    move-result-object v14

    #@b6
    .line 1039
    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    #@b9
    .line 1050
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
    .line 1049
    invoke-virtual {v7, v12, v13}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    #@d3
    move-result-object v8

    #@d4
    check-cast v8, Ljavax/crypto/SecretKey;

    #@d6
    .line 1052
    .local v8, "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v12, "AES/GCM/NoPadding"

    #@d9
    .line 1051
    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@dc
    move-result-object v1

    #@dd
    .line 1054
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v12, 0x1

    #@de
    invoke-virtual {v1, v12, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@e1
    .line 1055
    invoke-virtual {v1, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@e4
    move-result-object v4

    #@e5
    .line 1056
    .local v4, "encryptionResult":[B
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e8
    move-result-object v5

    #@e9
    .line 1059
    .local v5, "iv":[B
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    const-string/jumbo v13, "profile_key_name_encrypt_"

    #@f1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v12

    #@f5
    move/from16 v0, p1

    #@f7
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v12

    #@fb
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v12

    #@ff
    invoke-virtual {v7, v12}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    #@102
    .line 1066
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    #@104
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@107
    .line 1068
    .local v9, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    array-length v12, v5

    #@108
    const/16 v13, 0xc

    #@10a
    if-eq v12, v13, :cond_0

    #@10c
    .line 1069
    new-instance v12, Ljava/lang/RuntimeException;

    #@10e
    new-instance v13, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v14, "Invalid iv length: "

    #@116
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v13

    #@11a
    array-length v14, v5

    #@11b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v13

    #@11f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v13

    #@123
    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@126
    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@127
    .line 1073
    :catch_0
    move-exception v2

    #@128
    .line 1074
    .local v2, "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/RuntimeException;

    #@12a
    const-string/jumbo v13, "Failed to concatenate byte arrays"

    #@12d
    invoke-direct {v12, v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@130
    throw v12

    #@131
    .line 1057
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "encryptionResult":[B
    .end local v5    # "iv":[B
    .end local v8    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .end local v9    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v12

    #@132
    .line 1059
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    const-string/jumbo v14, "profile_key_name_encrypt_"

    #@13a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v13

    #@13e
    move/from16 v0, p1

    #@140
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@143
    move-result-object v13

    #@144
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v13

    #@148
    invoke-virtual {v7, v13}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    #@14b
    .line 1057
    throw v12
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1

    #@14c
    .line 1063
    .end local v6    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v7    # "keyStore":Ljava/security/KeyStore;
    .end local v11    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v3

    #@14d
    .line 1064
    .local v3, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/RuntimeException;

    #@14f
    const-string/jumbo v13, "Failed to encrypt key"

    #@152
    invoke-direct {v12, v13, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@155
    throw v12

    #@156
    .line 1071
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
    :try_start_5
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@159
    .line 1072
    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@15c
    .line 1076
    move-object/from16 v0, p0

    #@15e
    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@160
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@163
    move-result-object v13

    #@164
    move/from16 v0, p1

    #@166
    invoke-virtual {v12, v0, v13}, Lcom/android/server/LockSettingsStorage;->writeChildProfileLock(I[B)V

    #@169
    .line 1020
    return-void
.end method

.method private unlockChildProfile(I)V
    .locals 8
    .param p1, "profileHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 762
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 763
    const-wide/16 v4, 0x0

    #@6
    .line 762
    const/4 v3, 0x0

    #@7
    .line 763
    const/4 v7, 0x0

    #@8
    move-object v1, p0

    #@9
    move v6, p1

    #@a
    .line 762
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
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

    #@d
    .line 760
    :goto_0
    return-void

    #@e
    .line 767
    :catch_0
    move-exception v0

    #@f
    .line 768
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 769
    const-string/jumbo v1, "LockSettingsService"

    #@16
    const-string/jumbo v2, "Child profile key not found"

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    goto :goto_0

    #@1d
    .line 771
    :cond_0
    const-string/jumbo v1, "LockSettingsService"

    #@20
    const-string/jumbo v2, "Failed to decrypt child profile key"

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 729
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@3
    move-result-object v0

    #@4
    .line 730
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    #@7
    .line 727
    return-void
.end method

.method private unlockUser(I[B[B)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    #@0
    .prologue
    .line 778
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    #@2
    const/4 v7, 0x1

    #@3
    invoke-direct {v2, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@6
    .line 779
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lcom/android/server/LockSettingsService$4;

    #@8
    invoke-direct {v3, p0, v2}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    #@b
    .line 798
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
    .line 804
    const-wide/16 v8, 0xf

    #@14
    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@16
    invoke-virtual {v2, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    #@19
    .line 809
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
    .line 810
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@27
    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@2a
    move-result-object v6

    #@2b
    .line 811
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
    .line 813
    .local v4, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@3e
    move-result v7

    #@3f
    if-eqz v7, :cond_0

    #@41
    .line 814
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
    .line 815
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@4d
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    #@4f
    invoke-virtual {v7, v8}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    #@52
    move-result v7

    #@53
    .line 813
    if-eqz v7, :cond_0

    #@55
    .line 816
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    #@57
    invoke-direct {p0, v7}, Lcom/android/server/LockSettingsService;->unlockChildProfile(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@5a
    goto :goto_1

    #@5b
    .line 820
    .end local v4    # "pi":Landroid/content/pm/UserInfo;
    .end local v5    # "pi$iterator":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    #@5c
    .line 821
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "LockSettingsService"

    #@5f
    const-string/jumbo v8, "Failed to unlock child profile"

    #@62
    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@65
    .line 776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void

    #@66
    .line 799
    :catch_1
    move-exception v0

    #@67
    .line 800
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@6a
    move-result-object v7

    #@6b
    throw v7

    #@6c
    .line 805
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    #@6d
    .line 806
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    #@74
    goto :goto_0
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 19
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .param p8, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1367
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
    .line 1369
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@11
    return-object v4

    #@12
    .line 1372
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_2

    #@18
    .line 1373
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@1a
    return-object v4

    #@1b
    .line 1376
    :cond_2
    move-object/from16 v0, p2

    #@1d
    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    #@1f
    if-nez v4, :cond_4

    #@21
    .line 1377
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
    .line 1378
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
    .line 1379
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
    .line 1383
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
    .line 1384
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    #@67
    move-result-object v10

    #@68
    .line 1385
    .local v10, "fakeToken":[B
    move-object/from16 v0, p0

    #@6a
    move/from16 v1, p1

    #@6c
    invoke-direct {v0, v1, v10, v10}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    #@6f
    .line 1388
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
    .line 1389
    if-nez p4, :cond_4

    #@7b
    .line 1390
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@7d
    return-object v4

    #@7e
    .line 1396
    .end local v10    # "fakeToken":[B
    :cond_3
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@80
    return-object v4

    #@81
    .line 1401
    .end local v12    # "hash":[B
    :cond_4
    const/4 v15, 0x0

    #@82
    .line 1402
    .local v15, "shouldReEnroll":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    #@85
    move-result-object v4

    #@86
    .line 1403
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
    .line 1402
    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    #@95
    move-result-object v11

    #@96
    .line 1404
    .local v11, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    #@99
    move-result v14

    #@9a
    .line 1405
    .local v14, "responseCode":I
    const/4 v4, 0x1

    #@9b
    if-ne v14, v4, :cond_8

    #@9d
    .line 1406
    new-instance v13, Lcom/android/internal/widget/VerifyCredentialResponse;

    #@9f
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    #@a2
    move-result v4

    #@a3
    invoke-direct {v13, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    #@a6
    .line 1421
    .end local v15    # "shouldReEnroll":Z
    .local v13, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@a9
    move-result v4

    #@aa
    if-nez v4, :cond_b

    #@ac
    .line 1426
    if-eqz p8, :cond_5

    #@ae
    .line 1427
    invoke-interface/range {p8 .. p8}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    #@b1
    .line 1429
    :cond_5
    move-object/from16 v0, p0

    #@b3
    move-object/from16 v1, p3

    #@b5
    move/from16 v2, p1

    #@b7
    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    #@ba
    .line 1431
    const-string/jumbo v4, "LockSettingsService"

    #@bd
    new-instance v5, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v6, "Unlocking user "

    #@c5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v5

    #@c9
    move/from16 v0, p1

    #@cb
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v5

    #@cf
    .line 1432
    const-string/jumbo v6, " with token length "

    #@d2
    .line 1431
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v5

    #@d6
    .line 1432
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@d9
    move-result-object v6

    #@da
    array-length v6, v6

    #@db
    .line 1431
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@de
    move-result-object v5

    #@df
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v5

    #@e3
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    .line 1433
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    #@e9
    move-result-object v4

    #@ea
    invoke-static/range {p3 .. p3}, Lcom/android/server/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    #@ed
    move-result-object v5

    #@ee
    move-object/from16 v0, p0

    #@f0
    move/from16 v1, p1

    #@f2
    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    #@f5
    .line 1435
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    #@f8
    move-result v4

    #@f9
    if-eqz v4, :cond_6

    #@fb
    .line 1437
    move-object/from16 v0, p0

    #@fd
    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    #@ff
    const-string/jumbo v5, "trust"

    #@102
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@105
    move-result-object v17

    #@106
    check-cast v17, Landroid/app/trust/TrustManager;

    #@108
    .line 1438
    .local v17, "trustManager":Landroid/app/trust/TrustManager;
    const/4 v4, 0x0

    #@109
    move-object/from16 v0, v17

    #@10b
    move/from16 v1, p1

    #@10d
    invoke-virtual {v0, v1, v4}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    #@110
    .line 1440
    .end local v17    # "trustManager":Landroid/app/trust/TrustManager;
    :cond_6
    if-eqz v15, :cond_7

    #@112
    .line 1441
    move-object/from16 v0, p7

    #@114
    move-object/from16 v1, p3

    #@116
    move-object/from16 v2, p3

    #@118
    move/from16 v3, p1

    #@11a
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    #@11d
    .line 1449
    :cond_7
    :goto_1
    return-object v13

    #@11e
    .line 1407
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v15    # "shouldReEnroll":Z
    :cond_8
    if-nez v14, :cond_a

    #@120
    .line 1408
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    #@123
    move-result-object v16

    #@124
    .line 1409
    .local v16, "token":[B
    if-nez v16, :cond_9

    #@126
    .line 1411
    const-string/jumbo v4, "LockSettingsService"

    #@129
    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    #@12c
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12f
    .line 1412
    sget-object v13, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@131
    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    #@133
    .line 1414
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_9
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    #@136
    move-result v15

    #@137
    .line 1415
    .local v15, "shouldReEnroll":Z
    new-instance v13, Lcom/android/internal/widget/VerifyCredentialResponse;

    #@139
    move-object/from16 v0, v16

    #@13b
    invoke-direct {v13, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    #@13e
    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    #@140
    .line 1418
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v16    # "token":[B
    .local v15, "shouldReEnroll":Z
    :cond_a
    sget-object v13, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@142
    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    #@144
    .line 1443
    .end local v15    # "shouldReEnroll":Z
    :cond_b
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@147
    move-result v4

    #@148
    const/4 v5, 0x1

    #@149
    if-ne v4, v5, :cond_7

    #@14b
    .line 1444
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    #@14e
    move-result v4

    #@14f
    if-lez v4, :cond_7

    #@151
    .line 1445
    const/16 v4, 0x8

    #@153
    move-object/from16 v0, p0

    #@155
    move/from16 v1, p1

    #@157
    invoke-virtual {v0, v4, v1}, Lcom/android/server/LockSettingsService;->requireStrongAuth(II)V

    #@15a
    goto :goto_1
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1283
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
    move-object v7, p3

    #@7
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public checkPattern(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1212
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
    move-object v7, p3

    #@7
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@a
    move-result-object v0

    #@b
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
    .line 1454
    iget-boolean v5, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    #@4
    if-nez v5, :cond_0

    #@6
    .line 1455
    return v6

    #@7
    .line 1457
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    #@9
    .line 1459
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@c
    .line 1469
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    #@f
    move-result-object v4

    #@10
    .line 1471
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@13
    move-result-wide v2

    #@14
    .line 1473
    .local v2, "identity":J
    :try_start_0
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 1474
    .local v1, "password":Ljava/lang/String;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->clearPassword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 1476
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 1478
    if-nez v1, :cond_1

    #@20
    .line 1479
    return v6

    #@21
    .line 1475
    .end local v1    # "password":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@22
    .line 1476
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 1475
    throw v5

    #@26
    .line 1483
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
    .line 1484
    const/4 v5, 0x0

    #@2f
    invoke-virtual {p0, v1, p1, v5}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@36
    move-result v5

    #@37
    if-nez v5, :cond_2

    #@39
    .line 1486
    return v7

    #@3a
    .line 1489
    :catch_0
    move-exception v0

    #@3b
    .line 1493
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@3d
    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_3

    #@43
    .line 1494
    const/4 v5, 0x0

    #@44
    invoke-virtual {p0, v1, p1, v5}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@4b
    move-result v5

    #@4c
    if-nez v5, :cond_3

    #@4e
    .line 1496
    return v7

    #@4f
    .line 1499
    :catch_1
    move-exception v0

    #@50
    .line 1502
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
    .line 674
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@3
    .line 675
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 676
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
    .line 677
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
    .line 682
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@3
    .line 683
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 684
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
    .line 626
    const-string/jumbo v0, "lockscreen.profilechallenge"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@6
    .line 627
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 628
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
    .line 627
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
    .line 689
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    #@3
    .line 690
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
    .line 694
    const-string/jumbo v2, "lock_pattern_autolock"

    #@3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v0

    #@d
    .line 697
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
    .line 699
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 697
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
    .line 698
    :catchall_0
    move-exception v2

    #@21
    .line 699
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 698
    throw v2

    #@25
    .line 703
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
    .line 704
    const-string/jumbo p1, "lock_pattern_autolock"

    #@31
    .line 707
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
    .line 1565
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@3
    .line 1566
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
    .line 713
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
    .line 719
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
    .line 372
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@7
    .line 370
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 376
    new-instance v0, Landroid/os/UserHandle;

    #@2
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    #@8
    .line 375
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 381
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@5
    invoke-virtual {p0, v5}, Lcom/android/server/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    #@8
    .line 383
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@a
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 386
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    #@16
    new-instance v6, Lcom/android/server/LockSettingsService$3;

    #@18
    invoke-direct {v6, p0, p1}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;I)V

    #@1b
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1e
    .line 396
    :cond_0
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@20
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@23
    move-result-object v3

    #@24
    .line 397
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    #@25
    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@28
    move-result v5

    #@29
    if-ge v0, v5, :cond_4

    #@2b
    .line 398
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/content/pm/UserInfo;

    #@31
    .line 400
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@33
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    #@35
    invoke-virtual {v5, v6}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    #@38
    move-result v5

    #@39
    if-nez v5, :cond_2

    #@3b
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@3d
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    #@3f
    invoke-virtual {v5, v6}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    #@42
    move-result v1

    #@43
    .line 401
    .local v1, "isSecure":Z
    :goto_1
    if-eqz v1, :cond_1

    #@45
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_1

    #@4b
    .line 402
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@4e
    move-result-object v4

    #@4f
    .line 403
    .local v4, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@51
    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    #@54
    move-result v5

    #@55
    if-nez v5, :cond_1

    #@57
    .line 404
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@59
    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    #@5c
    move-result v5

    #@5d
    if-eqz v5, :cond_3

    #@5f
    .line 397
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@61
    goto :goto_0

    #@62
    .line 400
    .end local v1    # "isSecure":Z
    :cond_2
    const/4 v1, 0x1

    #@63
    goto :goto_1

    #@64
    .line 405
    .restart local v1    # "isSecure":Z
    .restart local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    #@67
    goto :goto_2

    #@68
    .line 379
    .end local v1    # "isSecure":Z
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_4
    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    #@0
    .prologue
    .line 1541
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@4
    .line 1542
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@9
    .line 1540
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 1
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1553
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 1554
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    #@8
    .line 1552
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
    .line 1167
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 1169
    const/4 v3, -0x1

    #@4
    .line 1170
    .local v3, "managedUserId":I
    const/4 v2, 0x0

    #@5
    .line 1171
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
    .line 1172
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
    .line 1174
    .local v4, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@22
    move-result v9

    #@23
    if-eqz v9, :cond_0

    #@25
    .line 1175
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
    .line 1176
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
    .line 1174
    if-eqz v9, :cond_0

    #@3d
    .line 1178
    const/4 v9, -0x1

    #@3e
    if-ne v3, v9, :cond_1

    #@40
    .line 1179
    :try_start_0
    iget v9, v4, Landroid/content/pm/UserInfo;->id:I

    #@42
    move-object/from16 v0, p0

    #@44
    invoke-direct {v0, v9}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 1180
    .local v2, "managedUserDecryptedPassword":Ljava/lang/String;
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    #@4a
    goto :goto_0

    #@4b
    .line 1183
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
    .line 1184
    const-string/jumbo v11, ", uid2:"

    #@61
    .line 1183
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v10

    #@65
    .line 1184
    iget v11, v4, Landroid/content/pm/UserInfo;->id:I

    #@67
    .line 1183
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
    .line 1189
    :catch_0
    move-exception v1

    #@74
    .line 1190
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "LockSettingsService"

    #@77
    const-string/jumbo v10, "Failed to decrypt child profile key"

    #@7a
    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7d
    goto :goto_0

    #@7e
    .line 1196
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
    .line 1197
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
    .line 1198
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
    .line 1197
    add-int/lit8 v9, v9, 0x1

    #@a4
    goto :goto_2

    #@a5
    .line 1196
    .end local v8    # "uid":I
    :cond_3
    add-int/lit8 v9, v10, 0x1

    #@a7
    move v10, v9

    #@a8
    goto :goto_1

    #@a9
    .line 1202
    .end local v6    # "profileId":I
    :cond_4
    const/4 v9, -0x1

    #@aa
    if-eq v3, v9, :cond_5

    #@ac
    if-eqz v2, :cond_5

    #@ae
    .line 1204
    move-object/from16 v0, p0

    #@b0
    invoke-direct {v0, v3, v2}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    #@b3
    .line 1166
    :cond_5
    return-void

    #@b4
    .line 1201
    :catchall_0
    move-exception v9

    #@b5
    .line 1202
    const/4 v10, -0x1

    #@b6
    if-eq v3, v10, :cond_6

    #@b8
    if-eqz v2, :cond_6

    #@ba
    .line 1204
    move-object/from16 v0, p0

    #@bc
    invoke-direct {v0, v3, v2}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    #@bf
    .line 1201
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
    .line 649
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 650
    if-eqz p2, :cond_0

    #@5
    const-string/jumbo v0, "1"

    #@8
    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    #@b
    .line 648
    return-void

    #@c
    .line 650
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
    .line 964
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 965
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 966
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    #@9
    .line 967
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
    .line 963
    return-void

    #@10
    .line 965
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
    .line 901
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 902
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 903
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    #@9
    .line 904
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
    .line 900
    return-void

    #@10
    .line 902
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
    .line 655
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 656
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    #@a
    .line 654
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
    .line 635
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 636
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 637
    :try_start_0
    const-string/jumbo v0, "lockscreen.profilechallenge"

    #@9
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    #@c
    .line 638
    if-eqz p2, :cond_0

    #@e
    .line 639
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    #@13
    .line 640
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :goto_0
    monitor-exit v1

    #@17
    .line 634
    return-void

    #@18
    .line 642
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 636
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
    .line 661
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 662
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    #@6
    .line 660
    return-void
.end method

.method public systemReady()V
    .locals 3

    #@0
    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    #@3
    .line 440
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 445
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    #@c
    .line 437
    return-void

    #@d
    .line 441
    :catch_0
    move-exception v0

    #@e
    .line 442
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
    .line 226
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
    .line 227
    return-void

    #@11
    .line 230
    :cond_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@13
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 231
    return-void

    #@1a
    .line 234
    :cond_1
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    #@1c
    invoke-virtual {v4, p1}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_2

    #@22
    .line 235
    return-void

    #@23
    .line 238
    :cond_2
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    #@25
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@28
    move-result-object v4

    #@29
    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    #@2b
    .line 239
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
    .line 244
    :cond_3
    const/4 v4, 0x0

    #@3c
    new-array v3, v4, [B

    #@3e
    .line 246
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
    .line 247
    invoke-static {v3}, Llibcore/util/HexEncoding;->encode([B)[C

    #@4e
    move-result-object v4

    #@4f
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 248
    .local v1, "newPassword":Ljava/lang/String;
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    #@56
    .line 252
    const-string/jumbo v4, "lockscreen.password_type"

    #@59
    .line 253
    const-wide/32 v6, 0x50000

    #@5c
    .line 252
    invoke-virtual {p0, v4, v6, v7, p1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    #@5f
    .line 254
    invoke-direct {p0, p1, v1}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    .line 223
    .end local v1    # "newPassword":Ljava/lang/String;
    :goto_0
    return-void

    #@63
    .line 241
    .end local v3    # "randomLockSeed":[B
    :cond_4
    return-void

    #@64
    .line 255
    .restart local v3    # "randomLockSeed":[B
    :catch_0
    move-exception v0

    #@65
    .line 256
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
    .line 1547
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@4
    .line 1548
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@9
    .line 1546
    return-void
.end method

.method public userPresent(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1559
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    #@3
    .line 1560
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->reportUnlock(I)V

    #@8
    .line 1558
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
    .line 1289
    const/4 v3, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-wide v4, p2

    #@5
    move v6, p4

    #@6
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@9
    move-result-object v0

    #@a
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
    .line 1218
    const/4 v3, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-wide v4, p2

    #@5
    move v6, p4

    #@6
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@9
    move-result-object v0

    #@a
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
    .line 1295
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p5

    #@4
    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    #@7
    .line 1296
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
    .line 1297
    new-instance v3, Landroid/os/RemoteException;

    #@13
    const-string/jumbo v4, "User id must be managed profile with unified lock"

    #@16
    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 1299
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
    .line 1301
    .local v8, "parentProfileId":I
    if-eqz p2, :cond_1

    #@28
    .line 1302
    const/4 v5, 0x1

    #@29
    .line 1303
    const/4 v9, 0x0

    #@2a
    move-object/from16 v3, p0

    #@2c
    move-object/from16 v4, p1

    #@2e
    move-wide/from16 v6, p3

    #@30
    .line 1302
    invoke-direct/range {v3 .. v9}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@33
    move-result-object v16

    #@34
    .line 1306
    .local v16, "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 1308
    return-object v16

    #@3b
    .line 1304
    .end local v16    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    const/4 v5, 0x1

    #@3c
    .line 1305
    const/4 v9, 0x0

    #@3d
    move-object/from16 v3, p0

    #@3f
    move-object/from16 v4, p1

    #@41
    move-wide/from16 v6, p3

    #@43
    .line 1304
    invoke-direct/range {v3 .. v9}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@46
    move-result-object v16

    #@47
    goto :goto_0

    #@48
    .line 1313
    .restart local v16    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    #@4a
    move/from16 v1, p5

    #@4c
    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    #@4f
    move-result-object v10

    #@50
    const/4 v11, 0x1

    #@51
    .line 1315
    const/4 v15, 0x0

    #@52
    move-object/from16 v9, p0

    #@54
    move-wide/from16 v12, p3

    #@56
    move/from16 v14, p5

    #@58
    .line 1313
    invoke-direct/range {v9 .. v15}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
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

    #@5b
    move-result-object v3

    #@5c
    return-object v3

    #@5d
    .line 1319
    :catch_0
    move-exception v2

    #@5e
    .line 1320
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LockSettingsService"

    #@61
    const-string/jumbo v4, "Failed to decrypt child profile key"

    #@64
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    .line 1321
    new-instance v3, Landroid/os/RemoteException;

    #@69
    const-string/jumbo v4, "Unable to get tied profile token"

    #@6c
    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v3
.end method
