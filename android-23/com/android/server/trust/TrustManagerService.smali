.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustManagerService$AgentInfo;,
        Lcom/android/server/trust/TrustManagerService$Receiver;,
        Lcom/android/server/trust/TrustManagerService$1;,
        Lcom/android/server/trust/TrustManagerService$2;,
        Lcom/android/server/trust/TrustManagerService$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_CLEANUP_USER:I = 0x8

.field private static final MSG_DISPATCH_UNLOCK_ATTEMPT:I = 0x3

.field private static final MSG_ENABLED_AGENTS_CHANGED:I = 0x4

.field private static final MSG_KEYGUARD_SHOWING_CHANGED:I = 0x6

.field private static final MSG_REGISTER_LISTENER:I = 0x1

.field private static final MSG_REQUIRE_CREDENTIAL_ENTRY:I = 0x5

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_SWITCH_USER:I = 0x9

.field private static final MSG_UNREGISTER_LISTENER:I = 0x2

.field private static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TAG:Ljava/lang/String; = "TrustManagerService"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


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

.field private final mUserHasAuthenticated:Landroid/util/SparseBooleanArray;

.field private final mUserHasAuthenticatedSinceBoot:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserHasAuthenticatedSinceBoot"
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

.method static synthetic -get6(Lcom/android/server/trust/TrustManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticated:Landroid/util/SparseBooleanArray;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

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

.method static synthetic -wrap10(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->requireCredentialEntry(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->updateUserHasAuthenticated(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->getUserHasAuthenticatedSinceBoot(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->getUserHasAuthenticated(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/trust/TrustManagerService;I)I
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

.method static synthetic -wrap5(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/trust/TrustManagerService;ZI)V
    .locals 0
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 91
    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    #@a
    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 105
    new-instance v0, Landroid/util/ArraySet;

    #@6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@b
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@12
    .line 107
    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$Receiver;)V

    #@18
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    #@1a
    .line 108
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@1c
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticated:Landroid/util/SparseBooleanArray;

    #@21
    .line 109
    new-instance v0, Lcom/android/server/trust/TrustArchive;

    #@23
    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@28
    .line 116
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@2a
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    #@2f
    .line 119
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@31
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@34
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    #@36
    .line 122
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@38
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@3b
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticatedSinceBoot:Landroid/util/SparseBooleanArray;

    #@3d
    .line 124
    iput-boolean v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    #@3f
    .line 125
    iput v2, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    #@41
    .line 673
    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    #@43
    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    #@46
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    #@48
    .line 855
    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    #@4a
    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    #@4d
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    #@4f
    .line 891
    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    #@51
    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    #@54
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@56
    .line 129
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@58
    .line 130
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@5a
    const-string/jumbo v1, "user"

    #@5d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Landroid/os/UserManager;

    #@63
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@65
    .line 131
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@67
    const-string/jumbo v1, "activity"

    #@6a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6d
    move-result-object v0

    #@6e
    check-cast v0, Landroid/app/ActivityManager;

    #@70
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    #@72
    .line 132
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #@74
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@77
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@79
    .line 127
    return-void
.end method

.method private addListener(Landroid/app/trust/ITrustListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    #@0
    .prologue
    .line 607
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
    .line 608
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
    .line 609
    return-void

    #@1c
    .line 607
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 613
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    #@27
    .line 606
    return-void
.end method

.method private aggregateIsTrustManaged(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 527
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->getUserHasAuthenticated(I)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 528
    return v3

    #@8
    .line 530
    :cond_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@e
    move-result v2

    #@f
    if-ge v0, v2, :cond_2

    #@11
    .line 531
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@13
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@19
    .line 532
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@1b
    if-ne v2, p1, :cond_1

    #@1d
    .line 533
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1f
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 534
    const/4 v2, 0x1

    #@26
    return v2

    #@27
    .line 530
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 538
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
    .line 512
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->getUserHasAuthenticated(I)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 513
    return v3

    #@8
    .line 515
    :cond_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@e
    move-result v2

    #@f
    if-ge v0, v2, :cond_2

    #@11
    .line 516
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@13
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@19
    .line 517
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@1b
    if-ne v2, p1, :cond_1

    #@1d
    .line 518
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1f
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 519
    const/4 v2, 0x1

    #@26
    return v2

    #@27
    .line 515
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 523
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    return v3
.end method

.method private clearUserHasAuthenticated(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 580
    const/4 v0, -0x1

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 581
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticated:Landroid/util/SparseBooleanArray;

    #@6
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    #@9
    .line 582
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticatedSinceBoot:Landroid/util/SparseBooleanArray;

    #@b
    monitor-enter v1

    #@c
    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticatedSinceBoot:Landroid/util/SparseBooleanArray;

    #@e
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :goto_0
    monitor-exit v1

    #@12
    .line 579
    return-void

    #@13
    .line 582
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0

    #@16
    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticated:Landroid/util/SparseBooleanArray;

    #@18
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1b
    .line 587
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticatedSinceBoot:Landroid/util/SparseBooleanArray;

    #@1d
    monitor-enter v1

    #@1e
    .line 588
    :try_start_1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticatedSinceBoot:Landroid/util/SparseBooleanArray;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@24
    goto :goto_0

    #@25
    .line 587
    :catchall_1
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method private dispatchDeviceLocked(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isLocked"    # Z

    #@0
    .prologue
    .line 347
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
    .line 348
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@11
    .line 349
    .local v0, "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@13
    if-ne v2, p1, :cond_0

    #@15
    .line 350
    if-eqz p2, :cond_1

    #@17
    .line 351
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@19
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    #@1c
    .line 347
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 353
    :cond_1
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@21
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    #@24
    goto :goto_1

    #@25
    .line 346
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
    .line 626
    if-nez p1, :cond_0

    #@2
    const/4 p3, 0x0

    #@3
    .line 627
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
    .line 629
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
    .line 627
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 634
    :catch_0
    move-exception v1

    #@1b
    .line 635
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TrustManagerService"

    #@1e
    const-string/jumbo v4, "Exception while notifying TrustListener."

    #@21
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_1

    #@25
    .line 630
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@26
    .line 631
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v3, "TrustManagerService"

    #@29
    const-string/jumbo v4, "Removing dead TrustListener."

    #@2c
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 632
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@34
    .line 633
    add-int/lit8 v2, v2, -0x1

    #@36
    goto :goto_1

    #@37
    .line 625
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
    .line 641
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
    .line 643
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
    .line 641
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 648
    :catch_0
    move-exception v1

    #@18
    .line 649
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TrustManagerService"

    #@1b
    const-string/jumbo v4, "Exception while notifying TrustListener."

    #@1e
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 644
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@23
    .line 645
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v3, "TrustManagerService"

    #@26
    const-string/jumbo v4, "Removing dead TrustListener."

    #@29
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 646
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@31
    .line 647
    add-int/lit8 v2, v2, -0x1

    #@33
    goto :goto_1

    #@34
    .line 640
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
    .line 542
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@3
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 543
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@11
    .line 544
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@13
    if-ne v2, p2, :cond_0

    #@15
    .line 545
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@17
    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    #@1a
    .line 542
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 549
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    if-eqz p1, :cond_2

    #@1f
    .line 550
    invoke-direct {p0, p2}, Lcom/android/server/trust/TrustManagerService;->updateUserHasAuthenticated(I)V

    #@22
    .line 541
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
    .line 457
    if-eqz p1, :cond_0

    #@3
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@5
    if-nez v0, :cond_1

    #@7
    :cond_0
    return-object v1

    #@8
    .line 458
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
    .line 406
    if-eqz p2, :cond_0

    #@2
    move-object/from16 v0, p2

    #@4
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    if-nez v12, :cond_1

    #@8
    .line 407
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
    .line 408
    const/4 v3, 0x0

    #@13
    .line 409
    .local v3, "cn":Ljava/lang/String;
    const/4 v8, 0x0

    #@14
    .line 410
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    #@15
    .line 412
    .local v2, "caughtException":Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p2

    #@17
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@19
    .line 413
    const-string/jumbo v13, "android.service.trust.trustagent"

    #@1c
    .line 412
    move-object/from16 v0, p1

    #@1e
    invoke-virtual {v12, v0, v13}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@21
    move-result-object v8

    #@22
    .line 414
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v8, :cond_3

    #@24
    .line 415
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
    .line 416
    const/4 v12, 0x0

    #@2e
    .line 441
    if-eqz v8, :cond_2

    #@30
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@33
    .line 416
    :cond_2
    return-object v12

    #@34
    .line 418
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
    .line 419
    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@43
    move-result-object v1

    #@44
    .line 421
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
    .line 422
    const/4 v12, 0x2

    #@4c
    if-ne v11, v12, :cond_4

    #@4e
    .line 425
    :cond_5
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    .line 426
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v12, "trust-agent"

    #@55
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v12

    #@59
    if-nez v12, :cond_7

    #@5b
    .line 427
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
    .line 428
    const/4 v12, 0x0

    #@65
    .line 441
    if-eqz v8, :cond_6

    #@67
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@6a
    .line 428
    :cond_6
    return-object v12

    #@6b
    .line 431
    :cond_7
    :try_start_2
    sget-object v12, Lcom/android/internal/R$styleable;->TrustAgent:[I

    #@6d
    .line 430
    invoke-virtual {v9, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@70
    move-result-object v10

    #@71
    .line 432
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v12, 0x2

    #@72
    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    .line 433
    .local v3, "cn":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@79
    .line 441
    if-eqz v8, :cond_8

    #@7b
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@7e
    .line 443
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
    .line 444
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
    .line 445
    const/4 v12, 0x0

    #@a1
    return-object v12

    #@a2
    .line 438
    .restart local v2    # "caughtException":Ljava/lang/Exception;
    :catch_0
    move-exception v6

    #@a3
    .line 439
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v2, v6

    #@a4
    .line 441
    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    #@a6
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@a9
    goto :goto_0

    #@aa
    .line 436
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    #@ab
    .line 437
    .local v5, "e":Ljava/io/IOException;
    move-object v2, v5

    #@ac
    .line 441
    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    #@ae
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@b1
    goto :goto_0

    #@b2
    .line 434
    .end local v5    # "e":Ljava/io/IOException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    #@b3
    .line 435
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v4

    #@b4
    .line 441
    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    #@b6
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@b9
    goto :goto_0

    #@ba
    .line 440
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    #@bb
    .line 441
    if-eqz v8, :cond_9

    #@bd
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@c0
    .line 440
    :cond_9
    throw v12

    #@c1
    .line 447
    .end local v2    # "caughtException":Ljava/lang/Exception;
    :cond_a
    if-nez v3, :cond_b

    #@c3
    .line 448
    const/4 v12, 0x0

    #@c4
    return-object v12

    #@c5
    .line 450
    :cond_b
    const/16 v12, 0x2f

    #@c7
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    #@ca
    move-result v12

    #@cb
    if-gez v12, :cond_c

    #@cd
    .line 451
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
    .line 453
    :cond_c
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@ee
    move-result-object v12

    #@ef
    return-object v12
.end method

.method private getUserHasAuthenticated(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticated:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getUserHasAuthenticatedSinceBoot(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticatedSinceBoot:Landroid/util/SparseBooleanArray;

    #@2
    monitor-enter v1

    #@3
    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticatedSinceBoot:Landroid/util/SparseBooleanArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 594
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 11
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 462
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v8

    #@7
    .line 463
    const-string/jumbo v9, "trust_agents_initialized"

    #@a
    .line 462
    invoke-static {v8, v9, v10, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@d
    move-result v8

    #@e
    if-eqz v8, :cond_0

    #@10
    .line 464
    return-void

    #@11
    .line 466
    :cond_0
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v3

    #@17
    .line 467
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, v3, p2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    #@1a
    move-result-object v7

    #@1b
    .line 468
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/util/ArraySet;

    #@1d
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@20
    .line 469
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
    .line 470
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    #@33
    move-result-object v1

    #@34
    .line 471
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@36
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3a
    .line 472
    .local v0, "applicationInfoFlags":I
    and-int/lit8 v8, v0, 0x1

    #@3c
    if-nez v8, :cond_1

    #@3e
    .line 473
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
    .line 474
    const-string/jumbo v10, "is not a system package."

    #@5b
    .line 473
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
    .line 477
    :cond_1
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@6a
    goto :goto_0

    #@6b
    .line 480
    .end local v0    # "applicationInfoFlags":I
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    #@6e
    move-result-object v4

    #@6f
    .line 481
    .local v4, "previouslyEnabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v4, :cond_3

    #@71
    .line 482
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@74
    .line 484
    :cond_3
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    #@77
    .line 485
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@79
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7c
    move-result-object v8

    #@7d
    .line 486
    const-string/jumbo v9, "trust_agents_initialized"

    #@80
    const/4 v10, 0x1

    #@81
    .line 485
    invoke-static {v8, v9, v10, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@84
    .line 461
    return-void
.end method

.method private refreshDeviceLockedForUser(I)V
    .locals 16
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 299
    const/4 v12, -0x1

    #@1
    move/from16 v0, p1

    #@3
    if-eq v0, v12, :cond_0

    #@5
    if-gez p1, :cond_0

    #@7
    .line 300
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
    .line 301
    const-string/jumbo v14, " must be USER_ALL or a specific user."

    #@26
    .line 300
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v13

    #@2a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v13

    #@2e
    .line 301
    new-instance v14, Ljava/lang/Throwable;

    #@30
    const-string/jumbo v15, "here"

    #@33
    invoke-direct {v14, v15}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@36
    .line 300
    invoke-static {v12, v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 302
    const/16 p1, -0x1

    #@3b
    .line 306
    :cond_0
    const/4 v12, -0x1

    #@3c
    move/from16 v0, p1

    #@3e
    if-ne v0, v12, :cond_4

    #@40
    .line 307
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
    .line 313
    .local v10, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@4c
    move-result-object v11

    #@4d
    .line 315
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
    .line 316
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v6

    #@58
    check-cast v6, Landroid/content/pm/UserInfo;

    #@5a
    .line 318
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
    .line 319
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    #@6d
    move-result v12

    #@6e
    if-eqz v12, :cond_3

    #@70
    .line 323
    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    #@72
    .line 324
    .local v5, "id":I
    move-object/from16 v0, p0

    #@74
    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@76
    invoke-virtual {v12, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    #@79
    move-result v7

    #@7a
    .line 325
    .local v7, "secure":Z
    move-object/from16 v0, p0

    #@7c
    invoke-direct {v0, v5}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    #@7f
    move-result v9

    #@80
    .line 326
    .local v9, "trusted":Z
    const/4 v8, 0x1

    #@81
    .line 327
    .local v8, "showingKeyguard":Z
    move-object/from16 v0, p0

    #@83
    iget v12, v0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    #@85
    if-ne v12, v5, :cond_1

    #@87
    .line 329
    :try_start_0
    invoke-interface {v11}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8a
    move-result v8

    #@8b
    .line 333
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
    .line 336
    .local v2, "deviceLocked":Z
    :goto_3
    move-object/from16 v0, p0

    #@94
    iget-object v13, v0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    #@96
    monitor-enter v13

    #@97
    .line 337
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
    .line 338
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
    .line 340
    if-eqz v1, :cond_3

    #@aa
    .line 341
    move-object/from16 v0, p0

    #@ac
    invoke-direct {v0, v5, v2}, Lcom/android/server/trust/TrustManagerService;->dispatchDeviceLocked(IZ)V

    #@af
    .line 315
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
    .line 309
    .end local v4    # "i":I
    .end local v6    # "info":Landroid/content/pm/UserInfo;
    .end local v10    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v11    # "wm":Landroid/view/IWindowManager;
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    #@b4
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@b7
    .line 310
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
    .line 330
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
    .line 333
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v8    # "showingKeyguard":Z
    :cond_5
    const/4 v2, 0x1

    #@c8
    .restart local v2    # "deviceLocked":Z
    goto :goto_3

    #@c9
    .line 337
    :cond_6
    const/4 v1, 0x0

    #@ca
    .restart local v1    # "changed":Z
    goto :goto_4

    #@cb
    .line 336
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v12

    #@cc
    monitor-exit v13

    #@cd
    throw v12

    #@ce
    .line 298
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
    .line 369
    const/4 v2, 0x0

    #@1
    .line 370
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
    .line 371
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@13
    .line 372
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
    .line 373
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
    .line 374
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@41
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_0

    #@47
    .line 375
    const/4 v2, 0x1

    #@48
    .line 377
    :cond_0
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@4a
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    #@4d
    .line 378
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@4f
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@52
    .line 370
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@54
    goto :goto_0

    #@55
    .line 381
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    if-eqz v2, :cond_3

    #@57
    .line 382
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    #@5a
    .line 368
    :cond_3
    return-void
.end method

.method private removeListener(Landroid/app/trust/ITrustListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    #@0
    .prologue
    .line 617
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
    .line 618
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
    .line 619
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@20
    .line 620
    return-void

    #@21
    .line 617
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 616
    :cond_1
    return-void
.end method

.method private requireCredentialEntry(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->clearUserHasAuthenticated(I)V

    #@3
    .line 601
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@6
    .line 599
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
    const/4 v7, 0x0

    #@1
    .line 490
    sget-object v6, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    #@3
    invoke-virtual {p1, v6, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@6
    move-result-object v5

    #@7
    .line 492
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@c
    move-result v6

    #@d
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    .line 493
    .local v0, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v4

    #@14
    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_2

    #@1a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@20
    .line 494
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@22
    if-eqz v6, :cond_0

    #@24
    .line 495
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@26
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@28
    if-eqz v6, :cond_0

    #@2a
    .line 496
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2c
    iget-object v2, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2e
    .line 497
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v6, "android.permission.PROVIDE_TRUST_AGENT"

    #@31
    invoke-virtual {p1, v6, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_1

    #@37
    .line 499
    invoke-direct {p0, v3}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    #@3a
    move-result-object v1

    #@3b
    .line 500
    .local v1, "name":Landroid/content/ComponentName;
    const-string/jumbo v6, "TrustManagerService"

    #@3e
    new-instance v7, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v8, "Skipping agent "

    #@46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    const-string/jumbo v8, " because package does not have"

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    .line 501
    const-string/jumbo v8, " permission "

    #@58
    .line 500
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    .line 501
    const-string/jumbo v8, "android.permission.PROVIDE_TRUST_AGENT"

    #@5f
    .line 500
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    .line 501
    const-string/jumbo v8, "."

    #@66
    .line 500
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    goto :goto_0

    #@72
    .line 504
    .end local v1    # "name":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_0

    #@76
    .line 506
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
    .line 843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 845
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@6
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v2

    #@a
    .line 846
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@c
    .line 847
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
    .line 851
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 847
    return v3

    #@18
    .line 851
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 849
    return p1

    #@1c
    .line 850
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@1d
    .line 851
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 850
    throw v3
.end method

.method private setUserHasAuthenticated(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 569
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticated:Landroid/util/SparseBooleanArray;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 570
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticated:Landroid/util/SparseBooleanArray;

    #@b
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@e
    .line 571
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticatedSinceBoot:Landroid/util/SparseBooleanArray;

    #@10
    monitor-enter v1

    #@11
    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserHasAuthenticatedSinceBoot:Landroid/util/SparseBooleanArray;

    #@13
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 574
    return v3

    #@19
    .line 571
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0

    #@1c
    .line 576
    :cond_0
    const/4 v0, 0x0

    #@1d
    return v0
.end method

.method private updateTrustAll()V
    .locals 5

    #@0
    .prologue
    .line 183
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 184
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
    .line 185
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-virtual {p0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@1d
    goto :goto_0

    #@1e
    .line 182
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private updateUserHasAuthenticated(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->setUserHasAuthenticated(I)Z

    #@3
    move-result v0

    #@4
    .line 556
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    #@6
    .line 557
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@9
    .line 554
    :cond_0
    return-void
.end method


# virtual methods
.method isDeviceLockedInner(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    #@2
    monitor-enter v1

    #@3
    .line 294
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
    .line 293
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
    .line 142
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 144
    return-void

    #@8
    .line 146
    :cond_0
    const/16 v0, 0x1f4

    #@a
    if-ne p1, v0, :cond_2

    #@c
    .line 147
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
    .line 148
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    #@1d
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@1f
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    #@22
    .line 141
    :cond_1
    :goto_0
    return-void

    #@23
    .line 149
    :cond_2
    const/16 v0, 0x258

    #@25
    if-ne p1, v0, :cond_3

    #@27
    .line 150
    iput-boolean v4, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    #@29
    .line 151
    const/4 v0, -0x1

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@2d
    goto :goto_0

    #@2e
    .line 152
    :cond_3
    const/16 v0, 0x3e8

    #@30
    if-ne p1, v0, :cond_1

    #@32
    .line 153
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@34
    const/4 v1, 0x0

    #@35
    invoke-direct {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    #@38
    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 663
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
    .line 662
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 137
    const-string/jumbo v0, "trust"

    #@3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 136
    return-void
.end method

.method public onStartUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 658
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
    .line 657
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 668
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
    .line 667
    return-void
.end method

.method refreshAgentList(I)V
    .locals 28
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 205
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    #@4
    move/from16 v24, v0

    #@6
    if-nez v24, :cond_0

    #@8
    .line 206
    return-void

    #@9
    .line 208
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
    .line 209
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
    .line 210
    const-string/jumbo v26, " must be USER_ALL or a specific user."

    #@34
    .line 209
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v25

    #@38
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v25

    #@3c
    .line 210
    new-instance v26, Ljava/lang/Throwable;

    #@3e
    const-string/jumbo v27, "here"

    #@41
    invoke-direct/range {v26 .. v27}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@44
    .line 209
    invoke-static/range {v24 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 211
    const/16 p1, -0x1

    #@49
    .line 213
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
    .line 216
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/16 v24, -0x1

    #@55
    move/from16 v0, p1

    #@57
    move/from16 v1, v24

    #@59
    if-ne v0, v1, :cond_5

    #@5b
    .line 217
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
    .line 222
    .local v23, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    move-object/from16 v0, p0

    #@69
    iget-object v13, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@6b
    .line 224
    .local v13, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v15, Landroid/util/ArraySet;

    #@6d
    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    #@70
    .line 225
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
    .line 227
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
    .line 228
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
    .line 229
    move-object/from16 v0, v21

    #@9d
    iget-boolean v0, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@9f
    move/from16 v24, v0

    #@a1
    .line 228
    if-nez v24, :cond_2

    #@a3
    .line 230
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    #@a6
    move-result v24

    #@a7
    if-eqz v24, :cond_2

    #@a9
    .line 231
    move-object/from16 v0, p0

    #@ab
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    #@ad
    move-object/from16 v24, v0

    #@af
    move-object/from16 v0, v21

    #@b1
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@b3
    move/from16 v25, v0

    #@b5
    invoke-virtual/range {v24 .. v25}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    #@b8
    move-result v24

    #@b9
    if-eqz v24, :cond_2

    #@bb
    .line 232
    move-object/from16 v0, v21

    #@bd
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@bf
    move/from16 v24, v0

    #@c1
    move/from16 v0, v24

    #@c3
    invoke-virtual {v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    #@c6
    move-result v24

    #@c7
    if-eqz v24, :cond_2

    #@c9
    .line 233
    move-object/from16 v0, v21

    #@cb
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@cd
    move/from16 v24, v0

    #@cf
    move-object/from16 v0, p0

    #@d1
    move/from16 v1, v24

    #@d3
    invoke-direct {v0, v1}, Lcom/android/server/trust/TrustManagerService;->getUserHasAuthenticated(I)Z

    #@d6
    move-result v24

    #@d7
    if-eqz v24, :cond_2

    #@d9
    .line 234
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    #@dc
    move-result-object v9

    #@dd
    .line 235
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, v21

    #@df
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@e1
    move/from16 v24, v0

    #@e3
    const/16 v25, 0x0

    #@e5
    move-object/from16 v0, v25

    #@e7
    move/from16 v1, v24

    #@e9
    invoke-virtual {v9, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    #@ec
    move-result v8

    #@ed
    .line 237
    .local v8, "disabledFeatures":I
    and-int/lit8 v24, v8, 0x10

    #@ef
    if-eqz v24, :cond_6

    #@f1
    const/4 v7, 0x1

    #@f2
    .line 239
    .local v7, "disableTrustAgents":Z
    :goto_1
    move-object/from16 v0, v21

    #@f4
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@f6
    move/from16 v24, v0

    #@f8
    move/from16 v0, v24

    #@fa
    invoke-virtual {v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    #@fd
    move-result-object v10

    #@fe
    .line 240
    .local v10, "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v10, :cond_2

    #@100
    .line 243
    move-object/from16 v0, v21

    #@102
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@104
    move/from16 v24, v0

    #@106
    move-object/from16 v0, p0

    #@108
    move-object/from16 v1, v16

    #@10a
    move/from16 v2, v24

    #@10c
    invoke-direct {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    #@10f
    move-result-object v19

    #@110
    .line 244
    .local v19, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@113
    move-result-object v18

    #@114
    .local v18, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@117
    move-result v24

    #@118
    if-eqz v24, :cond_2

    #@11a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11d
    move-result-object v17

    #@11e
    check-cast v17, Landroid/content/pm/ResolveInfo;

    #@120
    .line 245
    .local v17, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    #@122
    move-object/from16 v1, v17

    #@124
    invoke-direct {v0, v1}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    #@127
    move-result-object v14

    #@128
    .line 247
    .local v14, "name":Landroid/content/ComponentName;
    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@12b
    move-result v24

    #@12c
    if-eqz v24, :cond_3

    #@12e
    .line 248
    if-eqz v7, :cond_4

    #@130
    .line 250
    move-object/from16 v0, v21

    #@132
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@134
    move/from16 v24, v0

    #@136
    const/16 v25, 0x0

    #@138
    move-object/from16 v0, v25

    #@13a
    move/from16 v1, v24

    #@13c
    invoke-virtual {v9, v0, v14, v1}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    #@13f
    move-result-object v6

    #@140
    .line 252
    .local v6, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    if-eqz v6, :cond_3

    #@142
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@145
    move-result v24

    #@146
    if-nez v24, :cond_3

    #@148
    .line 255
    .end local v6    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_4
    new-instance v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@14a
    const/16 v24, 0x0

    #@14c
    move-object/from16 v0, v24

    #@14e
    invoke-direct {v5, v0}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService$AgentInfo;)V

    #@151
    .line 256
    .local v5, "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iput-object v14, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@153
    .line 257
    move-object/from16 v0, v21

    #@155
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@157
    move/from16 v24, v0

    #@159
    move/from16 v0, v24

    #@15b
    iput v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@15d
    .line 258
    move-object/from16 v0, p0

    #@15f
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@161
    move-object/from16 v24, v0

    #@163
    move-object/from16 v0, v24

    #@165
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@168
    move-result v24

    #@169
    if-nez v24, :cond_7

    #@16b
    .line 259
    move-object/from16 v0, v17

    #@16d
    move-object/from16 v1, v16

    #@16f
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@172
    move-result-object v24

    #@173
    move-object/from16 v0, v24

    #@175
    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    #@177
    .line 260
    move-object/from16 v0, v17

    #@179
    move-object/from16 v1, v16

    #@17b
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@17e
    move-result-object v24

    #@17f
    move-object/from16 v0, v24

    #@181
    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    #@183
    .line 261
    move-object/from16 v0, p0

    #@185
    move-object/from16 v1, v16

    #@187
    move-object/from16 v2, v17

    #@189
    invoke-direct {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    #@18c
    move-result-object v24

    #@18d
    move-object/from16 v0, v24

    #@18f
    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Landroid/content/ComponentName;

    #@191
    .line 262
    new-instance v24, Lcom/android/server/trust/TrustAgentWrapper;

    #@193
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    #@197
    move-object/from16 v25, v0

    #@199
    .line 263
    new-instance v26, Landroid/content/Intent;

    #@19b
    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    #@19e
    move-object/from16 v0, v26

    #@1a0
    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1a3
    move-result-object v26

    #@1a4
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@1a7
    move-result-object v27

    #@1a8
    .line 262
    move-object/from16 v0, v24

    #@1aa
    move-object/from16 v1, v25

    #@1ac
    move-object/from16 v2, p0

    #@1ae
    move-object/from16 v3, v26

    #@1b0
    move-object/from16 v4, v27

    #@1b2
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1b5
    move-object/from16 v0, v24

    #@1b7
    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1b9
    .line 264
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@1bd
    move-object/from16 v24, v0

    #@1bf
    move-object/from16 v0, v24

    #@1c1
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1c4
    goto/16 :goto_2

    #@1c6
    .line 219
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

    #@1c8
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    #@1cb
    .line 220
    .restart local v23    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    #@1cd
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    #@1cf
    move-object/from16 v24, v0

    #@1d1
    move-object/from16 v0, v24

    #@1d3
    move/from16 v1, p1

    #@1d5
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@1d8
    move-result-object v24

    #@1d9
    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1dc
    goto/16 :goto_0

    #@1de
    .line 237
    .restart local v8    # "disabledFeatures":I
    .restart local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v13    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v15    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v22    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_6
    const/4 v7, 0x0

    #@1df
    .restart local v7    # "disableTrustAgents":Z
    goto/16 :goto_1

    #@1e1
    .line 266
    .restart local v5    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .restart local v10    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v14    # "name":Landroid/content/ComponentName;
    .restart local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "resolveInfo$iterator":Ljava/util/Iterator;
    .restart local v19    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@1e4
    goto/16 :goto_2

    #@1e6
    .line 271
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

    #@1e8
    .line 272
    .local v20, "trustMayHaveChanged":Z
    const/4 v11, 0x0

    #@1e9
    .local v11, "i":I
    :goto_3
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    #@1ec
    move-result v24

    #@1ed
    move/from16 v0, v24

    #@1ef
    if-ge v11, v0, :cond_c

    #@1f1
    .line 273
    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1f4
    move-result-object v12

    #@1f5
    check-cast v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@1f7
    .line 274
    .local v12, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    const/16 v24, -0x1

    #@1f9
    move/from16 v0, p1

    #@1fb
    move/from16 v1, v24

    #@1fd
    if-eq v0, v1, :cond_9

    #@1ff
    iget v0, v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@201
    move/from16 v24, v0

    #@203
    move/from16 v0, p1

    #@205
    move/from16 v1, v24

    #@207
    if-ne v0, v1, :cond_b

    #@209
    .line 275
    :cond_9
    iget-object v0, v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@20b
    move-object/from16 v24, v0

    #@20d
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    #@210
    move-result v24

    #@211
    if-eqz v24, :cond_a

    #@213
    .line 276
    const/16 v20, 0x1

    #@215
    .line 278
    :cond_a
    iget-object v0, v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@217
    move-object/from16 v24, v0

    #@219
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    #@21c
    .line 279
    move-object/from16 v0, p0

    #@21e
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@220
    move-object/from16 v24, v0

    #@222
    move-object/from16 v0, v24

    #@224
    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@227
    .line 272
    :cond_b
    add-int/lit8 v11, v11, 0x1

    #@229
    goto :goto_3

    #@22a
    .line 283
    .end local v12    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_c
    if-eqz v20, :cond_d

    #@22c
    .line 284
    const/16 v24, -0x1

    #@22e
    move/from16 v0, p1

    #@230
    move/from16 v1, v24

    #@232
    if-ne v0, v1, :cond_e

    #@234
    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    #@237
    .line 203
    :cond_d
    :goto_4
    return-void

    #@238
    .line 287
    :cond_e
    const/16 v24, 0x0

    #@23a
    move-object/from16 v0, p0

    #@23c
    move/from16 v1, p1

    #@23e
    move/from16 v2, v24

    #@240
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@243
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
    .line 387
    const/4 v2, 0x0

    #@2
    .line 388
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
    .line 389
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@e
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@14
    .line 390
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
    .line 391
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
    .line 392
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@42
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_0

    #@48
    .line 393
    const/4 v2, 0x1

    #@49
    .line 395
    :cond_0
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@4b
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    #@4e
    .line 396
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@50
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@53
    .line 388
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@55
    goto :goto_0

    #@56
    .line 399
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    if-eqz v2, :cond_3

    #@58
    .line 400
    invoke-virtual {p0, p2, v6}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@5b
    .line 402
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@5e
    .line 386
    return-void
.end method

.method updateDevicePolicyFeatures()V
    .locals 3

    #@0
    .prologue
    .line 360
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@3
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 361
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@11
    .line 362
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@13
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 363
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    #@1b
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    #@1e
    .line 360
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 359
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    return-void
.end method

.method public updateTrust(II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    #@3
    move-result v2

    #@4
    invoke-direct {p0, v2, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    #@7
    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    #@a
    move-result v1

    #@b
    .line 193
    .local v1, "trusted":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    #@d
    monitor-enter v3

    #@e
    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    #@10
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@13
    move-result v2

    #@14
    if-eq v2, v1, :cond_1

    #@16
    const/4 v0, 0x1

    #@17
    .line 195
    .local v0, "changed":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    #@19
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v3

    #@1d
    .line 197
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZII)V

    #@20
    .line 198
    if-eqz v0, :cond_0

    #@22
    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    #@25
    .line 189
    :cond_0
    return-void

    #@26
    .line 194
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    #@27
    .restart local v0    # "changed":Z
    goto :goto_0

    #@28
    .line 193
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2
.end method
