.class Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteJobsMapToDiskRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method private constructor <init>(Lcom/android/server/job/JobStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobStore;

    #@0
    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobStore;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;-><init>(Lcom/android/server/job/JobStore;)V

    #@3
    return-void
.end method

.method private addAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 324
    const-string/jumbo v0, "jobid"

    #@4
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 325
    const-string/jumbo v0, "package"

    #@12
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 326
    const-string/jumbo v0, "class"

    #@20
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 327
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 328
    const-string/jumbo v0, "sourcePackageName"

    #@34
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 330
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 331
    const-string/jumbo v0, "sourceTag"

    #@44
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4b
    .line 333
    :cond_1
    const-string/jumbo v0, "sourceUserId"

    #@4e
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    #@51
    move-result v1

    #@52
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@59
    .line 334
    const-string/jumbo v0, "uid"

    #@5c
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@5f
    move-result v1

    #@60
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@67
    .line 335
    const-string/jumbo v0, "priority"

    #@6a
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    #@6d
    move-result v1

    #@6e
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@75
    .line 336
    const-string/jumbo v0, "flags"

    #@78
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    #@7b
    move-result v1

    #@7c
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@83
    .line 323
    return-void
.end method

.method private deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;
    .locals 7
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .param p2, "maxDepth"    # I

    #@0
    .prologue
    .line 348
    if-gtz p2, :cond_0

    #@2
    .line 349
    const/4 v6, 0x0

    #@3
    return-object v6

    #@4
    .line 351
    :cond_0
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->clone()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/os/PersistableBundle;

    #@a
    .line 352
    .local v1, "copy":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    #@d
    move-result-object v4

    #@e
    .line 353
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v3

    #@12
    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_2

    #@18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/lang/String;

    #@1e
    .line 354
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    .line 355
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Landroid/os/PersistableBundle;

    #@24
    if-eqz v6, :cond_1

    #@26
    .line 356
    check-cast v5, Landroid/os/PersistableBundle;

    #@28
    .end local v5    # "o":Ljava/lang/Object;
    add-int/lit8 v6, p2, -0x1

    #@2a
    invoke-direct {p0, v5, v6}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    #@2d
    move-result-object v0

    #@2e
    .line 357
    .local v0, "bCopy":Landroid/os/PersistableBundle;
    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@31
    goto :goto_0

    #@32
    .line 360
    .end local v0    # "bCopy":Landroid/os/PersistableBundle;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/PersistableBundle;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 341
    const-string/jumbo v1, "extras"

    #@4
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 342
    const/16 v1, 0xa

    #@9
    invoke-direct {p0, p1, v1}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    #@c
    move-result-object v0

    #@d
    .line 343
    .local v0, "extrasCopy":Landroid/os/PersistableBundle;
    invoke-virtual {v0, p2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@10
    .line 344
    const-string/jumbo v1, "extras"

    #@13
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 340
    return-void
.end method

.method private writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 368
    const-string/jumbo v0, "constraints"

    #@5
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8
    .line 369
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 370
    const-string/jumbo v0, "connectivity"

    #@11
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18
    .line 372
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 373
    const-string/jumbo v0, "unmetered"

    #@21
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@28
    .line 375
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasNotRoamingConstraint()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 376
    const-string/jumbo v0, "not-roaming"

    #@31
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@38
    .line 378
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_3

    #@3e
    .line 379
    const-string/jumbo v0, "idle"

    #@41
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@48
    .line 381
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_4

    #@4e
    .line 382
    const-string/jumbo v0, "charging"

    #@51
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@58
    .line 384
    :cond_4
    const-string/jumbo v0, "constraints"

    #@5b
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5e
    .line 367
    return-void
.end method

.method private writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 13
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 389
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@4
    move-result-object v4

    #@5
    .line 390
    .local v4, "job":Landroid/app/job/JobInfo;
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_4

    #@f
    .line 391
    const-string/jumbo v5, "periodic"

    #@12
    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 392
    const-string/jumbo v5, "period"

    #@18
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    #@1b
    move-result-wide v6

    #@1c
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 393
    const-string/jumbo v5, "flex"

    #@26
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    #@29
    move-result-wide v6

    #@2a
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 398
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_0

    #@37
    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3a
    move-result-wide v6

    #@3b
    .line 401
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@3e
    move-result-wide v8

    #@3f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@42
    move-result-wide v10

    #@43
    sub-long/2addr v8, v10

    #@44
    .line 400
    add-long v0, v6, v8

    #@46
    .line 402
    .local v0, "deadlineWallclock":J
    const-string/jumbo v5, "deadline"

    #@49
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@50
    .line 404
    .end local v0    # "deadlineWallclock":J
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_1

    #@56
    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@59
    move-result-wide v6

    #@5a
    .line 406
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    #@5d
    move-result-wide v8

    #@5e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@61
    move-result-wide v10

    #@62
    sub-long/2addr v8, v10

    #@63
    .line 405
    add-long v2, v6, v8

    #@65
    .line 407
    .local v2, "delayWallclock":J
    const-string/jumbo v5, "delay"

    #@68
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6f
    .line 413
    .end local v2    # "delayWallclock":J
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    #@76
    move-result-wide v6

    #@77
    const-wide/16 v8, 0x7530

    #@79
    cmp-long v5, v6, v8

    #@7b
    if-nez v5, :cond_2

    #@7d
    .line 414
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    #@84
    move-result v5

    #@85
    const/4 v6, 0x1

    #@86
    if-eq v5, v6, :cond_3

    #@88
    .line 415
    :cond_2
    const-string/jumbo v5, "backoff-policy"

    #@8b
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    #@8e
    move-result v6

    #@8f
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@96
    .line 416
    const-string/jumbo v5, "initial-backoff"

    #@99
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    #@9c
    move-result-wide v6

    #@9d
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@a0
    move-result-object v6

    #@a1
    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a4
    .line 418
    :cond_3
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@a7
    move-result v5

    #@a8
    if-eqz v5, :cond_5

    #@aa
    .line 419
    const-string/jumbo v5, "periodic"

    #@ad
    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b0
    .line 388
    :goto_1
    return-void

    #@b1
    .line 395
    :cond_4
    const-string/jumbo v5, "one-off"

    #@b4
    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b7
    goto/16 :goto_0

    #@b9
    .line 421
    :cond_5
    const-string/jumbo v5, "one-off"

    #@bc
    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@bf
    goto :goto_1
.end method

.method private writeJobsMapImpl(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 280
    .local p1, "jobList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 281
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    #@7
    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@a
    .line 282
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@c
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@f
    move-result-object v7

    #@10
    invoke-interface {v6, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@13
    .line 283
    const/4 v7, 0x1

    #@14
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@17
    move-result-object v7

    #@18
    const/4 v8, 0x0

    #@19
    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@1c
    .line 284
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@1f
    const/4 v8, 0x1

    #@20
    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@23
    .line 286
    const-string/jumbo v7, "job-info"

    #@26
    const/4 v8, 0x0

    #@27
    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a
    .line 287
    const-string/jumbo v7, "version"

    #@2d
    const/4 v8, 0x0

    #@2e
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    const/4 v9, 0x0

    #@33
    invoke-interface {v6, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 288
    const/4 v4, 0x0

    #@37
    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3a
    move-result v7

    #@3b
    if-ge v4, v7, :cond_0

    #@3d
    .line 289
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v5

    #@41
    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    #@43
    .line 293
    .local v5, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v7, "job"

    #@46
    const/4 v8, 0x0

    #@47
    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 294
    invoke-direct {p0, v6, v5}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->addAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    #@4d
    .line 295
    invoke-direct {p0, v6, v5}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    #@50
    .line 296
    invoke-direct {p0, v6, v5}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    #@53
    .line 297
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    #@56
    move-result-object v7

    #@57
    invoke-direct {p0, v7, v6}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    #@5a
    .line 298
    const-string/jumbo v7, "job"

    #@5d
    const/4 v8, 0x0

    #@5e
    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@61
    .line 288
    add-int/lit8 v4, v4, 0x1

    #@63
    goto :goto_0

    #@64
    .line 300
    .end local v5    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    const-string/jumbo v7, "job-info"

    #@67
    const/4 v8, 0x0

    #@68
    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6b
    .line 301
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@6e
    .line 304
    iget-object v7, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@70
    invoke-static {v7}, Lcom/android/server/job/JobStore;->-get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@77
    move-result-object v3

    #@78
    .line 305
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V

    #@7f
    .line 306
    iget-object v7, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@81
    invoke-static {v7}, Lcom/android/server/job/JobStore;->-get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@88
    .line 307
    iget-object v7, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@8a
    const/4 v8, 0x0

    #@8b
    invoke-static {v7, v8}, Lcom/android/server/job/JobStore;->-set0(Lcom/android/server/job/JobStore;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    #@8e
    .line 278
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    #@8f
    .line 308
    :catch_0
    move-exception v1

    #@90
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    #@91
    .line 312
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    #@92
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 259
    .local v0, "startElapsed":J
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 260
    .local v2, "storeCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@b
    iget-object v4, v3, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v4

    #@e
    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@10
    iget-object v3, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@12
    new-instance v5, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable$1;

    #@14
    invoke-direct {v5, p0, v2}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable$1;-><init>(Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;Ljava/util/List;)V

    #@17
    invoke-virtual {v3, v5}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v4

    #@1b
    .line 271
    invoke-direct {p0, v2}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeJobsMapImpl(Ljava/util/List;)V

    #@1e
    .line 257
    return-void

    #@1f
    .line 260
    :catchall_0
    move-exception v3

    #@20
    monitor-exit v4

    #@21
    throw v3
.end method
