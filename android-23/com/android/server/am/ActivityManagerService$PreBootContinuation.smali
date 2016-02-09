.class final Lcom/android/server/am/ActivityManagerService$PreBootContinuation;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PreBootContinuation"
.end annotation


# instance fields
.field curRi:I

.field curUser:I

.field final doneReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final intent:Landroid/content/Intent;

.field lastRi:I

.field final onFinishCallback:Ljava/lang/Runnable;

.field final ris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final users:[I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/util/List;[I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_onFinishCallback"    # Ljava/lang/Runnable;
    .param p6, "_users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Runnable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;[I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "_doneReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .local p5, "_ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    #@1
    .line 11548
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@6
    .line 11544
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->lastRi:I

    #@9
    .line 11545
    iput v1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    #@b
    .line 11546
    iput v1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    #@d
    .line 11550
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->intent:Landroid/content/Intent;

    #@f
    .line 11551
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->onFinishCallback:Ljava/lang/Runnable;

    #@11
    .line 11552
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->doneReceivers:Ljava/util/ArrayList;

    #@13
    .line 11553
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->ris:Ljava/util/List;

    #@15
    .line 11554
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->users:[I

    #@17
    .line 11549
    return-void
.end method


# virtual methods
.method go()V
    .locals 21

    #@0
    .prologue
    .line 11558
    move-object/from16 v0, p0

    #@2
    iget v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->lastRi:I

    #@4
    move-object/from16 v0, p0

    #@6
    iget v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 11559
    move-object/from16 v0, p0

    #@c
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->ris:Ljava/util/List;

    #@e
    move-object/from16 v0, p0

    #@10
    iget v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    #@12
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/content/pm/ResolveInfo;

    #@18
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1a
    move-object/from16 v18, v0

    #@1c
    .line 11560
    .local v18, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v19, Landroid/content/ComponentName;

    #@1e
    move-object/from16 v0, v18

    #@20
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@22
    move-object/from16 v0, v18

    #@24
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@26
    move-object/from16 v0, v19

    #@28
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 11561
    .local v19, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@2d
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->intent:Landroid/content/Intent;

    #@2f
    move-object/from16 v0, v19

    #@31
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@34
    .line 11562
    move-object/from16 v0, p0

    #@36
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->doneReceivers:Ljava/util/ArrayList;

    #@38
    move-object/from16 v0, v19

    #@3a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 11563
    move-object/from16 v0, p0

    #@3f
    iget v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    #@41
    move-object/from16 v0, p0

    #@43
    iput v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->lastRi:I

    #@45
    .line 11564
    move-object/from16 v0, p0

    #@47
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@49
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@4b
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4e
    move-result-object v1

    #@4f
    move-object/from16 v0, v18

    #@51
    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@54
    move-result-object v20

    #@55
    .line 11565
    .local v20, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@57
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5d
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@5f
    const/4 v3, 0x1

    #@60
    new-array v3, v3, [Ljava/lang/Object;

    #@62
    const/4 v4, 0x0

    #@63
    aput-object v20, v3, v4

    #@65
    const v4, 0x104036f

    #@68
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    const/4 v3, 0x0

    #@6d
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->showBootMessage(Ljava/lang/CharSequence;Z)V

    #@70
    .line 11567
    .end local v18    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v19    # "comp":Landroid/content/ComponentName;
    .end local v20    # "label":Ljava/lang/CharSequence;
    :cond_0
    const-string/jumbo v1, "ActivityManager"

    #@73
    new-instance v2, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v3, "Pre-boot of "

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    move-object/from16 v0, p0

    #@81
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->intent:Landroid/content/Intent;

    #@83
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    .line 11568
    const-string/jumbo v3, " for user "

    #@92
    .line 11567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v2

    #@96
    .line 11568
    move-object/from16 v0, p0

    #@98
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->users:[I

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget v4, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    #@9e
    aget v3, v3, v4

    #@a0
    .line 11567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v2

    #@a8
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    .line 11569
    move-object/from16 v0, p0

    #@ad
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->users:[I

    #@af
    move-object/from16 v0, p0

    #@b1
    iget v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    #@b3
    aget v1, v1, v2

    #@b5
    move-object/from16 v0, p0

    #@b7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->intent:Landroid/content/Intent;

    #@b9
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@c0
    move-result-object v2

    #@c1
    invoke-static {v1, v2}, Lcom/android/server/am/EventLogTags;->writeAmPreBoot(ILjava/lang/String;)V

    #@c4
    .line 11570
    move-object/from16 v0, p0

    #@c6
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->intent:Landroid/content/Intent;

    #@cc
    .line 11572
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->users:[I

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget v3, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    #@d6
    aget v17, v2, v3

    #@d8
    .line 11570
    const/4 v2, 0x0

    #@d9
    const/4 v3, 0x0

    #@da
    const/4 v5, 0x0

    #@db
    .line 11571
    const/4 v7, 0x0

    #@dc
    const/4 v8, 0x0

    #@dd
    const/4 v9, 0x0

    #@de
    const/4 v10, 0x0

    #@df
    const/4 v11, -0x1

    #@e0
    .line 11572
    const/4 v12, 0x0

    #@e1
    const/4 v13, 0x1

    #@e2
    const/4 v14, 0x0

    #@e3
    const/16 v16, 0x3e8

    #@e5
    move-object/from16 v6, p0

    #@e7
    .line 11570
    invoke-static/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@ea
    .line 11557
    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    #@0
    .prologue
    .line 11578
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    #@6
    .line 11579
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    #@8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->users:[I

    #@a
    array-length v1, v1

    #@b
    if-lt v0, v1, :cond_1

    #@d
    .line 11580
    const/4 v0, 0x0

    #@e
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    #@10
    .line 11581
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    #@16
    .line 11582
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    #@18
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->ris:Ljava/util/List;

    #@1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1d
    move-result v1

    #@1e
    if-lt v0, v1, :cond_1

    #@20
    .line 11584
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->onFinishCallback:Ljava/lang/Runnable;

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 11588
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@26
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@28
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->onFinishCallback:Ljava/lang/Runnable;

    #@2a
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    #@2d
    .line 11590
    :cond_0
    return-void

    #@2e
    .line 11593
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->go()V

    #@31
    .line 11577
    return-void
.end method
