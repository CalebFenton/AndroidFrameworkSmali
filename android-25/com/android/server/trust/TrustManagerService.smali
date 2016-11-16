.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustManagerService$1;,
        Lcom/android/server/trust/TrustManagerService$2;,
        Lcom/android/server/trust/TrustManagerService$3;,
        Lcom/android/server/trust/TrustManagerService$AgentInfo;,
        Lcom/android/server/trust/TrustManagerService$Receiver;,
        Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_CLEANUP_USER:I = 0x8

.field private static final MSG_DISPATCH_UNLOCK_ATTEMPT:I = 0x3

.field private static final MSG_ENABLED_AGENTS_CHANGED:I = 0x4

.field private static final MSG_FLUSH_TRUST_USUALLY_MANAGED:I = 0xa

.field private static final MSG_KEYGUARD_SHOWING_CHANGED:I = 0x6

.field private static final MSG_REGISTER_LISTENER:I = 0x1

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_SWITCH_USER:I = 0x9

.field private static final MSG_UNLOCK_USER:I = 0xb

.field private static final MSG_UNREGISTER_LISTENER:I = 0x2

.field private static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TAG:Ljava/lang/String; = "TrustManagerService"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static final TRUST_USUALLY_MANAGED_FLUSH_DELAY:I = 0x1d4c0


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/trust/TrustManagerService$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/ActivityManager;

.field final mArchive:Lcom/android/server/trust/TrustArchive;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDeviceLockedForUser"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field private final mService:Landroid/os/IBinder;

.field private final mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

.field private mTrustAgentsCanRun:Z

.field private final mTrustListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDeviceLockedForUser"
    .end annotation
.end field

