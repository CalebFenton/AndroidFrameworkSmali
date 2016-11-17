.class public abstract Lcom/android/server/am/PreBootBroadcaster;
.super Landroid/content/IIntentReceiver$Stub;
.source "PreBootBroadcaster.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreBootBroadcaster"


# instance fields
.field private mIndex:I

.field private final mIntent:Landroid/content/Intent;

.field private final mProgress:Lcom/android/internal/util/ProgressReporter;

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
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "userId"    # I
    .param p3, "progress"    # Lcom/android/internal/util/ProgressReporter;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    #@6
    .line 55
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8
    .line 56
    iput p2, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@a
    .line 57
    iput-object p3, p0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    #@c
    .line 59
    new-instance v0, Landroid/content/Intent;

    #@e
    const-string/jumbo v1, "android.intent.action.PRE_BOOT_COMPLETED"

    #@11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    #@16
    .line 60
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    #@18
    const v1, 0x2000100

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1e
    .line 62
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@20
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@22
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    #@28
    .line 63
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@2b
    move-result-object v2

    #@2c
    const/high16 v3, 0x100000

    #@2e
    .line 62
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    #@34
    .line 54
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
    .line 100
    invoke-virtual {p0}, Lcom/android/server/am/PreBootBroadcaster;->sendNext()V

    #@3
    .line 99
    return-void
.end method

.method public sendNext()V
    .locals 21

    #@0
    .prologue
    .line 67
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
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    #@11
    .line 69
    return-void

    #@12
    .line 72
    :cond_0
    move-object/from16 v0, p0

    #@14
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@16
    move-object/from16 v0, p0

    #@18
    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 73
    const-string/jumbo v1, "PreBootBroadcaster"

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "User "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    move-object/from16 v0, p0

    #@32
    iget v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    const-string/jumbo v3, " is no longer running; skipping remaining receivers"

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    #@49
    .line 75
    return-void

    #@4a
    .line 78
    :cond_1
    move-object/from16 v0, p0

    #@4c
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    #@4e
    move-object/from16 v0, p0

    #@50
    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    #@52
    add-int/lit8 v3, v2, 0x1

    #@54
    move-object/from16 v0, p0

    #@56
    iput v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    #@58
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v20

    #@5c
    check-cast v20, Landroid/content/pm/ResolveInfo;

    #@5e
    .line 79
    .local v20, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    #@60
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@62
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@65
    move-result-object v18

    #@66
    .line 81
    .local v18, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@68
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    #@6a
    if-eqz v1, :cond_2

    #@6c
    .line 82
    move-object/from16 v0, v20

    #@6e
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@70
    .line 83
    move-object/from16 v0, p0

    #@72
    iget-object v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@74
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@76
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@79
    move-result-object v2

    #@7a
    .line 82
    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@7d
    move-result-object v19

    #@7e
    .line 84
    .local v19, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@80
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    #@82
    move-object/from16 v0, p0

    #@84
    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    #@8a
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@8d
    move-result v3

    #@8e
    .line 85
    move-object/from16 v0, p0

    #@90
    iget-object v4, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@92
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@94
    const/4 v5, 0x1

    #@95
    new-array v5, v5, [Ljava/lang/Object;

    #@97
    const/4 v6, 0x0

    #@98
    aput-object v19, v5, v6

    #@9a
    const v6, 0x10403ad

    #@9d
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@a0
    move-result-object v4

    #@a1
    .line 84
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    #@a4
    .line 88
    .end local v19    # "label":Ljava/lang/CharSequence;
    :cond_2
    const-string/jumbo v1, "PreBootBroadcaster"

    #@a7
    new-instance v2, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v3, "Pre-boot of "

    #@af
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@b6
    move-result-object v3

    #@b7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    const-string/jumbo v3, " for user "

    #@be
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v2

    #@c2
    move-object/from16 v0, p0

    #@c4
    iget v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@c6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v2

    #@ce
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d1
    .line 89
    move-object/from16 v0, p0

    #@d3
    iget v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@d5
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@d8
    move-result-object v2

    #@d9
    invoke-static {v1, v2}, Lcom/android/server/am/EventLogTags;->writeAmPreBoot(ILjava/lang/String;)V

    #@dc
    .line 91
    move-object/from16 v0, p0

    #@de
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    #@e0
    move-object/from16 v0, v18

    #@e2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@e5
    .line 92
    move-object/from16 v0, p0

    #@e7
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v4, v0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    #@ed
    .line 93
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@ef
    .line 94
    move-object/from16 v0, p0

    #@f1
    iget v0, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    #@f3
    move/from16 v17, v0

    #@f5
    .line 92
    const/4 v2, 0x0

    #@f6
    const/4 v3, 0x0

    #@f7
    const/4 v5, 0x0

    #@f8
    const/4 v7, 0x0

    #@f9
    const/4 v8, 0x0

    #@fa
    const/4 v9, 0x0

    #@fb
    const/4 v10, 0x0

    #@fc
    .line 93
    const/4 v11, -0x1

    #@fd
    const/4 v12, 0x0

    #@fe
    const/4 v13, 0x1

    #@ff
    const/4 v14, 0x0

    #@100
    .line 94
    const/16 v16, 0x3e8

    #@102
    move-object/from16 v6, p0

    #@104
    .line 92
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@107
    .line 66
    return-void
.end method
