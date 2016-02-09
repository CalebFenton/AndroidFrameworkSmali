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
    .line 271
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

.method private addIdentifierAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
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
    .line 336
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
    .line 337
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
    .line 338
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
    .line 339
    const-string/jumbo v0, "uid"

    #@2e
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@31
    move-result v1

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39
    .line 335
    return-void
.end method

.method private writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
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
    const/4 v1, 0x0

    #@1
    .line 344
    const-string/jumbo v0, "extras"

    #@4
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 345
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@a
    .line 346
    const-string/jumbo v0, "extras"

    #@d
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10
    .line 343
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
    .line 353
    const-string/jumbo v0, "constraints"

    #@5
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8
    .line 354
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 355
    const-string/jumbo v0, "unmetered"

    #@11
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18
    .line 357
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 358
    const-string/jumbo v0, "connectivity"

    #@21
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@28
    .line 360
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 361
    const-string/jumbo v0, "idle"

    #@31
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@38
    .line 363
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_3

    #@3e
    .line 364
    const-string/jumbo v0, "charging"

    #@41
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@48
    .line 366
    :cond_3
    const-string/jumbo v0, "constraints"

    #@4b
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4e
    .line 352
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
    .line 371
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@4
    move-result-object v4

    #@5
    .line 372
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
    .line 373
    const-string/jumbo v5, "periodic"

    #@12
    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 374
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
    .line 379
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_0

    #@29
    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2c
    move-result-wide v6

    #@2d
    .line 382
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@30
    move-result-wide v8

    #@31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@34
    move-result-wide v10

    #@35
    sub-long/2addr v8, v10

    #@36
    .line 381
    add-long v0, v6, v8

    #@38
    .line 383
    .local v0, "deadlineWallclock":J
    const-string/jumbo v5, "deadline"

    #@3b
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 385
    .end local v0    # "deadlineWallclock":J
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_1

    #@48
    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4b
    move-result-wide v6

    #@4c
    .line 387
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    #@4f
    move-result-wide v8

    #@50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@53
    move-result-wide v10

    #@54
    sub-long/2addr v8, v10

    #@55
    .line 386
    add-long v2, v6, v8

    #@57
    .line 388
    .local v2, "delayWallclock":J
    const-string/jumbo v5, "delay"

    #@5a
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@61
    .line 394
    .end local v2    # "delayWallclock":J
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    #@68
    move-result-wide v6

    #@69
    const-wide/16 v8, 0x7530

    #@6b
    cmp-long v5, v6, v8

    #@6d
    if-nez v5, :cond_2

    #@6f
    .line 395
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    #@76
    move-result v5

    #@77
    const/4 v6, 0x1

    #@78
    if-eq v5, v6, :cond_3

    #@7a
    .line 396
    :cond_2
    const-string/jumbo v5, "backoff-policy"

    #@7d
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    #@80
    move-result v6

    #@81
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@88
    .line 397
    const-string/jumbo v5, "initial-backoff"

    #@8b
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    #@8e
    move-result-wide v6

    #@8f
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@96
    .line 399
    :cond_3
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@99
    move-result v5

    #@9a
    if-eqz v5, :cond_5

    #@9c
    .line 400
    const-string/jumbo v5, "periodic"

    #@9f
    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a2
    .line 370
    :goto_1
    return-void

    #@a3
    .line 376
    :cond_4
    const-string/jumbo v5, "one-off"

    #@a6
    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a9
    goto/16 :goto_0

    #@ab
    .line 402
    :cond_5
    const-string/jumbo v5, "one-off"

    #@ae
    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b1
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
    .line 294
    .local p1, "jobList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 295
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    #@7
    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@a
    .line 296
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@c
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@f
    move-result-object v7

    #@10
    invoke-interface {v6, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@13
    .line 297
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
    .line 298
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@1f
    const/4 v8, 0x1

    #@20
    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@23
    .line 300
    const-string/jumbo v7, "job-info"

    #@26
    const/4 v8, 0x0

    #@27
    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a
    .line 301
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
    .line 302
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
    .line 303
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v5

    #@41
    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    #@43
    .line 307
    .local v5, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v7, "job"

    #@46
    const/4 v8, 0x0

    #@47
    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 308
    invoke-direct {p0, v6, v5}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->addIdentifierAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    #@4d
    .line 309
    invoke-direct {p0, v6, v5}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    #@50
    .line 310
    invoke-direct {p0, v6, v5}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    #@53
    .line 311
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    #@56
    move-result-object v7

    #@57
    invoke-direct {p0, v7, v6}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    #@5a
    .line 312
    const-string/jumbo v7, "job"

    #@5d
    const/4 v8, 0x0

    #@5e
    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@61
    .line 302
    add-int/lit8 v4, v4, 0x1

    #@63
    goto :goto_0

    #@64
    .line 314
    .end local v5    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    const-string/jumbo v7, "job-info"

    #@67
    const/4 v8, 0x0

    #@68
    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6b
    .line 315
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@6e
    .line 318
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
    .line 319
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V

    #@7f
    .line 320
    iget-object v7, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@81
    invoke-static {v7}, Lcom/android/server/job/JobStore;->-get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@88
    .line 321
    iget-object v7, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@8a
    const/4 v8, 0x0

    #@8b
    invoke-static {v7, v8}, Lcom/android/server/job/JobStore;->-set0(Lcom/android/server/job/JobStore;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    #@8e
    .line 292
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    #@8f
    .line 322
    :catch_0
    move-exception v1

    #@90
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    #@91
    .line 326
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    #@92
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 13

    #@0
    .prologue
    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v10

    #@4
    .line 275
    .local v10, "startElapsed":J
    new-instance v9, Ljava/util/ArrayList;

    #@6
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 276
    .local v9, "mStoreCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v12, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@b
    monitor-enter v12

    #@c
    .line 278
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@f
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@11
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@14
    move-result v2

    #@15
    if-ge v0, v2, :cond_0

    #@17
    .line 279
    iget-object v2, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@19
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@1b
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v8

    #@1f
    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    #@21
    .line 280
    .local v8, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    #@23
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@2a
    move-result v3

    #@2b
    .line 281
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    #@2e
    move-result-wide v4

    #@2f
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@32
    move-result-wide v6

    #@33
    .line 280
    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IJJ)V

    #@36
    .line 282
    .local v1, "copy":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 278
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .end local v1    # "copy":Lcom/android/server/job/controllers/JobStatus;
    .end local v8    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    monitor-exit v12

    #@3d
    .line 285
    invoke-direct {p0, v9}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeJobsMapImpl(Ljava/util/List;)V

    #@40
    .line 273
    return-void

    #@41
    .line 276
    :catchall_0
    move-exception v2

    #@42
    monitor-exit v12

    #@43
    throw v2
.end method
