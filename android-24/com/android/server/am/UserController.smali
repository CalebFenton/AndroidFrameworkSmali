.class final Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"


# static fields
.field static final MAX_RUNNING_USERS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field static final USER_SWITCH_TIMEOUT:I = 0x7d0


# instance fields
.field mCurUserSwitchCallback:Ljava/lang/Object;

.field private mCurrentProfileIds:[I

.field private mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUserArray:[I

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetUserId:I

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/UserController;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/UserController;)Lcom/android/server/pm/UserManagerService;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 105
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@5
    .line 104
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 118
    iput v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@6
    .line 120
    const/16 v1, -0x2710

    #@8
    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    #@a
    .line 126
    new-instance v1, Landroid/util/SparseArray;

    #@c
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@11
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    #@13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@18
    .line 136
    const/4 v1, 0x1

    #@19
    new-array v1, v1, [I

    #@1b
    aput v2, v1, v2

    #@1d
    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    #@1f
    .line 140
    new-array v1, v2, [I

    #@21
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    #@23
    .line 145
    new-instance v1, Landroid/util/SparseIntArray;

    #@25
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@28
    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@2a
    .line 151
    new-instance v1, Landroid/os/RemoteCallbackList;

    #@2c
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    #@2f
    .line 150
    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@31
    .line 165
    iput-object p1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@33
    .line 166
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@35
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@37
    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@39
    .line 168
    new-instance v0, Lcom/android/server/am/UserState;

    #@3b
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@3d
    invoke-direct {v0, v1}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    #@40
    .line 169
    .local v0, "uss":Lcom/android/server/am/UserState;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@42
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@45
    .line 170
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4e
    .line 171
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    #@50
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@52
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@54
    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@57
    iput-object v1, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@59
    .line 172
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    #@5c
    .line 164
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .locals 1
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    #@4
    .line 221
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .locals 23
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;

    #@0
    .prologue
    .line 226
    move-object/from16 v0, p1

    #@2
    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@4
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@7
    move-result v18

    #@8
    .line 227
    .local v18, "userId":I
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Finishing user boot "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    move/from16 v0, v18

    #@18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 228
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@27
    move-object/from16 v22, v0

    #@29
    monitor-enter v22

    #@2a
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@2d
    .line 230
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@31
    move/from16 v0, v18

    #@33
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result-object v2

    #@37
    move-object/from16 v0, p1

    #@39
    if-eq v2, v0, :cond_0

    #@3b
    monitor-exit v22

    #@3c
    .line 228
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3f
    .line 230
    return-void

    #@40
    .line 236
    :cond_0
    const/4 v2, 0x0

    #@41
    const/4 v3, 0x1

    #@42
    :try_start_1
    move-object/from16 v0, p1

    #@44
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_1

    #@4a
    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    #@4d
    move-result-object v2

    #@4e
    move-object/from16 v0, p1

    #@50
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    #@52
    move/from16 v0, v18

    #@54
    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    #@57
    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5a
    move-result-wide v2

    #@5b
    const-wide/16 v6, 0x3e8

    #@5d
    div-long/2addr v2, v6

    #@5e
    long-to-int v0, v2

    #@5f
    move/from16 v21, v0

    #@61
    .line 240
    .local v21, "uptimeSeconds":I
    move-object/from16 v0, p0

    #@63
    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@65
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@67
    const-string/jumbo v3, "framework_locked_boot_completed"

    #@6a
    move/from16 v0, v21

    #@6c
    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@6f
    .line 243
    new-instance v5, Landroid/content/Intent;

    #@71
    const-string/jumbo v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    #@74
    const/4 v3, 0x0

    #@75
    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@78
    .line 244
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@7b
    move/from16 v0, v18

    #@7d
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@80
    .line 245
    const/high16 v2, 0x9000000

    #@82
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@85
    .line 247
    move-object/from16 v0, p0

    #@87
    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@89
    .line 248
    const/4 v3, 0x1

    #@8a
    new-array v11, v3, [Ljava/lang/String;

    #@8c
    const-string/jumbo v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    #@8f
    const/4 v4, 0x0

    #@90
    aput-object v3, v11, v4

    #@92
    .line 249
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@94
    .line 247
    const/4 v3, 0x0

    #@95
    const/4 v4, 0x0

    #@96
    const/4 v6, 0x0

    #@97
    const/4 v8, 0x0

    #@98
    const/4 v9, 0x0

    #@99
    const/4 v10, 0x0

    #@9a
    .line 249
    const/4 v12, -0x1

    #@9b
    const/4 v13, 0x0

    #@9c
    const/4 v14, 0x1

    #@9d
    const/4 v15, 0x0

    #@9e
    const/16 v17, 0x3e8

    #@a0
    move-object/from16 v7, p2

    #@a2
    .line 247
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@a5
    .line 254
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v21    # "uptimeSeconds":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@a8
    move-result-object v2

    #@a9
    move/from16 v0, v18

    #@ab
    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    #@ae
    move-result v2

    #@af
    if-eqz v2, :cond_4

    #@b1
    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@b4
    move-result-object v2

    #@b5
    move/from16 v0, v18

    #@b7
    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@ba
    move-result-object v19

    #@bb
    .line 256
    .local v19, "parent":Landroid/content/pm/UserInfo;
    if-eqz v19, :cond_2

    #@bd
    .line 257
    move-object/from16 v0, v19

    #@bf
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@c1
    const/4 v3, 0x4

    #@c2
    move-object/from16 v0, p0

    #@c4
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    #@c7
    move-result v2

    #@c8
    .line 256
    if-eqz v2, :cond_2

    #@ca
    .line 258
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@cc
    new-instance v3, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v4, "User "

    #@d4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v3

    #@d8
    move/from16 v0, v18

    #@da
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v3

    #@de
    const-string/jumbo v4, " (parent "

    #@e1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v3

    #@e5
    move-object/from16 v0, v19

    #@e7
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@e9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v3

    #@ed
    .line 259
    const-string/jumbo v4, "): attempting unlock because parent is unlocked"

    #@f0
    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v3

    #@f4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v3

    #@f8
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fb
    .line 260
    move-object/from16 v0, p0

    #@fd
    move/from16 v1, v18

    #@ff
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@102
    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    :goto_0
    monitor-exit v22

    #@103
    .line 228
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@106
    .line 225
    return-void

    #@107
    .line 262
    .restart local v19    # "parent":Landroid/content/pm/UserInfo;
    :cond_2
    if-nez v19, :cond_3

    #@109
    :try_start_2
    const-string/jumbo v20, "<null>"

    #@10c
    .line 263
    .local v20, "parentId":Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@10e
    new-instance v3, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v4, "User "

    #@116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v3

    #@11a
    move/from16 v0, v18

    #@11c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v3

    #@120
    const-string/jumbo v4, " (parent "

    #@123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v3

    #@127
    move-object/from16 v0, v20

    #@129
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v3

    #@12d
    .line 264
    const-string/jumbo v4, "): delaying unlock because parent is locked"

    #@130
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v3

    #@134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v3

    #@138
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@13b
    goto :goto_0

    #@13c
    .line 228
    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    .end local v20    # "parentId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@13d
    monitor-exit v22

    #@13e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@141
    throw v2

    #@142
    .line 262
    .restart local v19    # "parent":Landroid/content/pm/UserInfo;
    :cond_3
    :try_start_3
    move-object/from16 v0, v19

    #@144
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@146
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@149
    move-result-object v20

    #@14a
    .restart local v20    # "parentId":Ljava/lang/String;
    goto :goto_1

    #@14b
    .line 267
    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    .end local v20    # "parentId":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    #@14d
    move/from16 v1, v18

    #@14f
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@152
    goto :goto_0
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .locals 39
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 364
    move-object/from16 v0, p1

    #@2
    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@4
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@7
    move-result v18

    #@8
    .line 365
    .local v18, "userId":I
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    move-object/from16 v38, v0

    #@e
    monitor-enter v38

    #@f
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@12
    .line 367
    move-object/from16 v0, p0

    #@14
    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@16
    move-object/from16 v0, p1

    #@18
    iget-object v3, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@1a
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    #@1d
    move-result v3

    #@1e
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    move-object/from16 v0, p1

    #@24
    if-eq v2, v0, :cond_0

    #@26
    monitor-exit v38

    #@27
    .line 365
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2a
    .line 367
    return-void

    #@2b
    .line 368
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@2d
    move/from16 v1, v18

    #@2f
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    move-result-object v37

    #@33
    .line 369
    .local v37, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v37, :cond_1

    #@35
    monitor-exit v38

    #@36
    .line 365
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@39
    .line 370
    return-void

    #@3a
    .line 374
    :cond_1
    :try_start_2
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_2

    #@40
    monitor-exit v38

    #@41
    .line 365
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@44
    .line 374
    return-void

    #@45
    .line 377
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    #@47
    iget-object v2, v0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    #@49
    move/from16 v0, v18

    #@4b
    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    #@4e
    .line 379
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/UserInfo;->isInitialized()Z

    #@51
    move-result v2

    #@52
    if-nez v2, :cond_3

    #@54
    .line 380
    if-eqz v18, :cond_3

    #@56
    .line 381
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@58
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v4, "Initializing user #"

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    move/from16 v0, v18

    #@66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 382
    new-instance v5, Landroid/content/Intent;

    #@73
    const-string/jumbo v2, "android.intent.action.USER_INITIALIZE"

    #@76
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@79
    .line 383
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    #@7b
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@7e
    .line 384
    move-object/from16 v0, p0

    #@80
    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@82
    .line 385
    new-instance v7, Lcom/android/server/am/UserController$2;

    #@84
    move-object/from16 v0, p0

    #@86
    move-object/from16 v1, v37

    #@88
    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    #@8b
    .line 394
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@8d
    .line 384
    const/4 v3, 0x0

    #@8e
    const/4 v4, 0x0

    #@8f
    const/4 v6, 0x0

    #@90
    .line 393
    const/4 v8, 0x0

    #@91
    const/4 v9, 0x0

    #@92
    const/4 v10, 0x0

    #@93
    const/4 v11, 0x0

    #@94
    const/4 v12, -0x1

    #@95
    .line 394
    const/4 v13, 0x0

    #@96
    const/4 v14, 0x1

    #@97
    const/4 v15, 0x0

    #@98
    const/16 v17, 0x3e8

    #@9a
    .line 384
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@9d
    .line 398
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@9f
    new-instance v3, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v4, "Sending BOOT_COMPLETE user #"

    #@a7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    move/from16 v0, v18

    #@ad
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@bb
    move-result-wide v2

    #@bc
    const-wide/16 v6, 0x3e8

    #@be
    div-long/2addr v2, v6

    #@bf
    long-to-int v0, v2

    #@c0
    move/from16 v36, v0

    #@c2
    .line 400
    .local v36, "uptimeSeconds":I
    move-object/from16 v0, p0

    #@c4
    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c6
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@c8
    const-string/jumbo v3, "framework_boot_completed"

    #@cb
    move/from16 v0, v36

    #@cd
    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@d0
    .line 401
    new-instance v22, Landroid/content/Intent;

    #@d2
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    #@d5
    const/4 v3, 0x0

    #@d6
    move-object/from16 v0, v22

    #@d8
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@db
    .line 402
    .local v22, "bootIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@de
    move-object/from16 v0, v22

    #@e0
    move/from16 v1, v18

    #@e2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e5
    .line 403
    const/high16 v2, 0x9000000

    #@e7
    move-object/from16 v0, v22

    #@e9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@ec
    .line 405
    move-object/from16 v0, p0

    #@ee
    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f0
    move-object/from16 v19, v0

    #@f2
    .line 406
    const/4 v2, 0x1

    #@f3
    new-array v0, v2, [Ljava/lang/String;

    #@f5
    move-object/from16 v28, v0

    #@f7
    const-string/jumbo v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    #@fa
    const/4 v3, 0x0

    #@fb
    aput-object v2, v28, v3

    #@fd
    .line 407
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@ff
    .line 405
    const/16 v20, 0x0

    #@101
    const/16 v21, 0x0

    #@103
    const/16 v23, 0x0

    #@105
    const/16 v24, 0x0

    #@107
    const/16 v25, 0x0

    #@109
    const/16 v26, 0x0

    #@10b
    const/16 v27, 0x0

    #@10d
    .line 407
    const/16 v29, -0x1

    #@10f
    const/16 v30, 0x0

    #@111
    const/16 v31, 0x1

    #@113
    const/16 v32, 0x0

    #@115
    const/16 v34, 0x3e8

    #@117
    move/from16 v35, v18

    #@119
    .line 405
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@11c
    monitor-exit v38

    #@11d
    .line 365
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@120
    .line 363
    return-void

    #@121
    .line 365
    .end local v22    # "bootIntent":Landroid/content/Intent;
    .end local v36    # "uptimeSeconds":I
    .end local v37    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    #@122
    monitor-exit v38

    #@123
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@126
    throw v2
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)V
    .locals 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 277
    iget-object v1, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@2
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v0

    #@6
    .line 278
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8
    monitor-enter v2

    #@9
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@c
    .line 280
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@e
    iget-object v3, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@10
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    #@13
    move-result v3

    #@14
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v1

    #@18
    if-eq v1, p1, :cond_0

    #@1a
    monitor-exit v2

    #@1b
    .line 278
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1e
    .line 280
    return-void

    #@1f
    .line 283
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_1

    #@25
    monitor-exit v2

    #@26
    .line 278
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@29
    .line 283
    return-void

    #@2a
    .line 285
    :cond_1
    const/4 v1, 0x1

    #@2b
    const/4 v3, 0x2

    #@2c
    :try_start_2
    invoke-virtual {p1, v1, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 286
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    #@35
    move-result-object v1

    #@36
    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    #@38
    invoke-virtual {v1, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    #@3b
    .line 287
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/util/ProgressReporter;->start()V

    #@40
    .line 290
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    #@42
    .line 291
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@44
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@46
    const v4, 0x10403a8

    #@49
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 290
    const/4 v4, 0x5

    #@4e
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    #@51
    .line 292
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    #@53
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    #@56
    .line 293
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    #@58
    const/16 v3, 0x14

    #@5a
    invoke-virtual {v1, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    #@5d
    .line 297
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@5f
    const/16 v3, 0x3d

    #@61
    const/4 v4, 0x0

    #@62
    invoke-virtual {v1, v3, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    :cond_2
    monitor-exit v2

    #@6a
    .line 278
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@6d
    .line 276
    return-void

    #@6e
    .line 278
    :catchall_0
    move-exception v1

    #@6f
    monitor-exit v2

    #@70
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@73
    throw v1
.end method

.method private forceStopUserLocked(ILjava/lang/String;)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 646
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, -0x1

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x0

    #@8
    const/4 v6, 0x1

    #@9
    const/4 v7, 0x0

    #@a
    const/4 v8, 0x0

    #@b
    move/from16 v9, p1

    #@d
    move-object/from16 v10, p2

    #@f
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    #@12
    .line 648
    new-instance v4, Landroid/content/Intent;

    #@14
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    #@17
    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    .line 649
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    #@1c
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1f
    .line 651
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@22
    move/from16 v0, p1

    #@24
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@27
    .line 652
    move-object/from16 v0, p0

    #@29
    iget-object v1, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2b
    .line 654
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@2d
    .line 652
    const/4 v2, 0x0

    #@2e
    const/4 v3, 0x0

    #@2f
    .line 653
    const/4 v5, 0x0

    #@30
    const/4 v6, 0x0

    #@31
    const/4 v7, 0x0

    #@32
    const/4 v8, 0x0

    #@33
    const/4 v9, 0x0

    #@34
    const/4 v10, 0x0

    #@35
    const/4 v11, -0x1

    #@36
    .line 654
    const/4 v12, 0x0

    #@37
    const/4 v13, 0x0

    #@38
    const/4 v14, 0x0

    #@39
    const/16 v16, 0x3e8

    #@3b
    const/16 v17, -0x1

    #@3d
    .line 652
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@40
    .line 645
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 1

    #@0
    .prologue
    .line 716
    const-string/jumbo v0, "mount"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 3

    #@0
    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    #@2
    .line 708
    .local v1, "userManager":Lcom/android/server/pm/UserManagerService;
    if-nez v1, :cond_0

    #@4
    .line 709
    const-string/jumbo v2, "user"

    #@7
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    .line 710
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    #@e
    move-result-object v1

    #@f
    .end local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    check-cast v1, Lcom/android/server/pm/UserManagerService;

    #@11
    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    #@13
    .line 712
    .end local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_0
    return-object v1
.end method

.method private getUserManagerInternal()Landroid/os/UserManagerInternal;
    .locals 1

    #@0
    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1498
    const-class v0, Landroid/os/UserManagerInternal;

    #@6
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/os/UserManagerInternal;

    #@c
    iput-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@e
    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@10
    return-object v0
.end method

.method private getUsersToStopLocked(I)[I
    .locals 13
    .param p1, "userId"    # I

    #@0
    .prologue
    const/16 v12, -0x2710

    #@2
    .line 620
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v5

    #@8
    .line 621
    .local v5, "startedUsersSize":I
    new-instance v7, Landroid/util/IntArray;

    #@a
    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    #@d
    .line 622
    .local v7, "userIds":Landroid/util/IntArray;
    invoke-virtual {v7, p1}, Landroid/util/IntArray;->add(I)V

    #@10
    .line 623
    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@12
    monitor-enter v10

    #@13
    .line 624
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@15
    .line 625
    const/16 v11, -0x2710

    #@17
    .line 624
    invoke-virtual {v9, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    #@1a
    move-result v6

    #@1b
    .line 626
    .local v6, "userGroupId":I
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_5

    #@1e
    .line 627
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@23
    move-result-object v8

    #@24
    check-cast v8, Lcom/android/server/am/UserState;

    #@26
    .line 628
    .local v8, "uss":Lcom/android/server/am/UserState;
    iget-object v9, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@28
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    #@2b
    move-result v4

    #@2c
    .line 630
    .local v4, "startedUserId":I
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@2e
    .line 631
    const/16 v11, -0x2710

    #@30
    .line 630
    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->get(II)I

    #@33
    move-result v3

    #@34
    .line 632
    .local v3, "startedUserGroupId":I
    if-eq v6, v12, :cond_2

    #@36
    .line 633
    if-ne v6, v3, :cond_1

    #@38
    const/4 v1, 0x1

    #@39
    .line 635
    .local v1, "sameGroup":Z
    :goto_1
    if-ne v4, p1, :cond_3

    #@3b
    const/4 v2, 0x1

    #@3c
    .line 636
    .local v2, "sameUserId":Z
    :goto_2
    if-eqz v1, :cond_0

    #@3e
    if-eqz v2, :cond_4

    #@40
    .line 626
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 633
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    :cond_1
    const/4 v1, 0x0

    #@44
    .restart local v1    # "sameGroup":Z
    goto :goto_1

    #@45
    .line 632
    .end local v1    # "sameGroup":Z
    :cond_2
    const/4 v1, 0x0

    #@46
    .restart local v1    # "sameGroup":Z
    goto :goto_1

    #@47
    .line 635
    :cond_3
    const/4 v2, 0x0

    #@48
    .restart local v2    # "sameUserId":Z
    goto :goto_2

    #@49
    .line 639
    :cond_4
    invoke-virtual {v7, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    goto :goto_3

    #@4d
    .line 623
    .end local v0    # "i":I
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    .end local v3    # "startedUserGroupId":I
    .end local v4    # "startedUserId":I
    .end local v6    # "userGroupId":I
    .end local v8    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v9

    #@4e
    monitor-exit v10

    #@4f
    throw v9

    #@50
    .restart local v0    # "i":I
    .restart local v6    # "userGroupId":I
    :cond_5
    monitor-exit v10

    #@51
    .line 642
    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    #@54
    move-result-object v9

    #@55
    return-object v9
.end method

.method private isCurrentUserLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

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

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "listener"    # Landroid/os/IProgressListener;

    #@0
    .prologue
    .line 942
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 944
    :cond_0
    const/4 v1, 0x0

    #@4
    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 941
    :goto_0
    return-void

    #@8
    .line 945
    :catch_0
    move-exception v0

    #@9
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .locals 4
    .param p1, "oldUserId"    # I

    #@0
    .prologue
    .line 1024
    if-nez p1, :cond_0

    #@2
    .line 1025
    return-void

    #@3
    .line 1028
    :cond_0
    const-string/jumbo v1, "no_run_in_background"

    #@6
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    #@9
    move-result v0

    #@a
    .line 1030
    .local v0, "disallowRunInBg":Z
    if-nez v0, :cond_1

    #@c
    .line 1031
    return-void

    #@d
    .line 1033
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f
    monitor-enter v2

    #@10
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@13
    .line 1036
    const/4 v1, 0x0

    #@14
    const/4 v3, 0x0

    #@15
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v2

    #@19
    .line 1033
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1c
    .line 1022
    return-void

    #@1d
    .line 1033
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@22
    throw v1
.end method

.method private stopGuestOrEphemeralUserIfBackground()V
    .locals 9

    #@0
    .prologue
    .line 661
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v6

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 662
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 663
    .local v1, "num":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@f
    .line 664
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/Integer;

    #@17
    .line 665
    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v7

    #@1d
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Lcom/android/server/am/UserState;

    #@23
    .line 666
    .local v3, "oldUss":Lcom/android/server/am/UserState;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_0

    #@29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@2c
    move-result v5

    #@2d
    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@2f
    if-ne v5, v7, :cond_1

    #@31
    .line 663
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 667
    :cond_1
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    #@36
    const/4 v7, 0x4

    #@37
    if-eq v5, v7, :cond_0

    #@39
    .line 668
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    #@3b
    const/4 v7, 0x5

    #@3c
    if-eq v5, v7, :cond_0

    #@3e
    .line 671
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@41
    move-result v5

    #@42
    invoke-virtual {p0, v5}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@45
    move-result-object v4

    #@46
    .line 672
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_2

    #@4c
    .line 673
    const-class v5, Landroid/os/UserManagerInternal;

    #@4e
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, Landroid/os/UserManagerInternal;

    #@54
    .line 674
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@57
    move-result v7

    #@58
    .line 673
    invoke-virtual {v5, v7}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    #@5b
    .line 676
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@5e
    move-result v5

    #@5f
    if-nez v5, :cond_3

    #@61
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_0

    #@67
    .line 678
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@6a
    move-result v5

    #@6b
    const/4 v7, 0x1

    #@6c
    const/4 v8, 0x0

    #@6d
    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    monitor-exit v6

    #@71
    .line 661
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@74
    .line 660
    return-void

    #@75
    .line 661
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_0
    move-exception v5

    #@76
    monitor-exit v6

    #@77
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@7a
    throw v5
.end method

.method private stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
    .locals 24
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;

    #@0
    .prologue
    .line 468
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@4
    move/from16 v0, p1

    #@6
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v21

    #@a
    check-cast v21, Lcom/android/server/am/UserState;

    #@c
    .line 469
    .local v21, "uss":Lcom/android/server/am/UserState;
    if-nez v21, :cond_1

    #@e
    .line 472
    if-eqz p2, :cond_0

    #@10
    .line 473
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@14
    new-instance v5, Lcom/android/server/am/UserController$3;

    #@16
    move-object/from16 v0, p0

    #@18
    move-object/from16 v1, p2

    #@1a
    move/from16 v2, p1

    #@1c
    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Landroid/app/IStopUserCallback;I)V

    #@1f
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@22
    .line 483
    :cond_0
    return-void

    #@23
    .line 486
    :cond_1
    if-eqz p2, :cond_2

    #@25
    .line 487
    move-object/from16 v0, v21

    #@27
    iget-object v4, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    #@29
    move-object/from16 v0, p2

    #@2b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 490
    :cond_2
    move-object/from16 v0, v21

    #@30
    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    #@32
    const/4 v5, 0x4

    #@33
    if-eq v4, v5, :cond_3

    #@35
    .line 491
    move-object/from16 v0, v21

    #@37
    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    #@39
    const/4 v5, 0x5

    #@3a
    if-eq v4, v5, :cond_3

    #@3c
    .line 492
    const/4 v4, 0x4

    #@3d
    move-object/from16 v0, v21

    #@3f
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    #@42
    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    #@45
    move-result-object v4

    #@46
    move-object/from16 v0, v21

    #@48
    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    #@4a
    move/from16 v0, p1

    #@4c
    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    #@4f
    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    #@52
    .line 496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@55
    move-result-wide v22

    #@56
    .line 501
    .local v22, "ident":J
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    #@58
    const-string/jumbo v4, "android.intent.action.USER_STOPPING"

    #@5b
    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5e
    .line 502
    .local v7, "stoppingIntent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    #@60
    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@63
    .line 503
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@66
    move/from16 v0, p1

    #@68
    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@6b
    .line 504
    const-string/jumbo v4, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    #@6e
    const/4 v5, 0x1

    #@6f
    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@72
    .line 506
    new-instance v9, Lcom/android/server/am/UserController$4;

    #@74
    move-object/from16 v0, p0

    #@76
    move/from16 v1, p1

    #@78
    move-object/from16 v2, v21

    #@7a
    invoke-direct {v9, v0, v1, v2}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    #@7d
    .line 519
    .local v9, "stoppingReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    #@7f
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@81
    move/from16 v0, p1

    #@83
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    #@86
    .line 521
    move-object/from16 v0, p0

    #@88
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8a
    .line 523
    const/4 v5, 0x1

    #@8b
    new-array v13, v5, [Ljava/lang/String;

    #@8d
    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS"

    #@90
    const/4 v6, 0x0

    #@91
    aput-object v5, v13, v6

    #@93
    .line 524
    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@95
    .line 521
    const/4 v5, 0x0

    #@96
    const/4 v6, 0x0

    #@97
    .line 522
    const/4 v8, 0x0

    #@98
    const/4 v10, 0x0

    #@99
    const/4 v11, 0x0

    #@9a
    const/4 v12, 0x0

    #@9b
    .line 523
    const/4 v14, -0x1

    #@9c
    .line 524
    const/4 v15, 0x0

    #@9d
    const/16 v16, 0x1

    #@9f
    const/16 v17, 0x0

    #@a1
    const/16 v19, 0x3e8

    #@a3
    const/16 v20, -0x1

    #@a5
    .line 521
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a8
    .line 526
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ab
    .line 466
    .end local v7    # "stoppingIntent":Landroid/content/Intent;
    .end local v9    # "stoppingReceiver":Landroid/content/IIntentReceiver;
    .end local v22    # "ident":J
    :cond_3
    return-void

    #@ac
    .line 525
    .restart local v22    # "ident":J
    :catchall_0
    move-exception v4

    #@ad
    .line 526
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b0
    .line 525
    throw v4
.end method

.method private stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 436
    if-nez p1, :cond_0

    #@3
    .line 437
    const/4 v4, -0x3

    #@4
    return v4

    #@5
    .line 439
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 440
    const/4 v4, -0x2

    #@c
    return v4

    #@d
    .line 442
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLocked(I)[I

    #@10
    move-result-object v3

    #@11
    .line 444
    .local v3, "usersToStop":[I
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@13
    if-ge v0, v4, :cond_5

    #@15
    .line 445
    aget v1, v3, v0

    #@17
    .line 446
    .local v1, "relatedUserId":I
    if-eqz v1, :cond_2

    #@19
    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_4

    #@1f
    .line 450
    :cond_2
    if-eqz p2, :cond_3

    #@21
    .line 451
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@23
    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v7, "Force stop user "

    #@2b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    const-string/jumbo v7, ". Related users will not be stopped"

    #@36
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 451
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 453
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    #@44
    .line 454
    return v6

    #@45
    .line 456
    :cond_3
    const/4 v4, -0x4

    #@46
    return v4

    #@47
    .line 444
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 460
    .end local v1    # "relatedUserId":I
    :cond_5
    array-length v7, v3

    #@4b
    move v5, v6

    #@4c
    :goto_1
    if-ge v5, v7, :cond_7

    #@4e
    aget v2, v3, v5

    #@50
    .line 461
    .local v2, "userIdToStop":I
    if-ne v2, p1, :cond_6

    #@52
    move-object v4, p3

    #@53
    :goto_2
    invoke-direct {p0, v2, v4}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    #@56
    .line 460
    add-int/lit8 v4, v5, 0x1

    #@58
    move v5, v4

    #@59
    goto :goto_1

    #@5a
    .line 461
    :cond_6
    const/4 v4, 0x0

    #@5b
    goto :goto_2

    #@5c
    .line 463
    .end local v2    # "userIdToStop":I
    :cond_7
    return v6
.end method

.method private updateCurrentProfileIdsLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1314
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@4
    move-result-object v5

    #@5
    iget v6, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@7
    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    #@a
    move-result-object v2

    #@b
    .line 1316
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@e
    move-result v5

    #@f
    new-array v0, v5, [I

    #@11
    .line 1317
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    array-length v5, v0

    #@13
    if-ge v1, v5, :cond_0

    #@15
    .line 1318
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Landroid/content/pm/UserInfo;

    #@1b
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    #@1d
    aput v5, v0, v1

    #@1f
    .line 1317
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1320
    :cond_0
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    #@24
    .line 1322
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@26
    monitor-enter v6

    #@27
    .line 1323
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@29
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    #@2c
    .line 1324
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@2f
    move-result-object v5

    #@30
    const/4 v7, 0x0

    #@31
    invoke-virtual {v5, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    #@34
    move-result-object v4

    #@35
    .line 1325
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    #@36
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@39
    move-result v5

    #@3a
    if-ge v1, v5, :cond_2

    #@3c
    .line 1326
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Landroid/content/pm/UserInfo;

    #@42
    .line 1327
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@44
    const/16 v7, -0x2710

    #@46
    if-eq v5, v7, :cond_1

    #@48
    .line 1328
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@4a
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    #@4c
    iget v8, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@4e
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    .line 1325
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_1

    #@54
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v6

    #@55
    .line 1313
    return-void

    #@56
    .line 1322
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    #@57
    monitor-exit v6

    #@58
    throw v5
.end method

.method private updateStartedUserArrayLocked()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    const/4 v6, 0x4

    #@2
    .line 1277
    const/4 v1, 0x0

    #@3
    .line 1278
    .local v1, "num":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v4

    #@a
    if-ge v0, v4, :cond_1

    #@c
    .line 1279
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Lcom/android/server/am/UserState;

    #@14
    .line 1281
    .local v3, "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    #@16
    if-eq v4, v6, :cond_0

    #@18
    .line 1282
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    #@1a
    if-eq v4, v7, :cond_0

    #@1c
    .line 1283
    add-int/lit8 v1, v1, 0x1

    #@1e
    .line 1278
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1286
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_1
    new-array v4, v1, [I

    #@23
    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    #@25
    .line 1287
    const/4 v1, 0x0

    #@26
    .line 1288
    const/4 v0, 0x0

    #@27
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@2c
    move-result v4

    #@2d
    if-ge v0, v4, :cond_3

    #@2f
    .line 1289
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Lcom/android/server/am/UserState;

    #@37
    .line 1290
    .restart local v3    # "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    #@39
    if-eq v4, v6, :cond_2

    #@3b
    .line 1291
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    #@3d
    if-eq v4, v7, :cond_2

    #@3f
    .line 1292
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    #@41
    add-int/lit8 v2, v1, 0x1

    #@43
    .end local v1    # "num":I
    .local v2, "num":I
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@45
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@48
    move-result v5

    #@49
    aput v5, v4, v1

    #@4b
    move v1, v2

    #@4c
    .line 1288
    .end local v2    # "num":I
    .restart local v1    # "num":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 1276
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_3
    return-void
.end method


# virtual methods
.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    #@0
    .prologue
    const/16 v4, 0x38

    #@2
    const/4 v3, 0x0

    #@3
    .line 1092
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Continue user switch oldUser #"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, ", newUser #"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1093
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@29
    monitor-enter v1

    #@2a
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@2d
    .line 1094
    iget-object v0, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2f
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@31
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit v1

    #@35
    .line 1093
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@38
    .line 1096
    iput-boolean v3, p1, Lcom/android/server/am/UserState;->switching:Z

    #@3a
    .line 1097
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@3c
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@3f
    .line 1098
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@41
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@43
    invoke-virtual {v1, v4, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@4a
    .line 1100
    invoke-direct {p0}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground()V

    #@4d
    .line 1101
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    #@50
    .line 1091
    return-void

    #@51
    .line 1093
    :catchall_0
    move-exception v0

    #@52
    monitor-exit v1

    #@53
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@56
    throw v0
.end method

.method dispatchForegroundProfileChanged(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 999
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 1000
    .local v2, "observerCount":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 1002
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/app/IUserSwitchObserver;

    #@11
    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1000
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1007
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 998
    return-void

    #@1d
    .line 1003
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 8
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    #@0
    .prologue
    .line 1048
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "Dispatch onUserSwitching oldUser #"

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " newUser #"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1049
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@26
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@29
    move-result v2

    #@2a
    .line 1050
    .local v2, "observerCount":I
    if-lez v2, :cond_0

    #@2c
    .line 1051
    new-instance v0, Lcom/android/server/am/UserController$7;

    #@2e
    move-object v1, p0

    #@2f
    move-object v3, p1

    #@30
    move v4, p2

    #@31
    move v5, p3

    #@32
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;II)V

    #@35
    .line 1065
    .local v0, "callback":Landroid/os/IRemoteCallback;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@37
    monitor-enter v3

    #@38
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@3b
    .line 1066
    const/4 v1, 0x1

    #@3c
    iput-boolean v1, p1, Lcom/android/server/am/UserState;->switching:Z

    #@3e
    .line 1067
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurUserSwitchCallback:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit v3

    #@41
    .line 1065
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@44
    .line 1069
    const/4 v7, 0x0

    #@45
    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_1

    #@47
    .line 1071
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@49
    invoke-virtual {v1, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Landroid/app/IUserSwitchObserver;

    #@4f
    invoke-interface {v1, p3, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@52
    .line 1069
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1065
    .end local v7    # "i":I
    :catchall_0
    move-exception v1

    #@56
    monitor-exit v3

    #@57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@5a
    throw v1

    #@5b
    .line 1077
    .end local v0    # "callback":Landroid/os/IRemoteCallback;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5d
    monitor-enter v3

    #@5e
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@61
    .line 1078
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@64
    monitor-exit v3

    #@65
    .line 1077
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@68
    .line 1081
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@6a
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@6d
    .line 1047
    return-void

    #@6e
    .line 1077
    :catchall_1
    move-exception v1

    #@6f
    monitor-exit v3

    #@70
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@73
    throw v1

    #@74
    .line 1073
    .restart local v0    # "callback":Landroid/os/IRemoteCallback;
    .restart local v7    # "i":I
    :catch_0
    move-exception v6

    #@75
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method dispatchUserSwitchComplete(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1012
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 1013
    .local v2, "observerCount":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 1015
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/app/IUserSwitchObserver;

    #@11
    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1013
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1019
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 1011
    return-void

    #@1d
    .line 1016
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    #@0
    .prologue
    .line 1504
    const-string/jumbo v2, "  mStartedUsers:"

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1505
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@c
    move-result v2

    #@d
    if-ge v0, v2, :cond_0

    #@f
    .line 1506
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/am/UserState;

    #@17
    .line 1507
    .local v1, "uss":Lcom/android/server/am/UserState;
    const-string/jumbo v2, "    User #"

    #@1a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@1f
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@22
    move-result v2

    #@23
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@26
    .line 1508
    const-string/jumbo v2, ": "

    #@29
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string/jumbo v2, ""

    #@2f
    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@32
    .line 1505
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1510
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_0
    const-string/jumbo v2, "  mStartedUserArray: ["

    #@38
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 1511
    const/4 v0, 0x0

    #@3c
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    #@3e
    array-length v2, v2

    #@3f
    if-ge v0, v2, :cond_2

    #@41
    .line 1512
    if-lez v0, :cond_1

    #@43
    const-string/jumbo v2, ", "

    #@46
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    .line 1513
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    #@4b
    aget v2, v2, v0

    #@4d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@50
    .line 1511
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_1

    #@53
    .line 1515
    :cond_2
    const-string/jumbo v2, "]"

    #@56
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59
    .line 1516
    const-string/jumbo v2, "  mUserLru: ["

    #@5c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    .line 1517
    const/4 v0, 0x0

    #@60
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@65
    move-result v2

    #@66
    if-ge v0, v2, :cond_4

    #@68
    .line 1518
    if-lez v0, :cond_3

    #@6a
    const-string/jumbo v2, ", "

    #@6d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    .line 1519
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@79
    .line 1517
    add-int/lit8 v0, v0, 0x1

    #@7b
    goto :goto_2

    #@7c
    .line 1521
    :cond_4
    const-string/jumbo v2, "]"

    #@7f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 1522
    if-eqz p2, :cond_5

    #@84
    .line 1523
    const-string/jumbo v2, "  mStartedUserArray: "

    #@87
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8a
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    #@8c
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@93
    .line 1525
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@95
    monitor-enter v3

    #@96
    .line 1526
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@98
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    #@9b
    move-result v2

    #@9c
    if-lez v2, :cond_6

    #@9e
    .line 1527
    const-string/jumbo v2, "  mUserProfileGroupIds:"

    #@a1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a4
    .line 1528
    const/4 v0, 0x0

    #@a5
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@a7
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    #@aa
    move-result v2

    #@ab
    if-ge v0, v2, :cond_6

    #@ad
    .line 1529
    const-string/jumbo v2, "    User #"

    #@b0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    .line 1530
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@b5
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@b8
    move-result v2

    #@b9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@bc
    .line 1531
    const-string/jumbo v2, " -> profile #"

    #@bf
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    .line 1532
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@c4
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@c7
    move-result v2

    #@c8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@cb
    .line 1528
    add-int/lit8 v0, v0, 0x1

    #@cd
    goto :goto_3

    #@ce
    :cond_6
    monitor-exit v3

    #@cf
    .line 1503
    return-void

    #@d0
    .line 1525
    :catchall_0
    move-exception v2

    #@d1
    monitor-exit v3

    #@d2
    throw v2
.end method

.method exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1438
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .locals 8
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 571
    iget-object v5, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@2
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v4

    #@6
    .line 574
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8
    monitor-enter v6

    #@9
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@c
    .line 575
    new-instance v0, Ljava/util/ArrayList;

    #@e
    iget-object v5, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    #@10
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@13
    .line 576
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v5

    #@19
    if-eq v5, p1, :cond_0

    #@1b
    .line 577
    const/4 v3, 0x0

    #@1c
    .local v3, "stopped":Z
    :goto_0
    monitor-exit v6

    #@1d
    .line 574
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@20
    .line 595
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v5

    #@25
    if-ge v2, v5, :cond_3

    #@27
    .line 597
    if-eqz v3, :cond_2

    #@29
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    check-cast v5, Landroid/app/IStopUserCallback;

    #@2f
    invoke-interface {v5, v4}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@32
    .line 595
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_1

    #@35
    .line 578
    .end local v2    # "i":I
    .end local v3    # "stopped":Z
    :cond_0
    :try_start_2
    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    #@37
    const/4 v7, 0x5

    #@38
    if-eq v5, v7, :cond_1

    #@3a
    .line 579
    const/4 v3, 0x0

    #@3b
    .restart local v3    # "stopped":Z
    goto :goto_0

    #@3c
    .line 581
    .end local v3    # "stopped":Z
    :cond_1
    const/4 v3, 0x1

    #@3d
    .line 583
    .restart local v3    # "stopped":Z
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@3f
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    #@42
    .line 584
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    #@49
    .line 585
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@4b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@52
    .line 586
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    #@55
    .line 588
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@57
    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->onUserStoppedLocked(I)V

    #@5a
    .line 591
    const-string/jumbo v5, "finish user"

    #@5d
    invoke-direct {p0, v4, v5}, Lcom/android/server/am/UserController;->forceStopUserLocked(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    goto :goto_0

    #@61
    .line 574
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .end local v3    # "stopped":Z
    :catchall_0
    move-exception v5

    #@62
    monitor-exit v6

    #@63
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@66
    throw v5

    #@67
    .line 598
    .restart local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .restart local v2    # "i":I
    .restart local v3    # "stopped":Z
    :cond_2
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v5

    #@6b
    check-cast v5, Landroid/app/IStopUserCallback;

    #@6d
    invoke-interface {v5, v4}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@70
    goto :goto_2

    #@71
    .line 599
    :catch_0
    move-exception v1

    #@72
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@73
    .line 603
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    if-eqz v3, :cond_4

    #@75
    .line 604
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@77
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@79
    invoke-virtual {v5, v4}, Lcom/android/server/SystemServiceManager;->cleanupUser(I)V

    #@7c
    .line 605
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7e
    monitor-enter v6

    #@7f
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@82
    .line 606
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@84
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@86
    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeUserLocked(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@89
    monitor-exit v6

    #@8a
    .line 605
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@8d
    .line 609
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    #@94
    move-result v5

    #@95
    if-eqz v5, :cond_4

    #@97
    .line 610
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    #@99
    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    #@9c
    .line 570
    :cond_4
    return-void

    #@9d
    .line 605
    :catchall_1
    move-exception v5

    #@9e
    monitor-exit v6

    #@9f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a2
    throw v5
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .locals 20
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 533
    new-instance v5, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    #@5
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 535
    .local v5, "shutdownIntent":Landroid/content/Intent;
    new-instance v7, Lcom/android/server/am/UserController$5;

    #@a
    move-object/from16 v0, p0

    #@c
    move-object/from16 v1, p2

    #@e
    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    #@11
    .line 548
    .local v7, "shutdownReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@15
    monitor-enter v3

    #@16
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@19
    .line 549
    move-object/from16 v0, p2

    #@1b
    iget v2, v0, Lcom/android/server/am/UserState;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    const/4 v4, 0x4

    #@1e
    if-eq v2, v4, :cond_0

    #@20
    monitor-exit v3

    #@21
    .line 548
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@24
    .line 551
    return-void

    #@25
    .line 553
    :cond_0
    const/4 v2, 0x5

    #@26
    :try_start_1
    move-object/from16 v0, p2

    #@28
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit v3

    #@2c
    .line 548
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2f
    .line 555
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    #@32
    move-result-object v2

    #@33
    move-object/from16 v0, p2

    #@35
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    #@37
    move/from16 v0, p1

    #@39
    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    #@3c
    .line 557
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@40
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@42
    .line 559
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 558
    const/16 v4, 0x4007

    #@48
    .line 557
    move/from16 v0, p1

    #@4a
    invoke-virtual {v2, v4, v3, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@4d
    .line 560
    move-object/from16 v0, p0

    #@4f
    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@51
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@53
    move/from16 v0, p1

    #@55
    invoke-virtual {v2, v0}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    #@58
    .line 562
    move-object/from16 v0, p0

    #@5a
    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5c
    move-object/from16 v19, v0

    #@5e
    monitor-enter v19

    #@5f
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@62
    .line 563
    move-object/from16 v0, p0

    #@64
    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@66
    .line 566
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@68
    .line 563
    const/4 v3, 0x0

    #@69
    const/4 v4, 0x0

    #@6a
    .line 564
    const/4 v6, 0x0

    #@6b
    const/4 v8, 0x0

    #@6c
    const/4 v9, 0x0

    #@6d
    const/4 v10, 0x0

    #@6e
    const/4 v11, 0x0

    #@6f
    .line 565
    const/4 v12, -0x1

    #@70
    .line 566
    const/4 v13, 0x0

    #@71
    const/4 v14, 0x1

    #@72
    const/4 v15, 0x0

    #@73
    const/16 v17, 0x3e8

    #@75
    move/from16 v18, p1

    #@77
    .line 563
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@7a
    monitor-exit v19

    #@7b
    .line 562
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@7e
    .line 531
    return-void

    #@7f
    .line 548
    :catchall_0
    move-exception v2

    #@80
    monitor-exit v3

    #@81
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@84
    throw v2

    #@85
    .line 562
    :catchall_1
    move-exception v2

    #@86
    monitor-exit v19

    #@87
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@8a
    throw v2
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .locals 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    #@9
    .line 179
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfilesLocked()V

    #@c
    .line 180
    const/4 v0, 0x3

    #@d
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->stopRunningUsersLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 176
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@14
    .line 175
    return-void

    #@15
    .line 176
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1a
    throw v0
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .locals 39
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 308
    move-object/from16 v0, p1

    #@2
    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@4
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@7
    move-result v18

    #@8
    .line 309
    .local v18, "userId":I
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    move-object/from16 v38, v0

    #@e
    monitor-enter v38

    #@f
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@12
    .line 311
    move-object/from16 v0, p0

    #@14
    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@16
    move-object/from16 v0, p1

    #@18
    iget-object v3, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@1a
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    #@1d
    move-result v3

    #@1e
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    move-object/from16 v0, p1

    #@24
    if-eq v2, v0, :cond_0

    #@26
    monitor-exit v38

    #@27
    .line 309
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2a
    .line 311
    return-void

    #@2b
    .line 314
    :cond_0
    :try_start_1
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_1

    #@31
    monitor-exit v38

    #@32
    .line 309
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@35
    .line 314
    return-void

    #@36
    .line 316
    :cond_1
    const/4 v2, 0x2

    #@37
    const/4 v3, 0x3

    #@38
    :try_start_2
    move-object/from16 v0, p1

    #@3a
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_3

    #@40
    .line 317
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    #@43
    move-result-object v2

    #@44
    move-object/from16 v0, p1

    #@46
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    #@48
    move/from16 v0, v18

    #@4a
    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    #@4d
    .line 318
    move-object/from16 v0, p1

    #@4f
    iget-object v2, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    #@51
    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->finish()V

    #@54
    .line 321
    new-instance v5, Landroid/content/Intent;

    #@56
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    #@59
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5c
    .line 322
    .local v5, "unlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@5f
    move/from16 v0, v18

    #@61
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@64
    .line 324
    const/high16 v2, 0x50000000

    #@66
    .line 323
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@69
    .line 325
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6d
    .line 326
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@6f
    .line 325
    const/4 v3, 0x0

    #@70
    const/4 v4, 0x0

    #@71
    const/4 v6, 0x0

    #@72
    const/4 v7, 0x0

    #@73
    const/4 v8, 0x0

    #@74
    const/4 v9, 0x0

    #@75
    .line 326
    const/4 v10, 0x0

    #@76
    const/4 v11, 0x0

    #@77
    const/4 v12, -0x1

    #@78
    const/4 v13, 0x0

    #@79
    const/4 v14, 0x0

    #@7a
    const/4 v15, 0x0

    #@7b
    const/16 v17, 0x3e8

    #@7d
    .line 325
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@80
    .line 329
    move-object/from16 v0, p0

    #@82
    move/from16 v1, v18

    #@84
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@8b
    move-result v2

    #@8c
    if-eqz v2, :cond_2

    #@8e
    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@91
    move-result-object v2

    #@92
    move/from16 v0, v18

    #@94
    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@97
    move-result-object v37

    #@98
    .line 331
    .local v37, "parent":Landroid/content/pm/UserInfo;
    if-eqz v37, :cond_2

    #@9a
    .line 332
    new-instance v22, Landroid/content/Intent;

    #@9c
    .line 333
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    #@9f
    .line 332
    move-object/from16 v0, v22

    #@a1
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a4
    .line 334
    .local v22, "profileUnlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.USER"

    #@a7
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@aa
    move-result-object v3

    #@ab
    move-object/from16 v0, v22

    #@ad
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@b0
    .line 336
    const/high16 v2, 0x50000000

    #@b2
    .line 335
    move-object/from16 v0, v22

    #@b4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@b7
    .line 338
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@bb
    move-object/from16 v19, v0

    #@bd
    .line 340
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@bf
    .line 341
    move-object/from16 v0, v37

    #@c1
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@c3
    move/from16 v35, v0

    #@c5
    .line 338
    const/16 v20, 0x0

    #@c7
    const/16 v21, 0x0

    #@c9
    .line 339
    const/16 v23, 0x0

    #@cb
    const/16 v24, 0x0

    #@cd
    const/16 v25, 0x0

    #@cf
    const/16 v26, 0x0

    #@d1
    const/16 v27, 0x0

    #@d3
    const/16 v28, 0x0

    #@d5
    const/16 v29, -0x1

    #@d7
    .line 340
    const/16 v30, 0x0

    #@d9
    const/16 v31, 0x0

    #@db
    const/16 v32, 0x0

    #@dd
    const/16 v34, 0x3e8

    #@df
    .line 338
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@e2
    .line 348
    .end local v22    # "profileUnlockedIntent":Landroid/content/Intent;
    .end local v37    # "parent":Landroid/content/pm/UserInfo;
    :cond_2
    move-object/from16 v0, p0

    #@e4
    move/from16 v1, v18

    #@e6
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@e9
    move-result-object v36

    #@ea
    .line 349
    .local v36, "info":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v36

    #@ec
    iget-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@ee
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@f0
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f3
    move-result v2

    #@f4
    if-nez v2, :cond_4

    #@f6
    .line 350
    new-instance v15, Lcom/android/server/am/UserController$1;

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@fc
    move-object/from16 v17, v0

    #@fe
    const/16 v19, 0x0

    #@100
    move-object/from16 v16, p0

    #@102
    move-object/from16 v20, p1

    #@104
    invoke-direct/range {v15 .. v20}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;Lcom/android/server/am/UserState;)V

    #@107
    invoke-virtual {v15}, Lcom/android/server/am/UserController$1;->sendNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10a
    .end local v5    # "unlockedIntent":Landroid/content/Intent;
    .end local v36    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    :goto_0
    monitor-exit v38

    #@10b
    .line 309
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@10e
    .line 307
    return-void

    #@10f
    .line 357
    .restart local v5    # "unlockedIntent":Landroid/content/Intent;
    .restart local v36    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@112
    goto :goto_0

    #@113
    .line 309
    .end local v5    # "unlockedIntent":Landroid/content/Intent;
    .end local v36    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    #@114
    monitor-exit v38

    #@115
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@118
    throw v2
.end method

.method getCurrentOrTargetUserIdLocked()I
    .locals 2

    #@0
    .prologue
    .line 1409
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    #@2
    const/16 v1, -0x2710

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@b
    goto :goto_0
.end method

.method getCurrentProfileIdsLocked()[I
    .locals 1

    #@0
    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    #@2
    return-object v0
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 3

    #@0
    .prologue
    .line 1387
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1389
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@d
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@10
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    .line 1388
    if-eqz v1, :cond_0

    #@16
    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Permission Denial: getCurrentUser() from pid="

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 1392
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@25
    move-result v2

    #@26
    .line 1391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 1393
    const-string/jumbo v2, ", uid="

    #@2d
    .line 1391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 1393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@34
    move-result v2

    #@35
    .line 1391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 1394
    const-string/jumbo v2, " requires "

    #@3c
    .line 1391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 1394
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    #@43
    .line 1391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 1395
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@4d
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1396
    new-instance v1, Ljava/lang/SecurityException;

    #@52
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@55
    throw v1

    #@56
    .line 1398
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@58
    monitor-enter v2

    #@59
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@5c
    .line 1399
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLocked()Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    move-result-object v1

    #@60
    monitor-exit v2

    #@61
    .line 1398
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@64
    .line 1399
    return-object v1

    #@65
    .line 1398
    :catchall_0
    move-exception v1

    #@66
    monitor-exit v2

    #@67
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@6a
    throw v1
.end method

.method getCurrentUserIdLocked()I
    .locals 1

    #@0
    .prologue
    .line 1413
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@2
    return v0
.end method

.method getCurrentUserLocked()Landroid/content/pm/UserInfo;
    .locals 3

    #@0
    .prologue
    .line 1404
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    #@2
    const/16 v2, -0x2710

    #@4
    if-eq v1, v2, :cond_0

    #@6
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    #@8
    .line 1405
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 1404
    .end local v0    # "userId":I
    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@f
    goto :goto_0
.end method

.method getProfileIds(I)Ljava/util/Set;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1446
    new-instance v3, Ljava/util/HashSet;

    #@2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 1447
    .local v3, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@8
    move-result-object v4

    #@9
    .line 1448
    const/4 v5, 0x0

    #@a
    .line 1447
    invoke-virtual {v4, p1, v5}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    .line 1449
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/content/pm/UserInfo;

    #@1e
    .line 1450
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v4

    #@24
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@27
    goto :goto_0

    #@28
    .line 1452
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v3
.end method

.method getStartedUserArrayLocked()[I
    .locals 1

    #@0
    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    #@2
    return-object v0
.end method

.method getStartedUserStateLocked(I)Lcom/android/server/am/UserState;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/am/UserState;

    #@8
    return-object v0
.end method

.method getUserIds()[I
    .locals 1

    #@0
    .prologue
    .line 1434
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1430
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method getUsers()[I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1425
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@4
    move-result-object v0

    #@5
    .line 1426
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    #@a
    move-result-object v1

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    const/4 v1, 0x1

    #@d
    new-array v1, v1, [I

    #@f
    aput v2, v1, v2

    #@11
    goto :goto_0
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1166
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v9

    #@4
    .line 1167
    .local v9, "callingUserId":I
    if-ne v9, p3, :cond_0

    #@6
    .line 1168
    return p3

    #@7
    .line 1177
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUserLocked(I)I

    #@a
    move-result v11

    #@b
    .line 1179
    .local v11, "targetUserId":I
    if-eqz p2, :cond_1

    #@d
    const/16 v1, 0x3e8

    #@f
    if-eq p2, v1, :cond_1

    #@11
    .line 1181
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@13
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@16
    .line 1182
    const/4 v5, -0x1

    #@17
    const/4 v6, 0x1

    #@18
    move v3, p1

    #@19
    move v4, p2

    #@1a
    .line 1181
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_2

    #@20
    .line 1184
    const/4 v7, 0x1

    #@21
    .line 1202
    :goto_0
    if-nez v7, :cond_1

    #@23
    .line 1203
    const/4 v1, -0x3

    #@24
    if-ne p3, v1, :cond_7

    #@26
    .line 1206
    move v11, v9

    #@27
    .line 1231
    :cond_1
    if-nez p4, :cond_a

    #@29
    if-gez v11, :cond_a

    #@2b
    .line 1232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2d
    .line 1233
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "Call does not support special user #"

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 1232
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 1185
    :cond_2
    const/4 v1, 0x2

    #@46
    move/from16 v0, p5

    #@48
    if-ne v0, v1, :cond_3

    #@4a
    .line 1187
    const/4 v7, 0x0

    #@4b
    .local v7, "allow":Z
    goto :goto_0

    #@4c
    .line 1188
    .end local v7    # "allow":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4e
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    #@51
    .line 1189
    const/4 v5, -0x1

    #@52
    const/4 v6, 0x1

    #@53
    move v3, p1

    #@54
    move v4, p2

    #@55
    .line 1188
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_4

    #@5b
    .line 1191
    const/4 v7, 0x0

    #@5c
    .restart local v7    # "allow":Z
    goto :goto_0

    #@5d
    .line 1192
    .end local v7    # "allow":Z
    :cond_4
    if-nez p5, :cond_5

    #@5f
    .line 1194
    const/4 v7, 0x1

    #@60
    .restart local v7    # "allow":Z
    goto :goto_0

    #@61
    .line 1195
    .end local v7    # "allow":Z
    :cond_5
    const/4 v1, 0x1

    #@62
    move/from16 v0, p5

    #@64
    if-ne v0, v1, :cond_6

    #@66
    .line 1198
    invoke-virtual {p0, v9, v11}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    #@69
    move-result v7

    #@6a
    .local v7, "allow":Z
    goto :goto_0

    #@6b
    .line 1200
    .end local v7    # "allow":Z
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6d
    new-instance v2, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v3, "Unknown mode: "

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    move/from16 v0, p5

    #@7b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@86
    throw v1

    #@87
    .line 1208
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    #@89
    const/16 v1, 0x80

    #@8b
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8e
    .line 1209
    .local v8, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Permission Denial: "

    #@91
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 1210
    move-object/from16 v0, p6

    #@96
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    .line 1211
    if-eqz p7, :cond_8

    #@9b
    .line 1212
    const-string/jumbo v1, " from "

    #@9e
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    .line 1213
    move-object/from16 v0, p7

    #@a3
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    .line 1215
    :cond_8
    const-string/jumbo v1, " asks to run as user "

    #@a9
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    .line 1216
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    .line 1217
    const-string/jumbo v1, " but is calling from user "

    #@b2
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    .line 1218
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@b8
    move-result v1

    #@b9
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    .line 1219
    const-string/jumbo v1, "; this requires "

    #@bf
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    .line 1220
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@c5
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    .line 1221
    const/4 v1, 0x2

    #@c9
    move/from16 v0, p5

    #@cb
    if-eq v0, v1, :cond_9

    #@cd
    .line 1222
    const-string/jumbo v1, " or "

    #@d0
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    .line 1223
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    #@d6
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    .line 1225
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v10

    #@dd
    .line 1226
    .local v10, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@df
    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e2
    .line 1227
    new-instance v1, Ljava/lang/SecurityException;

    #@e4
    invoke-direct {v1, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@e7
    throw v1

    #@e8
    .line 1236
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "msg":Ljava/lang/String;
    :cond_a
    const/16 v1, 0x7d0

    #@ea
    if-ne p2, v1, :cond_b

    #@ec
    if-ltz v11, :cond_b

    #@ee
    .line 1237
    const-string/jumbo v1, "no_debugging_features"

    #@f1
    invoke-virtual {p0, v1, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    #@f4
    move-result v1

    #@f5
    if-eqz v1, :cond_b

    #@f7
    .line 1238
    new-instance v1, Ljava/lang/SecurityException;

    #@f9
    new-instance v2, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v3, "Shell does not have permission to access user "

    #@101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v2

    #@105
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v2

    #@109
    .line 1239
    const-string/jumbo v3, "\n "

    #@10c
    .line 1238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v2

    #@110
    .line 1239
    const/4 v3, 0x3

    #@111
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    #@114
    move-result-object v3

    #@115
    .line 1238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v2

    #@119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v2

    #@11d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@120
    throw v1

    #@121
    .line 1242
    :cond_b
    return v11
.end method

.method hasStartedUserState(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1442
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isLockScreenDisabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isSameProfileGroup(II)Z
    .locals 7
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v6, -0x2710

    #@3
    .line 1456
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@5
    monitor-enter v3

    #@6
    .line 1457
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@8
    .line 1458
    const/16 v5, -0x2710

    #@a
    .line 1457
    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    #@d
    move-result v0

    #@e
    .line 1459
    .local v0, "callingProfile":I
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    #@10
    .line 1460
    const/16 v5, -0x2710

    #@12
    .line 1459
    invoke-virtual {v4, p2, v5}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v1

    #@16
    .line 1461
    .local v1, "targetProfile":I
    if-eq v0, v6, :cond_0

    #@18
    .line 1462
    if-ne v0, v1, :cond_0

    #@1a
    const/4 v2, 0x1

    #@1b
    :cond_0
    monitor-exit v3

    #@1c
    .line 1461
    return v2

    #@1d
    .line 1456
    .end local v0    # "callingProfile":I
    .end local v1    # "targetProfile":I
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2
.end method

.method isUserRunningLocked(II)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1348
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    #@5
    move-result-object v0

    #@6
    .line 1349
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_0

    #@8
    .line 1350
    return v2

    #@9
    .line 1352
    :cond_0
    and-int/lit8 v1, p2, 0x1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1353
    return v3

    #@e
    .line 1355
    :cond_1
    and-int/lit8 v1, p2, 0x2

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 1356
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    #@14
    packed-switch v1, :pswitch_data_0

    #@17
    .line 1361
    return v2

    #@18
    .line 1359
    :pswitch_0
    return v3

    #@19
    .line 1364
    :cond_2
    and-int/lit8 v1, p2, 0x8

    #@1b
    if-eqz v1, :cond_3

    #@1d
    .line 1365
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    #@1f
    packed-switch v1, :pswitch_data_1

    #@22
    .line 1370
    return v2

    #@23
    .line 1368
    :pswitch_1
    return v3

    #@24
    .line 1373
    :cond_3
    and-int/lit8 v1, p2, 0x4

    #@26
    if-eqz v1, :cond_4

    #@28
    .line 1374
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    #@2a
    packed-switch v1, :pswitch_data_2

    #@2d
    .line 1378
    return v2

    #@2e
    .line 1376
    :pswitch_2
    return v3

    #@2f
    .line 1383
    :cond_4
    return v3

    #@30
    .line 1356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@38
    .line 1365
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    #@40
    .line 1374
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method isUserStoppingOrShuttingDownLocked(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1339
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    #@5
    move-result-object v0

    #@6
    .line 1340
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_0

    #@8
    .line 1341
    return v2

    #@9
    .line 1343
    :cond_0
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    #@b
    const/4 v4, 0x4

    #@c
    if-eq v3, v4, :cond_1

    #@e
    .line 1344
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    #@10
    const/4 v4, 0x5

    #@11
    if-ne v3, v4, :cond_2

    #@13
    .line 1343
    :cond_1
    :goto_0
    return v1

    #@14
    :cond_2
    move v1, v2

    #@15
    .line 1344
    goto :goto_0
.end method

.method maybeUnlockUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 938
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V
    .locals 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    #@0
    .prologue
    .line 1105
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    invoke-virtual {v1, p3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->switchUserLocked(ILcom/android/server/am/UserState;)Z

    #@7
    move-result v0

    #@8
    .line 1106
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_0

    #@a
    .line 1107
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    const-string/jumbo v2, "moveUserToForeground"

    #@f
    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    #@12
    .line 1111
    :goto_0
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    #@15
    .line 1112
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcastsLocked(II)V

    #@18
    .line 1104
    return-void

    #@19
    .line 1109
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1b
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1d
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@20
    goto :goto_0
.end method

.method onSystemReady()V
    .locals 0

    #@0
    .prologue
    .line 1305
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    #@3
    .line 1304
    return-void
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    #@0
    .prologue
    .line 1251
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Permission Denial: registerUserSwitchObserver() from pid="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 1254
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v2

    #@1b
    .line 1253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 1255
    const-string/jumbo v2, ", uid="

    #@22
    .line 1253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 1255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v2

    #@2a
    .line 1253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 1256
    const-string/jumbo v2, " requires "

    #@31
    .line 1253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 1256
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@38
    .line 1253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 1257
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@42
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 1258
    new-instance v1, Ljava/lang/SecurityException;

    #@47
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    .line 1261
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@4d
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@50
    .line 1250
    return-void
.end method

.method sendBootCompletedLocked(Landroid/content/IIntentReceiver;)V
    .locals 3
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;

    #@0
    .prologue
    .line 1298
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 1299
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/am/UserState;

    #@11
    .line 1300
    .local v1, "uss":Lcom/android/server/am/UserState;
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    #@14
    .line 1298
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1297
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_0
    return-void
.end method

.method sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    .locals 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    #@0
    .prologue
    .line 1085
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurUserSwitchCallback:Ljava/lang/Object;

    #@3
    .line 1086
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@5
    const/16 v1, 0x24

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@a
    .line 1087
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@c
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@e
    const/16 v2, 0x23

    #@10
    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 1084
    return-void
.end method

.method sendUserSwitchBroadcastsLocked(II)V
    .locals 41
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    #@0
    .prologue
    .line 1116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v38

    #@4
    .line 1119
    .local v38, "ident":J
    if-ltz p1, :cond_0

    #@6
    .line 1121
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    move/from16 v0, p1

    #@d
    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    #@10
    move-result-object v40

    #@11
    .line 1122
    .local v40, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    #@14
    move-result v36

    #@15
    .line 1123
    .local v36, "count":I
    const/16 v37, 0x0

    #@17
    .local v37, "i":I
    :goto_0
    move/from16 v0, v37

    #@19
    move/from16 v1, v36

    #@1b
    if-ge v0, v1, :cond_0

    #@1d
    .line 1124
    move-object/from16 v0, v40

    #@1f
    move/from16 v1, v37

    #@21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/content/pm/UserInfo;

    #@27
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    #@29
    move/from16 v18, v0

    #@2b
    .line 1125
    .local v18, "profileUserId":I
    new-instance v5, Landroid/content/Intent;

    #@2d
    const-string/jumbo v2, "android.intent.action.USER_BACKGROUND"

    #@30
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@33
    .line 1126
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    #@35
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@38
    .line 1128
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@3b
    move/from16 v0, v18

    #@3d
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@40
    .line 1129
    move-object/from16 v0, p0

    #@42
    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@44
    .line 1131
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@46
    .line 1129
    const/4 v3, 0x0

    #@47
    const/4 v4, 0x0

    #@48
    .line 1130
    const/4 v6, 0x0

    #@49
    const/4 v7, 0x0

    #@4a
    const/4 v8, 0x0

    #@4b
    const/4 v9, 0x0

    #@4c
    const/4 v10, 0x0

    #@4d
    const/4 v11, 0x0

    #@4e
    const/4 v12, -0x1

    #@4f
    .line 1131
    const/4 v13, 0x0

    #@50
    const/4 v14, 0x0

    #@51
    const/4 v15, 0x0

    #@52
    const/16 v17, 0x3e8

    #@54
    .line 1129
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@57
    .line 1123
    add-int/lit8 v37, v37, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 1134
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "profileUserId":I
    .end local v36    # "count":I
    .end local v37    # "i":I
    .end local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    if-ltz p2, :cond_2

    #@5c
    .line 1136
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@5f
    move-result-object v2

    #@60
    const/4 v3, 0x0

    #@61
    move/from16 v0, p2

    #@63
    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    #@66
    move-result-object v40

    #@67
    .line 1137
    .restart local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    #@6a
    move-result v36

    #@6b
    .line 1138
    .restart local v36    # "count":I
    const/16 v37, 0x0

    #@6d
    .restart local v37    # "i":I
    :goto_1
    move/from16 v0, v37

    #@6f
    move/from16 v1, v36

    #@71
    if-ge v0, v1, :cond_1

    #@73
    .line 1139
    move-object/from16 v0, v40

    #@75
    move/from16 v1, v37

    #@77
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v2

    #@7b
    check-cast v2, Landroid/content/pm/UserInfo;

    #@7d
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    #@7f
    move/from16 v18, v0

    #@81
    .line 1140
    .restart local v18    # "profileUserId":I
    new-instance v5, Landroid/content/Intent;

    #@83
    const-string/jumbo v2, "android.intent.action.USER_FOREGROUND"

    #@86
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@89
    .line 1141
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    #@8b
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@8e
    .line 1143
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@91
    move/from16 v0, v18

    #@93
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@96
    .line 1144
    move-object/from16 v0, p0

    #@98
    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@9a
    .line 1146
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@9c
    .line 1144
    const/4 v3, 0x0

    #@9d
    const/4 v4, 0x0

    #@9e
    .line 1145
    const/4 v6, 0x0

    #@9f
    const/4 v7, 0x0

    #@a0
    const/4 v8, 0x0

    #@a1
    const/4 v9, 0x0

    #@a2
    const/4 v10, 0x0

    #@a3
    const/4 v11, 0x0

    #@a4
    const/4 v12, -0x1

    #@a5
    .line 1146
    const/4 v13, 0x0

    #@a6
    const/4 v14, 0x0

    #@a7
    const/4 v15, 0x0

    #@a8
    const/16 v17, 0x3e8

    #@aa
    .line 1144
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@ad
    .line 1138
    add-int/lit8 v37, v37, 0x1

    #@af
    goto :goto_1

    #@b0
    .line 1148
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "profileUserId":I
    :cond_1
    new-instance v5, Landroid/content/Intent;

    #@b2
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    #@b5
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b8
    .line 1149
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    #@ba
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@bd
    .line 1151
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@c0
    move/from16 v0, p2

    #@c2
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@c5
    .line 1152
    move-object/from16 v0, p0

    #@c7
    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c9
    move-object/from16 v19, v0

    #@cb
    .line 1154
    const/4 v2, 0x1

    #@cc
    new-array v0, v2, [Ljava/lang/String;

    #@ce
    move-object/from16 v28, v0

    #@d0
    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    #@d3
    const/4 v3, 0x0

    #@d4
    aput-object v2, v28, v3

    #@d6
    .line 1155
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@d8
    .line 1152
    const/16 v20, 0x0

    #@da
    const/16 v21, 0x0

    #@dc
    .line 1153
    const/16 v23, 0x0

    #@de
    const/16 v24, 0x0

    #@e0
    const/16 v25, 0x0

    #@e2
    const/16 v26, 0x0

    #@e4
    const/16 v27, 0x0

    #@e6
    .line 1155
    const/16 v29, -0x1

    #@e8
    const/16 v30, 0x0

    #@ea
    const/16 v31, 0x0

    #@ec
    const/16 v32, 0x0

    #@ee
    const/16 v34, 0x3e8

    #@f0
    .line 1156
    const/16 v35, -0x1

    #@f2
    move-object/from16 v22, v5

    #@f4
    .line 1152
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f7
    .line 1159
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v36    # "count":I
    .end local v37    # "i":I
    .end local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@fa
    .line 1115
    return-void

    #@fb
    .line 1158
    :catchall_0
    move-exception v2

    #@fc
    .line 1159
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ff
    .line 1158
    throw v2
.end method

.method setTargetUserIdLocked(I)I
    .locals 0
    .param p1, "targetUserId"    # I

    #@0
    .prologue
    .line 1421
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    #@2
    return p1
.end method

.method shouldConfirmCredentials(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1479
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3
    monitor-enter v2

    #@4
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@7
    .line 1480
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v3

    #@d
    if-nez v3, :cond_0

    #@f
    monitor-exit v2

    #@10
    .line 1479
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@13
    .line 1481
    return v1

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 1479
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@18
    .line 1484
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@1a
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 1485
    return v1

    #@21
    .line 1479
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@26
    throw v1

    #@27
    .line 1487
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@29
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@2b
    .line 1488
    const-string/jumbo v3, "keyguard"

    #@2e
    .line 1487
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/app/KeyguardManager;

    #@34
    .line 1489
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_2

    #@3a
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    #@3d
    move-result v1

    #@3e
    :cond_2
    return v1
.end method

.method showUserSwitchDialog(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 993
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog;

    #@2
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@8
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@a
    check-cast v3, Landroid/content/pm/UserInfo;

    #@c
    .line 994
    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@e
    check-cast v4, Landroid/content/pm/UserInfo;

    #@10
    const/4 v5, 0x1

    #@11
    .line 993
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Z)V

    #@14
    .line 995
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    #@17
    .line 991
    return-void
.end method

.method startProfilesLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 687
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@4
    move-result-object v6

    #@5
    .line 688
    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@7
    .line 687
    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    .line 689
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@10
    move-result v6

    #@11
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    .line 690
    .local v2, "profilesToStart":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v5

    #@18
    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_1

    #@1e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroid/content/pm/UserInfo;

    #@24
    .line 691
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v6, v4, Landroid/content/pm/UserInfo;->flags:I

    #@26
    and-int/lit8 v6, v6, 0x10

    #@28
    const/16 v7, 0x10

    #@2a
    if-ne v6, v7, :cond_0

    #@2c
    .line 692
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    #@2e
    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@30
    if-eq v6, v7, :cond_0

    #@32
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    #@35
    move-result v6

    #@36
    if-nez v6, :cond_0

    #@38
    .line 693
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 696
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@3f
    move-result v3

    #@40
    .line 697
    .local v3, "profilesToStartSize":I
    const/4 v0, 0x0

    #@41
    .line 698
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    #@43
    const/4 v6, 0x2

    #@44
    if-ge v0, v6, :cond_2

    #@46
    .line 699
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v6

    #@4a
    check-cast v6, Landroid/content/pm/UserInfo;

    #@4c
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    #@4e
    invoke-virtual {p0, v6, v8}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    #@51
    .line 698
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_1

    #@54
    .line 701
    :cond_2
    if-ge v0, v3, :cond_3

    #@56
    .line 702
    sget-object v6, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@58
    const-string/jumbo v7, "More profiles than MAX_RUNNING_USERS"

    #@5b
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 685
    :cond_3
    return-void
.end method

.method startUser(IZ)Z
    .locals 32
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    #@0
    .prologue
    .line 749
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@7
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 751
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "Permission Denial: switchUser() from pid="

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    .line 752
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1c
    move-result v5

    #@1d
    .line 751
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 753
    const-string/jumbo v5, ", uid="

    #@24
    .line 751
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 753
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v5

    #@2c
    .line 751
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    .line 754
    const-string/jumbo v5, " requires "

    #@33
    .line 751
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    .line 754
    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@3a
    .line 751
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v24

    #@42
    .line 755
    .local v24, "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@44
    move-object/from16 v0, v24

    #@46
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 756
    new-instance v4, Ljava/lang/SecurityException;

    #@4b
    move-object/from16 v0, v24

    #@4d
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@50
    throw v4

    #@51
    .line 759
    .end local v24    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@53
    new-instance v5, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v6, "Starting userid:"

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    move/from16 v0, p1

    #@61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    const-string/jumbo v6, " fg:"

    #@68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    move/from16 v0, p2

    #@6e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 761
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7c
    move-result-wide v22

    #@7d
    .line 763
    .local v22, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@81
    move-object/from16 v31, v0

    #@83
    monitor-enter v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@84
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@87
    .line 764
    move-object/from16 v0, p0

    #@89
    iget v0, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@8b
    move/from16 v26, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8d
    .line 765
    .local v26, "oldUserId":I
    move/from16 v0, v26

    #@8f
    move/from16 v1, p1

    #@91
    if-ne v0, v1, :cond_1

    #@93
    :try_start_2
    monitor-exit v31

    #@94
    .line 763
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@97
    .line 766
    const/4 v4, 0x1

    #@98
    .line 896
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9b
    .line 766
    return v4

    #@9c
    .line 769
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    #@9e
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a0
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@a2
    .line 770
    const-string/jumbo v5, "startUser"

    #@a5
    .line 769
    const/4 v6, 0x0

    #@a6
    .line 770
    const/4 v8, 0x0

    #@a7
    const/4 v9, 0x0

    #@a8
    .line 769
    invoke-virtual {v4, v6, v8, v5, v9}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    #@ab
    .line 772
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@ae
    move-result-object v28

    #@af
    .line 773
    .local v28, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v28, :cond_2

    #@b1
    .line 774
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@b3
    new-instance v5, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v6, "No user info for user #"

    #@bb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v5

    #@bf
    move/from16 v0, p1

    #@c1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v5

    #@c5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v5

    #@c9
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@cc
    :try_start_4
    monitor-exit v31

    #@cd
    .line 763
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@d0
    .line 775
    const/4 v4, 0x0

    #@d1
    .line 896
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d4
    .line 775
    return v4

    #@d5
    .line 777
    :cond_2
    if-eqz p2, :cond_3

    #@d7
    :try_start_5
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@da
    move-result v4

    #@db
    if-eqz v4, :cond_3

    #@dd
    .line 778
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@df
    new-instance v5, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v6, "Cannot switch to User #"

    #@e7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v5

    #@eb
    move/from16 v0, p1

    #@ed
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v5

    #@f1
    const-string/jumbo v6, ": not a full user"

    #@f4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v5

    #@f8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v5

    #@fc
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ff
    :try_start_6
    monitor-exit v31

    #@100
    .line 763
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@103
    .line 779
    const/4 v4, 0x0

    #@104
    .line 896
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@107
    .line 779
    return v4

    #@108
    .line 782
    :cond_3
    if-eqz p2, :cond_4

    #@10a
    .line 783
    :try_start_7
    move-object/from16 v0, p0

    #@10c
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@10e
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@110
    .line 784
    const v5, 0x10a0081

    #@113
    const v6, 0x10a0080

    #@116
    .line 783
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    #@119
    .line 787
    :cond_4
    const/16 v25, 0x0

    #@11b
    .line 791
    .local v25, "needStart":Z
    move-object/from16 v0, p0

    #@11d
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@11f
    move/from16 v0, p1

    #@121
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@124
    move-result-object v4

    #@125
    if-nez v4, :cond_5

    #@127
    .line 792
    new-instance v29, Lcom/android/server/am/UserState;

    #@129
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@12c
    move-result-object v4

    #@12d
    move-object/from16 v0, v29

    #@12f
    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    #@132
    .line 793
    .local v29, "userState":Lcom/android/server/am/UserState;
    move-object/from16 v0, p0

    #@134
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@136
    move/from16 v0, p1

    #@138
    move-object/from16 v1, v29

    #@13a
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@13d
    .line 794
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    #@140
    move-result-object v4

    #@141
    move-object/from16 v0, v29

    #@143
    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    #@145
    move/from16 v0, p1

    #@147
    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    #@14a
    .line 795
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    #@14d
    .line 796
    const/16 v25, 0x1

    #@14f
    .line 799
    .end local v29    # "userState":Lcom/android/server/am/UserState;
    :cond_5
    move-object/from16 v0, p0

    #@151
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@153
    move/from16 v0, p1

    #@155
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@158
    move-result-object v30

    #@159
    check-cast v30, Lcom/android/server/am/UserState;

    #@15b
    .line 800
    .local v30, "uss":Lcom/android/server/am/UserState;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15e
    move-result-object v27

    #@15f
    .line 801
    .local v27, "userIdInt":Ljava/lang/Integer;
    move-object/from16 v0, p0

    #@161
    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@163
    move-object/from16 v0, v27

    #@165
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@168
    .line 802
    move-object/from16 v0, p0

    #@16a
    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@16c
    move-object/from16 v0, v27

    #@16e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@171
    .line 804
    if-eqz p2, :cond_b

    #@173
    .line 805
    move/from16 v0, p1

    #@175
    move-object/from16 v1, p0

    #@177
    iput v0, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@179
    .line 806
    move-object/from16 v0, p0

    #@17b
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@17d
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateUserConfigurationLocked()V

    #@180
    .line 807
    const/16 v4, -0x2710

    #@182
    move-object/from16 v0, p0

    #@184
    iput v4, v0, Lcom/android/server/am/UserController;->mTargetUserId:I

    #@186
    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    #@189
    .line 809
    move-object/from16 v0, p0

    #@18b
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@18d
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@18f
    move-object/from16 v0, p0

    #@191
    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    #@193
    move/from16 v0, p1

    #@195
    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    #@198
    .line 812
    move-object/from16 v0, p0

    #@19a
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@19c
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@19e
    const/4 v5, 0x0

    #@19f
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    #@1a2
    .line 823
    :goto_0
    move-object/from16 v0, v30

    #@1a4
    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    #@1a6
    const/4 v5, 0x4

    #@1a7
    if-ne v4, v5, :cond_c

    #@1a9
    .line 827
    move-object/from16 v0, v30

    #@1ab
    iget v4, v0, Lcom/android/server/am/UserState;->lastState:I

    #@1ad
    move-object/from16 v0, v30

    #@1af
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    #@1b2
    .line 828
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    #@1b5
    move-result-object v4

    #@1b6
    move-object/from16 v0, v30

    #@1b8
    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    #@1ba
    move/from16 v0, p1

    #@1bc
    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    #@1bf
    .line 829
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    #@1c2
    .line 830
    const/16 v25, 0x1

    #@1c4
    .line 840
    :cond_6
    :goto_1
    move-object/from16 v0, v30

    #@1c6
    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    #@1c8
    if-nez v4, :cond_7

    #@1ca
    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@1cd
    move-result-object v4

    #@1ce
    move/from16 v0, p1

    #@1d0
    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    #@1d3
    .line 848
    move-object/from16 v0, p0

    #@1d5
    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@1db
    const/16 v6, 0x2a

    #@1dd
    const/4 v8, 0x0

    #@1de
    move/from16 v0, p1

    #@1e0
    invoke-virtual {v5, v6, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@1e3
    move-result-object v5

    #@1e4
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1e7
    .line 851
    :cond_7
    if-eqz p2, :cond_8

    #@1e9
    .line 852
    move-object/from16 v0, p0

    #@1eb
    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@1f1
    const/16 v6, 0x2b

    #@1f3
    move/from16 v0, p1

    #@1f5
    move/from16 v1, v26

    #@1f7
    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@1fa
    move-result-object v5

    #@1fb
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1fe
    .line 854
    move-object/from16 v0, p0

    #@200
    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@202
    const/16 v5, 0x22

    #@204
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    #@207
    .line 855
    move-object/from16 v0, p0

    #@209
    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@20b
    const/16 v5, 0x24

    #@20d
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    #@210
    .line 856
    move-object/from16 v0, p0

    #@212
    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@214
    move-object/from16 v0, p0

    #@216
    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@218
    const/16 v6, 0x22

    #@21a
    move/from16 v0, v26

    #@21c
    move/from16 v1, p1

    #@21e
    move-object/from16 v2, v30

    #@220
    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@223
    move-result-object v5

    #@224
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@227
    .line 858
    move-object/from16 v0, p0

    #@229
    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@22b
    move-object/from16 v0, p0

    #@22d
    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    #@22f
    const/16 v6, 0x24

    #@231
    move/from16 v0, v26

    #@233
    move/from16 v1, p1

    #@235
    move-object/from16 v2, v30

    #@237
    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@23a
    move-result-object v5

    #@23b
    .line 859
    const-wide/16 v8, 0x7d0

    #@23d
    .line 858
    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@240
    .line 862
    :cond_8
    if-eqz v25, :cond_9

    #@242
    .line 864
    new-instance v7, Landroid/content/Intent;

    #@244
    const-string/jumbo v4, "android.intent.action.USER_STARTED"

    #@247
    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@24a
    .line 865
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    #@24c
    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@24f
    .line 867
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@252
    move/from16 v0, p1

    #@254
    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@257
    .line 868
    move-object/from16 v0, p0

    #@259
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@25b
    .line 870
    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@25d
    .line 868
    const/4 v5, 0x0

    #@25e
    const/4 v6, 0x0

    #@25f
    .line 869
    const/4 v8, 0x0

    #@260
    const/4 v9, 0x0

    #@261
    const/4 v10, 0x0

    #@262
    const/4 v11, 0x0

    #@263
    const/4 v12, 0x0

    #@264
    const/4 v13, 0x0

    #@265
    const/4 v14, -0x1

    #@266
    .line 870
    const/4 v15, 0x0

    #@267
    const/16 v16, 0x0

    #@269
    const/16 v17, 0x0

    #@26b
    const/16 v19, 0x3e8

    #@26d
    move/from16 v20, p1

    #@26f
    .line 868
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@272
    .line 873
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_9
    if-eqz p2, :cond_d

    #@274
    .line 874
    move-object/from16 v0, p0

    #@276
    move-object/from16 v1, v30

    #@278
    move/from16 v2, v26

    #@27a
    move/from16 v3, p1

    #@27c
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V

    #@27f
    .line 879
    :goto_2
    if-eqz v25, :cond_a

    #@281
    .line 880
    new-instance v7, Landroid/content/Intent;

    #@283
    const-string/jumbo v4, "android.intent.action.USER_STARTING"

    #@286
    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@289
    .line 881
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    #@28b
    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@28e
    .line 882
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@291
    move/from16 v0, p1

    #@293
    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@296
    .line 883
    move-object/from16 v0, p0

    #@298
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@29a
    .line 884
    new-instance v9, Lcom/android/server/am/UserController$6;

    #@29c
    move-object/from16 v0, p0

    #@29e
    invoke-direct {v9, v0}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    #@2a1
    .line 891
    const/4 v5, 0x1

    #@2a2
    new-array v13, v5, [Ljava/lang/String;

    #@2a4
    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS"

    #@2a7
    const/4 v6, 0x0

    #@2a8
    aput-object v5, v13, v6

    #@2aa
    .line 892
    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@2ac
    .line 883
    const/4 v5, 0x0

    #@2ad
    const/4 v6, 0x0

    #@2ae
    .line 884
    const/4 v8, 0x0

    #@2af
    .line 890
    const/4 v10, 0x0

    #@2b0
    const/4 v11, 0x0

    #@2b1
    const/4 v12, 0x0

    #@2b2
    .line 891
    const/4 v14, -0x1

    #@2b3
    .line 892
    const/4 v15, 0x0

    #@2b4
    const/16 v16, 0x1

    #@2b6
    const/16 v17, 0x0

    #@2b8
    const/16 v19, 0x3e8

    #@2ba
    const/16 v20, -0x1

    #@2bc
    .line 883
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@2bf
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_a
    :try_start_8
    monitor-exit v31

    #@2c0
    .line 763
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@2c3
    .line 896
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c6
    .line 899
    const/4 v4, 0x1

    #@2c7
    return v4

    #@2c8
    .line 814
    :cond_b
    :try_start_9
    move-object/from16 v0, p0

    #@2ca
    iget v4, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@2cc
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2cf
    move-result-object v21

    #@2d0
    .line 815
    .local v21, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    #@2d3
    .line 816
    move-object/from16 v0, p0

    #@2d5
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2d7
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2d9
    move-object/from16 v0, p0

    #@2db
    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    #@2dd
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    #@2e0
    .line 817
    move-object/from16 v0, p0

    #@2e2
    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@2e4
    move-object/from16 v0, v21

    #@2e6
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2e9
    .line 818
    move-object/from16 v0, p0

    #@2eb
    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@2ed
    move-object/from16 v0, v21

    #@2ef
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@2f2
    goto/16 :goto_0

    #@2f4
    .line 763
    .end local v21    # "currentUserIdInt":Ljava/lang/Integer;
    .end local v25    # "needStart":Z
    .end local v26    # "oldUserId":I
    .end local v27    # "userIdInt":Ljava/lang/Integer;
    .end local v28    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v30    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v4

    #@2f5
    :try_start_a
    monitor-exit v31

    #@2f6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2f9
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@2fa
    .line 895
    :catchall_1
    move-exception v4

    #@2fb
    .line 896
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2fe
    .line 895
    throw v4

    #@2ff
    .line 831
    .restart local v25    # "needStart":Z
    .restart local v26    # "oldUserId":I
    .restart local v27    # "userIdInt":Ljava/lang/Integer;
    .restart local v28    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v30    # "uss":Lcom/android/server/am/UserState;
    :cond_c
    :try_start_b
    move-object/from16 v0, v30

    #@301
    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    #@303
    const/4 v5, 0x5

    #@304
    if-ne v4, v5, :cond_6

    #@306
    .line 834
    const/4 v4, 0x0

    #@307
    move-object/from16 v0, v30

    #@309
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    #@30c
    .line 835
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    #@30f
    move-result-object v4

    #@310
    move-object/from16 v0, v30

    #@312
    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    #@314
    move/from16 v0, p1

    #@316
    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    #@319
    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    #@31c
    .line 837
    const/16 v25, 0x1

    #@31e
    goto/16 :goto_1

    #@320
    .line 876
    :cond_d
    move-object/from16 v0, p0

    #@322
    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@324
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@326
    move-object/from16 v0, v30

    #@328
    invoke-direct {v4, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@32b
    goto/16 :goto_2
.end method

.method startUserInForeground(ILandroid/app/Dialog;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "dlg"    # Landroid/app/Dialog;

    #@0
    .prologue
    .line 906
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    #@4
    move-result v0

    #@5
    .line 907
    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    #@8
    .line 908
    return v0
.end method

.method stopRunningUsersLocked(I)V
    .locals 8
    .param p1, "maxRunningUsers"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 185
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    .line 186
    .local v1, "num":I
    const/4 v0, 0x0

    #@9
    .line 187
    .local v0, "i":I
    :goto_0
    if-le v1, p1, :cond_7

    #@b
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v4

    #@11
    if-ge v0, v4, :cond_7

    #@13
    .line 188
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Ljava/lang/Integer;

    #@1b
    .line 189
    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v5

    #@21
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Lcom/android/server/am/UserState;

    #@27
    .line 190
    .local v3, "oldUss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_0

    #@29
    .line 192
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2e
    .line 193
    add-int/lit8 v1, v1, -0x1

    #@30
    .line 194
    goto :goto_0

    #@31
    .line 196
    :cond_0
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    #@33
    const/4 v5, 0x4

    #@34
    if-eq v4, v5, :cond_1

    #@36
    .line 197
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    #@38
    const/4 v5, 0x5

    #@39
    if-ne v4, v5, :cond_2

    #@3b
    .line 199
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@3d
    .line 200
    add-int/lit8 v0, v0, 0x1

    #@3f
    .line 201
    goto :goto_0

    #@40
    .line 203
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_3

    #@46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@49
    move-result v4

    #@4a
    iget v5, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    #@4c
    if-ne v4, v5, :cond_5

    #@4e
    .line 206
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@51
    move-result v4

    #@52
    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_4

    #@58
    .line 207
    add-int/lit8 v1, v1, -0x1

    #@5a
    .line 209
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@5c
    .line 210
    goto :goto_0

    #@5d
    .line 213
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@60
    move-result v4

    #@61
    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I

    #@64
    move-result v4

    #@65
    if-eqz v4, :cond_6

    #@67
    .line 214
    add-int/lit8 v1, v1, -0x1

    #@69
    .line 216
    :cond_6
    add-int/lit8 v1, v1, -0x1

    #@6b
    .line 217
    add-int/lit8 v0, v0, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 184
    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    :cond_7
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    #@0
    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Permission Denial: switchUser() from pid="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 415
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v2

    #@1b
    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 416
    const-string/jumbo v2, ", uid="

    #@22
    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v2

    #@2a
    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 417
    const-string/jumbo v2, " requires "

    #@31
    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 417
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@38
    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 418
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@42
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 419
    new-instance v1, Ljava/lang/SecurityException;

    #@47
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    .line 421
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    if-ltz p1, :cond_1

    #@4d
    if-nez p1, :cond_2

    #@4f
    .line 422
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@51
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "Can\'t stop system user "

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@68
    throw v1

    #@69
    .line 424
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6b
    const-string/jumbo v2, "no_debugging_features"

    #@6e
    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->enforceShellRestriction(Ljava/lang/String;I)V

    #@71
    .line 426
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@73
    monitor-enter v2

    #@74
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@77
    .line 427
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    move-result v1

    #@7b
    monitor-exit v2

    #@7c
    .line 426
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@7f
    .line 427
    return v1

    #@80
    .line 426
    :catchall_0
    move-exception v1

    #@81
    monitor-exit v2

    #@82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@85
    throw v1
.end method

.method timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 4
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    #@0
    .prologue
    .line 1041
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 1042
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "User switch timeout: from "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " to "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 1043
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v1

    #@2e
    .line 1041
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@31
    .line 1040
    return-void

    #@32
    .line 1041
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@37
    throw v0
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    #@0
    .prologue
    .line 912
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@5
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Permission Denial: unlockUser() from pid="

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    .line 915
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v4

    #@1b
    .line 914
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 916
    const-string/jumbo v4, ", uid="

    #@22
    .line 914
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v4

    #@2a
    .line 914
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 917
    const-string/jumbo v4, " requires "

    #@31
    .line 914
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    .line 917
    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@38
    .line 914
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 918
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@42
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 919
    new-instance v3, Ljava/lang/SecurityException;

    #@47
    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 922
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4e
    move-result-wide v0

    #@4f
    .line 924
    .local v0, "binderToken":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    move-result v3

    #@53
    .line 926
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 924
    return v3

    #@57
    .line 925
    :catchall_0
    move-exception v3

    #@58
    .line 926
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5b
    .line 925
    throw v3
.end method

.method unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    #@0
    .prologue
    .line 951
    iget-object v8, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v8

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 953
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    #@9
    move-result v7

    #@a
    if-nez v7, :cond_0

    #@c
    .line 954
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@f
    move-result-object v5

    #@10
    .line 955
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getMountService()Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v2

    #@14
    .line 958
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_1
    iget v7, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    #@16
    invoke-interface {v2, p1, v7, p2, p3}, Landroid/os/storage/IMountService;->unlockUserKey(II[B[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 965
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Lcom/android/server/am/UserState;

    #@21
    .line 966
    .local v6, "uss":Lcom/android/server/am/UserState;
    if-nez v6, :cond_1

    #@23
    .line 967
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    .line 968
    const/4 v7, 0x0

    #@27
    monitor-exit v8

    #@28
    .line 951
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2b
    .line 968
    return v7

    #@2c
    .line 959
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    .restart local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    #@2d
    .line 960
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@2f
    new-instance v9, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v10, "Failed to unlock: "

    #@37
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@3e
    move-result-object v10

    #@3f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v9

    #@47
    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 951
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v7

    #@4c
    monitor-exit v8

    #@4d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@50
    throw v7

    #@51
    .line 970
    .restart local v6    # "uss":Lcom/android/server/am/UserState;
    :cond_1
    :try_start_4
    iget-object v7, v6, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    #@53
    invoke-virtual {v7, p4}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    #@56
    .line 973
    invoke-direct {p0, v6}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)V

    #@59
    .line 977
    const/4 v1, 0x0

    #@5a
    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@5c
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@5f
    move-result v7

    #@60
    if-ge v1, v7, :cond_3

    #@62
    .line 978
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    #@64
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@67
    move-result v4

    #@68
    .line 979
    .local v4, "testUserId":I
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v7, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@6f
    move-result-object v3

    #@70
    .line 980
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    #@72
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    #@74
    if-ne v7, p1, :cond_2

    #@76
    if-eq v4, p1, :cond_2

    #@78
    .line 981
    sget-object v7, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    #@7a
    new-instance v9, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v10, "User "

    #@82
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v9

    #@86
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v9

    #@8a
    const-string/jumbo v10, " (parent "

    #@8d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    #@93
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v9

    #@97
    .line 982
    const-string/jumbo v10, "): attempting unlock because parent was just unlocked"

    #@9a
    .line 981
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v9

    #@a2
    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 983
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a8
    .line 977
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@aa
    goto :goto_1

    #@ab
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    .end local v4    # "testUserId":I
    :cond_3
    monitor-exit v8

    #@ac
    .line 951
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@af
    .line 988
    const/4 v7, 0x1

    #@b0
    return v7
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    #@0
    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@5
    .line 1264
    return-void
.end method

.method unsafeConvertIncomingUserLocked(I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1246
    const/4 v0, -0x2

    #@1
    if-eq p1, v0, :cond_0

    #@3
    const/4 v0, -0x3

    #@4
    if-ne p1, v0, :cond_1

    #@6
    .line 1247
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    #@9
    move-result p1

    #@a
    .line 1246
    .end local p1    # "userId":I
    :cond_1
    return p1
.end method
