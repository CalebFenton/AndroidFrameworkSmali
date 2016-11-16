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
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobStore;
    .param p2, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;

    #@0
    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 438
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    #@7
    .line 437
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
    .line 695
    const-string/jumbo v4, "jobid"

    #@4
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v2

    #@c
    .line 696
    .local v2, "jobId":I
    const-string/jumbo v4, "package"

    #@f
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 697
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "class"

    #@16
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 698
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    #@1c
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 700
    .local v1, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    #@21
    invoke-direct {v4, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    #@24
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
    .line 704
    const-string/jumbo v1, "connectivity"

    #@5
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 705
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    .line 706
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    #@e
    .line 708
    :cond_0
    const-string/jumbo v1, "unmetered"

    #@11
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 709
    if-eqz v0, :cond_1

    #@17
    .line 710
    const/4 v1, 0x2

    #@18
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    #@1b
    .line 712
    :cond_1
    const-string/jumbo v1, "not-roaming"

    #@1e
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 713
    if-eqz v0, :cond_2

    #@24
    .line 714
    const/4 v1, 0x3

    #@25
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    #@28
    .line 716
    :cond_2
    const-string/jumbo v1, "idle"

    #@2b
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 717
    if-eqz v0, :cond_3

    #@31
    .line 718
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    #@34
    .line 720
    :cond_3
    const-string/jumbo v1, "charging"

    #@37
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 721
    if-eqz v0, :cond_4

    #@3d
    .line 722
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    #@40
    .line 703
    :cond_4
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
    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v18

    #@4
    .line 750
    .local v18, "nowWallclock":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v16

    #@8
    .line 752
    .local v16, "nowElapsed":J
    const-wide/16 v4, 0x0

    #@a
    .line 753
    .local v4, "earliestRunTimeElapsed":J
    const-wide v8, 0x7fffffffffffffffL

    #@f
    .line 754
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
    .line 755
    .local v20, "val":Ljava/lang/String;
    if-eqz v20, :cond_0

    #@20
    .line 756
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@23
    move-result-object v21

    #@24
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    #@27
    move-result-wide v10

    #@28
    .line 758
    .local v10, "latestRuntimeWallclock":J
    sub-long v22, v10, v18

    #@2a
    const-wide/16 v24, 0x0

    #@2c
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    #@2f
    move-result-wide v12

    #@30
    .line 759
    .local v12, "maxDelayElapsed":J
    add-long v8, v16, v12

    #@32
    .line 761
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
    .line 762
    if-eqz v20, :cond_1

    #@43
    .line 763
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@46
    move-result-object v21

    #@47
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    #@4a
    move-result-wide v6

    #@4b
    .line 765
    .local v6, "earliestRuntimeWallclock":J
    sub-long v22, v6, v18

    #@4d
    const-wide/16 v24, 0x0

    #@4f
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    #@52
    move-result-wide v14

    #@53
    .line 766
    .local v14, "minDelayElapsed":J
    add-long v4, v16, v14

    #@55
    .line 769
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
    .line 731
    const-string/jumbo v4, "initial-backoff"

    #@4
    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 732
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    .line 733
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@11
    move-result-wide v2

    #@12
    .line 734
    .local v2, "initialBackoff":J
    const-string/jumbo v4, "backoff-policy"

    #@15
    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 735
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1c
    move-result v0

    #@1d
    .line 736
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    #@20
    .line 730
    .end local v0    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_0
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;)Ljava/util/List;
    .locals 13
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
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 472
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@6
    move-result-object v3

    #@7
    .line 473
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@c
    move-result-object v7

    #@d
    invoke-interface {v3, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@10
    .line 475
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@13
    move-result v1

    #@14
    .line 476
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v12, :cond_0

    #@16
    .line 477
    if-eq v1, v11, :cond_0

    #@18
    .line 478
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1b
    move-result v1

    #@1c
    .line 479
    const-string/jumbo v7, "JobStore"

    #@1f
    new-instance v8, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v9, "Start tag: "

    #@27
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v8

    #@2b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2e
    move-result-object v9

    #@2f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    goto :goto_0

    #@3b
    .line 481
    :cond_0
    if-ne v1, v11, :cond_1

    #@3d
    .line 485
    return-object v10

    #@3e
    .line 488
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    .line 489
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "job-info"

    #@45
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v7

    #@49
    if-eqz v7, :cond_6

    #@4b
    .line 490
    new-instance v2, Ljava/util/ArrayList;

    #@4d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@50
    .line 493
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    const-string/jumbo v7, "version"

    #@53
    const/4 v8, 0x0

    #@54
    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5b
    move-result v6

    #@5c
    .line 494
    .local v6, "version":I
    if-eqz v6, :cond_2

    #@5e
    .line 495
    const-string/jumbo v7, "JobStore"

    #@61
    const-string/jumbo v8, "Invalid version number, aborting jobs file read."

    #@64
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 496
    return-object v10

    #@68
    .line 498
    .end local v6    # "version":I
    :catch_0
    move-exception v0

    #@69
    .line 499
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    #@6c
    const-string/jumbo v8, "Invalid version number, aborting jobs file read."

    #@6f
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 500
    return-object v10

    #@73
    .line 502
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "version":I
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@76
    move-result v1

    #@77
    .line 505
    :cond_3
    if-ne v1, v12, :cond_4

    #@79
    .line 506
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    .line 508
    const-string/jumbo v7, "job"

    #@80
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v7

    #@84
    if-eqz v7, :cond_4

    #@86
    .line 509
    invoke-direct {p0, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    #@89
    move-result-object v4

    #@8a
    .line 510
    .local v4, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_5

    #@8c
    .line 514
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8f
    .line 520
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@92
    move-result v1

    #@93
    .line 521
    if-ne v1, v11, :cond_3

    #@95
    .line 522
    return-object v2

    #@96
    .line 516
    .restart local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_5
    const-string/jumbo v7, "JobStore"

    #@99
    const-string/jumbo v8, "Error reading job from file."

    #@9c
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    goto :goto_1

    #@a0
    .line 524
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "version":I
    :cond_6
    return-object v10
.end method

.method private restoreJobFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .locals 36
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 539
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    #@3
    move-result-object v28

    #@4
    .line 540
    .local v28, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v7, 0x1

    #@5
    move-object/from16 v0, v28

    #@7
    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    #@a
    .line 541
    const-string/jumbo v7, "uid"

    #@d
    const/4 v12, 0x0

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@17
    move-result v8

    #@18
    .line 543
    .local v8, "uid":I
    const-string/jumbo v7, "priority"

    #@1b
    const/4 v12, 0x0

    #@1c
    move-object/from16 v0, p1

    #@1e
    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v29

    #@22
    .line 544
    .local v29, "val":Ljava/lang/String;
    if-eqz v29, :cond_0

    #@24
    .line 545
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@27
    move-result v7

    #@28
    move-object/from16 v0, v28

    #@2a
    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    #@2d
    .line 547
    :cond_0
    const-string/jumbo v7, "flags"

    #@30
    const/4 v12, 0x0

    #@31
    move-object/from16 v0, p1

    #@33
    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v29

    #@37
    .line 548
    if-eqz v29, :cond_1

    #@39
    .line 549
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3c
    move-result v7

    #@3d
    move-object/from16 v0, v28

    #@3f
    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    #@42
    .line 551
    :cond_1
    const-string/jumbo v7, "sourceUserId"

    #@45
    const/4 v12, 0x0

    #@46
    move-object/from16 v0, p1

    #@48
    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result-object v29

    #@4c
    .line 552
    if-nez v29, :cond_3

    #@4e
    const/4 v10, -0x1

    #@4f
    .line 558
    .local v10, "sourceUserId":I
    :goto_0
    const-string/jumbo v7, "sourcePackageName"

    #@52
    const/4 v12, 0x0

    #@53
    move-object/from16 v0, p1

    #@55
    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v9

    #@59
    .line 560
    .local v9, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v7, "sourceTag"

    #@5c
    const/4 v12, 0x0

    #@5d
    move-object/from16 v0, p1

    #@5f
    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@62
    move-result-object v11

    #@63
    .line 565
    .local v11, "sourceTag":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@66
    move-result v24

    #@67
    .line 566
    .local v24, "eventType":I
    const/4 v7, 0x4

    #@68
    move/from16 v0, v24

    #@6a
    if-eq v0, v7, :cond_2

    #@6c
    .line 568
    const/4 v7, 0x2

    #@6d
    move/from16 v0, v24

    #@6f
    if-ne v0, v7, :cond_4

    #@71
    .line 569
    const-string/jumbo v7, "constraints"

    #@74
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@77
    move-result-object v12

    #@78
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v7

    #@7c
    .line 568
    :goto_1
    if-nez v7, :cond_5

    #@7e
    .line 571
    const/4 v7, 0x0

    #@7f
    return-object v7

    #@80
    .line 552
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .end local v10    # "sourceUserId":I
    .end local v11    # "sourceTag":Ljava/lang/String;
    .end local v24    # "eventType":I
    :cond_3
    :try_start_1
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@83
    move-result v10

    #@84
    .restart local v10    # "sourceUserId":I
    goto :goto_0

    #@85
    .line 553
    .end local v8    # "uid":I
    .end local v10    # "sourceUserId":I
    .end local v28    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v29    # "val":Ljava/lang/String;
    :catch_0
    move-exception v20

    #@86
    .line 554
    .local v20, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    #@89
    const-string/jumbo v12, "Error parsing job\'s required fields, skipping"

    #@8c
    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 555
    const/4 v7, 0x0

    #@90
    return-object v7

    #@91
    .line 568
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "uid":I
    .restart local v9    # "sourcePackageName":Ljava/lang/String;
    .restart local v10    # "sourceUserId":I
    .restart local v11    # "sourceTag":Ljava/lang/String;
    .restart local v24    # "eventType":I
    .restart local v28    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v29    # "val":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    #@92
    goto :goto_1

    #@93
    .line 574
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    #@95
    move-object/from16 v1, v28

    #@97
    move-object/from16 v2, p1

    #@99
    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    #@9c
    .line 579
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9f
    .line 583
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a2
    move-result v24

    #@a3
    .line 584
    const/4 v7, 0x4

    #@a4
    move/from16 v0, v24

    #@a6
    if-eq v0, v7, :cond_6

    #@a8
    .line 585
    const/4 v7, 0x2

    #@a9
    move/from16 v0, v24

    #@ab
    if-eq v0, v7, :cond_7

    #@ad
    .line 586
    const/4 v7, 0x0

    #@ae
    return-object v7

    #@af
    .line 575
    :catch_1
    move-exception v20

    #@b0
    .line 576
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    #@b3
    const-string/jumbo v12, "Error reading constraints, skipping."

    #@b6
    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    .line 577
    const/4 v7, 0x0

    #@ba
    return-object v7

    #@bb
    .line 592
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    #@be
    move-result-object v21

    #@bf
    .line 600
    .local v21, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c2
    move-result-wide v22

    #@c3
    .line 601
    .local v22, "elapsedNow":J
    const-string/jumbo v7, "periodic"

    #@c6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@c9
    move-result-object v12

    #@ca
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cd
    move-result v7

    #@ce
    if-eqz v7, :cond_b

    #@d0
    .line 603
    :try_start_4
    const-string/jumbo v7, "period"

    #@d3
    const/4 v12, 0x0

    #@d4
    move-object/from16 v0, p1

    #@d6
    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d9
    move-result-object v29

    #@da
    .line 604
    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@dd
    move-result-object v7

    #@de
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@e1
    move-result-wide v30

    #@e2
    .line 605
    .local v30, "periodMillis":J
    const-string/jumbo v7, "flex"

    #@e5
    const/4 v12, 0x0

    #@e6
    move-object/from16 v0, p1

    #@e8
    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@eb
    move-result-object v29

    #@ec
    .line 606
    if-eqz v29, :cond_a

    #@ee
    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@f1
    move-result-object v7

    #@f2
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@f5
    move-result-wide v26

    #@f6
    .line 607
    .local v26, "flexMillis":J
    :goto_2
    move-object/from16 v0, v28

    #@f8
    move-wide/from16 v1, v30

    #@fa
    move-wide/from16 v3, v26

    #@fc
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    #@ff
    .line 612
    move-object/from16 v0, v21

    #@101
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@103
    check-cast v7, Ljava/lang/Long;

    #@105
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@108
    move-result-wide v12

    #@109
    add-long v14, v22, v30

    #@10b
    add-long v14, v14, v26

    #@10d
    cmp-long v7, v12, v14

    #@10f
    if-lez v7, :cond_8

    #@111
    .line 613
    add-long v12, v22, v26

    #@113
    add-long v18, v12, v30

    #@115
    .line 615
    .local v18, "clampedLateRuntimeElapsed":J
    sub-long v16, v18, v26

    #@117
    .line 617
    .local v16, "clampedEarlyRuntimeElapsed":J
    const-string/jumbo v12, "JobStore"

    #@11a
    .line 618
    const-string/jumbo v13, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    #@11d
    const/4 v7, 0x5

    #@11e
    new-array v14, v7, [Ljava/lang/Object;

    #@120
    .line 620
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@123
    move-result-object v7

    #@124
    const/4 v15, 0x0

    #@125
    aput-object v7, v14, v15

    #@127
    .line 621
    move-object/from16 v0, v21

    #@129
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@12b
    check-cast v7, Ljava/lang/Long;

    #@12d
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@130
    move-result-wide v32

    #@131
    const-wide/16 v34, 0x3e8

    #@133
    div-long v32, v32, v34

    #@135
    invoke-static/range {v32 .. v33}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@138
    move-result-object v7

    #@139
    const/4 v15, 0x1

    #@13a
    aput-object v7, v14, v15

    #@13c
    .line 622
    move-object/from16 v0, v21

    #@13e
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@140
    check-cast v7, Ljava/lang/Long;

    #@142
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@145
    move-result-wide v32

    #@146
    const-wide/16 v34, 0x3e8

    #@148
    div-long v32, v32, v34

    #@14a
    invoke-static/range {v32 .. v33}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@14d
    move-result-object v7

    #@14e
    const/4 v15, 0x2

    #@14f
    aput-object v7, v14, v15

    #@151
    .line 624
    const-wide/16 v32, 0x3e8

    #@153
    div-long v32, v16, v32

    #@155
    .line 623
    invoke-static/range {v32 .. v33}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@158
    move-result-object v7

    #@159
    const/4 v15, 0x3

    #@15a
    aput-object v7, v14, v15

    #@15c
    .line 626
    const-wide/16 v32, 0x3e8

    #@15e
    div-long v32, v18, v32

    #@160
    .line 625
    invoke-static/range {v32 .. v33}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@163
    move-result-object v7

    #@164
    const/4 v15, 0x4

    #@165
    aput-object v7, v14, v15

    #@167
    .line 618
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16a
    move-result-object v7

    #@16b
    .line 617
    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16e
    .line 629
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@171
    move-result-object v7

    #@172
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@175
    move-result-object v12

    #@176
    invoke-static {v7, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    #@179
    move-result-object v21

    #@17a
    .line 655
    .end local v16    # "clampedEarlyRuntimeElapsed":J
    .end local v18    # "clampedLateRuntimeElapsed":J
    .end local v26    # "flexMillis":J
    .end local v30    # "periodMillis":J
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    #@17c
    move-object/from16 v1, v28

    #@17e
    move-object/from16 v2, p1

    #@180
    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    #@183
    .line 657
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@186
    .line 661
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@189
    move-result v24

    #@18a
    .line 662
    const/4 v7, 0x4

    #@18b
    move/from16 v0, v24

    #@18d
    if-eq v0, v7, :cond_9

    #@18f
    .line 663
    const/4 v7, 0x2

    #@190
    move/from16 v0, v24

    #@192
    if-ne v0, v7, :cond_e

    #@194
    .line 664
    const-string/jumbo v7, "extras"

    #@197
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@19a
    move-result-object v12

    #@19b
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19e
    move-result v7

    #@19f
    .line 663
    :goto_4
    if-nez v7, :cond_f

    #@1a1
    .line 668
    const/4 v7, 0x0

    #@1a2
    return-object v7

    #@1a3
    .line 593
    .end local v21    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v22    # "elapsedNow":J
    :catch_2
    move-exception v20

    #@1a4
    .line 597
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    #@1a5
    return-object v7

    #@1a6
    .line 606
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v22    # "elapsedNow":J
    .restart local v30    # "periodMillis":J
    :cond_a
    move-wide/from16 v26, v30

    #@1a8
    .restart local v26    # "flexMillis":J
    goto/16 :goto_2

    #@1aa
    .line 631
    .end local v26    # "flexMillis":J
    .end local v30    # "periodMillis":J
    :catch_3
    move-exception v20

    #@1ab
    .line 632
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    #@1ae
    const-string/jumbo v12, "Error reading periodic execution criteria, skipping."

    #@1b1
    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b4
    .line 633
    const/4 v7, 0x0

    #@1b5
    return-object v7

    #@1b6
    .line 635
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    const-string/jumbo v7, "one-off"

    #@1b9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1bc
    move-result-object v12

    #@1bd
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c0
    move-result v7

    #@1c1
    if-eqz v7, :cond_d

    #@1c3
    .line 637
    :try_start_5
    move-object/from16 v0, v21

    #@1c5
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1c7
    check-cast v7, Ljava/lang/Long;

    #@1c9
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@1cc
    move-result-wide v12

    #@1cd
    const-wide/16 v14, 0x0

    #@1cf
    cmp-long v7, v12, v14

    #@1d1
    if-eqz v7, :cond_c

    #@1d3
    .line 638
    move-object/from16 v0, v21

    #@1d5
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1d7
    check-cast v7, Ljava/lang/Long;

    #@1d9
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@1dc
    move-result-wide v12

    #@1dd
    sub-long v12, v12, v22

    #@1df
    move-object/from16 v0, v28

    #@1e1
    invoke-virtual {v0, v12, v13}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    #@1e4
    .line 640
    :cond_c
    move-object/from16 v0, v21

    #@1e6
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1e8
    check-cast v7, Ljava/lang/Long;

    #@1ea
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@1ed
    move-result-wide v12

    #@1ee
    const-wide v14, 0x7fffffffffffffffL

    #@1f3
    cmp-long v7, v12, v14

    #@1f5
    if-eqz v7, :cond_8

    #@1f7
    .line 642
    move-object/from16 v0, v21

    #@1f9
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1fb
    check-cast v7, Ljava/lang/Long;

    #@1fd
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@200
    move-result-wide v12

    #@201
    sub-long v12, v12, v22

    #@203
    .line 641
    move-object/from16 v0, v28

    #@205
    invoke-virtual {v0, v12, v13}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    #@208
    goto/16 :goto_3

    #@20a
    .line 644
    :catch_4
    move-exception v20

    #@20b
    .line 645
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    #@20e
    const-string/jumbo v12, "Error reading job execution criteria, skipping."

    #@211
    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@214
    .line 646
    const/4 v7, 0x0

    #@215
    return-object v7

    #@216
    .line 653
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    const/4 v7, 0x0

    #@217
    return-object v7

    #@218
    .line 663
    :cond_e
    const/4 v7, 0x0

    #@219
    goto :goto_4

    #@21a
    .line 671
    :cond_f
    invoke-static/range {p1 .. p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@21d
    move-result-object v25

    #@21e
    .line 672
    .local v25, "extras":Landroid/os/PersistableBundle;
    move-object/from16 v0, v28

    #@220
    move-object/from16 v1, v25

    #@222
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    #@225
    .line 673
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@228
    .line 676
    const-string/jumbo v7, "android"

    #@22b
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22e
    move-result v7

    #@22f
    if-eqz v7, :cond_10

    #@231
    .line 677
    if-eqz v25, :cond_10

    #@233
    .line 678
    const-string/jumbo v7, "SyncManagerJob"

    #@236
    const/4 v12, 0x0

    #@237
    move-object/from16 v0, v25

    #@239
    invoke-virtual {v0, v7, v12}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    #@23c
    move-result v7

    #@23d
    .line 676
    if-eqz v7, :cond_10

    #@23f
    .line 679
    const-string/jumbo v7, "owningPackage"

    #@242
    move-object/from16 v0, v25

    #@244
    invoke-virtual {v0, v7, v9}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@247
    move-result-object v9

    #@248
    .line 687
    :cond_10
    new-instance v6, Lcom/android/server/job/controllers/JobStatus;

    #@24a
    .line 688
    invoke-virtual/range {v28 .. v28}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    #@24d
    move-result-object v7

    #@24e
    .line 689
    move-object/from16 v0, v21

    #@250
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@252
    check-cast v12, Ljava/lang/Long;

    #@254
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    #@257
    move-result-wide v12

    #@258
    move-object/from16 v0, v21

    #@25a
    iget-object v14, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@25c
    check-cast v14, Ljava/lang/Long;

    #@25e
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    #@261
    move-result-wide v14

    #@262
    .line 687
    invoke-direct/range {v6 .. v15}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;JJ)V

    #@265
    .line 690
    .local v6, "js":Lcom/android/server/job/controllers/JobStatus;
    return-object v6
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 445
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
    .line 446
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v6, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    #@c
    iget-object v7, v6, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    #@f
    .line 447
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;)Ljava/util/List;

    #@12
    move-result-object v5

    #@13
    .line 448
    .local v5, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_0

    #@15
    .line 449
    const/4 v4, 0x0

    #@16
    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@19
    move-result v6

    #@1a
    if-ge v4, v6, :cond_0

    #@1c
    .line 450
    iget-object v8, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    #@1e
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    #@24
    invoke-virtual {v8, v6}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 449
    add-int/lit8 v4, v4, 0x1

    #@29
    goto :goto_0

    #@2a
    .end local v4    # "i":I
    :cond_0
    :try_start_2
    monitor-exit v7

    #@2b
    .line 454
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    #@2e
    .line 442
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_1
    return-void

    #@2f
    .line 446
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    #@30
    monitor-exit v7

    #@31
    throw v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@32
    .line 455
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    #@33
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    #@34
    .line 459
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    #@35
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1

    #@36
    .line 463
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    #@37
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method
