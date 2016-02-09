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
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


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


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 1
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 194
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    #@4
    .line 48
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    #@6
    .line 49
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@8
    .line 195
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@a
    .line 196
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@c
    .line 197
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@e
    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@10
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@13
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    #@15
    .line 194
    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .locals 4

    #@0
    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v2

    #@3
    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    #@7
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@9
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@f
    .line 348
    .local v0, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    #@11
    if-ne v0, v1, :cond_0

    #@13
    .line 349
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@15
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    #@17
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@19
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :cond_0
    monitor-exit v2

    #@1d
    .line 344
    return-void

    #@1e
    .line 345
    .end local v0    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 355
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
    .line 356
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
    .line 357
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
    .line 358
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
    .line 359
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
    .line 360
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
    .line 361
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
    .line 363
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
    .line 364
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
    .line 365
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
    .line 367
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@91
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@93
    if-eqz v0, :cond_4

    #@95
    .line 368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    const-string/jumbo v0, "requestIntent="

    #@9b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9e
    .line 369
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
    .line 371
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    #@ab
    if-nez v0, :cond_5

    #@ad
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@af
    if-eqz v0, :cond_6

    #@b1
    .line 372
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
    .line 373
    const-string/jumbo v0, " canceled="

    #@c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c5
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@c7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@ca
    .line 354
    :cond_6
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
    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 336
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@6
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@8
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@a
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@c
    .line 337
    const/16 v2, 0x17

    #@e
    .line 336
    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 340
    :cond_0
    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    #@18
    .line 333
    return-void

    #@19
    .line 339
    :catchall_0
    move-exception v0

    #@1a
    .line 340
    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    #@1d
    .line 339
    throw v0
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 13
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
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
    .line 203
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I
    .locals 35
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@4
    move-object/from16 v34, v0

    #@6
    monitor-enter v34

    #@7
    .line 212
    :try_start_0
    move-object/from16 v0, p12

    #@9
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@b
    move-object/from16 v24, v0

    #@d
    .line 213
    .local v24, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v24, :cond_0

    #@f
    move-object/from16 v0, v24

    #@11
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 214
    move-object/from16 v0, v24

    #@17
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@19
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1b
    .line 215
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 214
    if-eq v2, v3, :cond_0

    #@1f
    .line 217
    const/4 v2, -0x6

    #@20
    monitor-exit v34

    #@21
    return v2

    #@22
    .line 219
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@24
    iget-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@26
    if-nez v2, :cond_10

    #@28
    .line 220
    const/4 v2, 0x1

    #@29
    move-object/from16 v0, p0

    #@2b
    iput-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    #@2d
    .line 221
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@31
    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    #@33
    const/high16 v3, 0x40000000    # 2.0f

    #@35
    and-int/2addr v2, v3

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 222
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@3c
    const/4 v3, 0x1

    #@3d
    move-object/from16 v0, p0

    #@3f
    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    #@42
    .line 223
    const/4 v2, 0x1

    #@43
    move-object/from16 v0, p0

    #@45
    iput-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    #@47
    .line 226
    :cond_1
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@4b
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@4d
    if-eqz v2, :cond_6

    #@4f
    .line 227
    new-instance v13, Landroid/content/Intent;

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@55
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@57
    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@5a
    .line 229
    .local v13, "finalIntent":Landroid/content/Intent;
    :goto_0
    move-object/from16 v0, p0

    #@5c
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@5e
    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    #@60
    const/high16 v3, 0x4000000

    #@62
    and-int/2addr v2, v3

    #@63
    if-eqz v2, :cond_7

    #@65
    const/16 v28, 0x1

    #@67
    .line 230
    .local v28, "immutable":Z
    :goto_1
    if-nez v28, :cond_9

    #@69
    .line 231
    if-eqz p2, :cond_8

    #@6b
    .line 232
    move-object/from16 v0, p0

    #@6d
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@6f
    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    #@71
    move-object/from16 v0, p2

    #@73
    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    #@76
    move-result v25

    #@77
    .line 233
    .local v25, "changes":I
    and-int/lit8 v2, v25, 0x2

    #@79
    if-nez v2, :cond_2

    #@7b
    .line 234
    move-object/from16 v0, p0

    #@7d
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@7f
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@81
    move-object/from16 p3, v0

    #@83
    .line 239
    .end local v25    # "changes":I
    :cond_2
    :goto_2
    move/from16 v0, p9

    #@85
    and-int/lit16 v0, v0, -0xc4

    #@87
    move/from16 p9, v0

    #@89
    .line 240
    and-int p10, p10, p9

    #@8b
    .line 241
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    #@8e
    move-result v2

    #@8f
    move/from16 v0, p9

    #@91
    not-int v3, v0

    #@92
    and-int/2addr v2, v3

    #@93
    or-int v2, v2, p10

    #@95
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@98
    .line 246
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9b
    move-result-wide v30

    #@9c
    .line 248
    .local v30, "origId":J
    if-eqz p4, :cond_a

    #@9e
    const/16 v32, 0x1

    #@a0
    .line 249
    .local v32, "sendFinish":Z
    :goto_4
    move-object/from16 v0, p0

    #@a2
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@a4
    iget v9, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    #@a6
    .line 250
    .local v9, "userId":I
    const/4 v2, -0x2

    #@a7
    if-ne v9, v2, :cond_3

    #@a9
    .line 251
    move-object/from16 v0, p0

    #@ab
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@ad
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    #@b0
    move-result v9

    #@b1
    .line 253
    :cond_3
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@b5
    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b7
    packed-switch v2, :pswitch_data_0

    #@ba
    .line 316
    :cond_4
    :goto_5
    if-eqz v32, :cond_5

    #@bc
    .line 318
    :try_start_2
    new-instance v15, Landroid/content/Intent;

    #@be
    invoke-direct {v15, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@c1
    .line 319
    move-object/from16 v0, p0

    #@c3
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@c5
    iget v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    #@c7
    move/from16 v21, v0

    #@c9
    .line 318
    const/16 v16, 0x0

    #@cb
    .line 319
    const/16 v17, 0x0

    #@cd
    const/16 v18, 0x0

    #@cf
    const/16 v19, 0x0

    #@d1
    const/16 v20, 0x0

    #@d3
    move-object/from16 v14, p4

    #@d5
    .line 318
    invoke-interface/range {v14 .. v21}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d8
    .line 324
    :cond_5
    :goto_6
    :try_start_3
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@db
    .line 326
    const/4 v2, 0x0

    #@dc
    monitor-exit v34

    #@dd
    return v2

    #@de
    .line 227
    .end local v9    # "userId":I
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .end local v28    # "immutable":Z
    .end local v30    # "origId":J
    .end local v32    # "sendFinish":Z
    :cond_6
    :try_start_4
    new-instance v13, Landroid/content/Intent;

    #@e0
    invoke-direct {v13}, Landroid/content/Intent;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e3
    goto/16 :goto_0

    #@e5
    .line 211
    .end local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :catchall_0
    move-exception v2

    #@e6
    monitor-exit v34

    #@e7
    throw v2

    #@e8
    .line 229
    .restart local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_7
    const/16 v28, 0x0

    #@ea
    .restart local v28    # "immutable":Z
    goto/16 :goto_1

    #@ec
    .line 237
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    #@ee
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@f0
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@f2
    move-object/from16 p3, v0

    #@f4
    goto :goto_2

    #@f5
    .line 243
    :cond_9
    move-object/from16 v0, p0

    #@f7
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@f9
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@fb
    move-object/from16 p3, v0

    #@fd
    goto :goto_3

    #@fe
    .line 248
    .restart local v30    # "origId":J
    :cond_a
    const/16 v32, 0x0

    #@100
    .restart local v32    # "sendFinish":Z
    goto :goto_4

    #@101
    .line 255
    .restart local v9    # "userId":I
    :pswitch_0
    if-nez p11, :cond_d

    #@103
    .line 256
    move-object/from16 v0, p0

    #@105
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@107
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    #@109
    move-object/from16 p11, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@10b
    .line 263
    :cond_b
    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    #@10d
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@10f
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@111
    if-eqz v2, :cond_e

    #@113
    move-object/from16 v0, p0

    #@115
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@117
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@119
    array-length v2, v2

    #@11a
    const/4 v3, 0x1

    #@11b
    if-le v2, v3, :cond_e

    #@11d
    .line 264
    move-object/from16 v0, p0

    #@11f
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@121
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@123
    array-length v2, v2

    #@124
    new-array v5, v2, [Landroid/content/Intent;

    #@126
    .line 265
    .local v5, "allIntents":[Landroid/content/Intent;
    move-object/from16 v0, p0

    #@128
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@12a
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@12c
    array-length v2, v2

    #@12d
    new-array v6, v2, [Ljava/lang/String;

    #@12f
    .line 266
    .local v6, "allResolvedTypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@131
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@133
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@135
    .line 267
    move-object/from16 v0, p0

    #@137
    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@139
    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@13b
    array-length v3, v3

    #@13c
    .line 266
    const/4 v4, 0x0

    #@13d
    const/4 v7, 0x0

    #@13e
    invoke-static {v2, v4, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@141
    .line 268
    move-object/from16 v0, p0

    #@143
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@145
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    #@147
    if-eqz v2, :cond_c

    #@149
    .line 269
    move-object/from16 v0, p0

    #@14b
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@14d
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    #@14f
    .line 270
    move-object/from16 v0, p0

    #@151
    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@153
    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    #@155
    array-length v3, v3

    #@156
    .line 269
    const/4 v4, 0x0

    #@157
    const/4 v7, 0x0

    #@158
    invoke-static {v2, v4, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15b
    .line 272
    :cond_c
    array-length v2, v5

    #@15c
    add-int/lit8 v2, v2, -0x1

    #@15e
    aput-object v13, v5, v2

    #@160
    .line 273
    array-length v2, v6

    #@161
    add-int/lit8 v2, v2, -0x1

    #@163
    aput-object p3, v6, v2

    #@165
    .line 274
    move-object/from16 v0, p0

    #@167
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@169
    move-object/from16 v0, p0

    #@16b
    iget v3, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget-object v4, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@171
    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@173
    move-object/from16 v7, p6

    #@175
    move-object/from16 v8, p11

    #@177
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@17a
    goto/16 :goto_5

    #@17c
    .line 281
    .end local v5    # "allIntents":[Landroid/content/Intent;
    .end local v6    # "allResolvedTypes":[Ljava/lang/String;
    :catch_0
    move-exception v27

    #@17d
    .line 282
    .local v27, "e":Ljava/lang/RuntimeException;
    :try_start_7
    const-string/jumbo v2, "ActivityManager"

    #@180
    const-string/jumbo v3, "Unable to send startActivity intent"

    #@183
    move-object/from16 v0, v27

    #@185
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@188
    goto/16 :goto_5

    #@18a
    .line 257
    .end local v27    # "e":Ljava/lang/RuntimeException;
    :cond_d
    move-object/from16 v0, p0

    #@18c
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@18e
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    #@190
    if-eqz v2, :cond_b

    #@192
    .line 258
    new-instance v29, Landroid/os/Bundle;

    #@194
    move-object/from16 v0, p0

    #@196
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@198
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    #@19a
    move-object/from16 v0, v29

    #@19c
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@19f
    .line 259
    .local v29, "opts":Landroid/os/Bundle;
    move-object/from16 v0, v29

    #@1a1
    move-object/from16 v1, p11

    #@1a3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1a6
    .line 260
    move-object/from16 p11, v29

    #@1a8
    goto/16 :goto_7

    #@1aa
    .line 277
    .end local v29    # "opts":Landroid/os/Bundle;
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    #@1ac
    iget-object v10, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget v11, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@1b6
    iget-object v12, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@1b8
    .line 278
    const/16 v18, 0x0

    #@1ba
    .line 279
    const/16 v22, 0x0

    #@1bc
    move-object/from16 v14, p3

    #@1be
    move-object/from16 v15, p6

    #@1c0
    move-object/from16 v16, p7

    #@1c2
    move/from16 v17, p8

    #@1c4
    move-object/from16 v19, p11

    #@1c6
    move/from16 v20, v9

    #@1c8
    move-object/from16 v21, p12

    #@1ca
    .line 277
    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1cd
    goto/16 :goto_5

    #@1cf
    .line 286
    :pswitch_1
    :try_start_9
    move-object/from16 v0, p0

    #@1d1
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@1d3
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@1d5
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1d7
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1d9
    if-eqz v2, :cond_4

    #@1db
    .line 287
    move-object/from16 v0, p0

    #@1dd
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@1df
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@1e1
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1e3
    iget-object v14, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@1e9
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@1eb
    move-object/from16 v16, v0

    #@1ed
    .line 288
    move-object/from16 v0, p0

    #@1ef
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@1f1
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    #@1f3
    move-object/from16 v17, v0

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@1f9
    iget v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    #@1fb
    move/from16 v18, v0

    #@1fd
    .line 287
    const/4 v15, -0x1

    #@1fe
    move/from16 v19, p1

    #@200
    move-object/from16 v20, v13

    #@202
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@205
    goto/16 :goto_5

    #@207
    .line 295
    :pswitch_2
    :try_start_a
    move-object/from16 v0, p0

    #@209
    iget-object v10, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@20f
    iget-object v11, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@211
    move-object/from16 v0, p0

    #@213
    iget v12, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@215
    .line 297
    if-eqz p4, :cond_f

    #@217
    const/16 v21, 0x1

    #@219
    .line 296
    :goto_8
    const/16 v17, 0x0

    #@21b
    const/16 v18, 0x0

    #@21d
    .line 298
    const/16 v22, 0x0

    #@21f
    move-object/from16 v14, p3

    #@221
    move-object/from16 v15, p4

    #@223
    move/from16 v16, p1

    #@225
    move-object/from16 v19, p5

    #@227
    move-object/from16 v20, p11

    #@229
    move/from16 v23, v9

    #@22b
    .line 295
    invoke-virtual/range {v10 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@22e
    move-result v33

    #@22f
    .line 299
    .local v33, "sent":I
    if-nez v33, :cond_4

    #@231
    .line 300
    const/16 v32, 0x0

    #@233
    goto/16 :goto_5

    #@235
    .line 297
    .end local v33    # "sent":I
    :cond_f
    const/16 v21, 0x0

    #@237
    goto :goto_8

    #@238
    .line 302
    :catch_1
    move-exception v27

    #@239
    .line 303
    .restart local v27    # "e":Ljava/lang/RuntimeException;
    :try_start_b
    const-string/jumbo v2, "ActivityManager"

    #@23c
    const-string/jumbo v3, "Unable to send startActivity intent"

    #@23f
    move-object/from16 v0, v27

    #@241
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@244
    goto/16 :goto_5

    #@246
    .line 308
    .end local v27    # "e":Ljava/lang/RuntimeException;
    :pswitch_3
    :try_start_c
    move-object/from16 v0, p0

    #@248
    iget-object v11, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    #@24a
    move-object/from16 v0, p0

    #@24c
    iget v12, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    #@24e
    .line 309
    move-object/from16 v0, p0

    #@250
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@252
    iget-object v15, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@254
    move-object/from16 v14, p3

    #@256
    move/from16 v16, v9

    #@258
    .line 308
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@25b
    goto/16 :goto_5

    #@25d
    .line 310
    :catch_2
    move-exception v27

    #@25e
    .line 311
    .restart local v27    # "e":Ljava/lang/RuntimeException;
    :try_start_d
    const-string/jumbo v2, "ActivityManager"

    #@261
    const-string/jumbo v3, "Unable to send startService intent"

    #@264
    move-object/from16 v0, v27

    #@266
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@269
    goto/16 :goto_5

    #@26b
    .end local v9    # "userId":I
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .end local v27    # "e":Ljava/lang/RuntimeException;
    .end local v28    # "immutable":Z
    .end local v30    # "origId":J
    .end local v32    # "sendFinish":Z
    :cond_10
    monitor-exit v34

    #@26c
    .line 329
    const/4 v2, -0x6

    #@26d
    return v2

    #@26e
    .line 320
    .restart local v9    # "userId":I
    .restart local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v28    # "immutable":Z
    .restart local v30    # "origId":J
    .restart local v32    # "sendFinish":Z
    :catch_3
    move-exception v26

    #@26f
    .local v26, "e":Landroid/os/RemoteException;
    goto/16 :goto_6

    #@271
    .line 253
    nop

    #@272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 378
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 379
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    #@8
    return-object v1

    #@9
    .line 381
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const/16 v1, 0x80

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    .line 382
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PendingIntentRecord{"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 383
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
    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 385
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@26
    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    .line 387
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@30
    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 388
    const/16 v1, 0x7d

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    #@42
    return-object v1
.end method