.field private final mUserIsTrusted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserIsTrusted"
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/trust/TrustManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/trust/TrustManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/trust/TrustManagerService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/trust/TrustManagerService;I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/trust/TrustManagerService;ZI)V
    .locals 0
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 93
    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    #@a
    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 110
    new-instance v0, Landroid/util/ArraySet;

    #@6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@b
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@12
    .line 112
    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$Receiver;)V

    #@18
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    #@1a
    .line 114
    new-instance v0, Lcom/android/server/trust/TrustArchive;

    #@1c
    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@21
    .line 121
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@23
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    #@28
    .line 124
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@2a
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    #@2f
    .line 127
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@31
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@34
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@36
    .line 131
    iput-boolean v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    #@38
    .line 132
    iput v2, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    #@3a
    .line 668
    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    #@3c
    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    #@3f
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    #@41
    .line 889
    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    #@43
    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    #@46
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@48
    .line 937
    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    #@4a
    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    #@4d
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@4f
    .line 136
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@51
    .line 137
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@53
    const-string/jumbo v1, "user"

    #@56
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    check-cast v0, Landroid/os/UserManager;

    #@5c
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@5e
    .line 138
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@60
    const-string/jumbo v1, "activity"

    #@63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Landroid/app/ActivityManager;

    #@69
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    #@6b
    .line 139
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #@6d
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@70
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@72
    .line 140
    new-instance v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    #@74
    invoke-direct {v0, p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V

    #@77
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    #@79
    .line 134
    return-void
.end method

.method private addListener(Landroid/app/trust/ITrustListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    #@0
    .prologue
    .line 590
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 591
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/app/trust/ITrustListener;

    #@11
    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v1

    #@15
    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v2

    #@19
    if-ne v1, v2, :cond_0

    #@1b
    .line 592
    return-void

    #@1c
    .line 590
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 595
    :cond_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 596
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    #@27
    .line 589
    return-void
.end method

.method private aggregateIsTrustManaged(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 560
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 561
    return v3

    #@a
    .line 563
    :cond_0
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@10
    move-result v2

    #@11
    if-ge v0, v2, :cond_2

    #@13
    .line 564
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@15
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@1b
    .line 565
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@1d
    if-ne v2, p1, :cond_1

    #@1f
    .line 566
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@21
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 567
    const/4 v2, 0x1

    #@28
    return v2

    #@29
    .line 563
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 571
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    return v3
.end method

.method private aggregateIsTrusted(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 545
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 546
    return v3

    #@a
    .line 548
    :cond_0
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@10
    move-result v2

    #@11
    if-ge v0, v2, :cond_2

    #@13
    .line 549
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@15
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@1b
    .line 550
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@1d
    if-ne v2, p1, :cond_1

    #@1f
    .line 551
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@21
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 552
    const/4 v2, 0x1

    #@28
    return v2

    #@29
    .line 548
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 556
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    return v3
.end method

.method private dispatchDeviceLocked(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isLocked"    # Z

    #@0
    .prologue
    .line 374
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@3
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_2

    #@9
    .line 375
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@11
    .line 376
    .local v0, "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@13
    if-ne v2, p1, :cond_0

    #@15
    .line 377
    if-eqz p2, :cond_1

    #@17
    .line 378
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@19
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    #@1c
    .line 374
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 380
    :cond_1
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@21
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    #@24
    goto :goto_1

    #@25
    .line 373
    .end local v0    # "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    return-void
.end method

.method private dispatchOnTrustChanged(ZII)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 613
    if-nez p1, :cond_0

    #@2
    const/4 p3, 0x0

    #@3
    .line 614
    :cond_0
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    if-ge v2, v3, :cond_1

    #@c
    .line 616
    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroid/app/trust/ITrustListener;

    #@14
    invoke-interface {v3, p1, p2, p3}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 614
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 621
    :catch_0
    move-exception v1

    #@1b
    .line 622
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TrustManagerService"

    #@1e
    const-string/jumbo v4, "Exception while notifying TrustListener."

    #@21
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_1

    #@25
    .line 617
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@26
    .line 618
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v3, "TrustManagerService"

    #@29
    const-string/jumbo v4, "Removing dead TrustListener."

    #@2c
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 619
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@34
    .line 620
    add-int/lit8 v2, v2, -0x1

    #@36
    goto :goto_1

    #@37
    .line 608
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_1
    return-void
.end method

.method private dispatchOnTrustManagedChanged(ZI)V
    .locals 5
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 631
    const/4 v2, 0x0

    #@1
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    if-ge v2, v3, :cond_0

    #@9
    .line 633
    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/app/trust/ITrustListener;

    #@11
    invoke-interface {v3, p1, p2}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 631
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 638
    :catch_0
    move-exception v1

    #@18
    .line 639
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TrustManagerService"

    #@1b
    const-string/jumbo v4, "Exception while notifying TrustListener."

    #@1e
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 634
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@23
    .line 635
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v3, "TrustManagerService"

    #@26
    const-string/jumbo v4, "Removing dead TrustListener."

    #@29
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 636
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@31
    .line 637
    add-int/lit8 v2, v2, -0x1

    #@33
    goto :goto_1

    #@34
    .line 627
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_0
    return-void
.end method

.method private dispatchUnlockAttempt(ZI)V
    .locals 3
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 575
    if-eqz p1, :cond_0

    #@2
    .line 576
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    #@4
    invoke-virtual {v2, p2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->allowTrustFromUnlock(I)V

    #@7
    .line 579
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@a
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@d
    move-result v2

    #@e
    if-ge v0, v2, :cond_2

    #@10
    .line 580
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@12
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@18
    .line 581
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@1a
    if-ne v2, p2, :cond_1

    #@1c
    .line 582
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1e
    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    #@21
    .line 579
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 574
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    return-void
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 489
    if-eqz p1, :cond_0

    #@3
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@5
    if-nez v0, :cond_1

    #@7
    :cond_0
    return-object v1

    #@8
    .line 490
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    #@a
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@e
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@10
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@12
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    return-object v0
.end method

.method private getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 15
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 438
    if-eqz p2, :cond_0

    #@2
    move-object/from16 v0, p2

    #@4
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    if-nez v12, :cond_1

    #@8
    .line 439
    :cond_0
    const/4 v12, 0x0

    #@9
    return-object v12

    #@a
    :cond_1
    move-object/from16 v0, p2

    #@c
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@e
    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@10
    if-eqz v12, :cond_0

    #@12
    .line 440
    const/4 v3, 0x0

    #@13
    .line 441
    .local v3, "cn":Ljava/lang/String;
    const/4 v8, 0x0

    #@14
    .line 442
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    #@15
    .line 444
    .local v2, "caughtException":Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p2

    #@17
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@19
    .line 445
    const-string/jumbo v13, "android.service.trust.trustagent"

    #@1c
    .line 444
    move-object/from16 v0, p1

    #@1e
    invoke-virtual {v12, v0, v13}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@21
    move-result-object v8

    #@22
    .line 446
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v8, :cond_3

    #@24
    .line 447
    const-string/jumbo v12, "TrustManagerService"

    #@27
    const-string/jumbo v13, "Can\'t find android.service.trust.trustagent meta-data"

    #@2a
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 448
    const/4 v12, 0x0

    #@2e
    .line 473
    if-eqz v8, :cond_2

    #@30
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@33
    .line 448
    :cond_2
    return-object v12

    #@34
    .line 450
    :cond_3
    :try_start_1
    move-object/from16 v0, p2

    #@36
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@38
    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3a
    move-object/from16 v0, p1

    #@3c
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@3f
    move-result-object v9

    #@40
    .line 451
    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@43
    move-result-object v1

    #@44
    .line 453
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    #@47
    move-result v11

    #@48
    .local v11, "type":I
    const/4 v12, 0x1

    #@49
    if-eq v11, v12, :cond_5

    #@4b
    .line 454
    const/4 v12, 0x2

    #@4c
    if-ne v11, v12, :cond_4

    #@4e
    .line 457
    :cond_5
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    .line 458
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v12, "trust-agent"

    #@55
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v12

    #@59
    if-nez v12, :cond_7

    #@5b
    .line 459
    const-string/jumbo v12, "TrustManagerService"

    #@5e
    const-string/jumbo v13, "Meta-data does not start with trust-agent tag"

    #@61
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    .line 460
    const/4 v12, 0x0

    #@65
    .line 473
    if-eqz v8, :cond_6

    #@67
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@6a
    .line 460
    :cond_6
    return-object v12

    #@6b
    .line 463
    :cond_7
    :try_start_2
    sget-object v12, Lcom/android/internal/R$styleable;->TrustAgent:[I

    #@6d
    .line 462
    invoke-virtual {v9, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@70
    move-result-object v10

    #@71
    .line 464
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v12, 0x2

    #@72
    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    .line 465
    .local v3, "cn":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@79
    .line 473
    if-eqz v8, :cond_8

    #@7b
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@7e
    .line 475
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "caughtException":Ljava/lang/Exception;
    .end local v3    # "cn":Ljava/lang/String;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "type":I
    :cond_8
    :goto_0
    if-eqz v2, :cond_a

    #@80
    .line 476
    const-string/jumbo v12, "TrustManagerService"

    #@83
    new-instance v13, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v14, "Error parsing : "

    #@8b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v13

    #@8f
    move-object/from16 v0, p2

    #@91
    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@93
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@95
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v13

    #@99
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v13

    #@9d
    invoke-static {v12, v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a0
    .line 477
    const/4 v12, 0x0

    #@a1
    return-object v12

    #@a2
    .line 470
    .restart local v2    # "caughtException":Ljava/lang/Exception;
    :catch_0
    move-exception v6

    #@a3
    .line 471
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v2, v6

    #@a4
    .line 473
    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    #@a6
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@a9
    goto :goto_0

    #@aa
    .line 468
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    #@ab
    .line 469
    .local v5, "e":Ljava/io/IOException;
    move-object v2, v5

    #@ac
    .line 473
    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    #@ae
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@b1
    goto :goto_0

    #@b2
    .line 466
    .end local v5    # "e":Ljava/io/IOException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    #@b3
    .line 467
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v4

    #@b4
    .line 473
    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    #@b6
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@b9
    goto :goto_0

    #@ba
    .line 472
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    #@bb
    .line 473
    if-eqz v8, :cond_9

    #@bd
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@c0
    .line 472
    :cond_9
    throw v12

    #@c1
    .line 479
    .end local v2    # "caughtException":Ljava/lang/Exception;
    :cond_a
    if-nez v3, :cond_b

    #@c3
    .line 480
    const/4 v12, 0x0

    #@c4
    return-object v12

    #@c5
    .line 482
    :cond_b
    const/16 v12, 0x2f

    #@c7
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    #@ca
    move-result v12

    #@cb
    if-gez v12, :cond_c

    #@cd
    .line 483
    new-instance v12, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    move-object/from16 v0, p2

    #@d4
    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d6
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@d8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v12

    #@dc
    const-string/jumbo v13, "/"

    #@df
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v12

    #@e3
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v12

    #@e7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v3

    #@eb
    .line 485
    :cond_c
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@ee
    move-result-object v12

    #@ef
    return-object v12
.end method

.method private isTrustUsuallyManagedInternal(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 855
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@2
    monitor-enter v3

    #@3
    .line 856
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    #@8
    move-result v0

    #@9
    .line 857
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@b
    .line 858
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@d
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v2

    #@11
    monitor-exit v3

    #@12
    return v2

    #@13
    :cond_0
    monitor-exit v3

    #@14
    .line 862
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@16
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    #@19
    move-result v1

    #@1a
    .line 863
    .local v1, "persistedValue":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@1c
    monitor-enter v3

    #@1d
    .line 864
    :try_start_1
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@1f
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    #@22
    move-result v0

    #@23
    .line 865
    if-ltz v0, :cond_1

    #@25
    .line 867
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@27
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2a
    move-result v2

    #@2b
    monitor-exit v3

    #@2c
    return v2

    #@2d
    .line 855
    .end local v0    # "i":I
    .end local v1    # "persistedValue":Z
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2

    #@30
    .line 870
    .restart local v0    # "i":I
    .restart local v1    # "persistedValue":Z
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@32
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    monitor-exit v3

    #@36
    .line 871
    return v1

    #@37
    .line 863
    :catchall_1
    move-exception v2

    #@38
    monitor-exit v3

    #@39
    throw v2
.end method

.method private maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 11
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 494
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v8

    #@7
    .line 495
    const-string/jumbo v9, "trust_agents_initialized"

    #@a
    .line 494
    invoke-static {v8, v9, v10, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@d
    move-result v8

    #@e
    if-eqz v8, :cond_0

    #@10
    .line 496
    return-void

    #@11
    .line 498
    :cond_0
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v3

    #@17
    .line 499
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, v3, p2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    #@1a
    move-result-object v7

    #@1b
    .line 500
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/util/ArraySet;

    #@1d
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@20
    .line 501
    .local v2, "discoveredAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v6

    #@24
    .local v6, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_2

    #@2a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Landroid/content/pm/ResolveInfo;

    #@30
    .line 502
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    #@33
    move-result-object v1

    #@34
    .line 503
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@36
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3a
    .line 504
    .local v0, "applicationInfoFlags":I
    and-int/lit8 v8, v0, 0x1

    #@3c
    if-nez v8, :cond_1

    #@3e
    .line 505
    const-string/jumbo v8, "TrustManagerService"

    #@41
    new-instance v9, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v10, "Leaving agent "

    #@49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    const-string/jumbo v10, " disabled because package "

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    .line 506
    const-string/jumbo v10, "is not a system package."

    #@5b
    .line 505
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    goto :goto_0

    #@67
    .line 509
    :cond_1
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@6a
    goto :goto_0

    #@6b
    .line 512
    .end local v0    # "applicationInfoFlags":I
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    #@6e
    move-result-object v4

    #@6f
    .line 513
    .local v4, "previouslyEnabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v4, :cond_3

    #@71
    .line 514
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@74
    .line 516
    :cond_3
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    #@77
    .line 517
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@79
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7c
    move-result-object v8

    #@7d
    .line 518
    const-string/jumbo v9, "trust_agents_initialized"

    #@80
    const/4 v10, 0x1

    #@81
    .line 517
    invoke-static {v8, v9, v10, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@84
    .line 493
    return-void
.end method

.method private refreshDeviceLockedForUser(I)V
    .locals 16
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 326
    const/4 v12, -0x1

    #@1
    move/from16 v0, p1

    #@3
    if-eq v0, v12, :cond_0

    #@5
    if-gez p1, :cond_0

    #@7
    .line 327
    const-string/jumbo v12, "TrustManagerService"

    #@a
    new-instance v13, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v14, "refreshDeviceLockedForUser(userId="

    #@12
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v13

    #@16
    move/from16 v0, p1

    #@18
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v13

    #@1c
    const-string/jumbo v14, "): Invalid user handle,"

    #@1f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v13

    #@23
    .line 328
    const-string/jumbo v14, " must be USER_ALL or a specific user."

    #@26
    .line 327
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v13

    #@2a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v13

    #@2e
    .line 328
    new-instance v14, Ljava/lang/Throwable;

    #@30
    const-string/jumbo v15, "here"

    #@33
    invoke-direct {v14, v15}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@36
    .line 327
    invoke-static {v12, v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 329
    const/16 p1, -0x1

    #@3b
    .line 333
    :cond_0
    const/4 v12, -0x1

    #@3c
    move/from16 v0, p1

    #@3e
    if-ne v0, v12, :cond_4

    #@40
    .line 334
    move-object/from16 v0, p0

    #@42
    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@44
    const/4 v13, 0x1

    #@45
    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@48
    move-result-object v10

    #@49
    .line 340
    .local v10, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@4c
    move-result-object v11

    #@4d
    .line 342
    .local v11, "wm":Landroid/view/IWindowManager;
    const/4 v4, 0x0

    #@4e
    .local v4, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@51
    move-result v12

    #@52
    if-ge v4, v12, :cond_7

    #@54
    .line 343
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v6

    #@58
    check-cast v6, Landroid/content/pm/UserInfo;

    #@5a
    .line 345
    .local v6, "info":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_3

    #@5c
    iget-boolean v12, v6, Landroid/content/pm/UserInfo;->partial:Z

    #@5e
    if-nez v12, :cond_3

    #@60
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEnabled()Z

    #@63
    move-result v12

    #@64
    if-eqz v12, :cond_3

    #@66
    iget-boolean v12, v6, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@68
    if-nez v12, :cond_3

    #@6a
    .line 346
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    #@6d
    move-result v12

    #@6e
    if-eqz v12, :cond_3

    #@70
    .line 350
    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    #@72
    .line 351
    .local v5, "id":I
    move-object/from16 v0, p0

    #@74
    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@76
    invoke-virtual {v12, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    #@79
    move-result v7

    #@7a
    .line 352
    .local v7, "secure":Z
    move-object/from16 v0, p0

    #@7c
    invoke-direct {v0, v5}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    #@7f
    move-result v9

    #@80
    .line 353
    .local v9, "trusted":Z
    const/4 v8, 0x1

    #@81
    .line 354
    .local v8, "showingKeyguard":Z
    move-object/from16 v0, p0

    #@83
    iget v12, v0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    #@85
    if-ne v12, v5, :cond_1

    #@87
    .line 356
    :try_start_0
    invoke-interface {v11}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8a
    move-result v8

    #@8b
    .line 360
    .end local v8    # "showingKeyguard":Z
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    #@8d
    if-eqz v8, :cond_2

    #@8f
    if-eqz v9, :cond_5

    #@91
    :cond_2
    const/4 v2, 0x0

    #@92
    .line 363
    .local v2, "deviceLocked":Z
    :goto_3
    move-object/from16 v0, p0

    #@94
    iget-object v13, v0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    #@96
    monitor-enter v13

    #@97
    .line 364
    :try_start_1
    move-object/from16 v0, p0

    #@99
    invoke-virtual {v0, v5}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    #@9c
    move-result v12

    #@9d
    if-eq v12, v2, :cond_6

    #@9f
    const/4 v1, 0x1

    #@a0
    .line 365
    .local v1, "changed":Z
    :goto_4
    move-object/from16 v0, p0

    #@a2
    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    #@a4
    invoke-virtual {v12, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a7
    monitor-exit v13

    #@a8
    .line 367
    if-eqz v1, :cond_3

    #@aa
    .line 368
    move-object/from16 v0, p0

    #@ac
    invoke-direct {v0, v5, v2}, Lcom/android/server/trust/TrustManagerService;->dispatchDeviceLocked(IZ)V

    #@af
    .line 342
    .end local v1    # "changed":Z
    .end local v2    # "deviceLocked":Z
    .end local v5    # "id":I
    .end local v7    # "secure":Z
    .end local v9    # "trusted":Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@b1
    goto :goto_1

    #@b2
    .line 336
    .end local v4    # "i":I
    .end local v6    # "info":Landroid/content/pm/UserInfo;
    .end local v10    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v11    # "wm":Landroid/view/IWindowManager;
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    #@b4
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@b7
    .line 337
    .restart local v10    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    #@b9
    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@bb
    move/from16 v0, p1

    #@bd
    invoke-virtual {v12, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@c0
    move-result-object v12

    #@c1
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c4
    goto :goto_0

    #@c5
    .line 357
    .restart local v4    # "i":I
    .restart local v5    # "id":I
    .restart local v6    # "info":Landroid/content/pm/UserInfo;
    .restart local v7    # "secure":Z
    .restart local v8    # "showingKeyguard":Z
    .restart local v9    # "trusted":Z
    .restart local v11    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v3

    #@c6
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@c7
    .line 360
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v8    # "showingKeyguard":Z
    :cond_5
    const/4 v2, 0x1

    #@c8
    .restart local v2    # "deviceLocked":Z
    goto :goto_3

    #@c9
    .line 364
    :cond_6
    const/4 v1, 0x0

    #@ca
    .restart local v1    # "changed":Z
    goto :goto_4

    #@cb
    .line 363
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v12

    #@cc
    monitor-exit v13

    #@cd
    throw v12

    #@ce
    .line 325
    .end local v2    # "deviceLocked":Z
    .end local v5    # "id":I
    .end local v6    # "info":Landroid/content/pm/UserInfo;
    .end local v7    # "secure":Z
    .end local v9    # "trusted":Z
    :cond_7
    return-void
.end method

.method private removeAgentsOfPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 401
    const/4 v2, 0x0

    #@1
    .line 402
    .local v2, "trustMayHaveChanged":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v0, v3, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@b
    .line 403
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@13
    .line 404
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@15
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 405
    const-string/jumbo v3, "TrustManagerService"

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Resetting agent "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@30
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 406
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@41
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_0

    #@47
    .line 407
    const/4 v2, 0x1

    #@48
    .line 409
    :cond_0
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@4a
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    #@4d
    .line 410
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@4f
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@52
    .line 402
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@54
    goto :goto_0

    #@55
    .line 413
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    if-eqz v2, :cond_3

    #@57
    .line 414
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    #@5a
    .line 400
    :cond_3
    return-void
.end method

.method private removeListener(Landroid/app/trust/ITrustListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    #@0
    .prologue
    .line 600
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 601
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/app/trust/ITrustListener;

    #@11
    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v1

    #@15
    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v2

    #@19
    if-ne v1, v2, :cond_0

    #@1b
    .line 602
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@20
    .line 603
    return-void

    #@21
    .line 600
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 599
    :cond_1
    return-void
.end method

.method private resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 522
    sget-object v6, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    #@2
    .line 523
    const/high16 v7, 0xc0000

    #@4
    .line 522
    invoke-virtual {p1, v6, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@7
    move-result-object v5

    #@8
    .line 525
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@d
    move-result v6

    #@e
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    .line 526
    .local v0, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v4

    #@15
    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_2

    #@1b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@21
    .line 527
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@23
    if-eqz v6, :cond_0

    #@25
    .line 528
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@27
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@29
    if-eqz v6, :cond_0

    #@2b
    .line 529
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2d
    iget-object v2, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2f
    .line 530
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v6, "android.permission.PROVIDE_TRUST_AGENT"

    #@32
    invoke-virtual {p1, v6, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_1

    #@38
    .line 532
    invoke-direct {p0, v3}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    #@3b
    move-result-object v1

    #@3c
    .line 533
    .local v1, "name":Landroid/content/ComponentName;
    const-string/jumbo v6, "TrustManagerService"

    #@3f
    new-instance v7, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v8, "Skipping agent "

    #@47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    const-string/jumbo v8, " because package does not have"

    #@52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    .line 534
    const-string/jumbo v8, " permission "

    #@59
    .line 533
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    .line 534
    const-string/jumbo v8, "android.permission.PROVIDE_TRUST_AGENT"

    #@60
    .line 533
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v7

    #@64
    .line 534
    const-string/jumbo v8, "."

    #@67
    .line 533
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    goto :goto_0

    #@73
    .line 537
    .end local v1    # "name":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@76
    goto :goto_0

    #@77
    .line 539
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v0
.end method

.method private resolveProfileParent(I)I
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 877
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 879
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@6
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v2

    #@a
    .line 880
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@c
    .line 881
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v3

    #@14
    .line 885
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 881
    return v3

    #@18
    .line 885
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 883
    return p1

    #@1c
    .line 884
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@1d
    .line 885
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 884
    throw v3
.end method

.method private updateTrustAll()V
    .locals 5

    #@0
    .prologue
    .line 192
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 193
    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/content/pm/UserInfo;

    #@17
    .line 194
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-virtual {p0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@1d
    goto :goto_0

    #@1e
    .line 191
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private updateTrustUsuallyManaged(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "managed"    # Z

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    .line 218
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@4
    monitor-enter v1

    #@5
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 223
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@10
    .line 224
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@12
    .line 225
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@17
    move-result-object v1

    #@18
    .line 226
    const-wide/32 v2, 0x1d4c0

    #@1b
    .line 224
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1e
    .line 217
    return-void

    #@1f
    .line 218
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method


# virtual methods
.method isDeviceLockedInner(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    #@2
    monitor-enter v1

    #@3
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    monitor-exit v1

    #@b
    return v0

    #@c
    .line 320
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 150
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 152
    return-void

    #@8
    .line 154
    :cond_0
    const/16 v0, 0x1f4

    #@a
    if-ne p1, v0, :cond_2

    #@c
    .line 155
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@e
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@10
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@12
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@15
    move-result-object v2

    #@16
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@18
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@1b
    .line 156
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    #@1d
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@1f
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    #@22
    .line 157
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@24
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    #@26
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    #@29
    .line 149
    :cond_1
    :goto_0
    return-void

    #@2a
    .line 158
    :cond_2
    const/16 v0, 0x258

    #@2c
    if-ne p1, v0, :cond_3

    #@2e
    .line 159
    iput-boolean v4, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    #@30
    .line 160
    const/4 v0, -0x1

    #@31
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@34
    goto :goto_0

    #@35
    .line 161
    :cond_3
    const/16 v0, 0x3e8

    #@37
    if-ne p1, v0, :cond_1

    #@39
    .line 162
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@3b
    const/4 v1, 0x0

    #@3c
    invoke-direct {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    #@3f
    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0x8

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 652
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 145
    const-string/jumbo v0, "trust"

    #@3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 144
    return-void
.end method

.method public onStartUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x7

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 647
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0x9

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 657
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0xb

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 662
    return-void
.end method

.method refreshAgentList(I)V
    .locals 28
    .param p1, "userIdOrAll"    # I

    #@0
    .prologue
    .line 231
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    #@4
    move/from16 v24, v0

    #@6
    if-nez v24, :cond_0

    #@8
    .line 232
    return-void

    #@9
    .line 234
    :cond_0
    const/16 v24, -0x1

    #@b
    move/from16 v0, p1

    #@d
    move/from16 v1, v24

    #@f
    if-eq v0, v1, :cond_1

    #@11
    if-gez p1, :cond_1

    #@13
    .line 235
    const-string/jumbo v24, "TrustManagerService"

    #@16
    new-instance v25, Ljava/lang/StringBuilder;

    #@18
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v26, "refreshAgentList(userId="

    #@1e
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v25

    #@22
    move-object/from16 v0, v25

    #@24
    move/from16 v1, p1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v25

    #@2a
    const-string/jumbo v26, "): Invalid user handle,"

    #@2d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v25

    #@31
    .line 236
    const-string/jumbo v26, " must be USER_ALL or a specific user."

    #@34
    .line 235
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v25

    #@38
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v25

    #@3c
    .line 236
    new-instance v26, Ljava/lang/Throwable;

    #@3e
    const-string/jumbo v27, "here"

    #@41
    invoke-direct/range {v26 .. v27}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@44
    .line 235
    invoke-static/range {v24 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 237
    const/16 p1, -0x1

    #@49
    .line 239
    :cond_1
    move-object/from16 v0, p0

    #@4b
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@4d
    move-object/from16 v24, v0

    #@4f
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@52
    move-result-object v16

    #@53
    .line 242
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/16 v24, -0x1

    #@55
    move/from16 v0, p1

    #@57
    move/from16 v1, v24

    #@59
    if-ne v0, v1, :cond_5

    #@5b
    .line 243
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@5f
    move-object/from16 v24, v0

    #@61
    const/16 v25, 0x1

    #@63
    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@66
    move-result-object v23

    #@67
    .line 248
    .local v23, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    move-object/from16 v0, p0

    #@69
    iget-object v13, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@6b
    .line 250
    .local v13, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v15, Landroid/util/ArraySet;

    #@6d
    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    #@70
    .line 251
    .local v15, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@74
    move-object/from16 v24, v0

    #@76
    move-object/from16 v0, v24

    #@78
    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    #@7b
    .line 253
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7e
    move-result-object v22

    #@7f
    .local v22, "userInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@82
    move-result v24

    #@83
    if-eqz v24, :cond_8

    #@85
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@88
    move-result-object v21

    #@89
    check-cast v21, Landroid/content/pm/UserInfo;

    #@8b
    .line 254
    .local v21, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v21, :cond_2

    #@8d
    move-object/from16 v0, v21

    #@8f
    iget-boolean v0, v0, Landroid/content/pm/UserInfo;->partial:Z

    #@91
    move/from16 v24, v0

    #@93
    if-nez v24, :cond_2

    #@95
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isEnabled()Z

    #@98
    move-result v24

    #@99
    if-eqz v24, :cond_2

    #@9b
    .line 255
    move-object/from16 v0, v21

    #@9d
    iget-boolean v0, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@9f
    move/from16 v24, v0

    #@a1
    .line 254
    if-nez v24, :cond_2

    #@a3
    .line 256
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    #@a6
    move-result v24

    #@a7
    if-eqz v24, :cond_2

    #@a9
    .line 257
    move-object/from16 v0, v21

    #@ab
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@ad
    move/from16 v24, v0

    #@af
    invoke-static/range {v24 .. v24}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    #@b2
    move-result v24

    #@b3
    if-eqz v24, :cond_2

    #@b5
    .line 258
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    #@b9
    move-object/from16 v24, v0

    #@bb
    move-object/from16 v0, v21

    #@bd
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@bf
    move/from16 v25, v0

    #@c1
    invoke-virtual/range {v24 .. v25}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    #@c4
    move-result v24

    #@c5
    if-eqz v24, :cond_2

    #@c7
    .line 259
    move-object/from16 v0, v21

    #@c9
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@cb
    move/from16 v24, v0

    #@cd
    move/from16 v0, v24

    #@cf
    invoke-virtual {v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    #@d2
    move-result v24

    #@d3
    if-eqz v24, :cond_2

    #@d5
    .line 260
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    #@d9
    move-object/from16 v24, v0

    #@db
    move-object/from16 v0, v21

    #@dd
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@df
    move/from16 v25, v0

    #@e1
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    #@e4
    move-result v24

    #@e5
    if-eqz v24, :cond_2

    #@e7
    .line 261
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@ea
    move-result-object v9

    #@eb
    .line 262
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, v21

    #@ed
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@ef
    move/from16 v24, v0

    #@f1
    const/16 v25, 0x0

    #@f3
    move-object/from16 v0, v25

    #@f5
    move/from16 v1, v24

    #@f7
    invoke-virtual {v9, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    #@fa
    move-result v8

    #@fb
    .line 264
    .local v8, "disabledFeatures":I
    and-int/lit8 v24, v8, 0x10

    #@fd
    if-eqz v24, :cond_6

    #@ff
    const/4 v7, 0x1

    #@100
    .line 266
    .local v7, "disableTrustAgents":Z
    :goto_1
    move-object/from16 v0, v21

    #@102
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@104
    move/from16 v24, v0

    #@106
    move/from16 v0, v24

    #@108
    invoke-virtual {v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    #@10b
    move-result-object v10

    #@10c
    .line 267
    .local v10, "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v10, :cond_2

    #@10e
    .line 270
    move-object/from16 v0, v21

    #@110
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@112
    move/from16 v24, v0

    #@114
    move-object/from16 v0, p0

    #@116
    move-object/from16 v1, v16

    #@118
    move/from16 v2, v24

    #@11a
    invoke-direct {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    #@11d
    move-result-object v19

    #@11e
    .line 271
    .local v19, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@121
    move-result-object v18

    #@122
    .local v18, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@125
    move-result v24

    #@126
    if-eqz v24, :cond_2

    #@128
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12b
    move-result-object v17

    #@12c
    check-cast v17, Landroid/content/pm/ResolveInfo;

    #@12e
    .line 272
    .local v17, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    #@130
    move-object/from16 v1, v17

    #@132
    invoke-direct {v0, v1}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    #@135
    move-result-object v14

    #@136
    .line 274
    .local v14, "name":Landroid/content/ComponentName;
    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@139
    move-result v24

    #@13a
    if-eqz v24, :cond_3

    #@13c
    .line 275
    if-eqz v7, :cond_4

    #@13e
    .line 277
    move-object/from16 v0, v21

    #@140
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@142
    move/from16 v24, v0

    #@144
    const/16 v25, 0x0

    #@146
    move-object/from16 v0, v25

    #@148
    move/from16 v1, v24

    #@14a
    invoke-virtual {v9, v0, v14, v1}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    #@14d
    move-result-object v6

    #@14e
    .line 279
    .local v6, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    if-eqz v6, :cond_3

    #@150
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@153
    move-result v24

    #@154
    if-nez v24, :cond_3

    #@156
    .line 282
    .end local v6    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_4
    new-instance v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@158
    const/16 v24, 0x0

    #@15a
    move-object/from16 v0, v24

    #@15c
    invoke-direct {v5, v0}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService$AgentInfo;)V

    #@15f
    .line 283
    .local v5, "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iput-object v14, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@161
    .line 284
    move-object/from16 v0, v21

    #@163
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@165
    move/from16 v24, v0

    #@167
    move/from16 v0, v24

    #@169
    iput v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@16b
    .line 285
    move-object/from16 v0, p0

    #@16d
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@16f
    move-object/from16 v24, v0

    #@171
    move-object/from16 v0, v24

    #@173
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@176
    move-result v24

    #@177
    if-nez v24, :cond_7

    #@179
    .line 286
    move-object/from16 v0, v17

    #@17b
    move-object/from16 v1, v16

    #@17d
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@180
    move-result-object v24

    #@181
    move-object/from16 v0, v24

    #@183
    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    #@185
    .line 287
    move-object/from16 v0, v17

    #@187
    move-object/from16 v1, v16

    #@189
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@18c
    move-result-object v24

    #@18d
    move-object/from16 v0, v24

    #@18f
    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    #@191
    .line 288
    move-object/from16 v0, p0

    #@193
    move-object/from16 v1, v16

    #@195
    move-object/from16 v2, v17

    #@197
    invoke-direct {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    #@19a
    move-result-object v24

    #@19b
    move-object/from16 v0, v24

    #@19d
    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Landroid/content/ComponentName;

    #@19f
    .line 289
    new-instance v24, Lcom/android/server/trust/TrustAgentWrapper;

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@1a5
    move-object/from16 v25, v0

    #@1a7
    .line 290
    new-instance v26, Landroid/content/Intent;

    #@1a9
    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    #@1ac
    move-object/from16 v0, v26

    #@1ae
    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1b1
    move-result-object v26

    #@1b2
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@1b5
    move-result-object v27

    #@1b6
    .line 289
    move-object/from16 v0, v24

    #@1b8
    move-object/from16 v1, v25

    #@1ba
    move-object/from16 v2, p0

    #@1bc
    move-object/from16 v3, v26

    #@1be
    move-object/from16 v4, v27

    #@1c0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1c3
    move-object/from16 v0, v24

    #@1c5
    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1c7
    .line 291
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@1cb
    move-object/from16 v24, v0

    #@1cd
    move-object/from16 v0, v24

    #@1cf
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1d2
    goto/16 :goto_2

    #@1d4
    .line 245
    .end local v5    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v7    # "disableTrustAgents":Z
    .end local v8    # "disabledFeatures":I
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v13    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v14    # "name":Landroid/content/ComponentName;
    .end local v15    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    .end local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v19    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v22    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v23    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    new-instance v23, Ljava/util/ArrayList;

    #@1d6
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    #@1d9
    .line 246
    .restart local v23    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    #@1db
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@1dd
    move-object/from16 v24, v0

    #@1df
    move-object/from16 v0, v24

    #@1e1
    move/from16 v1, p1

    #@1e3
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@1e6
    move-result-object v24

    #@1e7
    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1ea
    goto/16 :goto_0

    #@1ec
    .line 264
    .restart local v8    # "disabledFeatures":I
    .restart local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v13    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v15    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v22    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_6
    const/4 v7, 0x0

    #@1ed
    .restart local v7    # "disableTrustAgents":Z
    goto/16 :goto_1

    #@1ef
    .line 293
    .restart local v5    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .restart local v10    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v14    # "name":Landroid/content/ComponentName;
    .restart local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "resolveInfo$iterator":Ljava/util/Iterator;
    .restart local v19    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@1f2
    goto/16 :goto_2

    #@1f4
    .line 298
    .end local v5    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v7    # "disableTrustAgents":Z
    .end local v8    # "disabledFeatures":I
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v14    # "name":Landroid/content/ComponentName;
    .end local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v19    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_8
    const/16 v20, 0x0

    #@1f6
    .line 299
    .local v20, "trustMayHaveChanged":Z
    const/4 v11, 0x0

    #@1f7
    .local v11, "i":I
    :goto_3
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    #@1fa
    move-result v24

    #@1fb
    move/from16 v0, v24

    #@1fd
    if-ge v11, v0, :cond_c

    #@1ff
    .line 300
    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@202
    move-result-object v12

    #@203
    check-cast v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@205
    .line 301
    .local v12, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    const/16 v24, -0x1

    #@207
    move/from16 v0, p1

    #@209
    move/from16 v1, v24

    #@20b
    if-eq v0, v1, :cond_9

    #@20d
    iget v0, v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@20f
    move/from16 v24, v0

    #@211
    move/from16 v0, p1

    #@213
    move/from16 v1, v24

    #@215
    if-ne v0, v1, :cond_b

    #@217
    .line 302
    :cond_9
    iget-object v0, v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@219
    move-object/from16 v24, v0

    #@21b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    #@21e
    move-result v24

    #@21f
    if-eqz v24, :cond_a

    #@221
    .line 303
    const/16 v20, 0x1

    #@223
    .line 305
    :cond_a
    iget-object v0, v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@225
    move-object/from16 v24, v0

    #@227
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    #@22a
    .line 306
    move-object/from16 v0, p0

    #@22c
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@22e
    move-object/from16 v24, v0

    #@230
    move-object/from16 v0, v24

    #@232
    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@235
    .line 299
    :cond_b
    add-int/lit8 v11, v11, 0x1

    #@237
    goto :goto_3

    #@238
    .line 310
    .end local v12    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_c
    if-eqz v20, :cond_d

    #@23a
    .line 311
    const/16 v24, -0x1

    #@23c
    move/from16 v0, p1

    #@23e
    move/from16 v1, v24

    #@240
    if-ne v0, v1, :cond_e

    #@242
    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    #@245
    .line 229
    :cond_d
    :goto_4
    return-void

    #@246
    .line 314
    :cond_e
    const/16 v24, 0x0

    #@248
    move-object/from16 v0, p0

    #@24a
    move/from16 v1, p1

    #@24c
    move/from16 v2, v24

    #@24e
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@251
    goto :goto_4
.end method

.method public resetAgent(Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 419
    const/4 v2, 0x0

    #@2
    .line 420
    .local v2, "trustMayHaveChanged":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@4
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@7
    move-result v3

    #@8
    add-int/lit8 v0, v3, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@c
    .line 421
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@e
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@14
    .line 422
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@16
    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    iget v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@1e
    if-ne p2, v3, :cond_1

    #@20
    .line 423
    const-string/jumbo v3, "TrustManagerService"

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "Resetting agent "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@31
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 424
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@42
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_0

    #@48
    .line 425
    const/4 v2, 0x1

    #@49
    .line 427
    :cond_0
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@4b
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    #@4e
    .line 428
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@50
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@53
    .line 420
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@55
    goto :goto_0

    #@56
    .line 431
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    if-eqz v2, :cond_3

    #@58
    .line 432
    invoke-virtual {p0, p2, v6}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@5b
    .line 434
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@5e
    .line 418
    return-void
.end method

.method updateDevicePolicyFeatures()V
    .locals 4

    #@0
    .prologue
    .line 387
    const/4 v0, 0x0

    #@1
    .line 388
    .local v0, "changed":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@4
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@7
    move-result v3

    #@8
    if-ge v1, v3, :cond_1

    #@a
    .line 389
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@c
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@12
    .line 390
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@14
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 391
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1c
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    #@1f
    .line 392
    const/4 v0, 0x1

    #@20
    .line 388
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 395
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    if-eqz v0, :cond_2

    #@25
    .line 396
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@27
    invoke-virtual {v3}, Lcom/android/server/trust/TrustArchive;->logDevicePolicyChanged()V

    #@2a
    .line 386
    :cond_2
    return-void
.end method

.method public updateTrust(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    #@3
    move-result v1

    #@4
    .line 200
    .local v1, "managed":Z
    invoke-direct {p0, v1, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    #@7
    .line 201
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    #@9
    invoke-virtual {v3, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 202
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    #@12
    move-result v3

    #@13
    if-eq v3, v1, :cond_0

    #@15
    .line 203
    invoke-direct {p0, p1, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrustUsuallyManaged(IZ)V

    #@18
    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    #@1b
    move-result v2

    #@1c
    .line 207
    .local v2, "trusted":Z
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    #@1e
    monitor-enter v4

    #@1f
    .line 208
    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    #@21
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@24
    move-result v3

    #@25
    if-eq v3, v2, :cond_2

    #@27
    const/4 v0, 0x1

    #@28
    .line 209
    .local v0, "changed":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    #@2a
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v4

    #@2e
    .line 211
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZII)V

    #@31
    .line 212
    if-eqz v0, :cond_1

    #@33
    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    #@36
    .line 198
    :cond_1
    return-void

    #@37
    .line 208
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    #@38
    .restart local v0    # "changed":Z
    goto :goto_0

    #@39
    .line 207
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3
.end method
