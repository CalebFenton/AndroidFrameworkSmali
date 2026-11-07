.class public Landroid/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyguardManager$KeyguardLock;,
        Landroid/app/KeyguardManager$KeyguardDismissCallback;,
        Landroid/app/KeyguardManager$OnKeyguardExitResult;,
        Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;,
        Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;,
        Landroid/app/KeyguardManager$DeviceLockedStateListener;,
        Landroid/app/KeyguardManager$KeyguardLockedStateListener;,
        Landroid/app/KeyguardManager$LockTypes;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

.field public static final greylist-max-o ACTION_CONFIRM_DEVICE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

.field public static final greylist-max-o ACTION_CONFIRM_FRP_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_FRP_CREDENTIAL"

.field public static final blacklist ACTION_CONFIRM_REMOTE_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_REMOTE_DEVICE_CREDENTIAL"

.field public static final blacklist ACTION_CONFIRM_REPAIR_MODE_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_REPAIR_MODE_DEVICE_CREDENTIAL"

.field public static final blacklist ACTION_PREPARE_REPAIR_MODE_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.PREPARE_REPAIR_MODE_DEVICE_CREDENTIAL"

.field public static final greylist-max-o EXTRA_ALTERNATE_BUTTON_LABEL:Ljava/lang/String; = "android.app.extra.ALTERNATE_BUTTON_LABEL"

.field public static final blacklist EXTRA_CHECKBOX_LABEL:Ljava/lang/String; = "android.app.extra.CHECKBOX_LABEL"

.field public static final greylist-max-o EXTRA_DESCRIPTION:Ljava/lang/String; = "android.app.extra.DESCRIPTION"

.field public static final blacklist EXTRA_DISALLOW_BIOMETRICS_IF_POLICY_EXISTS:Ljava/lang/String; = "check_dpm"

.field public static final blacklist EXTRA_FORCE_TASK_OVERLAY:Ljava/lang/String; = "android.app.KeyguardManager.FORCE_TASK_OVERLAY"

.field public static final blacklist EXTRA_REMOTE_LOCKSCREEN_VALIDATION_SESSION:Ljava/lang/String; = "android.app.extra.REMOTE_LOCKSCREEN_VALIDATION_SESSION"

.field public static final greylist-max-o EXTRA_TITLE:Ljava/lang/String; = "android.app.extra.TITLE"

.field public static final blacklist LOCK_ON_USER_SWITCH_CALLBACK:Ljava/lang/String; = "onSwitchCallback"

.field public static final whitelist PASSWORD:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PATTERN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PIN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o RESULT_ALTERNATE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "KeyguardManager"


# instance fields
.field private final greylist-max-o mAm:Landroid/app/IActivityManager;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mDeviceLockedStateListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/KeyguardManager$DeviceLockedStateListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIDeviceLockedStateListener:Lcom/android/internal/policy/IDeviceLockedStateListener;

.field private final blacklist mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

.field private final blacklist mKeyguardLockedStateListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/KeyguardManager$KeyguardLockedStateListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;",
            "Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final blacklist mNotificationManager:Landroid/app/INotificationManager;

.field private final greylist-max-o mTrustManager:Landroid/app/trust/ITrustManager;

