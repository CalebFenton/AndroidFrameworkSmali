.class public abstract Lcom/android/server/am/PreBootBroadcaster;
.super Landroid/content/IIntentReceiver$Stub;
.source "PreBootBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PreBootBroadcaster$1;
    }
.end annotation


# static fields
.field private static final MSG_HIDE:I = 0x2

.field private static final MSG_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PreBootBroadcaster"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private final mIntent:Landroid/content/Intent;

.field private final mProgress:Lcom/android/internal/util/ProgressReporter;

.field private final mQuiet:Z

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/PreBootBroadcaster;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@2
    return v0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;Z)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "userId"    # I
    .param p3, "progress"    # Lcom/android/internal/util/ProgressReporter;
    .param p4, "quiet"    # Z

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@3
    .line 59
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    #@6
    .line 121
    new-instance v0, Lcom/android/server/am/PreBootBroadcaster$1;

    #@8
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x0

    #@11
    const/4 v3, 0x1

    #@12
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/am/PreBootBroadcaster$1;-><init>(Lcom/android/server/am/PreBootBroadcaster;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@15
    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    #@17
    .line 63
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@19
    .line 64
    iput p2, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@1b
    .line 65
    iput-object p3, p0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    #@1d
    .line 66
    iput-boolean p4, p0, Lcom/android/server/am/PreBootBroadcaster;->mQuiet:Z

    #@1f
    .line 68
    new-instance v0, Landroid/content/Intent;

    #@21
    const-string/jumbo v1, "android.intent.action.PRE_BOOT_COMPLETED"

    #@24
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@27
    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    #@29
    .line 69
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    #@2b
    const v1, 0x2000100

    #@2e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@31
    .line 71
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@33
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@38
    move-result-object v0

    #@39
    iget-object v1, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    #@3b
    .line 72
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@3e
    move-result-object v2

    #@3f
    const/high16 v3, 0x100000

    #@41
    .line 71
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    #@47
    .line 62
    return-void
.end method


# virtual methods
.method public abstract onFinished()V
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    #@0
    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/server/am/PreBootBroadcaster;->sendNext()V

    #@3
    .line 114
    return-void
.end method

.method public sendNext()V
    .locals 21

    #@0
    .prologue
    .line 76
    move-object/from16 v0, p0

    #@2
    iget v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    #@4
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    if-lt v1, v2, :cond_0

    #@e
    .line 77
    move-object/from16 v0, p0

    #@10
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    #@12
    const/4 v2, 0x2

    #@13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1a
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    #@1d
    .line 79
    return-void

    #@1e
    .line 82
    :cond_0
    move-object/from16 v0, p0

    #@20
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@22
    move-object/from16 v0, p0

    #@24
    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@26
    const/4 v3, 0x0

    #@27
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_1

    #@2d
    .line 83
    const-string/jumbo v1, "PreBootBroadcaster"

    #@30
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "User "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    const-string/jumbo v3, " is no longer running; skipping remaining receivers"

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 84
    move-object/from16 v0, p0

    #@54
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    #@56
    const/4 v2, 0x2

    #@57
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@5e
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    #@61
    .line 86
    return-void

    #@62
    .line 89
    :cond_1
    move-object/from16 v0, p0

    #@64
    iget-boolean v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mQuiet:Z

    #@66
    if-nez v1, :cond_2

    #@68
    .line 90
    move-object/from16 v0, p0

    #@6a
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-object v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    #@70
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@73
    move-result v2

    #@74
    move-object/from16 v0, p0

    #@76
    iget v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    #@78
    const/4 v4, 0x1

    #@79
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@80
    .line 93
    :cond_2
    move-object/from16 v0, p0

    #@82
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    #@84
    move-object/from16 v0, p0

    #@86
    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    #@88
    add-int/lit8 v3, v2, 0x1

    #@8a
    move-object/from16 v0, p0

    #@8c
    iput v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    #@8e
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@91
    move-result-object v20

    #@92
    check-cast v20, Landroid/content/pm/ResolveInfo;

    #@94
    .line 94
    .local v20, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    #@96
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@98
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@9b
    move-result-object v18

    #@9c
    .line 96
    .local v18, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@9e
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    #@a0
    if-eqz v1, :cond_3

    #@a2
    .line 97
    move-object/from16 v0, v20

    #@a4
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@a6
    .line 98
    move-object/from16 v0, p0

    #@a8
    iget-object v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@aa
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@ac
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@af
    move-result-object v2

    #@b0
    .line 97
    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@b3
    move-result-object v19

    #@b4
    .line 99
    .local v19, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@b6
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    #@bc
    move-object/from16 v0, p0

    #@be
    iget-object v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    #@c0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@c3
    move-result v3

    #@c4
    .line 100
    move-object/from16 v0, p0

    #@c6
    iget-object v4, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c8
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@ca
    const/4 v5, 0x1

    #@cb
    new-array v5, v5, [Ljava/lang/Object;

    #@cd
    const/4 v6, 0x0

    #@ce
    aput-object v19, v5, v6

    #@d0
    const v6, 0x10403b7

    #@d3
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@d6
    move-result-object v4

    #@d7
    .line 99
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    #@da
    .line 103
    .end local v19    # "label":Ljava/lang/CharSequence;
    :cond_3
    const-string/jumbo v1, "PreBootBroadcaster"

    #@dd
    new-instance v2, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v3, "Pre-boot of "

    #@e5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v2

    #@e9
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@ec
    move-result-object v3

    #@ed
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v2

    #@f1
    const-string/jumbo v3, " for user "

    #@f4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v2

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@fc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v2

    #@100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v2

    #@104
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@107
    .line 104
    move-object/from16 v0, p0

    #@109
    iget v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@10b
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@10e
    move-result-object v2

    #@10f
    invoke-static {v1, v2}, Lcom/android/server/am/EventLogTags;->writeAmPreBoot(ILjava/lang/String;)V

    #@112
    .line 106
    move-object/from16 v0, p0

    #@114
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    #@116
    move-object/from16 v0, v18

    #@118
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@11b
    .line 107
    move-object/from16 v0, p0

    #@11d
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v4, v0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    #@123
    .line 108
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@125
    .line 109
    move-object/from16 v0, p0

    #@127
    iget v0, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@129
    move/from16 v17, v0

    #@12b
    .line 107
    const/4 v2, 0x0

    #@12c
    const/4 v3, 0x0

    #@12d
    const/4 v5, 0x0

    #@12e
    const/4 v7, 0x0

    #@12f
    const/4 v8, 0x0

    #@130
    const/4 v9, 0x0

    #@131
    const/4 v10, 0x0

    #@132
    .line 108
    const/4 v11, -0x1

    #@133
    const/4 v12, 0x0

    #@134
    const/4 v13, 0x1

    #@135
    const/4 v14, 0x0

    #@136
    .line 109
    const/16 v16, 0x3e8

    #@138
    move-object/from16 v6, p0

    #@13a
    .line 107
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@13d
    .line 75
    return-void
.end method
