.class final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field canceled:Z

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I

.field private whitelistDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/PendingIntentRecord;->TAG:Ljava/lang/String;

    #@5
    .line 43
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 2
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 185
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    #@4
    .line 50
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    #@6
    .line 51
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@8
    .line 52
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    #@c
    .line 186
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@e
    .line 187
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@10
    .line 188
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@12
    .line 189
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@14
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@17
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    #@19
    .line 185
    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .locals 4

    #@0
    .prologue
    .line 360
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v2

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 362
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@8
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    #@a
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@c
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@12
    .line 363
    .local v0, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 364
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@18
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    #@1a
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@1c
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit v2

    #@20
    .line 360
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@23
    .line 359
    return-void

    #@24
    .line 360
    .end local v0    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@29
    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    const-string/jumbo v0, "uid="

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@10
    .line 371
    const-string/jumbo v0, " packageName="

    #@13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@18
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    .line 372
    const-string/jumbo v0, " type="

    #@20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@25
    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 373
    const-string/jumbo v0, " flags=0x"

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@34
    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    #@36
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 374
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@3f
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@41
    if-nez v0, :cond_0

    #@43
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@45
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    #@47
    if-eqz v0, :cond_1

    #@49
    .line 375
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    const-string/jumbo v0, "activity="

    #@4f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@54
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@56
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@59
    .line 376
    const-string/jumbo v0, " who="

    #@5c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@61
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@68
    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    #@6a
    if-nez v0, :cond_2

    #@6c
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@6e
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@70
    if-eqz v0, :cond_3

    #@72
    .line 379
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    const-string/jumbo v0, "requestCode="

    #@78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@7d
    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    #@7f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@82
    .line 380
    const-string/jumbo v0, " requestResolvedType="

    #@85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@88
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@8a
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@8c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8f
    .line 382
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@91
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@93
    if-eqz v0, :cond_4

    #@95
    .line 383
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    const-string/jumbo v0, "requestIntent="

    #@9b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9e
    .line 384
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@a0
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@a2
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@a5
    move-result-object v0

    #@a6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a9
    .line 386
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    #@ab
    if-nez v0, :cond_5

    #@ad
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@af
    if-eqz v0, :cond_6

    #@b1
    .line 387
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    const-string/jumbo v0, "sent="

    #@b7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ba
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    #@bc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@bf
    .line 388
    const-string/jumbo v0, " canceled="

    #@c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c5
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@c7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@ca
    .line 390
    :cond_6
    iget-wide v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    #@cc
    const-wide/16 v2, 0x0

    #@ce
    cmp-long v0, v0, v2

    #@d0
    if-eqz v0, :cond_7

    #@d2
    .line 391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d5
    .line 392
    const-string/jumbo v0, "whitelistDuration="

    #@d8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@db
    .line 393
    iget-wide v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    #@dd
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@e0
    .line 394
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@e3
    .line 369
    :cond_7
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 351
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@6
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@8
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@a
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@c
    .line 352
    const/16 v2, 0x17

    #@e
    .line 351
    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 355
    :cond_0
    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    #@18
    .line 348
    return-void

    #@19
    .line 354
    :catchall_0
    move-exception v0

    #@1a
    .line 355
    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    #@1d
    .line 354
    throw v0
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 200
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v9, 0x0

    #@4
    const/4 v10, 0x0

    #@5
    const/4 v12, 0x0

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move-object v2, p2

    #@9
    move-object/from16 v3, p3

    #@b
    move-object/from16 v4, p4

    #@d
    move-object/from16 v5, p5

    #@f
    move-object/from16 v11, p6

    #@11
    .line 199
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    #@14
    .line 198
    return-void
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I
    .locals 37
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "flagsMask"    # I
    .param p10, "flagsValues"    # I
    .param p11, "options"    # Landroid/os/Bundle;
    .param p12, "container"    # Landroid/app/IActivityContainer;

    #@0
    .prologue
    .line 212
    if-eqz p2, :cond_0

    #@2
    const/4 v2, 0x1

    #@3
    move-object/from16 v0, p2

    #@5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setDefusable(Z)V

    #@8
    .line 213
    :cond_0
    if-eqz p11, :cond_1

    #@a
    const/4 v2, 0x1

    #@b
    move-object/from16 v0, p11

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setDefusable(Z)V

    #@10
    .line 215
    :cond_1
    move-object/from16 v0, p0

    #@12
    iget-wide v2, v0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    #@14
    const-wide/16 v10, 0x0

    #@16
    cmp-long v2, v2, v10

    #@18
    if-lez v2, :cond_2

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@1e
    if-eqz v2, :cond_3

    #@20
    .line 223
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@24
    move-object/from16 v36, v0

    #@26
    monitor-enter v36

    #@27
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@2a
    .line 224
    move-object/from16 v0, p12

    #@2c
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@2e
    move-object/from16 v24, v0

    #@30
    .line 225
    .local v24, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v24, :cond_4

    #@32
    move-object/from16 v0, v24

    #@34
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@36
    if-eqz v2, :cond_4

    #@38
    .line 226
    move-object/from16 v0, v24

    #@3a
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@3c
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3e
    .line 227
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 226
    if-eq v2, v3, :cond_4

    #@42
    .line 229
    const/4 v2, -0x6

    #@43
    monitor-exit v36

    #@44
    .line 223
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@47
    .line 229
    return v2

    #@48
    .line 219
    .end local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_3
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@4c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@4f
    move-result v3

    #@50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@53
    move-result v4

    #@54
    move-object/from16 v0, p0

    #@56
    iget v5, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@58
    .line 220
    move-object/from16 v0, p0

    #@5a
    iget-wide v6, v0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    #@5c
    .line 219
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistAppForPowerSave(IIIJ)V

    #@5f
    goto :goto_0

    #@60
    .line 231
    .restart local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    #@62
    iget-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@64
    if-nez v2, :cond_14

    #@66
    .line 232
    const/4 v2, 0x1

    #@67
    move-object/from16 v0, p0

    #@69
    iput-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    #@6b
    .line 233
    move-object/from16 v0, p0

    #@6d
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@6f
    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    #@71
    const/high16 v3, 0x40000000    # 2.0f

    #@73
    and-int/2addr v2, v3

    #@74
    if-eqz v2, :cond_5

    #@76
    .line 234
    move-object/from16 v0, p0

    #@78
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@7a
    const/4 v3, 0x1

    #@7b
    move-object/from16 v0, p0

    #@7d
    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    #@80
    .line 235
    const/4 v2, 0x1

    #@81
    move-object/from16 v0, p0

    #@83
    iput-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@85
    .line 238
    :cond_5
    move-object/from16 v0, p0

    #@87
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@89
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@8b
    if-eqz v2, :cond_a

    #@8d
    .line 239
    new-instance v13, Landroid/content/Intent;

    #@8f
    move-object/from16 v0, p0

    #@91
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@93
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@95
    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@98
    .line 241
    .local v13, "finalIntent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    #@9a
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@9c
    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    #@9e
    const/high16 v3, 0x4000000

    #@a0
    and-int/2addr v2, v3

    #@a1
    if-eqz v2, :cond_b

    #@a3
    const/16 v29, 0x1

    #@a5
    .line 242
    .local v29, "immutable":Z
    :goto_2
    if-nez v29, :cond_d

    #@a7
    .line 243
    if-eqz p2, :cond_c

    #@a9
    .line 244
    move-object/from16 v0, p0

    #@ab
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@ad
    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    #@af
    move-object/from16 v0, p2

    #@b1
    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    #@b4
    move-result v25

    #@b5
    .line 245
    .local v25, "changes":I
    and-int/lit8 v2, v25, 0x2

    #@b7
    if-nez v2, :cond_6

    #@b9
    .line 246
    move-object/from16 v0, p0

    #@bb
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@bd
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@bf
    move-object/from16 p3, v0

    #@c1
    .line 251
    .end local v25    # "changes":I
    :cond_6
    :goto_3
    move/from16 v0, p9

    #@c3
    and-int/lit16 v0, v0, -0xc4

    #@c5
    move/from16 p9, v0

    #@c7
    .line 252
    and-int p10, p10, p9

    #@c9
    .line 253
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    #@cc
    move-result v2

    #@cd
    move/from16 v0, p9

    #@cf
    not-int v3, v0

    #@d0
    and-int/2addr v2, v3

    #@d1
    or-int v2, v2, p10

    #@d3
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@d6
    .line 258
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d9
    move-result-wide v32

    #@da
    .line 260
    .local v32, "origId":J
    if-eqz p4, :cond_e

    #@dc
    const/16 v34, 0x1

    #@de
    .line 261
    .local v34, "sendFinish":Z
    :goto_5
    move-object/from16 v0, p0

    #@e0
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@e2
    iget v9, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    #@e4
    .line 262
    .local v9, "userId":I
    const/4 v2, -0x2

    #@e5
    if-ne v9, v2, :cond_7

    #@e7
    .line 263
    move-object/from16 v0, p0

    #@e9
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@eb
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@ed
    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    #@f0
    move-result v9

    #@f1
    .line 265
    :cond_7
    const/16 v31, 0x0

    #@f3
    .line 266
    .local v31, "res":I
    move-object/from16 v0, p0

    #@f5
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@f7
    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f9
    packed-switch v2, :pswitch_data_0

    #@fc
    .line 331
    :cond_8
    :goto_6
    if-eqz v34, :cond_9

    #@fe
    const/4 v2, -0x6

    #@ff
    move/from16 v0, v31

    #@101
    if-eq v0, v2, :cond_9

    #@103
    .line 333
    :try_start_2
    new-instance v15, Landroid/content/Intent;

    #@105
    invoke-direct {v15, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@108
    .line 334
    move-object/from16 v0, p0

    #@10a
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@10c
    iget v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    #@10e
    move/from16 v21, v0

    #@110
    .line 333
    const/16 v16, 0x0

    #@112
    .line 334
    const/16 v17, 0x0

    #@114
    const/16 v18, 0x0

    #@116
    const/16 v19, 0x0

    #@118
    const/16 v20, 0x0

    #@11a
    move-object/from16 v14, p4

    #@11c
    .line 333
    invoke-interface/range {v14 .. v21}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11f
    .line 339
    :cond_9
    :goto_7
    :try_start_3
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@122
    monitor-exit v36

    #@123
    .line 223
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@126
    .line 341
    return v31

    #@127
    .line 239
    .end local v9    # "userId":I
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .end local v29    # "immutable":Z
    .end local v31    # "res":I
    .end local v32    # "origId":J
    .end local v34    # "sendFinish":Z
    :cond_a
    :try_start_4
    new-instance v13, Landroid/content/Intent;

    #@129
    invoke-direct {v13}, Landroid/content/Intent;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@12c
    goto/16 :goto_1

    #@12e
    .line 223
    .end local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :catchall_0
    move-exception v2

    #@12f
    monitor-exit v36

    #@130
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@133
    throw v2

    #@134
    .line 241
    .restart local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_b
    const/16 v29, 0x0

    #@136
    goto/16 :goto_2

    #@138
    .line 249
    .restart local v29    # "immutable":Z
    :cond_c
    :try_start_5
    move-object/from16 v0, p0

    #@13a
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@13c
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@13e
    move-object/from16 p3, v0

    #@140
    goto :goto_3

    #@141
    .line 255
    :cond_d
    move-object/from16 v0, p0

    #@143
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@145
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@147
    move-object/from16 p3, v0

    #@149
    goto :goto_4

    #@14a
    .line 260
    .restart local v32    # "origId":J
    :cond_e
    const/16 v34, 0x0

    #@14c
    .restart local v34    # "sendFinish":Z
    goto :goto_5

    #@14d
    .line 268
    .restart local v9    # "userId":I
    .restart local v31    # "res":I
    :pswitch_0
    if-nez p11, :cond_11

    #@14f
    .line 269
    move-object/from16 v0, p0

    #@151
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@153
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    #@155
    move-object/from16 p11, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@157
    .line 276
    :cond_f
    :goto_8
    :try_start_6
    move-object/from16 v0, p0

    #@159
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@15b
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@15d
    if-eqz v2, :cond_12

    #@15f
    move-object/from16 v0, p0

    #@161
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@163
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@165
    array-length v2, v2

    #@166
    const/4 v3, 0x1

    #@167
    if-le v2, v3, :cond_12

    #@169
    .line 277
    move-object/from16 v0, p0

    #@16b
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@16d
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@16f
    array-length v2, v2

    #@170
    new-array v5, v2, [Landroid/content/Intent;

    #@172
    .line 278
    .local v5, "allIntents":[Landroid/content/Intent;
    move-object/from16 v0, p0

    #@174
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@176
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@178
    array-length v2, v2

    #@179
    new-array v6, v2, [Ljava/lang/String;

    #@17b
    .line 279
    .local v6, "allResolvedTypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@17d
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@17f
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@181
    .line 280
    move-object/from16 v0, p0

    #@183
    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@185
    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@187
    array-length v3, v3

    #@188
    .line 279
    const/4 v4, 0x0

    #@189
    const/4 v7, 0x0

    #@18a
    invoke-static {v2, v4, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18d
    .line 281
    move-object/from16 v0, p0

    #@18f
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@191
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    #@193
    if-eqz v2, :cond_10

    #@195
    .line 282
    move-object/from16 v0, p0

    #@197
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@199
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    #@19b
    .line 283
    move-object/from16 v0, p0

    #@19d
    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@19f
    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    #@1a1
    array-length v3, v3

    #@1a2
    .line 282
    const/4 v4, 0x0

    #@1a3
    const/4 v7, 0x0

    #@1a4
    invoke-static {v2, v4, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a7
    .line 285
    :cond_10
    array-length v2, v5

    #@1a8
    add-int/lit8 v2, v2, -0x1

    #@1aa
    aput-object v13, v5, v2

    #@1ac
    .line 286
    array-length v2, v6

    #@1ad
    add-int/lit8 v2, v2, -0x1

    #@1af
    aput-object p3, v6, v2

    #@1b1
    .line 287
    move-object/from16 v0, p0

    #@1b3
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    iget v3, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iget-object v4, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@1bd
    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@1bf
    move-object/from16 v7, p6

    #@1c1
    move-object/from16 v8, p11

    #@1c3
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1c6
    goto/16 :goto_6

    #@1c8
    .line 294
    .end local v5    # "allIntents":[Landroid/content/Intent;
    .end local v6    # "allResolvedTypes":[Ljava/lang/String;
    :catch_0
    move-exception v28

    #@1c9
    .line 295
    .local v28, "e":Ljava/lang/RuntimeException;
    :try_start_7
    sget-object v2, Lcom/android/server/am/PendingIntentRecord;->TAG:Ljava/lang/String;

    #@1cb
    const-string/jumbo v3, "Unable to send startActivity intent"

    #@1ce
    move-object/from16 v0, v28

    #@1d0
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d3
    goto/16 :goto_6

    #@1d5
    .line 270
    .end local v28    # "e":Ljava/lang/RuntimeException;
    :cond_11
    move-object/from16 v0, p0

    #@1d7
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@1d9
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    #@1db
    if-eqz v2, :cond_f

    #@1dd
    .line 271
    new-instance v30, Landroid/os/Bundle;

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@1e3
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    #@1e5
    move-object/from16 v0, v30

    #@1e7
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@1ea
    .line 272
    .local v30, "opts":Landroid/os/Bundle;
    move-object/from16 v0, v30

    #@1ec
    move-object/from16 v1, p11

    #@1ee
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1f1
    .line 273
    move-object/from16 p11, v30

    #@1f3
    goto/16 :goto_8

    #@1f5
    .line 290
    .end local v30    # "opts":Landroid/os/Bundle;
    :cond_12
    :try_start_8
    move-object/from16 v0, p0

    #@1f7
    iget-object v10, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iget v11, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@201
    iget-object v12, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@203
    .line 291
    const/16 v18, 0x0

    #@205
    .line 292
    const/16 v22, 0x0

    #@207
    move-object/from16 v14, p3

    #@209
    move-object/from16 v15, p6

    #@20b
    move-object/from16 v16, p7

    #@20d
    move/from16 v17, p8

    #@20f
    move-object/from16 v19, p11

    #@211
    move/from16 v20, v9

    #@213
    move-object/from16 v21, p12

    #@215
    .line 290
    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@218
    goto/16 :goto_6

    #@21a
    .line 299
    :pswitch_1
    :try_start_9
    move-object/from16 v0, p0

    #@21c
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@21e
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@220
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@222
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@224
    if-eqz v2, :cond_8

    #@226
    .line 300
    move-object/from16 v0, p0

    #@228
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@22a
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@22c
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@22e
    iget-object v14, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@230
    move-object/from16 v0, p0

    #@232
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@234
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@236
    move-object/from16 v16, v0

    #@238
    .line 301
    move-object/from16 v0, p0

    #@23a
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@23c
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    #@23e
    move-object/from16 v17, v0

    #@240
    move-object/from16 v0, p0

    #@242
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@244
    iget v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    #@246
    move/from16 v18, v0

    #@248
    .line 300
    const/4 v15, -0x1

    #@249
    move/from16 v19, p1

    #@24b
    move-object/from16 v20, v13

    #@24d
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@250
    goto/16 :goto_6

    #@252
    .line 308
    :pswitch_2
    :try_start_a
    move-object/from16 v0, p0

    #@254
    iget-object v10, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@256
    move-object/from16 v0, p0

    #@258
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@25a
    iget-object v11, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@25c
    move-object/from16 v0, p0

    #@25e
    iget v12, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@260
    .line 310
    if-eqz p4, :cond_13

    #@262
    const/16 v21, 0x1

    #@264
    .line 309
    :goto_9
    const/16 v17, 0x0

    #@266
    const/16 v18, 0x0

    #@268
    .line 311
    const/16 v22, 0x0

    #@26a
    move-object/from16 v14, p3

    #@26c
    move-object/from16 v15, p4

    #@26e
    move/from16 v16, p1

    #@270
    move-object/from16 v19, p5

    #@272
    move-object/from16 v20, p11

    #@274
    move/from16 v23, v9

    #@276
    .line 308
    invoke-virtual/range {v10 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@279
    move-result v35

    #@27a
    .line 312
    .local v35, "sent":I
    if-nez v35, :cond_8

    #@27c
    .line 313
    const/16 v34, 0x0

    #@27e
    goto/16 :goto_6

    #@280
    .line 310
    .end local v35    # "sent":I
    :cond_13
    const/16 v21, 0x0

    #@282
    goto :goto_9

    #@283
    .line 315
    :catch_1
    move-exception v28

    #@284
    .line 316
    .restart local v28    # "e":Ljava/lang/RuntimeException;
    :try_start_b
    sget-object v2, Lcom/android/server/am/PendingIntentRecord;->TAG:Ljava/lang/String;

    #@286
    const-string/jumbo v3, "Unable to send startActivity intent"

    #@289
    move-object/from16 v0, v28

    #@28b
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@28e
    goto/16 :goto_6

    #@290
    .line 321
    .end local v28    # "e":Ljava/lang/RuntimeException;
    :pswitch_3
    :try_start_c
    move-object/from16 v0, p0

    #@292
    iget-object v11, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@294
    move-object/from16 v0, p0

    #@296
    iget v12, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@298
    .line 322
    move-object/from16 v0, p0

    #@29a
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@29c
    iget-object v15, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@29e
    move-object/from16 v14, p3

    #@2a0
    move/from16 v16, v9

    #@2a2
    .line 321
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catch Landroid/os/TransactionTooLargeException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@2a5
    goto/16 :goto_6

    #@2a7
    .line 323
    :catch_2
    move-exception v28

    #@2a8
    .line 324
    .restart local v28    # "e":Ljava/lang/RuntimeException;
    :try_start_d
    sget-object v2, Lcom/android/server/am/PendingIntentRecord;->TAG:Ljava/lang/String;

    #@2aa
    const-string/jumbo v3, "Unable to send startService intent"

    #@2ad
    move-object/from16 v0, v28

    #@2af
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@2b2
    goto/16 :goto_6

    #@2b4
    .line 325
    .end local v28    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v27

    #@2b5
    .line 326
    .local v27, "e":Landroid/os/TransactionTooLargeException;
    const/16 v31, -0x6

    #@2b7
    goto/16 :goto_6

    #@2b9
    .end local v9    # "userId":I
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .end local v27    # "e":Landroid/os/TransactionTooLargeException;
    .end local v29    # "immutable":Z
    .end local v31    # "res":I
    .end local v32    # "origId":J
    .end local v34    # "sendFinish":Z
    :cond_14
    monitor-exit v36

    #@2ba
    .line 223
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2bd
    .line 344
    const/4 v2, -0x6

    #@2be
    return v2

    #@2bf
    .line 335
    .restart local v9    # "userId":I
    .restart local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v29    # "immutable":Z
    .restart local v31    # "res":I
    .restart local v32    # "origId":J
    .restart local v34    # "sendFinish":Z
    :catch_4
    move-exception v26

    #@2c0
    .local v26, "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    #@2c2
    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 13
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 206
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v9, 0x0

    #@4
    const/4 v10, 0x0

    #@5
    const/4 v12, 0x0

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move-object v2, p2

    #@9
    move-object/from16 v3, p3

    #@b
    move-object/from16 v4, p4

    #@d
    move-object/from16 v5, p5

    #@f
    move-object/from16 v11, p6

    #@11
    .line 205
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method setWhitelistDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 193
    iput-wide p1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    #@2
    .line 194
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    #@5
    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 399
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 400
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    #@8
    return-object v1

    #@9
    .line 402
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const/16 v1, 0x80

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    .line 403
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PendingIntentRecord{"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 404
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@19
    move-result v1

    #@1a
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 406
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@26
    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 407
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    .line 408
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@30
    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 409
    iget-wide v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    #@39
    const-wide/16 v4, 0x0

    #@3b
    cmp-long v1, v2, v4

    #@3d
    if-lez v1, :cond_1

    #@3f
    .line 410
    const-string/jumbo v1, " (whitelist: "

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 411
    iget-wide v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    #@47
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@4a
    .line 412
    const-string/jumbo v1, ")"

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 414
    :cond_1
    const/16 v1, 0x7d

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    #@5b
    return-object v1
.end method