.field private final greylist-max-o mWM:Landroid/view/IWindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/KeyguardManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/KeyguardManager;->mDeviceLockedStateListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyguardLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWM(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;
    .registers 1

    iget-object p0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    .line 254
    new-instance v0, Landroid/app/KeyguardManager$1;

    invoke-direct {v0, p0}, Landroid/app/KeyguardManager$1;-><init>(Landroid/app/KeyguardManager;)V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    .line 264
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    .line 267
    new-instance v0, Landroid/app/KeyguardManager$2;

    invoke-direct {v0, p0}, Landroid/app/KeyguardManager$2;-><init>(Landroid/app/KeyguardManager;)V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mIDeviceLockedStateListener:Lcom/android/internal/policy/IDeviceLockedStateListener;

    .line 283
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mDeviceLockedStateListeners:Landroid/util/ArrayMap;

    .line 643
    iput-object p1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 644
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 645
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    .line 646
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mAm:Landroid/app/IActivityManager;

    .line 647
    nop

    .line 648
    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 647
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 649
    nop

    .line 650
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 649
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mNotificationManager:Landroid/app/INotificationManager;

    .line 651
    return-void
.end method

.method private blacklist createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;
    .registers 6
    .param p1, "lockType"    # I
    .param p2, "password"    # [B

    .line 1328
    if-nez p2, :cond_7

    .line 1329
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 1331
    :cond_7
    packed-switch p1, :pswitch_data_48

    .line 1343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown lock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1339
    :pswitch_23
    nop

    .line 1340
    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    .line 1341
    .local v0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    .line 1336
    .end local v0    # "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :pswitch_2d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 1337
    .local v0, "pinStr":Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    .line 1333
    .end local v0    # "pinStr":Ljava/lang/CharSequence;
    :pswitch_37
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1334
    .local v0, "passwordStr":Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2d
        :pswitch_23
    .end packed-switch
.end method

.method private greylist-max-o getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 503
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 504
    const/high16 v1, 0x100000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 505
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 506
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 509
    .end local v1    # "i":I
    :cond_1e
    const-string v1, "com.android.settings"

    return-object v1
.end method

.method private blacklist hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 980
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public blacklist addDeviceLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$DeviceLockedStateListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/KeyguardManager$DeviceLockedStateListener;

    .line 1432
    invoke-static {}, Landroid/app/Flags;->deviceUnlockListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1433
    return-void

    .line 1436
    :cond_7
    iget-object v0, p0, Landroid/app/KeyguardManager;->mDeviceLockedStateListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1437
    :try_start_a
    iget-object v1, p0, Landroid/app/KeyguardManager;->mDeviceLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    iget-object v1, p0, Landroid/app/KeyguardManager;->mDeviceLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    .line 1439
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_32

    return-void

    .line 1442
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mIDeviceLockedStateListener:Lcom/android/internal/policy/IDeviceLockedStateListener;

    iget-object v3, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 1443
    invoke-virtual {v3}, Landroid/content/Context;->getDeviceId()I

    move-result v3

    .line 1442
    invoke-interface {v1, v2, v3}, Landroid/app/trust/ITrustManager;->registerDeviceLockedStateListener(Lcom/android/internal/policy/IDeviceLockedStateListener;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_28
    .catchall {:try_start_1a .. :try_end_27} :catchall_32

    .line 1446
    goto :goto_30

    .line 1444
    :catch_28
    move-exception v1

    .line 1445
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "KeyguardManager"

    const-string v3, "TrustManager service died"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1447
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v0

    .line 1448
    return-void

    .line 1447
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public whitelist addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    .line 1369
    iget-object v0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1370
    :try_start_3
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_13

    .line 1372
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_23

    return-void

    .line 1375
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1d
    .catchall {:try_start_13 .. :try_end_1a} :catchall_23

    .line 1378
    nop

    .line 1379
    :try_start_1b
    monitor-exit v0

    .line 1380
    return-void

    .line 1376
    :catch_1d
    move-exception v1

    .line 1377
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    throw v2

    .line 1379
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist addWeakEscrowToken([BLandroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;)J
    .registers 9
    .param p1, "token"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1100
    const-string v0, "Token cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1101
    const-string v0, "User cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1102
    const-string v0, "Executor cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1103
    const-string v0, "Listener cannot be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1104
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1105
    .local v0, "userId":I
    new-instance v1, Landroid/app/KeyguardManager$5;

    invoke-direct {v1, p0, p3, p4}, Landroid/app/KeyguardManager$5;-><init>(Landroid/app/KeyguardManager;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;)V

    .line 1119
    .local v1, "internalListener":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    iget-object v2, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide v2

    return-wide v2
.end method

.method public blacklist checkInitialLockMethodUsage()Z
    .registers 3

    .line 973
    const-string v0, "android.permission.SET_INITIAL_LOCK"

    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 976
    const/4 v0, 0x1

    return v0

    .line 974
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_INITIAL_LOCK permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist checkLock(I[B)Z
    .registers 7
    .param p1, "lockType"    # I
    .param p2, "password"    # [B

    .line 1277
    invoke-direct {p0, p1, p2}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 1278
    .local v0, "credential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_4
    iget-object v1, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 1279
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1278
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_27

    .line 1280
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_1a

    .line 1281
    nop

    .line 1284
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 1281
    :cond_19
    return v3

    .line 1283
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_27

    if-nez v2, :cond_21

    const/4 v3, 0x1

    .line 1284
    :cond_21
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 1283
    :cond_26
    return v3

    .line 1277
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_27
    move-exception v1

    if-eqz v0, :cond_32

    :try_start_2a
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw v1
.end method

.method public whitelist createConfirmDeviceCredentialForRemoteValidationIntent(Landroid/app/RemoteLockscreenValidationSession;Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 9
    .param p1, "session"    # Landroid/app/RemoteLockscreenValidationSession;
    .param p2, "remoteLockscreenValidationServiceComponent"    # Landroid/content/ComponentName;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "checkboxLabel"    # Ljava/lang/CharSequence;
    .param p6, "alternateButtonLabel"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 447
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_REMOTE_DEVICE_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    const-string v1, "android.app.extra.REMOTE_LOCKSCREEN_VALIDATION_SESSION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 449
    const-string v1, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 450
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 451
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 452
    const-string v1, "android.app.extra.CHECKBOX_LABEL"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 453
    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    return-object v0
.end method

.method public whitelist createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 305
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 308
    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    return-object v0
.end method

.method public greylist-max-o createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .registers 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 324
    invoke-virtual {p0, p3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 327
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 328
    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    return-object v0
.end method

.method public blacklist createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/content/Intent;
    .registers 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I
    .param p4, "disallowBiometricsIfPolicyExists"    # Z

    .line 352
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_b

    .line 354
    const-string v1, "check_dpm"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    :cond_b
    return-object v0
.end method

.method public whitelist createConfirmFactoryResetCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 9
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "alternateButtonLabel"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 381
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "not supported on this device"

    const-string v2, "KeyguardManager"

    if-eqz v0, :cond_74

    .line 387
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_66

    .line 395
    :try_start_1c
    const-string/jumbo v0, "persistent_data_block"

    .line 396
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 395
    invoke-static {v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    move-result-object v0

    .line 397
    .local v0, "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    if-eqz v0, :cond_55

    .line 403
    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->hasFrpCredentialHandle()Z

    move-result v1

    if-nez v1, :cond_36

    .line 404
    const-string v1, "The persistent data block does not have a factory reset credential."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_34} :catch_60

    .line 405
    const/4 v1, 0x0

    return-object v1

    .line 409
    .end local v0    # "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    :cond_36
    nop

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 413
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 414
    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 417
    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    return-object v0

    .line 398
    .local v0, "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    :cond_55
    :try_start_55
    const-string v3, "No persistent data block service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "title":Ljava/lang/CharSequence;
    .end local p2    # "description":Ljava/lang/CharSequence;
    .end local p3    # "alternateButtonLabel":Ljava/lang/CharSequence;
    throw v2
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_60} :catch_60

    .line 407
    .end local v0    # "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "title":Ljava/lang/CharSequence;
    .restart local p2    # "description":Ljava/lang/CharSequence;
    .restart local p3    # "alternateButtonLabel":Ljava/lang/CharSequence;
    :catch_60
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 389
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_66
    const-string v0, "Factory reset credential cannot be verified after provisioning."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must not be provisioned yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_74
    const-string v0, "Factory reset credentials not supported."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/KeyguardManager$OnKeyguardExitResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 958
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    new-instance v1, Landroid/app/KeyguardManager$4;

    invoke-direct {v1, p0, p1}, Landroid/app/KeyguardManager$4;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 967
    goto :goto_c

    .line 965
    :catch_b
    move-exception v0

    .line 968
    :goto_c
    return-void
.end method

.method public whitelist getMinLockLength(ZI)I
    .registers 6
    .param p1, "isPin"    # Z
    .param p2, "complexity"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1024
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->checkInitialLockMethodUsage()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1025
    const/4 v0, -0x1

    return v0

    .line 1027
    :cond_8
    invoke-static {p2}, Landroid/app/admin/PasswordMetrics;->sanitizeComplexityLevel(I)I

    move-result p2

    .line 1028
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 1029
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 1030
    .local v0, "adminMetrics":Landroid/app/admin/PasswordMetrics;
    nop

    .line 1031
    invoke-static {v0, p1, p2}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZI)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    .line 1032
    .local v1, "minMetrics":Landroid/app/admin/PasswordMetrics;
    iget v2, v1, Landroid/app/admin/PasswordMetrics;->length:I

    return v2
.end method

.method public whitelist getPrivateNotificationsAllowed()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 496
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getPrivateNotificationsAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 497
    :catch_7
    move-exception v0

    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist inKeyguardRestrictedInputMode()Z
    .registers 2

    .line 749
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceLocked()Z
    .registers 3

    .line 782
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(II)Z

    move-result v0

    return v0
.end method

.method public greylist-max-p isDeviceLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 792
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(II)Z

    move-result v0

    return v0
.end method

.method public blacklist isDeviceLocked(II)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "deviceId"    # I

    .line 802
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->isDeviceLocked(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 803
    :catch_7
    move-exception v0

    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isDeviceSecure()Z
    .registers 3

    .line 825
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(II)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isDeviceSecure(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 835
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(II)Z

    move-result v0

    return v0
.end method

.method public blacklist isDeviceSecure(II)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "deviceId"    # I

    .line 845
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->isDeviceSecure(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 846
    :catch_7
    move-exception v0

    .line 847
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isKeyguardLocked()Z
    .registers 3

    .line 706
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 707
    :catch_7
    move-exception v0

    .line 708
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isKeyguardSecure()Z
    .registers 3

    .line 734
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->isKeyguardSecure(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 735
    :catch_d
    move-exception v0

    .line 736
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isValidLockPasswordComplexity(I[BI)Z
    .registers 8
    .param p1, "lockType"    # I
    .param p2, "password"    # [B
    .param p3, "complexity"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 999
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->checkInitialLockMethodUsage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1000
    return v1

    .line 1002
    :cond_8
    const-string v0, "Password cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1003
    invoke-static {p3}, Landroid/app/admin/PasswordMetrics;->sanitizeComplexityLevel(I)I

    move-result p3

    .line 1004
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 1005
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 1006
    .local v0, "adminMetrics":Landroid/app/admin/PasswordMetrics;
    invoke-direct {p0, p1, p2}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 1007
    .local v2, "credential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_21
    invoke-static {v0, p3, v2}, Landroid/app/admin/PasswordMetrics;->validateCredential(Landroid/app/admin/PasswordMetrics;ILcom/android/internal/widget/LockscreenCredential;)Ljava/util/List;

    move-result-object v3

    .line 1008
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_32

    if-nez v3, :cond_2c

    const/4 v1, 0x1

    .line 1009
    :cond_2c
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 1007
    :cond_31
    return v1

    .line 1006
    :catchall_32
    move-exception v1

    if-eqz v2, :cond_3d

    :try_start_35
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    throw v1
.end method

.method public whitelist isWeakEscrowTokenActive(JLandroid/os/UserHandle;)Z
    .registers 6
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1145
    const-string v0, "User cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1146
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isWeakEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist isWeakEscrowTokenValid(J[BLandroid/os/UserHandle;)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1158
    const-string v0, "Token cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1159
    const-string v0, "User cannot be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1160
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isWeakEscrowTokenValid(J[BI)Z

    move-result v0

    return v0
.end method

.method public whitelist newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist registerWeakEscrowTokenRemovedListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)Z
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1175
    const-string v0, "Listener cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1176
    const-string v0, "Executor cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1177
    iget-object v0, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Listener already registered: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    new-instance v0, Landroid/app/KeyguardManager$6;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/KeyguardManager$6;-><init>(Landroid/app/KeyguardManager;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)V

    .line 1192
    .local v0, "internalListener":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    iget-object v2, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1193
    iget-object v2, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    return v1

    .line 1196
    :cond_2e
    const-string v1, "KeyguardManager"

    const-string v2, "Listener failed to register"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist removeDeviceLockedStateListener(Landroid/app/KeyguardManager$DeviceLockedStateListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/app/KeyguardManager$DeviceLockedStateListener;

    .line 1461
    invoke-static {}, Landroid/app/Flags;->deviceUnlockListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1462
    return-void

    .line 1465
    :cond_7
    iget-object v0, p0, Landroid/app/KeyguardManager;->mDeviceLockedStateListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1466
    :try_start_a
    iget-object v1, p0, Landroid/app/KeyguardManager;->mDeviceLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    iget-object v1, p0, Landroid/app/KeyguardManager;->mDeviceLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1468
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_2b

    return-void

    .line 1471
    :cond_19
    :try_start_19
    iget-object v1, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mIDeviceLockedStateListener:Lcom/android/internal/policy/IDeviceLockedStateListener;

    invoke-interface {v1, v2}, Landroid/app/trust/ITrustManager;->unregisterDeviceLockedStateListener(Lcom/android/internal/policy/IDeviceLockedStateListener;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2b

    .line 1474
    goto :goto_29

    .line 1472
    :catch_21
    move-exception v1

    .line 1473
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_22
    const-string v2, "KeyguardManager"

    const-string v3, "TrustManager service died"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1475
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_29
    monitor-exit v0

    .line 1476
    return-void

    .line 1475
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public whitelist removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    .line 1392
    iget-object v0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1393
    :try_start_3
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1395
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_22

    return-void

    .line 1398
    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1c
    .catchall {:try_start_12 .. :try_end_19} :catchall_22

    .line 1401
    nop

    .line 1402
    :try_start_1a
    monitor-exit v0

    .line 1403
    return-void

    .line 1399
    :catch_1c
    move-exception v1

    .line 1400
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    throw v2

    .line 1402
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw v1
.end method

.method public whitelist removeWeakEscrowToken(JLandroid/os/UserHandle;)Z
    .registers 6
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1133
    const-string v0, "User cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1134
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeWeakEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/app/KeyguardManager$KeyguardDismissCallback;

    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 877
    return-void
.end method

.method public whitelist requestDismissKeyguard(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Landroid/app/KeyguardManager$KeyguardDismissCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 909
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    .line 910
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/app/KeyguardManager$3;

    invoke-direct {v2, p0, p3, p1}, Landroid/app/KeyguardManager$3;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$KeyguardDismissCallback;Landroid/app/Activity;)V

    .line 909
    invoke-virtual {v0, v1, v2, p2}, Landroid/app/ActivityClient;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 932
    return-void
.end method

.method public whitelist setLock(I[BI)Z
    .registers 9
    .param p1, "lockType"    # I
    .param p2, "password"    # [B
    .param p3, "complexity"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1052
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->checkInitialLockMethodUsage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1053
    return v1

    .line 1056
    :cond_8
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1057
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    const-string v3, "KeyguardManager"

    if-eqz v2, :cond_1c

    .line 1058
    const-string v2, "Password already set, rejecting call to setLock"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return v1

    .line 1061
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/KeyguardManager;->isValidLockPasswordComplexity(I[BI)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1062
    const-string v2, "Password is not valid, rejecting call to setLock"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return v1

    .line 1066
    :cond_28
    :try_start_28
    invoke-direct {p0, p1, p2}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_4a
    .catchall {:try_start_28 .. :try_end_2c} :catchall_48

    .line 1067
    .local v1, "credential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_2c
    iget-object v2, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1069
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    .line 1067
    invoke-virtual {v2, v1, v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v2
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_3c

    .line 1071
    .local v2, "success":Z
    if-eqz v1, :cond_51

    :try_start_38
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_4a
    .catchall {:try_start_38 .. :try_end_3b} :catchall_48

    goto :goto_51

    .line 1066
    .end local v2    # "success":Z
    :catchall_3c
    move-exception v2

    if-eqz v1, :cond_47

    :try_start_3f
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v4

    :try_start_44
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "userId":I
    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "lockType":I
    .end local p2    # "password":[B
    .end local p3    # "complexity":I
    :cond_47
    :goto_47
    throw v2
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_4a
    .catchall {:try_start_44 .. :try_end_48} :catchall_48

    .line 1075
    .end local v1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local v0    # "userId":I
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "lockType":I
    .restart local p2    # "password":[B
    .restart local p3    # "complexity":I
    :catchall_48
    move-exception v1

    goto :goto_56

    .line 1071
    :catch_4a
    move-exception v1

    .line 1072
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v2, "Save lock exception"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .line 1073
    const/4 v2, 0x0

    .line 1075
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "success":Z
    :cond_51
    :goto_51
    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->zeroize([B)V

    .line 1076
    nop

    .line 1077
    return v2

    .line 1075
    .end local v2    # "success":Z
    :goto_56
    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->zeroize([B)V

    .line 1076
    throw v1
.end method

.method public blacklist setLock(I[BI[B)Z
    .registers 14
    .param p1, "newLockType"    # I
    .param p2, "newPassword"    # [B
    .param p3, "currentLockType"    # I
    .param p4, "currentPassword"    # [B

    .line 1244
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1245
    .local v0, "userId":I
    invoke-direct {p0, p3, p4}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 1247
    .local v1, "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_a
    invoke-direct {p0, p1, p2}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_6a

    .line 1249
    .local v2, "newCredential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_e
    iget-object v3, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 1250
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v3

    .line 1251
    .local v3, "adminMetrics":Landroid/app/admin/PasswordMetrics;
    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/app/admin/PasswordMetrics;->validateCredential(Landroid/app/admin/PasswordMetrics;ILcom/android/internal/widget/LockscreenCredential;)Ljava/util/List;

    move-result-object v5

    .line 1253
    .local v5, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/PasswordValidationError;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4d

    .line 1254
    const-string v6, "KeyguardManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New credential is not valid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_5e

    .line 1255
    nop

    .line 1258
    if-eqz v2, :cond_47

    :try_start_44
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_6a

    :cond_47
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 1255
    :cond_4c
    return v4

    .line 1257
    :cond_4d
    :try_start_4d
    iget-object v4, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v4
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_5e

    .line 1258
    if-eqz v2, :cond_58

    :try_start_55
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_6a

    :cond_58
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 1257
    :cond_5d
    return v4

    .line 1245
    .end local v3    # "adminMetrics":Landroid/app/admin/PasswordMetrics;
    .end local v5    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/PasswordValidationError;>;"
    :catchall_5e
    move-exception v3

    if-eqz v2, :cond_69

    :try_start_61
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception v4

    :try_start_66
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "userId":I
    .end local v1    # "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "newLockType":I
    .end local p2    # "newPassword":[B
    .end local p3    # "currentLockType":I
    .end local p4    # "currentPassword":[B
    :cond_69
    :goto_69
    throw v3
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_6a

    .end local v2    # "newCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local v0    # "userId":I
    .restart local v1    # "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "newLockType":I
    .restart local p2    # "newPassword":[B
    .restart local p3    # "currentLockType":I
    .restart local p4    # "currentPassword":[B
    :catchall_6a
    move-exception v2

    if-eqz v1, :cond_75

    :try_start_6d
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_75
    :goto_75
    throw v2
.end method

.method public whitelist setPrivateNotificationsAllowed(Z)V
    .registers 4
    .param p1, "allow"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 477
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setPrivateNotificationsAllowed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 480
    nop

    .line 481
    return-void

    .line 478
    :catch_7
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1304
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist unregisterWeakEscrowTokenRemovedListener(Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)Z
    .registers 7
    .param p1, "listener"    # Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1212
    const-string v0, "Listener cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1213
    iget-object v0, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1214
    .local v0, "internalListener":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    const-string v4, "Listener was not registered"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1215
    iget-object v3, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1216
    iget-object v2, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    return v1

    .line 1219
    :cond_27
    const-string v1, "KeyguardManager"

    const-string v3, "Listener failed to unregister."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    return v2
.end method

.method public whitelist validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;
    .registers 3
    .param p1, "encryptedCredential"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1323
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;

    move-result-object v0

    return-object v0
.end method
