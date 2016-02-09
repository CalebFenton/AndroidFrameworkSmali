.class Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
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
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 418
    .local p2, "jobSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 419
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Landroid/util/ArraySet;

    #@7
    .line 418
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 617
    const-string/jumbo v4, "jobid"

    #@4
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v2

    #@10
    .line 618
    .local v2, "jobId":I
    const-string/jumbo v4, "package"

    #@13
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 619
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "class"

    #@1a
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 620
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    #@20
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 622
    .local v1, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    #@25
    invoke-direct {v4, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    #@28
    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 626
    const-string/jumbo v1, "unmetered"

    #@5
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 627
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    .line 628
    const/4 v1, 0x2

    #@c
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    #@f
    .line 630
    :cond_0
    const-string/jumbo v1, "connectivity"

    #@12
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 631
    if-eqz v0, :cond_1

    #@18
    .line 632
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    #@1b
    .line 634
    :cond_1
    const-string/jumbo v1, "idle"

    #@1e
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 635
    if-eqz v0, :cond_2

    #@24
    .line 636
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    #@27
    .line 638
    :cond_2
    const-string/jumbo v1, "charging"

    #@2a
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 639
    if-eqz v0, :cond_3

    #@30
    .line 640
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    #@33
    .line 625
    :cond_3
    return-void
.end method

.method private buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v18

    #@4
    .line 668
    .local v18, "nowWallclock":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v16

    #@8
    .line 670
    .local v16, "nowElapsed":J
    const-wide/16 v4, 0x0

    #@a
    .line 671
    .local v4, "earliestRunTimeElapsed":J
    const-wide v8, 0x7fffffffffffffffL

    #@f
    .line 672
    .local v8, "latestRunTimeElapsed":J
    const-string/jumbo v21, "deadline"

    #@12
    const/16 v22, 0x0

    #@14
    move-object/from16 v0, p1

    #@16
    move-object/from16 v1, v22

    #@18
    move-object/from16 v2, v21

    #@1a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v20

    #@1e
    .line 673
    .local v20, "val":Ljava/lang/String;
    if-eqz v20, :cond_0

    #@20
    .line 674
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@23
    move-result-object v21

    #@24
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    #@27
    move-result-wide v10

    #@28
    .line 676
    .local v10, "latestRuntimeWallclock":J
    sub-long v22, v10, v18

    #@2a
    const-wide/16 v24, 0x0

    #@2c
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    #@2f
    move-result-wide v12

    #@30
    .line 677
    .local v12, "maxDelayElapsed":J
    add-long v8, v16, v12

    #@32
    .line 679
    .end local v10    # "latestRuntimeWallclock":J
    .end local v12    # "maxDelayElapsed":J
    :cond_0
    const-string/jumbo v21, "delay"

    #@35
    const/16 v22, 0x0

    #@37
    move-object/from16 v0, p1

    #@39
    move-object/from16 v1, v22

    #@3b
    move-object/from16 v2, v21

    #@3d
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v20

    #@41
    .line 680
    if-eqz v20, :cond_1

    #@43
    .line 681
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@46
    move-result-object v21

    #@47
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    #@4a
    move-result-wide v6

    #@4b
    .line 683
    .local v6, "earliestRuntimeWallclock":J
    sub-long v22, v6, v18

    #@4d
    const-wide/16 v24, 0x0

    #@4f
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    #@52
    move-result-wide v14

    #@53
    .line 684
    .local v14, "minDelayElapsed":J
    add-long v4, v16, v14

    #@55
    .line 687
    .end local v6    # "earliestRuntimeWallclock":J
    .end local v14    # "minDelayElapsed":J
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@58
    move-result-object v21

    #@59
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5c
    move-result-object v22

    #@5d
    invoke-static/range {v21 .. v22}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@60
    move-result-object v21

    #@61
    return-object v21
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 649
    const-string/jumbo v4, "initial-backoff"

    #@4
    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 650
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    .line 651
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@11
    move-result-wide v2

    #@12
    .line 652
    .local v2, "initialBackoff":J
    const-string/jumbo v4, "backoff-policy"

    #@15
    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 653
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v0

    #@21
    .line 654
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    #@24
    .line 648
    .end local v0    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_0
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;)Ljava/util/List;
    .locals 12
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 453
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@6
    move-result-object v3

    #@7
    .line 454
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@c
    move-result-object v7

    #@d
    invoke-interface {v3, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@10
    .line 456
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@13
    move-result v1

    #@14
    .line 457
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v11, :cond_0

    #@16
    .line 458
    if-eq v1, v10, :cond_0

    #@18
    .line 459
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1b
    move-result v1

    #@1c
    .line 460
    const-string/jumbo v7, "JobStore"

    #@1f
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0

    #@27
    .line 462
    :cond_0
    if-ne v1, v10, :cond_1

    #@29
    .line 466
    return-object v9

    #@2a
    .line 469
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    .line 470
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "job-info"

    #@31
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v7

    #@35
    if-eqz v7, :cond_6

    #@37
    .line 471
    new-instance v2, Ljava/util/ArrayList;

    #@39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@3c
    .line 474
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    const-string/jumbo v7, "version"

    #@3f
    const/4 v8, 0x0

    #@40
    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@4b
    move-result v6

    #@4c
    .line 475
    .local v6, "version":I
    if-eqz v6, :cond_2

    #@4e
    .line 476
    const-string/jumbo v7, "JobStore"

    #@51
    const-string/jumbo v8, "Invalid version number, aborting jobs file read."

    #@54
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 477
    return-object v9

    #@58
    .line 479
    .end local v6    # "version":I
    :catch_0
    move-exception v0

    #@59
    .line 480
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    #@5c
    const-string/jumbo v8, "Invalid version number, aborting jobs file read."

    #@5f
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 481
    return-object v9

    #@63
    .line 483
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "version":I
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@66
    move-result v1

    #@67
    .line 486
    :cond_3
    if-ne v1, v11, :cond_4

    #@69
    .line 487
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    .line 489
    const-string/jumbo v7, "job"

    #@70
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v7

    #@74
    if-eqz v7, :cond_4

    #@76
    .line 490
    invoke-direct {p0, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    #@79
    move-result-object v4

    #@7a
    .line 491
    .local v4, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_5

    #@7c
    .line 495
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7f
    .line 501
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@82
    move-result v1

    #@83
    .line 502
    if-ne v1, v10, :cond_3

    #@85
    .line 503
    return-object v2

    #@86
    .line 497
    .restart local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_5
    const-string/jumbo v7, "JobStore"

    #@89
    const-string/jumbo v8, "Error reading job from file."

    #@8c
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    goto :goto_1

    #@90
    .line 505
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "version":I
    :cond_6
    return-object v9
.end method

.method private restoreJobFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    #@3
    move-result-object v10

    #@4
    .line 521
    .local v10, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v1, 0x1

    #@5
    invoke-virtual {v10, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    #@8
    .line 522
    const-string/jumbo v1, "uid"

    #@b
    const/4 v2, 0x0

    #@c
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v3

    #@18
    .line 531
    .local v3, "uid":I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1b
    move-result v8

    #@1c
    .line 532
    .local v8, "eventType":I
    const/4 v1, 0x4

    #@1d
    if-eq v8, v1, :cond_0

    #@1f
    .line 534
    const/4 v1, 0x2

    #@20
    if-ne v8, v1, :cond_1

    #@22
    .line 535
    const-string/jumbo v1, "constraints"

    #@25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    .line 534
    :goto_0
    if-nez v1, :cond_2

    #@2f
    .line 537
    const/4 v1, 0x0

    #@30
    return-object v1

    #@31
    .line 523
    .end local v3    # "uid":I
    .end local v8    # "eventType":I
    .end local v10    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :catch_0
    move-exception v0

    #@32
    .line 524
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "JobStore"

    #@35
    const-string/jumbo v2, "Error parsing job\'s required fields, skipping"

    #@38
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 525
    const/4 v1, 0x0

    #@3c
    return-object v1

    #@3d
    .line 534
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "uid":I
    .restart local v8    # "eventType":I
    .restart local v10    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :cond_1
    const/4 v1, 0x0

    #@3e
    goto :goto_0

    #@3f
    .line 540
    :cond_2
    :try_start_1
    invoke-direct {p0, v10, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@42
    .line 545
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@45
    .line 549
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@48
    move-result v8

    #@49
    .line 550
    const/4 v1, 0x4

    #@4a
    if-eq v8, v1, :cond_3

    #@4c
    .line 551
    const/4 v1, 0x2

    #@4d
    if-eq v8, v1, :cond_4

    #@4f
    .line 552
    const/4 v1, 0x0

    #@50
    return-object v1

    #@51
    .line 541
    :catch_1
    move-exception v0

    #@52
    .line 542
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "JobStore"

    #@55
    const-string/jumbo v2, "Error reading constraints, skipping."

    #@58
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 543
    const/4 v1, 0x0

    #@5c
    return-object v1

    #@5d
    .line 557
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@60
    move-result-object v11

    #@61
    .line 565
    .local v11, "runtimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string/jumbo v1, "periodic"

    #@64
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_7

    #@6e
    .line 567
    :try_start_3
    const-string/jumbo v1, "period"

    #@71
    const/4 v2, 0x0

    #@72
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v12

    #@76
    .line 568
    .local v12, "val":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@7d
    move-result-wide v4

    #@7e
    invoke-virtual {v10, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    #@81
    .line 593
    .end local v12    # "val":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-direct {p0, v10, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    #@84
    .line 595
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@87
    .line 599
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8a
    move-result v8

    #@8b
    .line 600
    const/4 v1, 0x4

    #@8c
    if-eq v8, v1, :cond_6

    #@8e
    .line 601
    const/4 v1, 0x2

    #@8f
    if-ne v8, v1, :cond_a

    #@91
    const-string/jumbo v1, "extras"

    #@94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v1

    #@9c
    :goto_2
    if-nez v1, :cond_b

    #@9e
    .line 605
    const/4 v1, 0x0

    #@9f
    return-object v1

    #@a0
    .line 558
    .end local v11    # "runtimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_2
    move-exception v0

    #@a1
    .line 562
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@a2
    return-object v1

    #@a3
    .line 569
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v11    # "runtimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_3
    move-exception v0

    #@a4
    .line 570
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "JobStore"

    #@a7
    const-string/jumbo v2, "Error reading periodic execution criteria, skipping."

    #@aa
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    .line 571
    const/4 v1, 0x0

    #@ae
    return-object v1

    #@af
    .line 573
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string/jumbo v1, "one-off"

    #@b2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v1

    #@ba
    if-eqz v1, :cond_9

    #@bc
    .line 575
    :try_start_4
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@be
    check-cast v1, Ljava/lang/Long;

    #@c0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@c3
    move-result-wide v4

    #@c4
    const-wide/16 v6, 0x0

    #@c6
    cmp-long v1, v4, v6

    #@c8
    if-eqz v1, :cond_8

    #@ca
    .line 576
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@cc
    check-cast v1, Ljava/lang/Long;

    #@ce
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@d1
    move-result-wide v4

    #@d2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d5
    move-result-wide v6

    #@d6
    sub-long/2addr v4, v6

    #@d7
    invoke-virtual {v10, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    #@da
    .line 578
    :cond_8
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@dc
    check-cast v1, Ljava/lang/Long;

    #@de
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@e1
    move-result-wide v4

    #@e2
    const-wide v6, 0x7fffffffffffffffL

    #@e7
    cmp-long v1, v4, v6

    #@e9
    if-eqz v1, :cond_5

    #@eb
    .line 580
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@ed
    check-cast v1, Ljava/lang/Long;

    #@ef
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@f2
    move-result-wide v4

    #@f3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f6
    move-result-wide v6

    #@f7
    sub-long/2addr v4, v6

    #@f8
    .line 579
    invoke-virtual {v10, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    #@fb
    goto :goto_1

    #@fc
    .line 582
    :catch_4
    move-exception v0

    #@fd
    .line 583
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "JobStore"

    #@100
    const-string/jumbo v2, "Error reading job execution criteria, skipping."

    #@103
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    .line 584
    const/4 v1, 0x0

    #@107
    return-object v1

    #@108
    .line 591
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const/4 v1, 0x0

    #@109
    return-object v1

    #@10a
    .line 601
    :cond_a
    const/4 v1, 0x0

    #@10b
    goto :goto_2

    #@10c
    .line 608
    :cond_b
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@10f
    move-result-object v9

    #@110
    .line 609
    .local v9, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v10, v9}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    #@113
    .line 610
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@116
    .line 612
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    #@118
    invoke-virtual {v10}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    #@11b
    move-result-object v2

    #@11c
    iget-object v4, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@11e
    check-cast v4, Ljava/lang/Long;

    #@120
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@123
    move-result-wide v4

    #@124
    iget-object v6, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@126
    check-cast v6, Ljava/lang/Long;

    #@128
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@12b
    move-result-wide v6

    #@12c
    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IJJ)V

    #@12f
    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 426
    :try_start_0
    iget-object v6, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@2
    invoke-static {v6}, Lcom/android/server/job/JobStore;->-get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@9
    move-result-object v3

    #@a
    .line 427
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v7, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@c
    monitor-enter v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    #@d
    .line 428
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;)Ljava/util/List;

    #@10
    move-result-object v5

    #@11
    .line 429
    .local v5, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_0

    #@13
    .line 430
    const/4 v4, 0x0

    #@14
    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@17
    move-result v6

    #@18
    if-ge v4, v6, :cond_0

    #@1a
    .line 431
    iget-object v8, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Landroid/util/ArraySet;

    #@1c
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v6

    #@20
    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    #@22
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 430
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_0

    #@28
    .end local v4    # "i":I
    :cond_0
    :try_start_2
    monitor-exit v7

    #@29
    .line 435
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    #@2c
    .line 423
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_1
    return-void

    #@2d
    .line 427
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    #@2e
    monitor-exit v7

    #@2f
    throw v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@30
    .line 436
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    #@31
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    #@32
    .line 440
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    #@33
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1

    #@34
    .line 444
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    #@35
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method
