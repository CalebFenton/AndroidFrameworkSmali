.class public Lcom/android/commands/am/Am;
.super Lcom/android/internal/os/BaseCommand;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/am/Am$InstrumentationWatcher;,
        Lcom/android/commands/am/Am$IntentReceiver;,
        Lcom/android/commands/am/Am$MyActivityController;,
        Lcom/android/commands/am/Am$StopUserCallback;
    }
.end annotation


# static fields
.field private static final GREATER_THAN_TARGET:Z = true

.field private static final MOVING_FORWARD:Z = true

.field private static final MOVING_HORIZONTALLY:Z = true

.field private static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"

.field private static final STACK_BOUNDS_INSET:I = 0xa


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mAutoStop:Z

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mProfileFile:Ljava/lang/String;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I

.field private mSamplingInterval:I

.field private mStackId:I

.field private mStartFlags:I

.field private mStopOption:Z

.field private mUserId:I

.field private mWaitOption:Z


# direct methods
.method static synthetic -get0(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/commands/am/Am;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/commands/am/Am;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/am/Am;->mAutoStop:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/commands/am/Am;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/commands/am/Am;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/commands/am/Am;->mReceiverPermission:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/commands/am/Am;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/commands/am/Am;->mRepeat:I

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/commands/am/Am;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/commands/am/Am;->mSamplingInterval:I

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/commands/am/Am;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/commands/am/Am;->mStackId:I

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/commands/am/Am;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@2
    return p1
.end method

.method static synthetic -set7(Lcom/android/commands/am/Am;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/am/Am;->mStopOption:Z

    #@2
    return p1
.end method

.method static synthetic -set8(Lcom/android/commands/am/Am;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/commands/am/Am;->mUserId:I

    #@2
    return p1
.end method

.method static synthetic -set9(Lcom/android/commands/am/Am;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@2
    return p1
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    #@4
    .line 102
    iput v0, p0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@6
    .line 103
    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@8
    .line 104
    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mStopOption:Z

    #@a
    .line 106
    iput v0, p0, Lcom/android/commands/am/Am;->mRepeat:I

    #@c
    .line 86
    return-void
.end method

.method private argToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1172
    const-string/jumbo v0, "!"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1173
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 1175
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private getBounds()Landroid/graphics/Rect;
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 2552
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 2553
    .local v3, "leftStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8
    move-result v2

    #@9
    .line 2554
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@c
    move-result-object v7

    #@d
    .line 2555
    .local v7, "topStr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10
    move-result v6

    #@11
    .line 2556
    .local v6, "top":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 2557
    .local v5, "rightStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@18
    move-result v4

    #@19
    .line 2558
    .local v4, "right":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 2559
    .local v1, "bottomStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20
    move-result v0

    #@21
    .line 2560
    .local v0, "bottom":I
    if-gez v2, :cond_0

    #@23
    .line 2561
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@25
    new-instance v9, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v10, "Error: bad left arg: "

    #@2d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v9

    #@31
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c
    .line 2562
    return-object v11

    #@3d
    .line 2564
    :cond_0
    if-gez v6, :cond_1

    #@3f
    .line 2565
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@41
    new-instance v9, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v10, "Error: bad top arg: "

    #@49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 2566
    return-object v11

    #@59
    .line 2568
    :cond_1
    if-gtz v4, :cond_2

    #@5b
    .line 2569
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5d
    new-instance v9, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v10, "Error: bad right arg: "

    #@65
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v9

    #@6d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v9

    #@71
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@74
    .line 2570
    return-object v11

    #@75
    .line 2572
    :cond_2
    if-gtz v0, :cond_3

    #@77
    .line 2573
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@79
    new-instance v9, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v10, "Error: bad bottom arg: "

    #@81
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v9

    #@8d
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@90
    .line 2574
    return-object v11

    #@91
    .line 2576
    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    #@93
    invoke-direct {v8, v2, v6, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@96
    return-object v8
.end method

.method private getRecentConfigurations(I)Ljava/util/List;
    .locals 22
    .param p1, "days"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2349
    const-string/jumbo v3, "usagestats"

    #@3
    .line 2348
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    #@a
    move-result-object v2

    #@b
    .line 2350
    .local v2, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v6

    #@f
    .line 2351
    .local v6, "now":J
    mul-int/lit8 v3, p1, 0x18

    #@11
    mul-int/lit8 v3, v3, 0x3c

    #@13
    mul-int/lit8 v3, v3, 0x3c

    #@15
    mul-int/lit16 v3, v3, 0x3e8

    #@17
    int-to-long v0, v3

    #@18
    move-wide/from16 v20, v0

    #@1a
    sub-long v4, v6, v20

    #@1c
    .line 2355
    .local v4, "nDaysAgo":J
    :try_start_0
    const-string/jumbo v8, "com.android.shell"

    #@1f
    const/4 v3, 0x4

    #@20
    .line 2354
    invoke-interface/range {v2 .. v8}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    #@23
    move-result-object v12

    #@24
    .line 2356
    .local v12, "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-nez v12, :cond_0

    #@26
    .line 2357
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@29
    move-result-object v3

    #@2a
    return-object v3

    #@2b
    .line 2360
    :cond_0
    new-instance v17, Landroid/util/ArrayMap;

    #@2d
    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    #@30
    .line 2361
    .local v17, "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@33
    move-result-object v10

    #@34
    .line 2362
    .local v10, "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@37
    move-result v11

    #@38
    .line 2363
    .local v11, "configStatsListSize":I
    const/4 v15, 0x0

    #@39
    .local v15, "i":I
    :goto_0
    if-ge v15, v11, :cond_2

    #@3b
    .line 2364
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v18

    #@3f
    check-cast v18, Landroid/app/usage/ConfigurationStats;

    #@41
    .line 2365
    .local v18, "stats":Landroid/app/usage/ConfigurationStats;
    invoke-virtual/range {v18 .. v18}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    #@44
    move-result-object v3

    #@45
    move-object/from16 v0, v17

    #@47
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@4a
    move-result v16

    #@4b
    .line 2366
    .local v16, "indexOfKey":I
    if-gez v16, :cond_1

    #@4d
    .line 2367
    invoke-virtual/range {v18 .. v18}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    #@50
    move-result-object v3

    #@51
    invoke-virtual/range {v18 .. v18}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    #@54
    move-result v8

    #@55
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v8

    #@59
    move-object/from16 v0, v17

    #@5b
    invoke-virtual {v0, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    .line 2363
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@60
    goto :goto_0

    #@61
    .line 2370
    :cond_1
    move-object/from16 v0, v17

    #@63
    move/from16 v1, v16

    #@65
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@68
    move-result-object v3

    #@69
    check-cast v3, Ljava/lang/Integer;

    #@6b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@6e
    move-result v3

    #@6f
    invoke-virtual/range {v18 .. v18}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    #@72
    move-result v8

    #@73
    add-int/2addr v3, v8

    #@74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v3

    #@78
    .line 2369
    move-object/from16 v0, v17

    #@7a
    move/from16 v1, v16

    #@7c
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7f
    goto :goto_1

    #@80
    .line 2386
    .end local v10    # "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    .end local v11    # "configStatsListSize":I
    .end local v12    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    .end local v15    # "i":I
    .end local v16    # "indexOfKey":I
    .end local v17    # "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    .end local v18    # "stats":Landroid/app/usage/ConfigurationStats;
    :catch_0
    move-exception v14

    #@81
    .line 2387
    .local v14, "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@84
    move-result-object v3

    #@85
    return-object v3

    #@86
    .line 2374
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v10    # "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    .restart local v11    # "configStatsListSize":I
    .restart local v12    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    .restart local v15    # "i":I
    .restart local v17    # "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    new-instance v9, Lcom/android/commands/am/Am$2;

    #@88
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v17

    #@8c
    invoke-direct {v9, v0, v1}, Lcom/android/commands/am/Am$2;-><init>(Lcom/android/commands/am/Am;Landroid/util/ArrayMap;)V

    #@8f
    .line 2381
    .local v9, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    new-instance v13, Ljava/util/ArrayList;

    #@91
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@94
    move-result v3

    #@95
    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@98
    .line 2382
    .local v13, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@9f
    .line 2383
    invoke-static {v13, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@a2
    .line 2384
    return-object v13
.end method

.method private getStepSize(IIIZ)I
    .locals 2
    .param p1, "current"    # I
    .param p2, "target"    # I
    .param p3, "inStepSize"    # I
    .param p4, "greaterThanTarget"    # Z

    #@0
    .prologue
    .line 2329
    const/4 v0, 0x0

    #@1
    .line 2330
    .local v0, "stepSize":I
    if-eqz p4, :cond_0

    #@3
    if-ge p2, p1, :cond_0

    #@5
    .line 2331
    sub-int/2addr p1, p3

    #@6
    .line 2332
    move v0, p3

    #@7
    .line 2333
    if-le p2, p1, :cond_0

    #@9
    .line 2334
    sub-int v1, p2, p1

    #@b
    sub-int v0, p3, v1

    #@d
    .line 2337
    :cond_0
    if-nez p4, :cond_1

    #@f
    if-le p2, p1, :cond_1

    #@11
    .line 2338
    add-int/2addr p1, p3

    #@12
    .line 2339
    move v0, p3

    #@13
    .line 2340
    if-ge p2, p1, :cond_1

    #@15
    .line 2341
    sub-int v1, p1, p2

    #@17
    add-int v0, p3, v1

    #@19
    .line 2344
    :cond_1
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 121
    new-instance v0, Lcom/android/commands/am/Am;

    #@2
    invoke-direct {v0}, Lcom/android/commands/am/Am;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/commands/am/Am;->run([Ljava/lang/String;)V

    #@8
    .line 120
    return-void
.end method

.method private makeIntent(I)Landroid/content/Intent;
    .locals 2
    .param p1, "defUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 479
    iput v1, p0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@3
    .line 480
    iput-boolean v1, p0, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@5
    .line 481
    iput-boolean v1, p0, Lcom/android/commands/am/Am;->mStopOption:Z

    #@7
    .line 482
    iput v1, p0, Lcom/android/commands/am/Am;->mRepeat:I

    #@9
    .line 483
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@c
    .line 484
    iput v1, p0, Lcom/android/commands/am/Am;->mSamplingInterval:I

    #@e
    .line 485
    iput-boolean v1, p0, Lcom/android/commands/am/Am;->mAutoStop:Z

    #@10
    .line 486
    iput p1, p0, Lcom/android/commands/am/Am;->mUserId:I

    #@12
    .line 487
    const/4 v0, -0x1

    #@13
    iput v0, p0, Lcom/android/commands/am/Am;->mStackId:I

    #@15
    .line 489
    iget-object v0, p0, Lcom/android/commands/am/Am;->mArgs:Landroid/os/ShellCommand;

    #@17
    new-instance v1, Lcom/android/commands/am/Am$1;

    #@19
    invoke-direct {v1, p0}, Lcom/android/commands/am/Am$1;-><init>(Lcom/android/commands/am/Am;)V

    #@1c
    invoke-static {v0, v1}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method private moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;
    .param p3, "stackRect"    # Landroid/graphics/Rect;
    .param p4, "stepSize"    # I
    .param p5, "maxToTravel"    # I
    .param p6, "movingForward"    # Z
    .param p7, "horizontal"    # Z
    .param p8, "delay_ms"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2166
    if-eqz p6, :cond_4

    #@3
    .line 2167
    :goto_0
    if-lez p5, :cond_2

    #@5
    .line 2168
    if-eqz p7, :cond_1

    #@7
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@9
    iget v2, p3, Landroid/graphics/Rect;->right:I

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2170
    :cond_0
    if-eqz p7, :cond_3

    #@f
    .line 2171
    iget v1, p3, Landroid/graphics/Rect;->right:I

    #@11
    iget v2, p2, Landroid/graphics/Rect;->right:I

    #@13
    sub-int/2addr v1, v2

    #@14
    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v0

    #@18
    .line 2172
    .local v0, "maxMove":I
    sub-int/2addr p5, v0

    #@19
    .line 2173
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@1b
    add-int/2addr v1, v0

    #@1c
    iput v1, p2, Landroid/graphics/Rect;->right:I

    #@1e
    .line 2174
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@20
    add-int/2addr v1, v0

    #@21
    iput v1, p2, Landroid/graphics/Rect;->left:I

    #@23
    .line 2181
    :goto_1
    invoke-direct {p0, p1, p2, p8, v3}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@26
    goto :goto_0

    #@27
    .line 2169
    .end local v0    # "maxMove":I
    :cond_1
    if-nez p7, :cond_2

    #@29
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@2b
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@2d
    if-lt v1, v2, :cond_0

    #@2f
    .line 2202
    :cond_2
    return p5

    #@30
    .line 2176
    :cond_3
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    #@32
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    #@34
    sub-int/2addr v1, v2

    #@35
    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    #@38
    move-result v0

    #@39
    .line 2177
    .restart local v0    # "maxMove":I
    sub-int/2addr p5, v0

    #@3a
    .line 2178
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@3c
    add-int/2addr v1, v0

    #@3d
    iput v1, p2, Landroid/graphics/Rect;->top:I

    #@3f
    .line 2179
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@41
    add-int/2addr v1, v0

    #@42
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    #@44
    goto :goto_1

    #@45
    .line 2184
    .end local v0    # "maxMove":I
    :cond_4
    :goto_2
    if-gez p5, :cond_2

    #@47
    .line 2185
    if-eqz p7, :cond_5

    #@49
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@4b
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@4d
    if-le v1, v2, :cond_5

    #@4f
    .line 2187
    :goto_3
    if-eqz p7, :cond_6

    #@51
    .line 2188
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@53
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@55
    sub-int/2addr v1, v2

    #@56
    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    #@59
    move-result v0

    #@5a
    .line 2189
    .restart local v0    # "maxMove":I
    sub-int/2addr p5, v0

    #@5b
    .line 2190
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@5d
    sub-int/2addr v1, v0

    #@5e
    iput v1, p2, Landroid/graphics/Rect;->right:I

    #@60
    .line 2191
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@62
    sub-int/2addr v1, v0

    #@63
    iput v1, p2, Landroid/graphics/Rect;->left:I

    #@65
    .line 2198
    :goto_4
    invoke-direct {p0, p1, p2, p8, v3}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@68
    goto :goto_2

    #@69
    .line 2186
    .end local v0    # "maxMove":I
    :cond_5
    if-nez p7, :cond_2

    #@6b
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@6d
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@6f
    if-le v1, v2, :cond_2

    #@71
    goto :goto_3

    #@72
    .line 2193
    :cond_6
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@74
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@76
    sub-int/2addr v1, v2

    #@77
    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    #@7a
    move-result v0

    #@7b
    .line 2194
    .restart local v0    # "maxMove":I
    sub-int/2addr p5, v0

    #@7c
    .line 2195
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@7e
    sub-int/2addr v1, v0

    #@7f
    iput v1, p2, Landroid/graphics/Rect;->top:I

    #@81
    .line 2196
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@83
    sub-int/2addr v1, v0

    #@84
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    #@86
    goto :goto_4
.end method

.method private static openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2543
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v0

    #@4
    .line 2544
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-static {v2}, Landroid/os/SELinux;->getFileContext(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 2545
    .local v1, "tcon":Ljava/lang/String;
    const-string/jumbo v2, "u:r:system_server:s0"

    #@f
    const-string/jumbo v3, "file"

    #@12
    const-string/jumbo v4, "read"

    #@15
    invoke-static {v2, v1, v3, v4}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 2546
    new-instance v2, Ljava/io/FileNotFoundException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "System server has no access to file context "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 2548
    :cond_0
    return-object v0
.end method

.method static removeWallOption()V
    .locals 3

    #@0
    .prologue
    .line 961
    const-string/jumbo v1, "dalvik.vm.extra-opts"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 962
    .local v0, "props":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v1, "-Xprofile:wallclock"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 963
    const-string/jumbo v1, "-Xprofile:wallclock"

    #@15
    const-string/jumbo v2, ""

    #@18
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 964
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 965
    const-string/jumbo v1, "dalvik.vm.extra-opts"

    #@23
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 960
    :cond_0
    return-void
.end method

.method private resizeStack(ILandroid/graphics/Rect;I)V
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delayMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1880
    if-nez p2, :cond_0

    #@2
    .line 1881
    const-string/jumbo v0, "Error: invalid input bounds"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@8
    .line 1882
    return-void

    #@9
    .line 1884
    :cond_0
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/commands/am/Am;->resizeStackUnchecked(ILandroid/graphics/Rect;IZ)V

    #@d
    .line 1879
    return-void
.end method

.method private resizeStackUnchecked(ILandroid/graphics/Rect;IZ)V
    .locals 9
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delayMs"    # I
    .param p4, "animate"    # Z

    #@0
    .prologue
    .line 1856
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v6, -0x1

    #@5
    move v1, p1

    #@6
    move-object v2, p2

    #@7
    move v5, p4

    #@8
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    #@b
    .line 1857
    int-to-long v0, p3

    #@c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    #@f
    .line 1854
    :goto_0
    return-void

    #@10
    .line 1858
    :catch_0
    move-exception v7

    #@11
    .line 1859
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v1, "Error: resizing stack "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@28
    goto :goto_0

    #@29
    .line 1860
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    #@2a
    .local v8, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private runBugReport()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1143
    const/4 v0, 0x0

    #@1
    .line 1144
    .local v0, "bugreportType":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@7
    .line 1145
    const-string/jumbo v2, "--progress"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1146
    const/4 v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1148
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Error: Unknown option: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 1149
    return-void

    #@2c
    .line 1152
    :cond_1
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2e
    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->requestBugReport(I)V

    #@31
    .line 1153
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@33
    const-string/jumbo v3, "Your lovely bug report is being created; please be patient."

    #@36
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@39
    .line 1141
    return-void
.end method

.method private runClearDebugApp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    #@8
    .line 1126
    return-void
.end method

.method private runClearWatchHeap()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1138
    .local v2, "proc":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@6
    const-wide/16 v4, -0x1

    #@8
    const/4 v3, 0x0

    #@9
    const/4 v6, 0x0

    #@a
    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    #@d
    .line 1136
    return-void
.end method

.method private runDumpHeap()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1066
    const/4 v3, 0x1

    #@1
    .line 1067
    .local v3, "managed":Z
    const/4 v2, -0x2

    #@2
    .line 1070
    .local v2, "userId":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v8

    #@6
    .local v8, "opt":Ljava/lang/String;
    if-eqz v8, :cond_3

    #@8
    .line 1071
    const-string/jumbo v0, "--user"

    #@b
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1072
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@18
    move-result v2

    #@19
    .line 1073
    const/4 v0, -0x1

    #@1a
    if-ne v2, v0, :cond_0

    #@1c
    .line 1074
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v9, "Error: Can\'t dump heap with user \'all\'"

    #@21
    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 1075
    return-void

    #@25
    .line 1077
    :cond_1
    const-string/jumbo v0, "-n"

    #@28
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 1078
    const/4 v3, 0x0

    #@2f
    goto :goto_0

    #@30
    .line 1080
    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    new-instance v9, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v10, "Error: Unknown option: "

    #@3a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@49
    .line 1081
    return-void

    #@4a
    .line 1084
    :cond_3
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 1085
    .local v1, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 1086
    .local v4, "heapFile":Ljava/lang/String;
    const/4 v5, 0x0

    #@53
    .line 1089
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v7, Ljava/io/File;

    #@55
    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@58
    .line 1090
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    #@5b
    .line 1092
    const/high16 v0, 0x2c000000

    #@5d
    .line 1091
    invoke-static {v7, v0}, Lcom/android/commands/am/Am;->openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    move-result-object v5

    #@61
    .line 1101
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@63
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    #@66
    move-result v0

    #@67
    if-nez v0, :cond_4

    #@69
    .line 1102
    new-instance v0, Landroid/util/AndroidException;

    #@6b
    new-instance v9, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v10, "HEAP DUMP FAILED on process "

    #@73
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v9

    #@7f
    invoke-direct {v0, v9}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@82
    throw v0

    #@83
    .line 1095
    .end local v7    # "file":Ljava/io/File;
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v6

    #@84
    .line 1096
    .local v6, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@86
    new-instance v9, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v10, "Error: Unable to open file: "

    #@8e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v9

    #@92
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v9

    #@96
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v9

    #@9a
    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9d
    .line 1097
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9f
    const-string/jumbo v9, "Consider using a file under /data/local/tmp/"

    #@a2
    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a5
    .line 1098
    return-void

    #@a6
    .line 1065
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "file":Ljava/io/File;
    :cond_4
    return-void
.end method

.method private runForceStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 733
    const/4 v1, -0x1

    #@1
    .line 736
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@7
    .line 737
    const-string/jumbo v2, "--user"

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 738
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v2}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    goto :goto_0

    #@19
    .line 740
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Error: Unknown option: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 741
    return-void

    #@33
    .line 744
    :cond_1
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@35
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    #@3c
    .line 732
    return-void
.end method

.method private runGetConfig()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2392
    const/16 v1, 0xe

    #@2
    .line 2393
    .local v1, "days":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    .line 2394
    .local v4, "option":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@8
    .line 2395
    const-string/jumbo v7, "--days"

    #@b
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v7

    #@f
    if-nez v7, :cond_0

    #@11
    .line 2396
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v8, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v9, "unrecognized option "

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v7

    #@2b
    .line 2399
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@32
    move-result v1

    #@33
    .line 2400
    if-gtz v1, :cond_1

    #@35
    .line 2401
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@37
    const-string/jumbo v8, "--days must be a positive integer"

    #@3a
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v7

    #@3e
    .line 2406
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@40
    invoke-interface {v7}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    #@43
    move-result-object v0

    #@44
    .line 2407
    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v0, :cond_2

    #@46
    .line 2408
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@48
    const-string/jumbo v8, "Activity manager has no configuration"

    #@4b
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4e
    .line 2409
    return-void

    #@4f
    .line 2412
    :cond_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@51
    new-instance v8, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v9, "config: "

    #@59
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v8

    #@5d
    invoke-static {v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    #@60
    move-result-object v9

    #@61
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6c
    .line 2413
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6e
    new-instance v8, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v9, "abi: "

    #@76
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v8

    #@7a
    const-string/jumbo v9, ","

    #@7d
    sget-object v10, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@7f
    invoke-static {v9, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@82
    move-result-object v9

    #@83
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v8

    #@87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8e
    .line 2415
    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->getRecentConfigurations(I)Ljava/util/List;

    #@91
    move-result-object v6

    #@92
    .line 2416
    .local v6, "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@95
    move-result v5

    #@96
    .line 2417
    .local v5, "recentConfigSize":I
    if-lez v5, :cond_3

    #@98
    .line 2418
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9a
    const-string/jumbo v8, "recentConfigs:"

    #@9d
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a0
    .line 2421
    :cond_3
    const/4 v3, 0x0

    #@a1
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_4

    #@a3
    .line 2422
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a5
    new-instance v7, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v9, "  config: "

    #@ad
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v9

    #@b1
    .line 2423
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b4
    move-result-object v7

    #@b5
    check-cast v7, Landroid/content/res/Configuration;

    #@b7
    .line 2422
    invoke-static {v7}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    #@ba
    move-result-object v7

    #@bb
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v7

    #@bf
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v7

    #@c3
    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c6
    .line 2421
    add-int/lit8 v3, v3, 0x1

    #@c8
    goto :goto_0

    #@c9
    .line 2426
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v3    # "i":I
    .end local v5    # "recentConfigSize":I
    .end local v6    # "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    :catch_0
    move-exception v2

    #@ca
    .line 2391
    :cond_4
    return-void
.end method

.method private runGetCurrentUser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2532
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2
    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@5
    move-result-object v1

    #@6
    .line 2533
    const-string/jumbo v2, "Current user not set"

    #@9
    .line 2532
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/content/pm/UserInfo;

    #@f
    .line 2534
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@13
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    #@16
    .line 2531
    return-void
.end method

.method private runGetInactive()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2461
    const/4 v3, -0x2

    #@1
    .line 2464
    .local v3, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@7
    .line 2465
    const-string/jumbo v5, "--user"

    #@a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 2466
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@17
    move-result v3

    #@18
    goto :goto_0

    #@19
    .line 2468
    :cond_0
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b
    new-instance v6, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v7, "Error: Unknown option: "

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 2469
    return-void

    #@33
    .line 2472
    :cond_1
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 2475
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "usagestats"

    #@3a
    .line 2474
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@3d
    move-result-object v5

    #@3e
    invoke-static {v5}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    #@41
    move-result-object v4

    #@42
    .line 2476
    .local v4, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-interface {v4, v2, v3}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;I)Z

    #@45
    move-result v0

    #@46
    .line 2477
    .local v0, "isIdle":Z
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@48
    new-instance v6, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v7, "Idle="

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5f
    .line 2460
    return-void
.end method

.method private runHang()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1568
    const/4 v0, 0x0

    #@1
    .line 1569
    .local v0, "allowRestart":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@7
    .line 1570
    const-string/jumbo v2, "--allow-restart"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1571
    const/4 v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1573
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Error: Unknown option: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 1574
    return-void

    #@2c
    .line 1578
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2e
    const-string/jumbo v3, "Hanging the system..."

    #@31
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 1579
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@36
    new-instance v3, Landroid/os/Binder;

    #@38
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    #@3b
    invoke-interface {v2, v3, v0}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V

    #@3e
    .line 1566
    return-void
.end method

.method private runIdleMaintenance()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 1596
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Error: Unknown option: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f
    .line 1597
    return-void

    #@20
    .line 1600
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v3, "Performing idle maintenance..."

    #@25
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 1602
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2a
    invoke-interface {v2}, Landroid/app/IActivityManager;->sendIdleJobTrigger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 1593
    :goto_0
    return-void

    #@2e
    .line 1603
    :catch_0
    move-exception v0

    #@2f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private runInstrument()V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 778
    const/4 v4, 0x0

    #@1
    .line 779
    .local v4, "profileFile":Ljava/lang/String;
    const/16 v29, 0x0

    #@3
    .line 780
    .local v29, "wait":Z
    const/16 v26, 0x0

    #@5
    .line 781
    .local v26, "rawMode":Z
    const/16 v21, 0x0

    #@7
    .line 782
    .local v21, "no_window_animation":Z
    const/4 v9, -0x2

    #@8
    .line 783
    .local v9, "userId":I
    new-instance v6, Landroid/os/Bundle;

    #@a
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    #@d
    .line 784
    .local v6, "args":Landroid/os/Bundle;
    const/4 v11, 0x0

    #@e
    .local v11, "argKey":Ljava/lang/String;
    const/4 v12, 0x0

    #@f
    .line 785
    .local v12, "argValue":Ljava/lang/String;
    const-string/jumbo v2, "window"

    #@12
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@15
    move-result-object v2

    #@16
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@19
    move-result-object v30

    #@1a
    .line 786
    .local v30, "wm":Landroid/view/IWindowManager;
    const/4 v10, 0x0

    #@1b
    .line 789
    .end local v4    # "profileFile":Ljava/lang/String;
    .end local v11    # "argKey":Ljava/lang/String;
    .end local v12    # "argValue":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@1e
    move-result-object v25

    #@1f
    .local v25, "opt":Ljava/lang/String;
    if-eqz v25, :cond_8

    #@21
    .line 790
    const-string/jumbo v2, "-p"

    #@24
    move-object/from16 v0, v25

    #@26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .local v4, "profileFile":Ljava/lang/String;
    goto :goto_0

    #@31
    .line 792
    .end local v4    # "profileFile":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "-w"

    #@34
    move-object/from16 v0, v25

    #@36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_1

    #@3c
    .line 793
    const/16 v29, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 794
    :cond_1
    const-string/jumbo v2, "-r"

    #@42
    move-object/from16 v0, v25

    #@44
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_2

    #@4a
    .line 795
    const/16 v26, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 796
    :cond_2
    const-string/jumbo v2, "-e"

    #@50
    move-object/from16 v0, v25

    #@52
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_3

    #@58
    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@5b
    move-result-object v11

    #@5c
    .line 798
    .local v11, "argKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@5f
    move-result-object v12

    #@60
    .line 799
    .local v12, "argValue":Ljava/lang/String;
    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@63
    goto :goto_0

    #@64
    .line 800
    .end local v11    # "argKey":Ljava/lang/String;
    .end local v12    # "argValue":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "--no_window_animation"

    #@67
    move-object/from16 v0, v25

    #@69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v2

    #@6d
    if-nez v2, :cond_4

    #@6f
    .line 801
    const-string/jumbo v2, "--no-window-animation"

    #@72
    move-object/from16 v0, v25

    #@74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v2

    #@78
    .line 800
    if-eqz v2, :cond_5

    #@7a
    .line 802
    :cond_4
    const/16 v21, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 803
    :cond_5
    const-string/jumbo v2, "--user"

    #@80
    move-object/from16 v0, v25

    #@82
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v2

    #@86
    if-eqz v2, :cond_6

    #@88
    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@8b
    move-result-object v2

    #@8c
    move-object/from16 v0, p0

    #@8e
    invoke-virtual {v0, v2}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@91
    move-result v9

    #@92
    goto :goto_0

    #@93
    .line 805
    :cond_6
    const-string/jumbo v2, "--abi"

    #@96
    move-object/from16 v0, v25

    #@98
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v2

    #@9c
    if-eqz v2, :cond_7

    #@9e
    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@a1
    move-result-object v10

    #@a2
    .local v10, "abi":Ljava/lang/String;
    goto/16 :goto_0

    #@a4
    .line 808
    .end local v10    # "abi":Ljava/lang/String;
    :cond_7
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a6
    new-instance v5, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v31, "Error: Unknown option: "

    #@ae
    move-object/from16 v0, v31

    #@b0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    move-object/from16 v0, v25

    #@b6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c1
    .line 809
    return-void

    #@c2
    .line 813
    :cond_8
    const/4 v2, -0x1

    #@c3
    if-ne v9, v2, :cond_9

    #@c5
    .line 814
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c7
    const-string/jumbo v5, "Error: Can\'t start instrumentation with user \'all\'"

    #@ca
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@cd
    .line 815
    return-void

    #@ce
    .line 818
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@d1
    move-result-object v14

    #@d2
    .line 821
    .local v14, "cnArg":Ljava/lang/String;
    const-string/jumbo v2, "/"

    #@d5
    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@d8
    move-result v2

    #@d9
    if-eqz v2, :cond_a

    #@db
    .line 822
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@de
    move-result-object v3

    #@df
    .line 823
    .local v3, "cn":Landroid/content/ComponentName;
    if-nez v3, :cond_f

    #@e1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@e3
    new-instance v5, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v31, "Bad component name: "

    #@eb
    move-object/from16 v0, v31

    #@ed
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v5

    #@f1
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v5

    #@f5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v5

    #@f9
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@fc
    throw v2

    #@fd
    .line 825
    .end local v3    # "cn":Landroid/content/ComponentName;
    :cond_a
    move-object/from16 v0, p0

    #@ff
    iget-object v2, v0, Lcom/android/commands/am/Am;->mPm:Landroid/content/pm/IPackageManager;

    #@101
    const/4 v5, 0x0

    #@102
    const/16 v31, 0x0

    #@104
    move/from16 v0, v31

    #@106
    invoke-interface {v2, v5, v0}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@109
    move-result-object v2

    #@10a
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@10d
    move-result-object v19

    #@10e
    .line 827
    .local v19, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    if-nez v19, :cond_c

    #@110
    const/16 v23, 0x0

    #@112
    .line 828
    .local v23, "numInfos":I
    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    #@114
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@117
    .line 829
    .local v15, "cns":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/16 v17, 0x0

    #@119
    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    #@11b
    move/from16 v1, v23

    #@11d
    if-ge v0, v1, :cond_d

    #@11f
    .line 830
    move-object/from16 v0, v19

    #@121
    move/from16 v1, v17

    #@123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@126
    move-result-object v18

    #@127
    check-cast v18, Landroid/content/pm/InstrumentationInfo;

    #@129
    .line 832
    .local v18, "info":Landroid/content/pm/InstrumentationInfo;
    new-instance v13, Landroid/content/ComponentName;

    #@12b
    move-object/from16 v0, v18

    #@12d
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    #@12f
    move-object/from16 v0, v18

    #@131
    iget-object v5, v0, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    #@133
    invoke-direct {v13, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@136
    .line 833
    .local v13, "c":Landroid/content/ComponentName;
    move-object/from16 v0, v18

    #@138
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    #@13a
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13d
    move-result v2

    #@13e
    if-eqz v2, :cond_b

    #@140
    .line 834
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@143
    .line 829
    :cond_b
    add-int/lit8 v17, v17, 0x1

    #@145
    goto :goto_2

    #@146
    .line 827
    .end local v13    # "c":Landroid/content/ComponentName;
    .end local v15    # "cns":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v17    # "i":I
    .end local v18    # "info":Landroid/content/pm/InstrumentationInfo;
    .end local v23    # "numInfos":I
    :cond_c
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@149
    move-result v23

    #@14a
    .restart local v23    # "numInfos":I
    goto :goto_1

    #@14b
    .line 838
    .restart local v15    # "cns":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v17    # "i":I
    :cond_d
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@14e
    move-result v2

    #@14f
    if-nez v2, :cond_e

    #@151
    .line 839
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@153
    new-instance v5, Ljava/lang/StringBuilder;

    #@155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@158
    const-string/jumbo v31, "No instrumentation found for: "

    #@15b
    move-object/from16 v0, v31

    #@15d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v5

    #@161
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v5

    #@165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@168
    move-result-object v5

    #@169
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16c
    throw v2

    #@16d
    .line 840
    :cond_e
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@170
    move-result v2

    #@171
    const/4 v5, 0x1

    #@172
    if-ne v2, v5, :cond_13

    #@174
    .line 841
    const/4 v2, 0x0

    #@175
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@178
    move-result-object v3

    #@179
    check-cast v3, Landroid/content/ComponentName;

    #@17b
    .line 858
    .end local v15    # "cns":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v17    # "i":I
    .end local v19    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    .end local v23    # "numInfos":I
    .restart local v3    # "cn":Landroid/content/ComponentName;
    :cond_f
    const/4 v7, 0x0

    #@17c
    .line 859
    .local v7, "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    const/4 v8, 0x0

    #@17d
    .line 860
    .local v8, "connection":Landroid/app/UiAutomationConnection;
    if-eqz v29, :cond_10

    #@17f
    .line 861
    new-instance v7, Lcom/android/commands/am/Am$InstrumentationWatcher;

    #@181
    .end local v7    # "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    const/4 v2, 0x0

    #@182
    move-object/from16 v0, p0

    #@184
    invoke-direct {v7, v0, v2}, Lcom/android/commands/am/Am$InstrumentationWatcher;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$InstrumentationWatcher;)V

    #@187
    .line 862
    .local v7, "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    move/from16 v0, v26

    #@189
    invoke-virtual {v7, v0}, Lcom/android/commands/am/Am$InstrumentationWatcher;->setRawOutput(Z)V

    #@18c
    .line 863
    new-instance v8, Landroid/app/UiAutomationConnection;

    #@18e
    .end local v8    # "connection":Landroid/app/UiAutomationConnection;
    invoke-direct {v8}, Landroid/app/UiAutomationConnection;-><init>()V

    #@191
    .line 866
    .end local v7    # "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    :cond_10
    const/16 v24, 0x0

    #@193
    .line 867
    .local v24, "oldAnims":[F
    if-eqz v21, :cond_11

    #@195
    .line 868
    invoke-interface/range {v30 .. v30}, Landroid/view/IWindowManager;->getAnimationScales()[F

    #@198
    move-result-object v24

    #@199
    .line 869
    .local v24, "oldAnims":[F
    const/4 v2, 0x0

    #@19a
    const/4 v5, 0x0

    #@19b
    move-object/from16 v0, v30

    #@19d
    invoke-interface {v0, v2, v5}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    #@1a0
    .line 870
    const/4 v2, 0x1

    #@1a1
    const/4 v5, 0x0

    #@1a2
    move-object/from16 v0, v30

    #@1a4
    invoke-interface {v0, v2, v5}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    #@1a7
    .line 873
    .end local v24    # "oldAnims":[F
    :cond_11
    if-eqz v10, :cond_16

    #@1a9
    .line 874
    sget-object v28, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@1ab
    .line 875
    .local v28, "supportedAbis":[Ljava/lang/String;
    const/16 v20, 0x0

    #@1ad
    .line 876
    .local v20, "matched":Z
    const/4 v2, 0x0

    #@1ae
    move-object/from16 v0, v28

    #@1b0
    array-length v5, v0

    #@1b1
    :goto_3
    if-ge v2, v5, :cond_12

    #@1b3
    aget-object v27, v28, v2

    #@1b5
    .line 877
    .local v27, "supportedAbi":Ljava/lang/String;
    move-object/from16 v0, v27

    #@1b7
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ba
    move-result v31

    #@1bb
    if-eqz v31, :cond_15

    #@1bd
    .line 878
    const/16 v20, 0x1

    #@1bf
    .line 883
    .end local v27    # "supportedAbi":Ljava/lang/String;
    :cond_12
    if-nez v20, :cond_16

    #@1c1
    .line 884
    new-instance v2, Landroid/util/AndroidException;

    #@1c3
    .line 885
    new-instance v5, Ljava/lang/StringBuilder;

    #@1c5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c8
    const-string/jumbo v31, "INSTRUMENTATION_FAILED: Unsupported instruction set "

    #@1cb
    move-object/from16 v0, v31

    #@1cd
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v5

    #@1d1
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v5

    #@1d5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d8
    move-result-object v5

    #@1d9
    .line 884
    invoke-direct {v2, v5}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@1dc
    throw v2

    #@1dd
    .line 843
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v20    # "matched":Z
    .end local v28    # "supportedAbis":[Ljava/lang/String;
    .restart local v15    # "cns":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v17    # "i":I
    .restart local v19    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    .restart local v23    # "numInfos":I
    :cond_13
    new-instance v16, Ljava/lang/StringBuilder;

    #@1df
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1e2
    .line 844
    .local v16, "cnsStr":Ljava/lang/StringBuilder;
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@1e5
    move-result v22

    #@1e6
    .line 845
    .local v22, "numCns":I
    const/16 v17, 0x0

    #@1e8
    :goto_4
    move/from16 v0, v17

    #@1ea
    move/from16 v1, v22

    #@1ec
    if-ge v0, v1, :cond_14

    #@1ee
    .line 846
    move/from16 v0, v17

    #@1f0
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f3
    move-result-object v2

    #@1f4
    check-cast v2, Landroid/content/ComponentName;

    #@1f6
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@1f9
    move-result-object v2

    #@1fa
    move-object/from16 v0, v16

    #@1fc
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    .line 847
    const-string/jumbo v2, ", "

    #@202
    move-object/from16 v0, v16

    #@204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    .line 845
    add-int/lit8 v17, v17, 0x1

    #@209
    goto :goto_4

    #@20a
    .line 851
    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    #@20d
    move-result v2

    #@20e
    add-int/lit8 v2, v2, -0x2

    #@210
    move-object/from16 v0, v16

    #@212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@215
    .line 853
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@217
    new-instance v5, Ljava/lang/StringBuilder;

    #@219
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21c
    const-string/jumbo v31, "Found multiple instrumentations: "

    #@21f
    move-object/from16 v0, v31

    #@221
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@224
    move-result-object v5

    #@225
    .line 854
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@228
    move-result-object v31

    #@229
    .line 853
    move-object/from16 v0, v31

    #@22b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v5

    #@22f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@232
    move-result-object v5

    #@233
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@236
    throw v2

    #@237
    .line 876
    .end local v15    # "cns":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v16    # "cnsStr":Ljava/lang/StringBuilder;
    .end local v17    # "i":I
    .end local v19    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    .end local v22    # "numCns":I
    .end local v23    # "numInfos":I
    .restart local v3    # "cn":Landroid/content/ComponentName;
    .restart local v20    # "matched":Z
    .restart local v27    # "supportedAbi":Ljava/lang/String;
    .restart local v28    # "supportedAbis":[Ljava/lang/String;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    #@239
    goto/16 :goto_3

    #@23b
    .line 889
    .end local v20    # "matched":Z
    .end local v27    # "supportedAbi":Ljava/lang/String;
    .end local v28    # "supportedAbis":[Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    #@23d
    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@23f
    const/4 v5, 0x0

    #@240
    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    #@243
    move-result v2

    #@244
    if-nez v2, :cond_17

    #@246
    .line 890
    new-instance v2, Landroid/util/AndroidException;

    #@248
    new-instance v5, Ljava/lang/StringBuilder;

    #@24a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24d
    const-string/jumbo v31, "INSTRUMENTATION_FAILED: "

    #@250
    move-object/from16 v0, v31

    #@252
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v5

    #@256
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@259
    move-result-object v31

    #@25a
    move-object/from16 v0, v31

    #@25c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v5

    #@260
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@263
    move-result-object v5

    #@264
    invoke-direct {v2, v5}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@267
    throw v2

    #@268
    .line 893
    :cond_17
    if-eqz v7, :cond_18

    #@26a
    .line 894
    invoke-virtual {v7}, Lcom/android/commands/am/Am$InstrumentationWatcher;->waitForFinish()Z

    #@26d
    move-result v2

    #@26e
    if-nez v2, :cond_18

    #@270
    .line 895
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@272
    const-string/jumbo v5, "INSTRUMENTATION_ABORTED: System has crashed."

    #@275
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@278
    .line 899
    :cond_18
    if-eqz v24, :cond_19

    #@27a
    .line 900
    move-object/from16 v0, v30

    #@27c
    move-object/from16 v1, v24

    #@27e
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    #@281
    .line 777
    :cond_19
    return-void
.end method

.method private runKill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 748
    const/4 v1, -0x1

    #@1
    .line 751
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@7
    .line 752
    const-string/jumbo v2, "--user"

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 753
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v2}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    goto :goto_0

    #@19
    .line 755
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Error: Unknown option: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 756
    return-void

    #@33
    .line 759
    :cond_1
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@35
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    #@3c
    .line 747
    return-void
.end method

.method private runKillAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2
    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    #@5
    .line 762
    return-void
.end method

.method private runMonitor()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1549
    const/4 v1, 0x0

    #@1
    .line 1550
    .local v1, "gdbPort":Ljava/lang/String;
    const/4 v2, 0x0

    #@2
    .line 1551
    .end local v1    # "gdbPort":Ljava/lang/String;
    .local v2, "monkey":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@8
    .line 1552
    const-string/jumbo v4, "--gdb"

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 1553
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .local v1, "gdbPort":Ljava/lang/String;
    goto :goto_0

    #@16
    .line 1554
    .end local v1    # "gdbPort":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "-m"

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 1555
    const/4 v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1557
    :cond_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@23
    new-instance v5, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v6, "Error: Unknown option: "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a
    .line 1558
    return-void

    #@3b
    .line 1562
    :cond_2
    new-instance v0, Lcom/android/commands/am/Am$MyActivityController;

    #@3d
    invoke-direct {v0, p0, v1, v2}, Lcom/android/commands/am/Am$MyActivityController;-><init>(Lcom/android/commands/am/Am;Ljava/lang/String;Z)V

    #@40
    .line 1563
    .local v0, "controller":Lcom/android/commands/am/Am$MyActivityController;
    invoke-virtual {v0}, Lcom/android/commands/am/Am$MyActivityController;->run()V

    #@43
    .line 1547
    return-void
.end method

.method private runMoveTopActivityToPinnedStack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1928
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v2

    #@8
    .line 1929
    .local v2, "stackId":I
    invoke-direct {p0}, Lcom/android/commands/am/Am;->getBounds()Landroid/graphics/Rect;

    #@b
    move-result-object v0

    #@c
    .line 1930
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    #@e
    .line 1931
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10
    const-string/jumbo v4, "Error: invalid input bounds"

    #@13
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    .line 1932
    return-void

    #@17
    .line 1936
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@19
    invoke-interface {v3, v2, v0}, Landroid/app/IActivityManager;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_1

    #@1f
    .line 1937
    const-string/jumbo v3, "Didn\'t move top activity to pinned stack."

    #@22
    invoke-virtual {p0, v3}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 1927
    :cond_1
    return-void

    #@26
    .line 1939
    :catch_0
    move-exception v1

    #@27
    .line 1940
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "Unable to move top activity: "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {p0, v3}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@3e
    .line 1941
    return-void
.end method

.method private runPackageImportance()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1634
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@6
    const-string/jumbo v4, "com.android.shell"

    #@9
    invoke-interface {v3, v1, v4}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    .line 1635
    .local v2, "procState":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    .line 1636
    invoke-static {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    #@12
    move-result v4

    #@13
    .line 1635
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 1631
    .end local v2    # "procState":I
    :goto_0
    return-void

    #@17
    .line 1637
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private runProfile()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 970
    const/4 v10, 0x0

    #@2
    .line 971
    .local v10, "profileFile":Ljava/lang/String;
    const/4 v3, 0x0

    #@3
    .line 972
    .local v3, "start":Z
    const/4 v12, 0x0

    #@4
    .line 973
    .local v12, "wall":Z
    const/4 v2, -0x2

    #@5
    .line 974
    .local v2, "userId":I
    const/4 v5, 0x0

    #@6
    .line 975
    .local v5, "profileType":I
    iput v14, p0, Lcom/android/commands/am/Am;->mSamplingInterval:I

    #@8
    .line 977
    const/4 v1, 0x0

    #@9
    .line 979
    .local v1, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@c
    move-result-object v6

    #@d
    .line 981
    .local v6, "cmd":Ljava/lang/String;
    const-string/jumbo v0, "start"

    #@10
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_5

    #@16
    .line 982
    const/4 v3, 0x1

    #@17
    .line 984
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@1a
    move-result-object v9

    #@1b
    .local v9, "opt":Ljava/lang/String;
    if-eqz v9, :cond_3

    #@1d
    .line 985
    const-string/jumbo v0, "--user"

    #@20
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 986
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@2d
    move-result v2

    #@2e
    goto :goto_0

    #@2f
    .line 987
    :cond_0
    const-string/jumbo v0, "--wall"

    #@32
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 988
    const/4 v12, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 989
    :cond_1
    const-string/jumbo v0, "--sampling"

    #@3d
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_2

    #@43
    .line 990
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Lcom/android/commands/am/Am;->mSamplingInterval:I

    #@4d
    goto :goto_0

    #@4e
    .line 992
    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@50
    new-instance v13, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v14, "Error: Unknown option: "

    #@58
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v13

    #@5c
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v13

    #@60
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v13

    #@64
    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@67
    .line 993
    return-void

    #@68
    .line 996
    :cond_3
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    .line 1019
    .end local v9    # "opt":Ljava/lang/String;
    .local v1, "process":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v0, -0x1

    #@6d
    if-ne v2, v0, :cond_a

    #@6f
    .line 1020
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@71
    const-string/jumbo v13, "Error: Can\'t profile with user \'all\'"

    #@74
    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@77
    .line 1021
    return-void

    #@78
    .line 997
    .local v1, "process":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "stop"

    #@7b
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_8

    #@81
    .line 999
    :goto_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@84
    move-result-object v9

    #@85
    .restart local v9    # "opt":Ljava/lang/String;
    if-eqz v9, :cond_7

    #@87
    .line 1000
    const-string/jumbo v0, "--user"

    #@8a
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v0

    #@8e
    if-eqz v0, :cond_6

    #@90
    .line 1001
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@97
    move-result v2

    #@98
    goto :goto_2

    #@99
    .line 1003
    :cond_6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9b
    new-instance v13, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v14, "Error: Unknown option: "

    #@a3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v13

    #@a7
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v13

    #@ab
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v13

    #@af
    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b2
    .line 1004
    return-void

    #@b3
    .line 1007
    :cond_7
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    .local v1, "process":Ljava/lang/String;
    goto :goto_1

    #@b8
    .line 1010
    .end local v9    # "opt":Ljava/lang/String;
    .local v1, "process":Ljava/lang/String;
    :cond_8
    move-object v1, v6

    #@b9
    .line 1011
    .local v1, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    .line 1012
    const-string/jumbo v0, "start"

    #@c0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v0

    #@c4
    if-eqz v0, :cond_9

    #@c6
    .line 1013
    const/4 v3, 0x1

    #@c7
    goto :goto_1

    #@c8
    .line 1014
    :cond_9
    const-string/jumbo v0, "stop"

    #@cb
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v0

    #@cf
    if-nez v0, :cond_4

    #@d1
    .line 1015
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d3
    new-instance v13, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v14, "Profile command "

    #@db
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v13

    #@df
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v13

    #@e3
    const-string/jumbo v14, " not valid"

    #@e6
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v13

    #@ea
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v13

    #@ee
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f1
    throw v0

    #@f2
    .line 1024
    :cond_a
    const/4 v8, 0x0

    #@f3
    .line 1025
    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    #@f4
    .line 1027
    .local v4, "profilerInfo":Landroid/app/ProfilerInfo;
    if-eqz v3, :cond_b

    #@f6
    .line 1028
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@f9
    move-result-object v10

    #@fa
    .line 1031
    .local v10, "profileFile":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    #@fc
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@ff
    .line 1032
    const/high16 v13, 0x2c000000

    #@101
    .line 1030
    invoke-static {v0, v13}, Lcom/android/commands/am/Am;->openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@104
    move-result-object v8

    #@105
    .line 1040
    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Landroid/app/ProfilerInfo;

    #@107
    .end local v4    # "profilerInfo":Landroid/app/ProfilerInfo;
    iget v0, p0, Lcom/android/commands/am/Am;->mSamplingInterval:I

    #@109
    invoke-direct {v4, v10, v8, v0, v14}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    #@10c
    .line 1044
    .end local v8    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "profileFile":Ljava/lang/String;
    :cond_b
    if-eqz v12, :cond_f

    #@10e
    .line 1046
    :try_start_1
    const-string/jumbo v0, "dalvik.vm.extra-opts"

    #@111
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@114
    move-result-object v11

    #@115
    .line 1047
    .local v11, "props":Ljava/lang/String;
    if-eqz v11, :cond_e

    #@117
    const-string/jumbo v0, "-Xprofile:wallclock"

    #@11a
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@11d
    move-result v0

    #@11e
    if-eqz v0, :cond_e

    #@120
    .line 1054
    .end local v11    # "props":Ljava/lang/String;
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@122
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    #@125
    move-result v0

    #@126
    if-nez v0, :cond_10

    #@128
    .line 1055
    const/4 v12, 0x0

    #@129
    .line 1056
    new-instance v0, Landroid/util/AndroidException;

    #@12b
    new-instance v13, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string/jumbo v14, "PROFILE FAILED on process "

    #@133
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v13

    #@137
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v13

    #@13b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v13

    #@13f
    invoke-direct {v0, v13}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@142
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@143
    .line 1058
    :catchall_0
    move-exception v0

    #@144
    .line 1059
    if-nez v12, :cond_d

    #@146
    .line 1058
    :cond_d
    throw v0

    #@147
    .line 1035
    .restart local v4    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v10    # "profileFile":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@148
    .line 1036
    .local v7, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14a
    new-instance v13, Ljava/lang/StringBuilder;

    #@14c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@14f
    const-string/jumbo v14, "Error: Unable to open file: "

    #@152
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v13

    #@156
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v13

    #@15a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v13

    #@15e
    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@161
    .line 1037
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@163
    const-string/jumbo v13, "Consider using a file under /data/local/tmp/"

    #@166
    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@169
    .line 1038
    return-void

    #@16a
    .line 1048
    .end local v4    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "profileFile":Ljava/lang/String;
    .restart local v11    # "props":Ljava/lang/String;
    :cond_e
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@16c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v0

    #@173
    const-string/jumbo v13, " -Xprofile:wallclock"

    #@176
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v0

    #@17a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@17d
    move-result-object v11

    #@17e
    goto :goto_3

    #@17f
    .line 1051
    .end local v11    # "props":Ljava/lang/String;
    :cond_f
    if-eqz v3, :cond_c

    #@181
    goto :goto_3

    #@182
    .line 1059
    :cond_10
    if-nez v12, :cond_11

    #@184
    .line 969
    :cond_11
    return-void
.end method

.method private runRestart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 1585
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Error: Unknown option: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f
    .line 1586
    return-void

    #@20
    .line 1589
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v2, "Restart the system..."

    #@25
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 1590
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2a
    invoke-interface {v1}, Landroid/app/IActivityManager;->restart()V

    #@2d
    .line 1582
    return-void
.end method

.method private runScreenCompat()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1610
    .local v2, "mode":Ljava/lang/String;
    const-string/jumbo v4, "on"

    #@7
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 1611
    const/4 v1, 0x1

    #@e
    .line 1619
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 1622
    .local v3, "packageName":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@14
    if-eqz v1, :cond_3

    #@16
    .line 1623
    const/4 v4, 0x1

    #@17
    .line 1622
    :goto_1
    invoke-interface {v5, v3, v4}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1627
    :goto_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 1628
    if-nez v3, :cond_0

    #@20
    .line 1607
    return-void

    #@21
    .line 1612
    .end local v1    # "enabled":Z
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "off"

    #@24
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_2

    #@2a
    .line 1613
    const/4 v1, 0x0

    #@2b
    .restart local v1    # "enabled":Z
    goto :goto_0

    #@2c
    .line 1615
    .end local v1    # "enabled":Z
    :cond_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2e
    new-instance v5, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v6, "Error: enabled mode must be \'on\' or \'off\' at "

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@45
    .line 1616
    return-void

    #@46
    .line 1624
    .restart local v1    # "enabled":Z
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    #@47
    goto :goto_1

    #@48
    .line 1625
    :catch_0
    move-exception v0

    #@49
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private runSendTrimMemory()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2481
    const/4 v4, -0x2

    #@1
    .line 2483
    .local v4, "userId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@7
    .line 2484
    const-string/jumbo v5, "--user"

    #@a
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_1

    #@10
    .line 2485
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@17
    move-result v4

    #@18
    .line 2486
    const/4 v5, -0x1

    #@19
    if-ne v4, v5, :cond_0

    #@1b
    .line 2487
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1d
    const-string/jumbo v6, "Error: Can\'t use user \'all\'"

    #@20
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@23
    .line 2488
    return-void

    #@24
    .line 2491
    :cond_1
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@26
    new-instance v6, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v7, "Error: Unknown option: "

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    .line 2492
    return-void

    #@3e
    .line 2496
    :cond_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    .line 2497
    .local v3, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 2499
    .local v1, "levelArg":Ljava/lang/String;
    const-string/jumbo v5, "HIDDEN"

    #@49
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_4

    #@4f
    .line 2501
    const/16 v0, 0x14

    #@51
    .line 2525
    .local v0, "level":I
    :goto_0
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@53
    invoke-interface {v5, v3, v4, v0}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    #@56
    move-result v5

    #@57
    if-nez v5, :cond_3

    #@59
    .line 2526
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5b
    new-instance v6, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v7, "Error: Failure to set the level - probably Unknown Process: "

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@72
    .line 2480
    :cond_3
    return-void

    #@73
    .line 2499
    .end local v0    # "level":I
    :cond_4
    const-string/jumbo v5, "RUNNING_MODERATE"

    #@76
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v5

    #@7a
    if-eqz v5, :cond_5

    #@7c
    .line 2504
    const/4 v0, 0x5

    #@7d
    .line 2505
    .restart local v0    # "level":I
    goto :goto_0

    #@7e
    .line 2499
    .end local v0    # "level":I
    :cond_5
    const-string/jumbo v5, "BACKGROUND"

    #@81
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v5

    #@85
    if-eqz v5, :cond_6

    #@87
    .line 2507
    const/16 v0, 0x28

    #@89
    .line 2508
    .restart local v0    # "level":I
    goto :goto_0

    #@8a
    .line 2499
    .end local v0    # "level":I
    :cond_6
    const-string/jumbo v5, "RUNNING_LOW"

    #@8d
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v5

    #@91
    if-eqz v5, :cond_7

    #@93
    .line 2510
    const/16 v0, 0xa

    #@95
    .line 2511
    .restart local v0    # "level":I
    goto :goto_0

    #@96
    .line 2499
    .end local v0    # "level":I
    :cond_7
    const-string/jumbo v5, "MODERATE"

    #@99
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v5

    #@9d
    if-eqz v5, :cond_8

    #@9f
    .line 2513
    const/16 v0, 0x3c

    #@a1
    .line 2514
    .restart local v0    # "level":I
    goto :goto_0

    #@a2
    .line 2499
    .end local v0    # "level":I
    :cond_8
    const-string/jumbo v5, "RUNNING_CRITICAL"

    #@a5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v5

    #@a9
    if-eqz v5, :cond_9

    #@ab
    .line 2516
    const/16 v0, 0xf

    #@ad
    .line 2517
    .restart local v0    # "level":I
    goto :goto_0

    #@ae
    .line 2499
    .end local v0    # "level":I
    :cond_9
    const-string/jumbo v5, "COMPLETE"

    #@b1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v5

    #@b5
    if-eqz v5, :cond_a

    #@b7
    .line 2519
    const/16 v0, 0x50

    #@b9
    .line 2520
    .restart local v0    # "level":I
    goto :goto_0

    #@ba
    .line 2522
    .end local v0    # "level":I
    :cond_a
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@bc
    new-instance v6, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v7, "Error: Unknown level option: "

    #@c4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v6

    #@c8
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v6

    #@cc
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d3
    .line 2523
    return-void
.end method

.method private runSetDebugApp()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1107
    const/4 v3, 0x0

    #@1
    .line 1108
    .local v3, "wait":Z
    const/4 v1, 0x0

    #@2
    .line 1111
    .local v1, "persistent":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@8
    .line 1112
    const-string/jumbo v4, "-w"

    #@b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 1113
    const/4 v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1114
    :cond_0
    const-string/jumbo v4, "--persistent"

    #@16
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 1115
    const/4 v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1117
    :cond_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@20
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "Error: Unknown option: "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37
    .line 1118
    return-void

    #@38
    .line 1122
    :cond_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 1123
    .local v2, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@3e
    invoke-interface {v4, v2, v3, v1}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    #@41
    .line 1106
    return-void
.end method

.method private runSetInactive()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2441
    const/4 v2, -0x2

    #@1
    .line 2444
    .local v2, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@7
    .line 2445
    const-string/jumbo v5, "--user"

    #@a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 2446
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@17
    move-result v2

    #@18
    goto :goto_0

    #@19
    .line 2448
    :cond_0
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b
    new-instance v6, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v7, "Error: Unknown option: "

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 2449
    return-void

    #@33
    .line 2452
    :cond_1
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 2453
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    .line 2456
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "usagestats"

    #@3e
    .line 2455
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@41
    move-result-object v5

    #@42
    invoke-static {v5}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    #@45
    move-result-object v3

    #@46
    .line 2457
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@49
    move-result v5

    #@4a
    invoke-interface {v3, v1, v5, v2}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    #@4d
    .line 2440
    return-void
.end method

.method private runSetWatchHeap()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1132
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1133
    .local v0, "limit":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@d
    move-result-wide v4

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v6, 0x0

    #@10
    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    #@13
    .line 1130
    return-void
.end method

.method private runStack()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1750
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1751
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "start"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1753
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackStart()V

    #@10
    .line 1749
    :goto_0
    return-void

    #@11
    .line 1751
    :cond_0
    const-string/jumbo v1, "movetask"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1756
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackMoveTask()V

    #@1d
    goto :goto_0

    #@1e
    .line 1751
    :cond_1
    const-string/jumbo v1, "resize"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 1759
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackResize()V

    #@2a
    goto :goto_0

    #@2b
    .line 1751
    :cond_2
    const-string/jumbo v1, "resize-animated"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 1762
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackResizeAnimated()V

    #@37
    goto :goto_0

    #@38
    .line 1751
    :cond_3
    const-string/jumbo v1, "resize-docked-stack"

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 1765
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackResizeDocked()V

    #@44
    goto :goto_0

    #@45
    .line 1751
    :cond_4
    const-string/jumbo v1, "positiontask"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_5

    #@4e
    .line 1768
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackPositionTask()V

    #@51
    goto :goto_0

    #@52
    .line 1751
    :cond_5
    const-string/jumbo v1, "list"

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_6

    #@5b
    .line 1771
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackList()V

    #@5e
    goto :goto_0

    #@5f
    .line 1751
    :cond_6
    const-string/jumbo v1, "info"

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_7

    #@68
    .line 1774
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackInfo()V

    #@6b
    goto :goto_0

    #@6c
    .line 1751
    :cond_7
    const-string/jumbo v1, "move-top-activity-to-pinned-stack"

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_8

    #@75
    .line 1777
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runMoveTopActivityToPinnedStack()V

    #@78
    goto :goto_0

    #@79
    .line 1751
    :cond_8
    const-string/jumbo v1, "size-docked-stack-test"

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v1

    #@80
    if-eqz v1, :cond_9

    #@82
    .line 1780
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackSizeDockedStackTest()V

    #@85
    goto :goto_0

    #@86
    .line 1751
    :cond_9
    const-string/jumbo v1, "remove"

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_a

    #@8f
    .line 1783
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackRemove()V

    #@92
    goto/16 :goto_0

    #@94
    .line 1786
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v2, "Error: unknown command \'"

    #@9c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    const-string/jumbo v2, "\'"

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@b2
    goto/16 :goto_0
.end method

.method private runStackInfo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1913
    :try_start_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 1914
    .local v3, "stackIdStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v2

    #@8
    .line 1915
    .local v2, "stackId":I
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@a
    invoke-interface {v4, v2}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    #@d
    move-result-object v1

    #@e
    .line 1916
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1911
    .end local v1    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v2    # "stackId":I
    .end local v3    # "stackIdStr":Ljava/lang/String;
    :goto_0
    return-void

    #@14
    .line 1917
    :catch_0
    move-exception v0

    #@15
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private runStackList()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1903
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2
    invoke-interface {v4}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    #@5
    move-result-object v3

    #@6
    .line 1904
    .local v3, "stacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/app/ActivityManager$StackInfo;

    #@16
    .line 1905
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18
    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    goto :goto_0

    #@1c
    .line 1907
    .end local v1    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v3    # "stacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :catch_0
    move-exception v0

    #@1d
    .line 1901
    :cond_0
    return-void
.end method

.method private runStackMoveTask()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1806
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 1807
    .local v4, "taskIdStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v3

    #@8
    .line 1808
    .local v3, "taskId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 1809
    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f
    move-result v1

    #@10
    .line 1810
    .local v1, "stackId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    .line 1812
    .local v6, "toTopStr":Ljava/lang/String;
    const-string/jumbo v7, "true"

    #@17
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_0

    #@1d
    .line 1813
    const/4 v5, 0x1

    #@1e
    .line 1822
    .local v5, "toTop":Z
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@20
    invoke-interface {v7, v3, v1, v5}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 1805
    :goto_1
    return-void

    #@24
    .line 1814
    .end local v5    # "toTop":Z
    :cond_0
    const-string/jumbo v7, "false"

    #@27
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_1

    #@2d
    .line 1815
    const/4 v5, 0x0

    #@2e
    .restart local v5    # "toTop":Z
    goto :goto_0

    #@2f
    .line 1817
    .end local v5    # "toTop":Z
    :cond_1
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@31
    new-instance v8, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v9, "Error: bad toTop arg: "

    #@39
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 1818
    return-void

    #@49
    .line 1823
    .restart local v5    # "toTop":Z
    :catch_0
    move-exception v0

    #@4a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private runStackPositionTask()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    .line 1889
    .local v6, "taskIdStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v5

    #@8
    .line 1890
    .local v5, "taskId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 1891
    .local v4, "stackIdStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f
    move-result v3

    #@10
    .line 1892
    .local v3, "stackId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 1893
    .local v2, "positionStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    .line 1896
    .local v1, "position":I
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@1a
    invoke-interface {v7, v5, v3, v1}, Landroid/app/IActivityManager;->positionTaskInStack(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 1887
    :goto_0
    return-void

    #@1e
    .line 1897
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private runStackRemove()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1923
    .local v1, "stackIdStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 1924
    .local v0, "stackId":I
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@a
    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->removeStack(I)V

    #@d
    .line 1921
    return-void
.end method

.method private runStackResize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1828
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1829
    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    .line 1830
    .local v1, "stackId":I
    invoke-direct {p0}, Lcom/android/commands/am/Am;->getBounds()Landroid/graphics/Rect;

    #@b
    move-result-object v0

    #@c
    .line 1831
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    #@e
    .line 1832
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10
    const-string/jumbo v4, "Error: invalid input bounds"

    #@13
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    .line 1833
    return-void

    #@17
    .line 1835
    :cond_0
    const/4 v3, 0x0

    #@18
    invoke-direct {p0, v1, v0, v3}, Lcom/android/commands/am/Am;->resizeStack(ILandroid/graphics/Rect;I)V

    #@1b
    .line 1827
    return-void
.end method

.method private runStackResizeAnimated()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1839
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1840
    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    .line 1842
    .local v1, "stackId":I
    const-string/jumbo v3, "null"

    #@b
    iget-object v4, p0, Lcom/android/commands/am/Am;->mArgs:Landroid/os/ShellCommand;

    #@d
    invoke-virtual {v4}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 1843
    const/4 v0, 0x0

    #@18
    .line 1851
    :cond_0
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-direct {p0, v1, v0, v3, v4}, Lcom/android/commands/am/Am;->resizeStackUnchecked(ILandroid/graphics/Rect;IZ)V

    #@1d
    .line 1838
    return-void

    #@1e
    .line 1845
    :cond_1
    invoke-direct {p0}, Lcom/android/commands/am/Am;->getBounds()Landroid/graphics/Rect;

    #@21
    move-result-object v0

    #@22
    .line 1846
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    #@24
    .line 1847
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@26
    const-string/jumbo v4, "Error: invalid input bounds"

    #@29
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c
    .line 1848
    return-void
.end method

.method private runStackResizeDocked()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1865
    invoke-direct {p0}, Lcom/android/commands/am/Am;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v1

    #@4
    .line 1866
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/commands/am/Am;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v2

    #@8
    .line 1867
    .local v2, "taskBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    #@a
    if-nez v2, :cond_1

    #@c
    .line 1868
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e
    const-string/jumbo v3, "Error: invalid input bounds"

    #@11
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@14
    .line 1869
    return-void

    #@15
    .line 1872
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 1864
    :goto_0
    return-void

    #@1e
    .line 1873
    :catch_0
    move-exception v6

    #@1f
    .line 1874
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Error: resizing docked stack "

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@36
    goto :goto_0
.end method

.method private runStackSizeDockedStackTest()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1946
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v15

    #@4
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v14

    #@8
    .line 1947
    .local v14, "stepSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@b
    move-result-object v12

    #@c
    .line 1948
    .local v12, "side":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    .line 1949
    .local v5, "delayStr":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@12
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15
    move-result v4

    #@16
    .line 1953
    .local v4, "delayMs":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    #@18
    iget-object v15, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@1a
    const/16 v16, 0x3

    #@1c
    invoke-interface/range {v15 .. v16}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    #@1f
    move-result-object v8

    #@20
    .line 1954
    .local v8, "info":Landroid/app/ActivityManager$StackInfo;
    if-nez v8, :cond_1

    #@22
    .line 1955
    const-string/jumbo v15, "Docked stack doesn\'t exist"

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v15}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@2a
    .line 1956
    return-void

    #@2b
    .line 1949
    .end local v4    # "delayMs":I
    .end local v8    # "info":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    const/4 v4, 0x0

    #@2c
    .restart local v4    # "delayMs":I
    goto :goto_0

    #@2d
    .line 1958
    .restart local v8    # "info":Landroid/app/ActivityManager$StackInfo;
    :cond_1
    iget-object v15, v8, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@2f
    if-nez v15, :cond_2

    #@31
    .line 1959
    const-string/jumbo v15, "Docked stack doesn\'t have a bounds"

    #@34
    move-object/from16 v0, p0

    #@36
    invoke-virtual {v0, v15}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@39
    .line 1960
    return-void

    #@3a
    .line 1962
    :cond_2
    iget-object v1, v8, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 1968
    .local v1, "bounds":Landroid/graphics/Rect;
    const-string/jumbo v15, "l"

    #@3f
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v15

    #@43
    if-nez v15, :cond_3

    #@45
    const-string/jumbo v15, "r"

    #@48
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v7

    #@4c
    .line 1969
    :goto_1
    if-eqz v7, :cond_4

    #@4e
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@51
    move-result v15

    #@52
    :goto_2
    div-int/lit8 v2, v15, 0x2

    #@54
    .line 1971
    .local v2, "changeSize":I
    const-string/jumbo v15, "l"

    #@57
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v15

    #@5b
    if-eqz v15, :cond_5

    #@5d
    .line 1973
    iget v3, v1, Landroid/graphics/Rect;->left:I

    #@5f
    .line 1989
    .local v3, "currentPoint":I
    :goto_3
    move v13, v3

    #@60
    .line 1990
    .local v13, "startPoint":I
    sub-int v11, v3, v2

    #@62
    .line 1991
    .local v11, "minPoint":I
    add-int v10, v3, v2

    #@64
    .line 1994
    .local v10, "maxPoint":I
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@66
    new-instance v16, Ljava/lang/StringBuilder;

    #@68
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v17, "Shrinking docked stack side="

    #@6e
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v16

    #@72
    move-object/from16 v0, v16

    #@74
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v16

    #@78
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v16

    #@7c
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7f
    .line 1995
    :goto_4
    if-le v3, v11, :cond_9

    #@81
    .line 1996
    sub-int v15, v3, v11

    #@83
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    #@86
    move-result v9

    #@87
    .line 1997
    .local v9, "maxChange":I
    sub-int/2addr v3, v9

    #@88
    .line 1998
    move-object/from16 v0, p0

    #@8a
    invoke-direct {v0, v1, v12, v3}, Lcom/android/commands/am/Am;->setBoundsSide(Landroid/graphics/Rect;Ljava/lang/String;I)V

    #@8d
    .line 1999
    const/4 v15, 0x3

    #@8e
    move-object/from16 v0, p0

    #@90
    invoke-direct {v0, v15, v1, v4}, Lcom/android/commands/am/Am;->resizeStack(ILandroid/graphics/Rect;I)V

    #@93
    goto :goto_4

    #@94
    .line 1963
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "changeSize":I
    .end local v3    # "currentPoint":I
    .end local v8    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v9    # "maxChange":I
    .end local v10    # "maxPoint":I
    .end local v11    # "minPoint":I
    .end local v13    # "startPoint":I
    :catch_0
    move-exception v6

    #@95
    .line 1964
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v15, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v16, "Unable to get docked stack info:"

    #@9d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v15

    #@a1
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v15

    #@a5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v15

    #@a9
    move-object/from16 v0, p0

    #@ab
    invoke-virtual {v0, v15}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@ae
    .line 1965
    return-void

    #@af
    .line 1968
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "info":Landroid/app/ActivityManager$StackInfo;
    :cond_3
    const/4 v7, 0x1

    #@b0
    .local v7, "horizontalGrowth":Z
    goto :goto_1

    #@b1
    .line 1969
    .end local v7    # "horizontalGrowth":Z
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@b4
    move-result v15

    #@b5
    goto :goto_2

    #@b6
    .line 1971
    .restart local v2    # "changeSize":I
    :cond_5
    const-string/jumbo v15, "r"

    #@b9
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v15

    #@bd
    if-eqz v15, :cond_6

    #@bf
    .line 1976
    iget v3, v1, Landroid/graphics/Rect;->right:I

    #@c1
    .restart local v3    # "currentPoint":I
    goto :goto_3

    #@c2
    .line 1971
    .end local v3    # "currentPoint":I
    :cond_6
    const-string/jumbo v15, "t"

    #@c5
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v15

    #@c9
    if-eqz v15, :cond_7

    #@cb
    .line 1979
    iget v3, v1, Landroid/graphics/Rect;->top:I

    #@cd
    .restart local v3    # "currentPoint":I
    goto :goto_3

    #@ce
    .line 1971
    .end local v3    # "currentPoint":I
    :cond_7
    const-string/jumbo v15, "b"

    #@d1
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v15

    #@d5
    if-eqz v15, :cond_8

    #@d7
    .line 1982
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    #@d9
    .restart local v3    # "currentPoint":I
    goto :goto_3

    #@da
    .line 1985
    .end local v3    # "currentPoint":I
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v16, "Unknown growth side: "

    #@e2
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v15

    #@e6
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v15

    #@ea
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v15

    #@ee
    move-object/from16 v0, p0

    #@f0
    invoke-virtual {v0, v15}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@f3
    .line 1986
    return-void

    #@f4
    .line 2002
    .restart local v3    # "currentPoint":I
    .restart local v10    # "maxPoint":I
    .restart local v11    # "minPoint":I
    .restart local v13    # "startPoint":I
    :cond_9
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f6
    new-instance v16, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v17, "Growing docked stack side="

    #@fe
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v16

    #@102
    move-object/from16 v0, v16

    #@104
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v16

    #@108
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v16

    #@10c
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10f
    .line 2003
    :goto_5
    if-ge v3, v10, :cond_a

    #@111
    .line 2004
    sub-int v15, v10, v3

    #@113
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    #@116
    move-result v9

    #@117
    .line 2005
    .restart local v9    # "maxChange":I
    add-int/2addr v3, v9

    #@118
    .line 2006
    move-object/from16 v0, p0

    #@11a
    invoke-direct {v0, v1, v12, v3}, Lcom/android/commands/am/Am;->setBoundsSide(Landroid/graphics/Rect;Ljava/lang/String;I)V

    #@11d
    .line 2007
    const/4 v15, 0x3

    #@11e
    move-object/from16 v0, p0

    #@120
    invoke-direct {v0, v15, v1, v4}, Lcom/android/commands/am/Am;->resizeStack(ILandroid/graphics/Rect;I)V

    #@123
    goto :goto_5

    #@124
    .line 2010
    .end local v9    # "maxChange":I
    :cond_a
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@126
    new-instance v16, Ljava/lang/StringBuilder;

    #@128
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string/jumbo v17, "Back to Original size side="

    #@12e
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v16

    #@132
    move-object/from16 v0, v16

    #@134
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v16

    #@138
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v16

    #@13c
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13f
    .line 2011
    :goto_6
    if-le v3, v13, :cond_b

    #@141
    .line 2012
    sub-int v15, v3, v13

    #@143
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    #@146
    move-result v9

    #@147
    .line 2013
    .restart local v9    # "maxChange":I
    sub-int/2addr v3, v9

    #@148
    .line 2014
    move-object/from16 v0, p0

    #@14a
    invoke-direct {v0, v1, v12, v3}, Lcom/android/commands/am/Am;->setBoundsSide(Landroid/graphics/Rect;Ljava/lang/String;I)V

    #@14d
    .line 2015
    const/4 v15, 0x3

    #@14e
    move-object/from16 v0, p0

    #@150
    invoke-direct {v0, v15, v1, v4}, Lcom/android/commands/am/Am;->resizeStack(ILandroid/graphics/Rect;I)V

    #@153
    goto :goto_6

    #@154
    .line 1945
    .end local v9    # "maxChange":I
    :cond_b
    return-void
.end method

.method private runStackStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1792
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1793
    .local v2, "displayIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    .line 1794
    .local v1, "displayId":I
    const/4 v5, -0x2

    #@9
    invoke-direct {p0, v5}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@c
    move-result-object v4

    #@d
    .line 1797
    .local v4, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@f
    invoke-interface {v5, v1}, Landroid/app/IActivityManager;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    #@12
    move-result-object v0

    #@13
    .line 1798
    .local v0, "container":Landroid/app/IActivityContainer;
    if-eqz v0, :cond_0

    #@15
    .line 1799
    invoke-interface {v0, v4}, Landroid/app/IActivityContainer;->startActivity(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 1791
    .end local v0    # "container":Landroid/app/IActivityContainer;
    :cond_0
    :goto_0
    return-void

    #@19
    .line 1801
    :catch_0
    move-exception v3

    #@1a
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private runStart()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    const/4 v2, -0x2

    #@1
    move-object/from16 v0, p0

    #@3
    invoke-direct {v0, v2}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@6
    move-result-object v5

    #@7
    .line 564
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@9
    iget v2, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@b
    const/4 v3, -0x1

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 565
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10
    const-string/jumbo v3, "Error: Can\'t start service with user \'all\'"

    #@13
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    .line 566
    return-void

    #@17
    .line 569
    :cond_0
    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 570
    .local v6, "mimeType":Ljava/lang/String;
    if-nez v6, :cond_1

    #@1d
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@20
    move-result-object v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 571
    const-string/jumbo v2, "content"

    #@26
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    .line 570
    if-eqz v2, :cond_1

    #@34
    .line 572
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@38
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3b
    move-result-object v3

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget v4, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@40
    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 577
    :cond_1
    move-object/from16 v0, p0

    #@46
    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mStopOption:Z

    #@48
    if-eqz v2, :cond_2

    #@4a
    .line 579
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@4d
    move-result-object v2

    #@4e
    if-eqz v2, :cond_b

    #@50
    .line 580
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@57
    move-result-object v22

    #@58
    .line 595
    .local v22, "packageName":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5a
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "Stopping: "

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    move-object/from16 v0, v22

    #@68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@73
    .line 596
    move-object/from16 v0, p0

    #@75
    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@77
    move-object/from16 v0, p0

    #@79
    iget v3, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@7b
    move-object/from16 v0, v22

    #@7d
    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    #@80
    .line 597
    const-wide/16 v2, 0xfa

    #@82
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    #@85
    .line 600
    .end local v22    # "packageName":Ljava/lang/String;
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@87
    new-instance v3, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v4, "Starting: "

    #@8f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9e
    .line 601
    const/high16 v2, 0x10000000

    #@a0
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a3
    .line 603
    const/16 v18, 0x0

    #@a5
    .line 604
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v11, 0x0

    #@a6
    .line 606
    .local v11, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    #@a8
    iget-object v2, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@aa
    if-eqz v2, :cond_3

    #@ac
    .line 609
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v3, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@b2
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b5
    .line 610
    const/high16 v3, 0x2c000000

    #@b7
    .line 608
    invoke-static {v2, v3}, Lcom/android/commands/am/Am;->openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@ba
    move-result-object v18

    #@bb
    .line 618
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v11, Landroid/app/ProfilerInfo;

    #@bd
    .end local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    #@bf
    iget-object v2, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@c1
    move-object/from16 v0, p0

    #@c3
    iget v3, v0, Lcom/android/commands/am/Am;->mSamplingInterval:I

    #@c5
    move-object/from16 v0, p0

    #@c7
    iget-boolean v4, v0, Lcom/android/commands/am/Am;->mAutoStop:Z

    #@c9
    move-object/from16 v0, v18

    #@cb
    invoke-direct {v11, v2, v0, v3, v4}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    #@ce
    .line 621
    .end local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/16 v24, 0x0

    #@d0
    .line 623
    .local v24, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d3
    move-result-wide v26

    #@d4
    .line 624
    .local v26, "startTime":J
    const/16 v20, 0x0

    #@d6
    .line 625
    .local v20, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    #@d8
    iget v2, v0, Lcom/android/commands/am/Am;->mStackId:I

    #@da
    const/4 v3, -0x1

    #@db
    if-eq v2, v3, :cond_4

    #@dd
    .line 626
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    #@e0
    move-result-object v20

    #@e1
    .line 627
    .local v20, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    #@e3
    iget v2, v0, Lcom/android/commands/am/Am;->mStackId:I

    #@e5
    move-object/from16 v0, v20

    #@e7
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    #@ea
    .line 629
    .end local v20    # "options":Landroid/app/ActivityOptions;
    :cond_4
    move-object/from16 v0, p0

    #@ec
    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@ee
    if-eqz v2, :cond_10

    #@f0
    .line 630
    move-object/from16 v0, p0

    #@f2
    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@f4
    .line 631
    move-object/from16 v0, p0

    #@f6
    iget v10, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@f8
    .line 632
    if-eqz v20, :cond_f

    #@fa
    invoke-virtual/range {v20 .. v20}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@fd
    move-result-object v12

    #@fe
    :goto_1
    move-object/from16 v0, p0

    #@100
    iget v13, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@102
    .line 630
    const/4 v3, 0x0

    #@103
    const/4 v4, 0x0

    #@104
    .line 631
    const/4 v7, 0x0

    #@105
    const/4 v8, 0x0

    #@106
    const/4 v9, 0x0

    #@107
    .line 630
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    #@10a
    move-result-object v24

    #@10b
    .line 633
    .local v24, "result":Landroid/app/IActivityManager$WaitResult;
    move-object/from16 v0, v24

    #@10d
    iget v0, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    #@10f
    move/from16 v23, v0

    #@111
    .line 639
    .end local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    .local v23, "res":I
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@114
    move-result-wide v16

    #@115
    .line 640
    .local v16, "endTime":J
    move-object/from16 v0, p0

    #@117
    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@119
    if-eqz v2, :cond_12

    #@11b
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11d
    .line 641
    .local v21, "out":Ljava/io/PrintStream;
    :goto_3
    const/16 v19, 0x0

    #@11f
    .line 642
    .local v19, "launched":Z
    packed-switch v23, :pswitch_data_0

    #@122
    .line 704
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v3, "Error: Activity not started, unknown error code "

    #@12a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v2

    #@12e
    move/from16 v0, v23

    #@130
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@133
    move-result-object v2

    #@134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v2

    #@138
    .line 703
    move-object/from16 v0, v21

    #@13a
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13d
    .line 707
    :goto_4
    move-object/from16 v0, p0

    #@13f
    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@141
    if-eqz v2, :cond_9

    #@143
    if-eqz v19, :cond_9

    #@145
    .line 708
    if-nez v24, :cond_5

    #@147
    .line 709
    new-instance v24, Landroid/app/IActivityManager$WaitResult;

    #@149
    invoke-direct/range {v24 .. v24}, Landroid/app/IActivityManager$WaitResult;-><init>()V

    #@14c
    .line 710
    .restart local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@14f
    move-result-object v2

    #@150
    move-object/from16 v0, v24

    #@152
    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@154
    .line 712
    .end local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_5
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@156
    new-instance v2, Ljava/lang/StringBuilder;

    #@158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15b
    const-string/jumbo v4, "Status: "

    #@15e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v4

    #@162
    move-object/from16 v0, v24

    #@164
    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@166
    if-eqz v2, :cond_13

    #@168
    const-string/jumbo v2, "timeout"

    #@16b
    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v2

    #@16f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v2

    #@173
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@176
    .line 713
    move-object/from16 v0, v24

    #@178
    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@17a
    if-eqz v2, :cond_6

    #@17c
    .line 714
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17e
    new-instance v3, Ljava/lang/StringBuilder;

    #@180
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@183
    const-string/jumbo v4, "Activity: "

    #@186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v3

    #@18a
    move-object/from16 v0, v24

    #@18c
    iget-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@18e
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@191
    move-result-object v4

    #@192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v3

    #@196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v3

    #@19a
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19d
    .line 716
    :cond_6
    move-object/from16 v0, v24

    #@19f
    iget-wide v2, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@1a1
    const-wide/16 v8, 0x0

    #@1a3
    cmp-long v2, v2, v8

    #@1a5
    if-ltz v2, :cond_7

    #@1a7
    .line 717
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a9
    new-instance v3, Ljava/lang/StringBuilder;

    #@1ab
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1ae
    const-string/jumbo v4, "ThisTime: "

    #@1b1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v3

    #@1b5
    move-object/from16 v0, v24

    #@1b7
    iget-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@1b9
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v3

    #@1bd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c0
    move-result-object v3

    #@1c1
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c4
    .line 719
    :cond_7
    move-object/from16 v0, v24

    #@1c6
    iget-wide v2, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@1c8
    const-wide/16 v8, 0x0

    #@1ca
    cmp-long v2, v2, v8

    #@1cc
    if-ltz v2, :cond_8

    #@1ce
    .line 720
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1d0
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d5
    const-string/jumbo v4, "TotalTime: "

    #@1d8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v3

    #@1dc
    move-object/from16 v0, v24

    #@1de
    iget-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@1e0
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v3

    #@1e4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e7
    move-result-object v3

    #@1e8
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1eb
    .line 722
    :cond_8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1ed
    new-instance v3, Ljava/lang/StringBuilder;

    #@1ef
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f2
    const-string/jumbo v4, "WaitTime: "

    #@1f5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v3

    #@1f9
    sub-long v8, v16, v26

    #@1fb
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v3

    #@1ff
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@202
    move-result-object v3

    #@203
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@206
    .line 723
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@208
    const-string/jumbo v3, "Complete"

    #@20b
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20e
    .line 725
    :cond_9
    move-object/from16 v0, p0

    #@210
    iget v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    #@212
    add-int/lit8 v2, v2, -0x1

    #@214
    move-object/from16 v0, p0

    #@216
    iput v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    #@218
    .line 726
    move-object/from16 v0, p0

    #@21a
    iget v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    #@21c
    const/4 v3, 0x1

    #@21d
    if-le v2, v3, :cond_a

    #@21f
    .line 727
    move-object/from16 v0, p0

    #@221
    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@223
    invoke-interface {v2}, Landroid/app/IActivityManager;->unhandledBack()V

    #@226
    .line 729
    :cond_a
    move-object/from16 v0, p0

    #@228
    iget v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    #@22a
    const/4 v3, 0x1

    #@22b
    if-gt v2, v3, :cond_1

    #@22d
    .line 561
    return-void

    #@22e
    .line 582
    .end local v16    # "endTime":J
    .end local v19    # "launched":Z
    .end local v21    # "out":Ljava/io/PrintStream;
    .end local v23    # "res":I
    .end local v26    # "startTime":J
    :cond_b
    move-object/from16 v0, p0

    #@230
    iget-object v2, v0, Lcom/android/commands/am/Am;->mPm:Landroid/content/pm/IPackageManager;

    #@232
    .line 583
    move-object/from16 v0, p0

    #@234
    iget v3, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@236
    .line 582
    const/4 v4, 0x0

    #@237
    invoke-interface {v2, v5, v6, v4, v3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@23a
    move-result-object v2

    #@23b
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@23e
    move-result-object v14

    #@23f
    .line 584
    .local v14, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_c

    #@241
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@244
    move-result v2

    #@245
    if-gtz v2, :cond_d

    #@247
    .line 585
    :cond_c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@249
    new-instance v3, Ljava/lang/StringBuilder;

    #@24b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24e
    const-string/jumbo v4, "Error: Intent does not match any activities: "

    #@251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@254
    move-result-object v3

    #@255
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@258
    move-result-object v3

    #@259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25c
    move-result-object v3

    #@25d
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@260
    .line 587
    return-void

    #@261
    .line 588
    :cond_d
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@264
    move-result v2

    #@265
    const/4 v3, 0x1

    #@266
    if-le v2, v3, :cond_e

    #@268
    .line 589
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@26a
    new-instance v3, Ljava/lang/StringBuilder;

    #@26c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26f
    const-string/jumbo v4, "Error: Intent matches multiple activities; can\'t stop: "

    #@272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v3

    #@276
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v3

    #@27a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27d
    move-result-object v3

    #@27e
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@281
    .line 591
    return-void

    #@282
    .line 593
    :cond_e
    const/4 v2, 0x0

    #@283
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@286
    move-result-object v2

    #@287
    check-cast v2, Landroid/content/pm/ResolveInfo;

    #@289
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@28b
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@28d
    move-object/from16 v22, v0

    #@28f
    .restart local v22    # "packageName":Ljava/lang/String;
    goto/16 :goto_0

    #@291
    .line 613
    .end local v14    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    .restart local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v15

    #@292
    .line 614
    .local v15, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@294
    new-instance v3, Ljava/lang/StringBuilder;

    #@296
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@299
    const-string/jumbo v4, "Error: Unable to open file: "

    #@29c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v3

    #@2a0
    move-object/from16 v0, p0

    #@2a2
    iget-object v4, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@2a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v3

    #@2a8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ab
    move-result-object v3

    #@2ac
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2af
    .line 615
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2b1
    const-string/jumbo v3, "Consider using a file under /data/local/tmp/"

    #@2b4
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b7
    .line 616
    return-void

    #@2b8
    .line 632
    .end local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .end local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v24, "result":Landroid/app/IActivityManager$WaitResult;
    .restart local v26    # "startTime":J
    :cond_f
    const/4 v12, 0x0

    #@2b9
    goto/16 :goto_1

    #@2bb
    .line 635
    :cond_10
    move-object/from16 v0, p0

    #@2bd
    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2bf
    .line 636
    move-object/from16 v0, p0

    #@2c1
    iget v10, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@2c3
    .line 637
    if-eqz v20, :cond_11

    #@2c5
    invoke-virtual/range {v20 .. v20}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@2c8
    move-result-object v12

    #@2c9
    :goto_6
    move-object/from16 v0, p0

    #@2cb
    iget v13, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@2cd
    .line 635
    const/4 v3, 0x0

    #@2ce
    const/4 v4, 0x0

    #@2cf
    .line 636
    const/4 v7, 0x0

    #@2d0
    const/4 v8, 0x0

    #@2d1
    const/4 v9, 0x0

    #@2d2
    .line 635
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    #@2d5
    move-result v23

    #@2d6
    .restart local v23    # "res":I
    goto/16 :goto_2

    #@2d8
    .line 637
    .end local v23    # "res":I
    :cond_11
    const/4 v12, 0x0

    #@2d9
    goto :goto_6

    #@2da
    .line 640
    .end local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    .restart local v16    # "endTime":J
    .restart local v23    # "res":I
    :cond_12
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2dc
    .restart local v21    # "out":Ljava/io/PrintStream;
    goto/16 :goto_3

    #@2de
    .line 644
    .restart local v19    # "launched":Z
    :pswitch_1
    const/16 v19, 0x1

    #@2e0
    .line 645
    goto/16 :goto_4

    #@2e2
    .line 647
    :pswitch_2
    const/16 v19, 0x1

    #@2e4
    .line 649
    const-string/jumbo v2, "Warning: Activity not started because the  current activity is being kept for the user."

    #@2e7
    .line 648
    move-object/from16 v0, v21

    #@2e9
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2ec
    goto/16 :goto_4

    #@2ee
    .line 653
    :pswitch_3
    const/16 v19, 0x1

    #@2f0
    .line 655
    const-string/jumbo v2, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    #@2f3
    .line 654
    move-object/from16 v0, v21

    #@2f5
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f8
    goto/16 :goto_4

    #@2fa
    .line 660
    :pswitch_4
    const/16 v19, 0x1

    #@2fc
    .line 662
    const-string/jumbo v2, "Warning: Activity not started because intent should be handled by the caller"

    #@2ff
    .line 661
    move-object/from16 v0, v21

    #@301
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@304
    goto/16 :goto_4

    #@306
    .line 666
    :pswitch_5
    const/16 v19, 0x1

    #@308
    .line 668
    const-string/jumbo v2, "Warning: Activity not started, its current task has been brought to the front"

    #@30b
    .line 667
    move-object/from16 v0, v21

    #@30d
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@310
    goto/16 :goto_4

    #@312
    .line 673
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    #@314
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@317
    const-string/jumbo v3, "Error: Activity not started, unable to resolve "

    #@31a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31d
    move-result-object v2

    #@31e
    .line 674
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@321
    move-result-object v3

    #@322
    .line 673
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@325
    move-result-object v2

    #@326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@329
    move-result-object v2

    #@32a
    .line 672
    move-object/from16 v0, v21

    #@32c
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32f
    goto/16 :goto_4

    #@331
    .line 677
    :pswitch_7
    const-string/jumbo v2, "Error type 3"

    #@334
    move-object/from16 v0, v21

    #@336
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@339
    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    #@33b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33e
    const-string/jumbo v3, "Error: Activity class "

    #@341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@344
    move-result-object v2

    #@345
    .line 679
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@348
    move-result-object v3

    #@349
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@34c
    move-result-object v3

    #@34d
    .line 678
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@350
    move-result-object v2

    #@351
    .line 680
    const-string/jumbo v3, " does not exist."

    #@354
    .line 678
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@357
    move-result-object v2

    #@358
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35b
    move-result-object v2

    #@35c
    move-object/from16 v0, v21

    #@35e
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@361
    goto/16 :goto_4

    #@363
    .line 684
    :pswitch_8
    const-string/jumbo v2, "Error: Activity not started, you requested to both forward and receive its result"

    #@366
    .line 683
    move-object/from16 v0, v21

    #@368
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@36b
    goto/16 :goto_4

    #@36d
    .line 689
    :pswitch_9
    const-string/jumbo v2, "Error: Activity not started, you do not have permission to access it."

    #@370
    .line 688
    move-object/from16 v0, v21

    #@372
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@375
    goto/16 :goto_4

    #@377
    .line 694
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    #@379
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37c
    const-string/jumbo v3, "Error: Activity not started, voice control not allowed for: "

    #@37f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@382
    move-result-object v2

    #@383
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@386
    move-result-object v2

    #@387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38a
    move-result-object v2

    #@38b
    .line 693
    move-object/from16 v0, v21

    #@38d
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@390
    goto/16 :goto_4

    #@392
    .line 699
    :pswitch_b
    const-string/jumbo v2, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    #@395
    .line 698
    move-object/from16 v0, v21

    #@397
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@39a
    goto/16 :goto_4

    #@39c
    .line 712
    :cond_13
    const-string/jumbo v2, "ok"

    #@39f
    goto/16 :goto_5

    #@3a1
    .line 642
    nop

    #@3a2
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private runStartService()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 527
    const/4 v0, -0x2

    #@2
    invoke-direct {p0, v0}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@5
    move-result-object v2

    #@6
    .line 528
    .local v2, "intent":Landroid/content/Intent;
    iget v0, p0, Lcom/android/commands/am/Am;->mUserId:I

    #@8
    const/4 v3, -0x1

    #@9
    if-ne v0, v3, :cond_0

    #@b
    .line 529
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d
    const-string/jumbo v1, "Error: Can\'t start activity with user \'all\'"

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13
    .line 530
    return-void

    #@14
    .line 532
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Starting service: "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d
    .line 533
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2f
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 534
    const-string/jumbo v4, "com.android.shell"

    #@36
    iget v5, p0, Lcom/android/commands/am/Am;->mUserId:I

    #@38
    .line 533
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    #@3b
    move-result-object v6

    #@3c
    .line 535
    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_2

    #@3e
    .line 536
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@40
    const-string/jumbo v1, "Error: Not found; no service started."

    #@43
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@46
    .line 526
    :cond_1
    :goto_0
    return-void

    #@47
    .line 537
    :cond_2
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    const-string/jumbo v1, "!"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_3

    #@54
    .line 538
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@56
    new-instance v1, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v3, "Error: Requires permission "

    #@5e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@71
    goto :goto_0

    #@72
    .line 539
    :cond_3
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    const-string/jumbo v1, "!!"

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_1

    #@7f
    .line 540
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@81
    new-instance v1, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v3, "Error: "

    #@89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9c
    goto :goto_0
.end method

.method private runStartUserInBackground()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1163
    .local v1, "user":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9
    move-result v3

    #@a
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    #@d
    move-result v0

    #@e
    .line 1164
    .local v0, "success":Z
    if-eqz v0, :cond_0

    #@10
    .line 1165
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v3, "Success: user started"

    #@15
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 1161
    :goto_0
    return-void

    #@19
    .line 1167
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b
    const-string/jumbo v3, "Error: could not start user"

    #@1e
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@21
    goto :goto_0
.end method

.method private runStopService()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 545
    const/4 v2, -0x2

    #@2
    invoke-direct {p0, v2}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    .line 546
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/android/commands/am/Am;->mUserId:I

    #@8
    if-ne v2, v6, :cond_0

    #@a
    .line 547
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    const-string/jumbo v3, "Error: Can\'t stop activity with user \'all\'"

    #@f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12
    .line 548
    return-void

    #@13
    .line 550
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Stopping service: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c
    .line 551
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2e
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    iget v4, p0, Lcom/android/commands/am/Am;->mUserId:I

    #@34
    const/4 v5, 0x0

    #@35
    invoke-interface {v2, v5, v0, v3, v4}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    #@38
    move-result v1

    #@39
    .line 552
    .local v1, "result":I
    if-nez v1, :cond_2

    #@3b
    .line 553
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d
    const-string/jumbo v3, "Service not stopped: was not running."

    #@40
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 544
    :cond_1
    :goto_0
    return-void

    #@44
    .line 554
    :cond_2
    const/4 v2, 0x1

    #@45
    if-ne v1, v2, :cond_3

    #@47
    .line 555
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@49
    const-string/jumbo v3, "Service stopped"

    #@4c
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    goto :goto_0

    #@50
    .line 556
    :cond_3
    if-ne v1, v6, :cond_1

    #@52
    .line 557
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@54
    const-string/jumbo v3, "Error stopping service"

    #@57
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5a
    goto :goto_0
.end method

.method private runStopUser()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1216
    const/4 v6, 0x0

    #@2
    .line 1217
    .local v6, "wait":Z
    const/4 v1, 0x0

    #@3
    .line 1219
    .local v1, "force":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@9
    .line 1220
    const-string/jumbo v7, "-w"

    #@c
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_0

    #@12
    .line 1221
    const/4 v6, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1222
    :cond_0
    const-string/jumbo v7, "-f"

    #@17
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_1

    #@1d
    .line 1223
    const/4 v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1225
    :cond_1
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@21
    new-instance v8, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v9, "Error: unknown option: "

    #@29
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 1226
    return-void

    #@39
    .line 1229
    :cond_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@40
    move-result v5

    #@41
    .line 1230
    .local v5, "user":I
    if-eqz v6, :cond_4

    #@43
    new-instance v0, Lcom/android/commands/am/Am$StopUserCallback;

    #@45
    invoke-direct {v0, v8}, Lcom/android/commands/am/Am$StopUserCallback;-><init>(Lcom/android/commands/am/Am$StopUserCallback;)V

    #@48
    .line 1232
    :goto_1
    iget-object v7, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@4a
    invoke-interface {v7, v5, v1, v0}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    #@4d
    move-result v3

    #@4e
    .line 1233
    .local v3, "res":I
    if-eqz v3, :cond_5

    #@50
    .line 1234
    const-string/jumbo v4, ""

    #@53
    .line 1235
    .local v4, "txt":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    #@56
    .line 1250
    :goto_2
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@58
    new-instance v8, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v9, "Switch failed: "

    #@60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@73
    .line 1215
    .end local v4    # "txt":Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    #@74
    .line 1230
    .end local v3    # "res":I
    :cond_4
    const/4 v0, 0x0

    #@75
    .local v0, "callback":Lcom/android/commands/am/Am$StopUserCallback;
    goto :goto_1

    #@76
    .line 1237
    .end local v0    # "callback":Lcom/android/commands/am/Am$StopUserCallback;
    .restart local v3    # "res":I
    .restart local v4    # "txt":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v4, " (Can\'t stop current user)"

    #@79
    goto :goto_2

    #@7a
    .line 1240
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v8, " (Unknown user "

    #@82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v7

    #@8a
    const-string/jumbo v8, ")"

    #@8d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v7

    #@91
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    goto :goto_2

    #@96
    .line 1243
    :pswitch_2
    const-string/jumbo v4, " (System user cannot be stopped)"

    #@99
    goto :goto_2

    #@9a
    .line 1246
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v8, " (Can\'t stop user "

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v7

    #@aa
    .line 1247
    const-string/jumbo v8, " - one of its related users can\'t be stopped)"

    #@ad
    .line 1246
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    goto :goto_2

    #@b6
    .line 1251
    .end local v4    # "txt":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_3

    #@b8
    .line 1252
    invoke-virtual {v0}, Lcom/android/commands/am/Am$StopUserCallback;->waitForFinish()V

    #@bb
    goto :goto_3

    #@bc
    .line 1235
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runSuppressResizeConfigChanges()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2431
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@b
    move-result v1

    #@c
    .line 2434
    .local v1, "suppress":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@e
    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->suppressResizeConfigChanges(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 2430
    :goto_0
    return-void

    #@12
    .line 2435
    :catch_0
    move-exception v0

    #@13
    .line 2436
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Error suppressing resize config changes: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c
    goto :goto_0
.end method

.method private runSwitchUser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1158
    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    #@d
    .line 1156
    return-void
.end method

.method private runTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2040
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2041
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "lock"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2042
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTaskLock()V

    #@10
    .line 2039
    :goto_0
    return-void

    #@11
    .line 2043
    :cond_0
    const-string/jumbo v1, "resizeable"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 2044
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTaskResizeable()V

    #@1d
    goto :goto_0

    #@1e
    .line 2045
    :cond_1
    const-string/jumbo v1, "resize"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 2046
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTaskResize()V

    #@2a
    goto :goto_0

    #@2b
    .line 2047
    :cond_2
    const-string/jumbo v1, "drag-task-test"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 2048
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTaskDragTaskTest()V

    #@37
    goto :goto_0

    #@38
    .line 2049
    :cond_3
    const-string/jumbo v1, "size-task-test"

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 2050
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTaskSizeTaskTest()V

    #@44
    goto :goto_0

    #@45
    .line 2052
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "Error: unknown command \'"

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    const-string/jumbo v2, "\'"

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@63
    .line 2053
    return-void
.end method

.method private runTaskDragTaskTest()V
    .locals 35

    #@0
    .prologue
    .line 2107
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v2

    #@8
    .line 2108
    .local v2, "taskId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f
    move-result v5

    #@10
    .line 2109
    .local v5, "stepSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    #@13
    move-result-object v31

    #@14
    .line 2110
    .local v31, "delayStr":Ljava/lang/String;
    if-eqz v31, :cond_0

    #@16
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v9

    #@1a
    .line 2114
    .local v9, "delay_ms":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    #@1c
    iget-object v1, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v7, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@22
    invoke-interface {v7}, Landroid/app/IActivityManager;->getFocusedStackId()I

    #@25
    move-result v7

    #@26
    invoke-interface {v1, v7}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    #@29
    move-result-object v34

    #@2a
    .line 2115
    .local v34, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    move-object/from16 v0, p0

    #@2c
    iget-object v1, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2e
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getTaskBounds(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    move-result-object v3

    #@32
    .line 2120
    .local v3, "taskBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v34

    #@34
    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@36
    .line 2121
    .local v4, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@39
    move-result v1

    #@3a
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@3d
    move-result v7

    #@3e
    sub-int v6, v1, v7

    #@40
    .line 2122
    .local v6, "travelRight":I
    neg-int v0, v6

    #@41
    move/from16 v21, v0

    #@43
    .line 2123
    .local v21, "travelLeft":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@46
    move-result v1

    #@47
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@4a
    move-result v7

    #@4b
    sub-int v15, v1, v7

    #@4d
    .line 2124
    .local v15, "travelDown":I
    neg-int v0, v15

    #@4e
    move/from16 v27, v0

    #@50
    .line 2125
    .local v27, "travelUp":I
    const/16 v33, 0x0

    #@52
    .line 2128
    .local v33, "passes":I
    :goto_1
    const/4 v1, 0x2

    #@53
    move/from16 v0, v33

    #@55
    if-ge v0, v1, :cond_1

    #@57
    .line 2130
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@59
    const-string/jumbo v7, "Moving right..."

    #@5c
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5f
    .line 2132
    const/4 v7, 0x1

    #@60
    const/4 v8, 0x1

    #@61
    move-object/from16 v1, p0

    #@63
    .line 2131
    invoke-direct/range {v1 .. v9}, Lcom/android/commands/am/Am;->moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I

    #@66
    move-result v6

    #@67
    .line 2133
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@69
    new-instance v7, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v8, "Still need to travel right by "

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@80
    .line 2136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@82
    const-string/jumbo v7, "Moving down..."

    #@85
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@88
    .line 2138
    const/16 v16, 0x1

    #@8a
    const/16 v17, 0x0

    #@8c
    move-object/from16 v10, p0

    #@8e
    move v11, v2

    #@8f
    move-object v12, v3

    #@90
    move-object v13, v4

    #@91
    move v14, v5

    #@92
    move/from16 v18, v9

    #@94
    .line 2137
    invoke-direct/range {v10 .. v18}, Lcom/android/commands/am/Am;->moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I

    #@97
    move-result v15

    #@98
    .line 2139
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9a
    new-instance v7, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v8, "Still need to travel down by "

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v7

    #@aa
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v7

    #@ae
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b1
    .line 2142
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b3
    const-string/jumbo v7, "Moving left..."

    #@b6
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b9
    .line 2144
    const/16 v22, 0x0

    #@bb
    const/16 v23, 0x1

    #@bd
    move-object/from16 v16, p0

    #@bf
    move/from16 v17, v2

    #@c1
    move-object/from16 v18, v3

    #@c3
    move-object/from16 v19, v4

    #@c5
    move/from16 v20, v5

    #@c7
    move/from16 v24, v9

    #@c9
    .line 2143
    invoke-direct/range {v16 .. v24}, Lcom/android/commands/am/Am;->moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I

    #@cc
    move-result v21

    #@cd
    .line 2145
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@cf
    new-instance v7, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v8, "Still need to travel left by "

    #@d7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v7

    #@db
    move/from16 v0, v21

    #@dd
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v7

    #@e1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v7

    #@e5
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e8
    .line 2148
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ea
    const-string/jumbo v7, "Moving up..."

    #@ed
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f0
    .line 2150
    const/16 v28, 0x0

    #@f2
    const/16 v29, 0x0

    #@f4
    move-object/from16 v22, p0

    #@f6
    move/from16 v23, v2

    #@f8
    move-object/from16 v24, v3

    #@fa
    move-object/from16 v25, v4

    #@fc
    move/from16 v26, v5

    #@fe
    move/from16 v30, v9

    #@100
    .line 2149
    invoke-direct/range {v22 .. v30}, Lcom/android/commands/am/Am;->moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I

    #@103
    move-result v27

    #@104
    .line 2151
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@106
    new-instance v7, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v8, "Still need to travel up by "

    #@10e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v7

    #@112
    move/from16 v0, v27

    #@114
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@117
    move-result-object v7

    #@118
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v7

    #@11c
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@11f
    .line 2154
    :try_start_1
    move-object/from16 v0, p0

    #@121
    iget-object v1, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@123
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getTaskBounds(I)Landroid/graphics/Rect;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@126
    move-result-object v3

    #@127
    .line 2159
    add-int/lit8 v33, v33, 0x1

    #@129
    goto/16 :goto_1

    #@12b
    .line 2110
    .end local v3    # "taskBounds":Landroid/graphics/Rect;
    .end local v4    # "stackBounds":Landroid/graphics/Rect;
    .end local v6    # "travelRight":I
    .end local v9    # "delay_ms":I
    .end local v15    # "travelDown":I
    .end local v21    # "travelLeft":I
    .end local v27    # "travelUp":I
    .end local v33    # "passes":I
    .end local v34    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    const/4 v9, 0x0

    #@12c
    .restart local v9    # "delay_ms":I
    goto/16 :goto_0

    #@12e
    .line 2116
    :catch_0
    move-exception v32

    #@12f
    .line 2117
    .local v32, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@131
    new-instance v7, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v8, "Error getting focus stack info or task bounds: "

    #@139
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v7

    #@13d
    move-object/from16 v0, v32

    #@13f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v7

    #@143
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v7

    #@147
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@14a
    .line 2118
    return-void

    #@14b
    .line 2155
    .end local v32    # "e":Landroid/os/RemoteException;
    .restart local v3    # "taskBounds":Landroid/graphics/Rect;
    .restart local v4    # "stackBounds":Landroid/graphics/Rect;
    .restart local v6    # "travelRight":I
    .restart local v15    # "travelDown":I
    .restart local v21    # "travelLeft":I
    .restart local v27    # "travelUp":I
    .restart local v33    # "passes":I
    .restart local v34    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_1
    move-exception v32

    #@14c
    .line 2156
    .restart local v32    # "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14e
    new-instance v7, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v8, "Error getting task bounds: "

    #@156
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v7

    #@15a
    move-object/from16 v0, v32

    #@15c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v7

    #@160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v7

    #@164
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@167
    .line 2157
    return-void

    #@168
    .line 2106
    .end local v32    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private runTaskLock()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2058
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 2060
    .local v2, "taskIdStr":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "stop"

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 2061
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@f
    invoke-interface {v3}, Landroid/app/IActivityManager;->stopLockTaskMode()V

    #@12
    .line 2066
    :goto_0
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Activity manager is "

    #@1c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@22
    invoke-interface {v3}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const-string/jumbo v3, ""

    #@2b
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 2067
    const-string/jumbo v5, "in lockTaskMode"

    #@32
    .line 2066
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    .line 2057
    :goto_2
    return-void

    #@3e
    .line 2063
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@41
    move-result v1

    #@42
    .line 2064
    .local v1, "taskId":I
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@44
    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->startLockTaskMode(I)V

    #@47
    goto :goto_0

    #@48
    .line 2068
    .end local v1    # "taskId":I
    :catch_0
    move-exception v0

    #@49
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@4a
    .line 2066
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v3, "not "
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    goto :goto_1
.end method

.method private runTaskResize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2085
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 2086
    .local v2, "taskIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    .line 2087
    .local v1, "taskId":I
    invoke-direct {p0}, Lcom/android/commands/am/Am;->getBounds()Landroid/graphics/Rect;

    #@c
    move-result-object v0

    #@d
    .line 2088
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    #@f
    .line 2089
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@11
    const-string/jumbo v4, "Error: invalid input bounds"

    #@14
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@17
    .line 2090
    return-void

    #@18
    .line 2092
    :cond_0
    invoke-direct {p0, v1, v0, v3, v3}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@1b
    .line 2084
    return-void
.end method

.method private runTaskResizeable()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2073
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 2074
    .local v4, "taskIdStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v3

    #@8
    .line 2075
    .local v3, "taskId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 2076
    .local v2, "resizeableStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f
    move-result v1

    #@10
    .line 2079
    .local v1, "resizeableMode":I
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@12
    invoke-interface {v5, v3, v1}, Landroid/app/IActivityManager;->setTaskResizeable(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 2072
    :goto_0
    return-void

    #@16
    .line 2080
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private runTaskSizeTaskTest()V
    .locals 14

    #@0
    .prologue
    const/16 v11, 0xa

    #@2
    const/4 v13, 0x0

    #@3
    const/4 v12, 0x1

    #@4
    .line 2206
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@7
    move-result-object v9

    #@8
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v8

    #@c
    .line 2207
    .local v8, "taskId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@f
    move-result-object v9

    #@10
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13
    move-result v7

    #@14
    .line 2208
    .local v7, "stepSize":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 2209
    .local v1, "delayStr":Ljava/lang/String;
    if-eqz v1, :cond_8

    #@1a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1d
    move-result v2

    #@1e
    .line 2213
    .local v2, "delay_ms":I
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@20
    iget-object v10, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@22
    invoke-interface {v10}, Landroid/app/IActivityManager;->getFocusedStackId()I

    #@25
    move-result v10

    #@26
    invoke-interface {v9, v10}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    #@29
    move-result-object v6

    #@2a
    .line 2214
    .local v6, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v9, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2c
    invoke-interface {v9, v8}, Landroid/app/IActivityManager;->getTaskBounds(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result-object v4

    #@30
    .line 2219
    .local v4, "initialTaskBounds":Landroid/graphics/Rect;
    iget-object v5, v6, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@32
    .line 2220
    .local v5, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v11, v11}, Landroid/graphics/Rect;->inset(II)V

    #@35
    .line 2221
    new-instance v0, Landroid/graphics/Rect;

    #@37
    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@3a
    .line 2224
    .local v0, "currentTaskBounds":Landroid/graphics/Rect;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3c
    const-string/jumbo v10, "Growing top-left"

    #@3f
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@42
    .line 2226
    :cond_0
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@44
    .line 2227
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@46
    iget v11, v5, Landroid/graphics/Rect;->top:I

    #@48
    .line 2226
    invoke-direct {p0, v10, v11, v7, v12}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@4b
    move-result v10

    #@4c
    sub-int/2addr v9, v10

    #@4d
    iput v9, v0, Landroid/graphics/Rect;->top:I

    #@4f
    .line 2229
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@51
    .line 2230
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@53
    iget v11, v5, Landroid/graphics/Rect;->left:I

    #@55
    .line 2229
    invoke-direct {p0, v10, v11, v7, v12}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@58
    move-result v10

    #@59
    sub-int/2addr v9, v10

    #@5a
    iput v9, v0, Landroid/graphics/Rect;->left:I

    #@5c
    .line 2232
    invoke-direct {p0, v8, v0, v2, v12}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@5f
    .line 2233
    iget v9, v5, Landroid/graphics/Rect;->top:I

    #@61
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@63
    if-lt v9, v10, :cond_0

    #@65
    .line 2234
    iget v9, v5, Landroid/graphics/Rect;->left:I

    #@67
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@69
    if-lt v9, v10, :cond_0

    #@6b
    .line 2237
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6d
    const-string/jumbo v10, "Shrinking top-left"

    #@70
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@73
    .line 2239
    :cond_1
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@75
    .line 2240
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@77
    iget v11, v4, Landroid/graphics/Rect;->top:I

    #@79
    .line 2239
    invoke-direct {p0, v10, v11, v7, v13}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@7c
    move-result v10

    #@7d
    add-int/2addr v9, v10

    #@7e
    iput v9, v0, Landroid/graphics/Rect;->top:I

    #@80
    .line 2242
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@82
    .line 2243
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@84
    iget v11, v4, Landroid/graphics/Rect;->left:I

    #@86
    .line 2242
    invoke-direct {p0, v10, v11, v7, v13}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@89
    move-result v10

    #@8a
    add-int/2addr v9, v10

    #@8b
    iput v9, v0, Landroid/graphics/Rect;->left:I

    #@8d
    .line 2245
    invoke-direct {p0, v8, v0, v2, v12}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@90
    .line 2246
    iget v9, v4, Landroid/graphics/Rect;->top:I

    #@92
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@94
    if-gt v9, v10, :cond_1

    #@96
    .line 2247
    iget v9, v4, Landroid/graphics/Rect;->left:I

    #@98
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@9a
    if-gt v9, v10, :cond_1

    #@9c
    .line 2250
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9e
    const-string/jumbo v10, "Growing top-right"

    #@a1
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a4
    .line 2252
    :cond_2
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@a6
    .line 2253
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@a8
    iget v11, v5, Landroid/graphics/Rect;->top:I

    #@aa
    .line 2252
    invoke-direct {p0, v10, v11, v7, v12}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@ad
    move-result v10

    #@ae
    sub-int/2addr v9, v10

    #@af
    iput v9, v0, Landroid/graphics/Rect;->top:I

    #@b1
    .line 2255
    iget v9, v0, Landroid/graphics/Rect;->right:I

    #@b3
    .line 2256
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@b5
    iget v11, v5, Landroid/graphics/Rect;->right:I

    #@b7
    .line 2255
    invoke-direct {p0, v10, v11, v7, v13}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@ba
    move-result v10

    #@bb
    add-int/2addr v9, v10

    #@bc
    iput v9, v0, Landroid/graphics/Rect;->right:I

    #@be
    .line 2258
    invoke-direct {p0, v8, v0, v2, v12}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@c1
    .line 2259
    iget v9, v5, Landroid/graphics/Rect;->top:I

    #@c3
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@c5
    if-lt v9, v10, :cond_2

    #@c7
    .line 2260
    iget v9, v5, Landroid/graphics/Rect;->right:I

    #@c9
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@cb
    if-gt v9, v10, :cond_2

    #@cd
    .line 2263
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@cf
    const-string/jumbo v10, "Shrinking top-right"

    #@d2
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d5
    .line 2265
    :cond_3
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@d7
    .line 2266
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@d9
    iget v11, v4, Landroid/graphics/Rect;->top:I

    #@db
    .line 2265
    invoke-direct {p0, v10, v11, v7, v13}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@de
    move-result v10

    #@df
    add-int/2addr v9, v10

    #@e0
    iput v9, v0, Landroid/graphics/Rect;->top:I

    #@e2
    .line 2268
    iget v9, v0, Landroid/graphics/Rect;->right:I

    #@e4
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@e6
    iget v11, v4, Landroid/graphics/Rect;->right:I

    #@e8
    invoke-direct {p0, v10, v11, v7, v12}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@eb
    move-result v10

    #@ec
    sub-int/2addr v9, v10

    #@ed
    iput v9, v0, Landroid/graphics/Rect;->right:I

    #@ef
    .line 2271
    invoke-direct {p0, v8, v0, v2, v12}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@f2
    .line 2272
    iget v9, v4, Landroid/graphics/Rect;->top:I

    #@f4
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@f6
    if-gt v9, v10, :cond_3

    #@f8
    .line 2273
    iget v9, v4, Landroid/graphics/Rect;->right:I

    #@fa
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@fc
    if-lt v9, v10, :cond_3

    #@fe
    .line 2276
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@100
    const-string/jumbo v10, "Growing bottom-left"

    #@103
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@106
    .line 2278
    :cond_4
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    #@108
    .line 2279
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #@10a
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    #@10c
    .line 2278
    invoke-direct {p0, v10, v11, v7, v13}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@10f
    move-result v10

    #@110
    add-int/2addr v9, v10

    #@111
    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    #@113
    .line 2281
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@115
    .line 2282
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@117
    iget v11, v5, Landroid/graphics/Rect;->left:I

    #@119
    .line 2281
    invoke-direct {p0, v10, v11, v7, v12}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@11c
    move-result v10

    #@11d
    sub-int/2addr v9, v10

    #@11e
    iput v9, v0, Landroid/graphics/Rect;->left:I

    #@120
    .line 2284
    invoke-direct {p0, v8, v0, v2, v12}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@123
    .line 2285
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    #@125
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #@127
    if-gt v9, v10, :cond_4

    #@129
    .line 2286
    iget v9, v5, Landroid/graphics/Rect;->left:I

    #@12b
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@12d
    if-lt v9, v10, :cond_4

    #@12f
    .line 2289
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@131
    const-string/jumbo v10, "Shrinking bottom-left"

    #@134
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@137
    .line 2291
    :cond_5
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    #@139
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #@13b
    .line 2292
    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    #@13d
    .line 2291
    invoke-direct {p0, v10, v11, v7, v12}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@140
    move-result v10

    #@141
    sub-int/2addr v9, v10

    #@142
    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    #@144
    .line 2294
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@146
    .line 2295
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@148
    iget v11, v4, Landroid/graphics/Rect;->left:I

    #@14a
    .line 2294
    invoke-direct {p0, v10, v11, v7, v13}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@14d
    move-result v10

    #@14e
    add-int/2addr v9, v10

    #@14f
    iput v9, v0, Landroid/graphics/Rect;->left:I

    #@151
    .line 2297
    invoke-direct {p0, v8, v0, v2, v12}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@154
    .line 2298
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    #@156
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #@158
    if-lt v9, v10, :cond_5

    #@15a
    .line 2299
    iget v9, v4, Landroid/graphics/Rect;->left:I

    #@15c
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@15e
    if-gt v9, v10, :cond_5

    #@160
    .line 2302
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@162
    const-string/jumbo v10, "Growing bottom-right"

    #@165
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@168
    .line 2304
    :cond_6
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    #@16a
    .line 2305
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #@16c
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    #@16e
    .line 2304
    invoke-direct {p0, v10, v11, v7, v13}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@171
    move-result v10

    #@172
    add-int/2addr v9, v10

    #@173
    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    #@175
    .line 2307
    iget v9, v0, Landroid/graphics/Rect;->right:I

    #@177
    .line 2308
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@179
    iget v11, v5, Landroid/graphics/Rect;->right:I

    #@17b
    .line 2307
    invoke-direct {p0, v10, v11, v7, v13}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@17e
    move-result v10

    #@17f
    add-int/2addr v9, v10

    #@180
    iput v9, v0, Landroid/graphics/Rect;->right:I

    #@182
    .line 2310
    invoke-direct {p0, v8, v0, v2, v12}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@185
    .line 2311
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    #@187
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #@189
    if-gt v9, v10, :cond_6

    #@18b
    .line 2312
    iget v9, v5, Landroid/graphics/Rect;->right:I

    #@18d
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@18f
    if-gt v9, v10, :cond_6

    #@191
    .line 2315
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@193
    const-string/jumbo v10, "Shrinking bottom-right"

    #@196
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@199
    .line 2317
    :cond_7
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    #@19b
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #@19d
    .line 2318
    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    #@19f
    .line 2317
    invoke-direct {p0, v10, v11, v7, v12}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@1a2
    move-result v10

    #@1a3
    sub-int/2addr v9, v10

    #@1a4
    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    #@1a6
    .line 2320
    iget v9, v0, Landroid/graphics/Rect;->right:I

    #@1a8
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@1aa
    iget v11, v4, Landroid/graphics/Rect;->right:I

    #@1ac
    invoke-direct {p0, v10, v11, v7, v12}, Lcom/android/commands/am/Am;->getStepSize(IIIZ)I

    #@1af
    move-result v10

    #@1b0
    sub-int/2addr v9, v10

    #@1b1
    iput v9, v0, Landroid/graphics/Rect;->right:I

    #@1b3
    .line 2323
    invoke-direct {p0, v8, v0, v2, v12}, Lcom/android/commands/am/Am;->taskResize(ILandroid/graphics/Rect;IZ)V

    #@1b6
    .line 2324
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    #@1b8
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #@1ba
    if-lt v9, v10, :cond_7

    #@1bc
    .line 2325
    iget v9, v4, Landroid/graphics/Rect;->right:I

    #@1be
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@1c0
    if-lt v9, v10, :cond_7

    #@1c2
    .line 2205
    return-void

    #@1c3
    .line 2209
    .end local v0    # "currentTaskBounds":Landroid/graphics/Rect;
    .end local v2    # "delay_ms":I
    .end local v4    # "initialTaskBounds":Landroid/graphics/Rect;
    .end local v5    # "stackBounds":Landroid/graphics/Rect;
    .end local v6    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_8
    const/4 v2, 0x0

    #@1c4
    .restart local v2    # "delay_ms":I
    goto/16 :goto_0

    #@1c6
    .line 2215
    :catch_0
    move-exception v3

    #@1c7
    .line 2216
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c9
    new-instance v10, Ljava/lang/StringBuilder;

    #@1cb
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1ce
    const-string/jumbo v11, "Error getting focus stack info or task bounds: "

    #@1d1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v10

    #@1d5
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v10

    #@1d9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v10

    #@1dd
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e0
    .line 2217
    return-void
.end method

.method private runToUri(I)V
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1642
    const/4 v1, -0x2

    #@1
    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    .line 1643
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 1641
    return-void
.end method

.method private runTraceIpc()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 906
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "start"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 907
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTraceIpcStart()V

    #@10
    .line 904
    :goto_0
    return-void

    #@11
    .line 908
    :cond_0
    const-string/jumbo v1, "stop"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 909
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTraceIpcStop()V

    #@1d
    goto :goto_0

    #@1e
    .line 911
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Error: unknown command \'"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "\'"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@3c
    .line 912
    return-void
.end method

.method private runTraceIpcStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 917
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "Starting IPC tracing."

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 918
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@a
    invoke-interface {v0}, Landroid/app/IActivityManager;->startBinderTracking()Z

    #@d
    .line 916
    return-void
.end method

.method private runTraceIpcStop()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 923
    const/4 v3, 0x0

    #@1
    .line 924
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    .local v4, "opt":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@7
    .line 925
    const-string/jumbo v5, "--dump-file"

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 926
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .local v3, "filename":Ljava/lang/String;
    goto :goto_0

    #@15
    .line 928
    .end local v3    # "filename":Ljava/lang/String;
    :cond_0
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17
    new-instance v6, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v7, "Error: Unknown option: "

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 929
    return-void

    #@2f
    .line 932
    :cond_1
    if-nez v3, :cond_2

    #@31
    .line 933
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@33
    const-string/jumbo v6, "Error: Specify filename to dump logs to."

    #@36
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@39
    .line 934
    return-void

    #@3a
    .line 937
    :cond_2
    const/4 v1, 0x0

    #@3b
    .line 940
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@3d
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@40
    .line 941
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@43
    .line 943
    const/high16 v5, 0x2c000000

    #@45
    .line 942
    invoke-static {v2, v5}, Lcom/android/commands/am/Am;->openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    move-result-object v1

    #@49
    .line 953
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@4b
    invoke-interface {v5, v1}, Landroid/app/IActivityManager;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    #@4e
    move-result v5

    #@4f
    if-nez v5, :cond_3

    #@51
    .line 954
    new-instance v5, Landroid/util/AndroidException;

    #@53
    const-string/jumbo v6, "STOP TRACE FAILED."

    #@56
    invoke-direct {v5, v6}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@59
    throw v5

    #@5a
    .line 946
    .end local v2    # "file":Ljava/io/File;
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    #@5b
    .line 947
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5d
    new-instance v6, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v7, "Error: Unable to open file: "

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@74
    .line 948
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@76
    const-string/jumbo v6, "Consider using a file under /data/local/tmp/"

    #@79
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7c
    .line 949
    return-void

    #@7d
    .line 957
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7f
    new-instance v6, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v7, "Stopped IPC tracing. Dumping logs to: "

    #@87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@96
    .line 921
    return-void
.end method

.method private runUnlockUser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v3

    #@8
    .line 1181
    .local v3, "userId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-direct {p0, v4}, Lcom/android/commands/am/Am;->argToBytes(Ljava/lang/String;)[B

    #@f
    move-result-object v2

    #@10
    .line 1182
    .local v2, "token":[B
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-direct {p0, v4}, Lcom/android/commands/am/Am;->argToBytes(Ljava/lang/String;)[B

    #@17
    move-result-object v0

    #@18
    .line 1183
    .local v0, "secret":[B
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v4, v3, v2, v0, v5}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    #@1e
    move-result v1

    #@1f
    .line 1184
    .local v1, "success":Z
    if-eqz v1, :cond_0

    #@21
    .line 1185
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@23
    const-string/jumbo v5, "Success: user unlocked"

    #@26
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29
    .line 1179
    :goto_0
    return-void

    #@2a
    .line 1187
    :cond_0
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2c
    const-string/jumbo v5, "Error: could not unlock user"

    #@2f
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    goto :goto_0
.end method

.method private sendBroadcast()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 767
    const/4 v0, -0x2

    #@4
    invoke-direct {p0, v0}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@7
    move-result-object v2

    #@8
    .line 768
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/android/commands/am/Am$IntentReceiver;

    #@a
    invoke-direct {v4, p0, v1}, Lcom/android/commands/am/Am$IntentReceiver;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$IntentReceiver;)V

    #@d
    .line 769
    .local v4, "receiver":Lcom/android/commands/am/Am$IntentReceiver;
    iget-object v0, p0, Lcom/android/commands/am/Am;->mReceiverPermission:Ljava/lang/String;

    #@f
    if-nez v0, :cond_0

    #@11
    const/4 v8, 0x0

    #@12
    .line 771
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v6, "Broadcasting: "

    #@1c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 772
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2d
    .line 773
    iget v13, p0, Lcom/android/commands/am/Am;->mUserId:I

    #@2f
    const/4 v9, -0x1

    #@30
    move-object v3, v1

    #@31
    move-object v6, v1

    #@32
    move-object v7, v1

    #@33
    move-object v10, v1

    #@34
    move v12, v5

    #@35
    .line 772
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    #@38
    .line 774
    invoke-virtual {v4}, Lcom/android/commands/am/Am$IntentReceiver;->waitForFinish()V

    #@3b
    .line 766
    return-void

    #@3c
    .line 770
    :cond_0
    new-array v8, v11, [Ljava/lang/String;

    #@3e
    iget-object v0, p0, Lcom/android/commands/am/Am;->mReceiverPermission:Ljava/lang/String;

    #@40
    aput-object v0, v8, v5

    #@42
    .local v8, "requiredPermissions":[Ljava/lang/String;
    goto :goto_0
.end method

.method private setBoundsSide(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "side"    # Ljava/lang/String;
    .param p3, "value"    # I

    #@0
    .prologue
    .line 2020
    const-string/jumbo v0, "l"

    #@3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2022
    iput p3, p1, Landroid/graphics/Rect;->left:I

    #@b
    .line 2019
    :goto_0
    return-void

    #@c
    .line 2020
    :cond_0
    const-string/jumbo v0, "r"

    #@f
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2025
    iput p3, p1, Landroid/graphics/Rect;->right:I

    #@17
    goto :goto_0

    #@18
    .line 2020
    :cond_1
    const-string/jumbo v0, "t"

    #@1b
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 2028
    iput p3, p1, Landroid/graphics/Rect;->top:I

    #@23
    goto :goto_0

    #@24
    .line 2020
    :cond_2
    const-string/jumbo v0, "b"

    #@27
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 2031
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    #@2f
    goto :goto_0

    #@30
    .line 2034
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v1, "Unknown set side: "

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@47
    goto :goto_0
.end method

.method private taskResize(ILandroid/graphics/Rect;IZ)V
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delay_ms"    # I
    .param p4, "pretendUserResize"    # Z

    #@0
    .prologue
    .line 2097
    if-eqz p4, :cond_0

    #@2
    const/4 v2, 0x1

    #@3
    .line 2098
    .local v2, "resizeMode":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@5
    invoke-interface {v3, p1, p2, v2}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V

    #@8
    .line 2099
    int-to-long v4, p3

    #@9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    #@c
    .line 2095
    :goto_1
    return-void

    #@d
    .line 2097
    .end local v2    # "resizeMode":I
    :cond_0
    const/4 v2, 0x0

    #@e
    .restart local v2    # "resizeMode":I
    goto :goto_0

    #@f
    .line 2100
    :catch_0
    move-exception v0

    #@10
    .line 2101
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Error changing task bounds: "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29
    goto :goto_1

    #@2a
    .line 2102
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@2b
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public onRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 373
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iput-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@6
    .line 374
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 375
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    const-string/jumbo v2, "Error type 2"

    #@f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12
    .line 376
    new-instance v1, Landroid/util/AndroidException;

    #@14
    const-string/jumbo v2, "Can\'t connect to activity manager; is the system running?"

    #@17
    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 379
    :cond_0
    const-string/jumbo v1, "package"

    #@1e
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@21
    move-result-object v1

    #@22
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Lcom/android/commands/am/Am;->mPm:Landroid/content/pm/IPackageManager;

    #@28
    .line 380
    iget-object v1, p0, Lcom/android/commands/am/Am;->mPm:Landroid/content/pm/IPackageManager;

    #@2a
    if-nez v1, :cond_1

    #@2c
    .line 381
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2e
    const-string/jumbo v2, "Error type 2"

    #@31
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 382
    new-instance v1, Landroid/util/AndroidException;

    #@36
    const-string/jumbo v2, "Can\'t connect to package manager; is the system running?"

    #@39
    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v1

    #@3d
    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 387
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "start"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_2

    #@4a
    .line 388
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStart()V

    #@4d
    .line 371
    :goto_0
    return-void

    #@4e
    .line 389
    :cond_2
    const-string/jumbo v1, "startservice"

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_3

    #@57
    .line 390
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStartService()V

    #@5a
    goto :goto_0

    #@5b
    .line 391
    :cond_3
    const-string/jumbo v1, "stopservice"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_4

    #@64
    .line 392
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStopService()V

    #@67
    goto :goto_0

    #@68
    .line 393
    :cond_4
    const-string/jumbo v1, "force-stop"

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v1

    #@6f
    if-eqz v1, :cond_5

    #@71
    .line 394
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runForceStop()V

    #@74
    goto :goto_0

    #@75
    .line 395
    :cond_5
    const-string/jumbo v1, "kill"

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_6

    #@7e
    .line 396
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runKill()V

    #@81
    goto :goto_0

    #@82
    .line 397
    :cond_6
    const-string/jumbo v1, "kill-all"

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v1

    #@89
    if-eqz v1, :cond_7

    #@8b
    .line 398
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runKillAll()V

    #@8e
    goto :goto_0

    #@8f
    .line 399
    :cond_7
    const-string/jumbo v1, "instrument"

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v1

    #@96
    if-eqz v1, :cond_8

    #@98
    .line 400
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runInstrument()V

    #@9b
    goto :goto_0

    #@9c
    .line 401
    :cond_8
    const-string/jumbo v1, "trace-ipc"

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v1

    #@a3
    if-eqz v1, :cond_9

    #@a5
    .line 402
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTraceIpc()V

    #@a8
    goto :goto_0

    #@a9
    .line 403
    :cond_9
    const-string/jumbo v1, "broadcast"

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v1

    #@b0
    if-eqz v1, :cond_a

    #@b2
    .line 404
    invoke-direct {p0}, Lcom/android/commands/am/Am;->sendBroadcast()V

    #@b5
    goto :goto_0

    #@b6
    .line 405
    :cond_a
    const-string/jumbo v1, "profile"

    #@b9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v1

    #@bd
    if-eqz v1, :cond_b

    #@bf
    .line 406
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runProfile()V

    #@c2
    goto :goto_0

    #@c3
    .line 407
    :cond_b
    const-string/jumbo v1, "dumpheap"

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v1

    #@ca
    if-eqz v1, :cond_c

    #@cc
    .line 408
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runDumpHeap()V

    #@cf
    goto/16 :goto_0

    #@d1
    .line 409
    :cond_c
    const-string/jumbo v1, "set-debug-app"

    #@d4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v1

    #@d8
    if-eqz v1, :cond_d

    #@da
    .line 410
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSetDebugApp()V

    #@dd
    goto/16 :goto_0

    #@df
    .line 411
    :cond_d
    const-string/jumbo v1, "clear-debug-app"

    #@e2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e5
    move-result v1

    #@e6
    if-eqz v1, :cond_e

    #@e8
    .line 412
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runClearDebugApp()V

    #@eb
    goto/16 :goto_0

    #@ed
    .line 413
    :cond_e
    const-string/jumbo v1, "set-watch-heap"

    #@f0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f3
    move-result v1

    #@f4
    if-eqz v1, :cond_f

    #@f6
    .line 414
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSetWatchHeap()V

    #@f9
    goto/16 :goto_0

    #@fb
    .line 415
    :cond_f
    const-string/jumbo v1, "clear-watch-heap"

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@101
    move-result v1

    #@102
    if-eqz v1, :cond_10

    #@104
    .line 416
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runClearWatchHeap()V

    #@107
    goto/16 :goto_0

    #@109
    .line 417
    :cond_10
    const-string/jumbo v1, "bug-report"

    #@10c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10f
    move-result v1

    #@110
    if-eqz v1, :cond_11

    #@112
    .line 418
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runBugReport()V

    #@115
    goto/16 :goto_0

    #@117
    .line 419
    :cond_11
    const-string/jumbo v1, "monitor"

    #@11a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11d
    move-result v1

    #@11e
    if-eqz v1, :cond_12

    #@120
    .line 420
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runMonitor()V

    #@123
    goto/16 :goto_0

    #@125
    .line 421
    :cond_12
    const-string/jumbo v1, "hang"

    #@128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12b
    move-result v1

    #@12c
    if-eqz v1, :cond_13

    #@12e
    .line 422
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runHang()V

    #@131
    goto/16 :goto_0

    #@133
    .line 423
    :cond_13
    const-string/jumbo v1, "restart"

    #@136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@139
    move-result v1

    #@13a
    if-eqz v1, :cond_14

    #@13c
    .line 424
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runRestart()V

    #@13f
    goto/16 :goto_0

    #@141
    .line 425
    :cond_14
    const-string/jumbo v1, "idle-maintenance"

    #@144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@147
    move-result v1

    #@148
    if-eqz v1, :cond_15

    #@14a
    .line 426
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runIdleMaintenance()V

    #@14d
    goto/16 :goto_0

    #@14f
    .line 427
    :cond_15
    const-string/jumbo v1, "screen-compat"

    #@152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@155
    move-result v1

    #@156
    if-eqz v1, :cond_16

    #@158
    .line 428
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runScreenCompat()V

    #@15b
    goto/16 :goto_0

    #@15d
    .line 429
    :cond_16
    const-string/jumbo v1, "package-importance"

    #@160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@163
    move-result v1

    #@164
    if-eqz v1, :cond_17

    #@166
    .line 430
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runPackageImportance()V

    #@169
    goto/16 :goto_0

    #@16b
    .line 431
    :cond_17
    const-string/jumbo v1, "to-uri"

    #@16e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@171
    move-result v1

    #@172
    if-eqz v1, :cond_18

    #@174
    .line 432
    const/4 v1, 0x0

    #@175
    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->runToUri(I)V

    #@178
    goto/16 :goto_0

    #@17a
    .line 433
    :cond_18
    const-string/jumbo v1, "to-intent-uri"

    #@17d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@180
    move-result v1

    #@181
    if-eqz v1, :cond_19

    #@183
    .line 434
    const/4 v1, 0x1

    #@184
    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->runToUri(I)V

    #@187
    goto/16 :goto_0

    #@189
    .line 435
    :cond_19
    const-string/jumbo v1, "to-app-uri"

    #@18c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18f
    move-result v1

    #@190
    if-eqz v1, :cond_1a

    #@192
    .line 436
    const/4 v1, 0x2

    #@193
    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->runToUri(I)V

    #@196
    goto/16 :goto_0

    #@198
    .line 437
    :cond_1a
    const-string/jumbo v1, "switch-user"

    #@19b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19e
    move-result v1

    #@19f
    if-eqz v1, :cond_1b

    #@1a1
    .line 438
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSwitchUser()V

    #@1a4
    goto/16 :goto_0

    #@1a6
    .line 439
    :cond_1b
    const-string/jumbo v1, "start-user"

    #@1a9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ac
    move-result v1

    #@1ad
    if-eqz v1, :cond_1c

    #@1af
    .line 440
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStartUserInBackground()V

    #@1b2
    goto/16 :goto_0

    #@1b4
    .line 441
    :cond_1c
    const-string/jumbo v1, "unlock-user"

    #@1b7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ba
    move-result v1

    #@1bb
    if-eqz v1, :cond_1d

    #@1bd
    .line 442
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runUnlockUser()V

    #@1c0
    goto/16 :goto_0

    #@1c2
    .line 443
    :cond_1d
    const-string/jumbo v1, "stop-user"

    #@1c5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c8
    move-result v1

    #@1c9
    if-eqz v1, :cond_1e

    #@1cb
    .line 444
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStopUser()V

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 445
    :cond_1e
    const-string/jumbo v1, "stack"

    #@1d3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d6
    move-result v1

    #@1d7
    if-eqz v1, :cond_1f

    #@1d9
    .line 446
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStack()V

    #@1dc
    goto/16 :goto_0

    #@1de
    .line 447
    :cond_1f
    const-string/jumbo v1, "task"

    #@1e1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e4
    move-result v1

    #@1e5
    if-eqz v1, :cond_20

    #@1e7
    .line 448
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTask()V

    #@1ea
    goto/16 :goto_0

    #@1ec
    .line 449
    :cond_20
    const-string/jumbo v1, "get-config"

    #@1ef
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f2
    move-result v1

    #@1f3
    if-eqz v1, :cond_21

    #@1f5
    .line 450
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runGetConfig()V

    #@1f8
    goto/16 :goto_0

    #@1fa
    .line 451
    :cond_21
    const-string/jumbo v1, "suppress-resize-config-changes"

    #@1fd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@200
    move-result v1

    #@201
    if-eqz v1, :cond_22

    #@203
    .line 452
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSuppressResizeConfigChanges()V

    #@206
    goto/16 :goto_0

    #@208
    .line 453
    :cond_22
    const-string/jumbo v1, "set-inactive"

    #@20b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20e
    move-result v1

    #@20f
    if-eqz v1, :cond_23

    #@211
    .line 454
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSetInactive()V

    #@214
    goto/16 :goto_0

    #@216
    .line 455
    :cond_23
    const-string/jumbo v1, "get-inactive"

    #@219
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21c
    move-result v1

    #@21d
    if-eqz v1, :cond_24

    #@21f
    .line 456
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runGetInactive()V

    #@222
    goto/16 :goto_0

    #@224
    .line 457
    :cond_24
    const-string/jumbo v1, "send-trim-memory"

    #@227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22a
    move-result v1

    #@22b
    if-eqz v1, :cond_25

    #@22d
    .line 458
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSendTrimMemory()V

    #@230
    goto/16 :goto_0

    #@232
    .line 459
    :cond_25
    const-string/jumbo v1, "get-current-user"

    #@235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@238
    move-result v1

    #@239
    if-eqz v1, :cond_26

    #@23b
    .line 460
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runGetCurrentUser()V

    #@23e
    goto/16 :goto_0

    #@240
    .line 462
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    #@242
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@245
    const-string/jumbo v2, "Error: unknown command \'"

    #@248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v1

    #@24c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v1

    #@250
    const-string/jumbo v2, "\'"

    #@253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v1

    #@257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25a
    move-result-object v1

    #@25b
    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@25e
    goto/16 :goto_0
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 126
    new-instance v0, Ljava/io/PrintWriter;

    #@2
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@5
    .line 128
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "usage: am [subcommand] [options]\nusage: am start [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]\n               [--sampling INTERVAL] [-R COUNT] [-S]\n               [--track-allocation] [--user <USER_ID> | current] <INTENT>\n       am startservice [--user <USER_ID> | current] <INTENT>\n       am stopservice [--user <USER_ID> | current] <INTENT>\n       am force-stop [--user <USER_ID> | all | current] <PACKAGE>\n       am kill [--user <USER_ID> | all | current] <PACKAGE>\n       am kill-all\n       am broadcast [--user <USER_ID> | all | current] <INTENT>\n       am instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]\n               [--user <USER_ID> | current]\n               [--no-window-animation] [--abi <ABI>] <COMPONENT>\n       am profile start [--user <USER_ID> current] [--sampling INTERVAL] <PROCESS> <FILE>\n       am profile stop [--user <USER_ID> current] [<PROCESS>]\n       am dumpheap [--user <USER_ID> current] [-n] <PROCESS> <FILE>\n       am set-debug-app [-w] [--persistent] <PACKAGE>\n       am clear-debug-app\n       am set-watch-heap <PROCESS> <MEM-LIMIT>\n       am clear-watch-heap\n       am bug-report [--progress]\n       am monitor [--gdb <port>]\n       am hang [--allow-restart]\n       am restart\n       am idle-maintenance\n       am screen-compat [on|off] <PACKAGE>\n       am package-importance <PACKAGE>\n       am to-uri [INTENT]\n       am to-intent-uri [INTENT]\n       am to-app-uri [INTENT]\n       am switch-user <USER_ID>\n       am start-user <USER_ID>\n       am unlock-user <USER_ID> [TOKEN_HEX]\n       am stop-user [-w] [-f] <USER_ID>\n       am stack start <DISPLAY_ID> <INTENT>\n       am stack movetask <TASK_ID> <STACK_ID> [true|false]\n       am stack resize <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>\n       am stack resize-animated <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>\n       am stack resize-docked-stack <LEFT,TOP,RIGHT,BOTTOM> [<TASK_LEFT,TASK_TOP,TASK_RIGHT,TASK_BOTTOM>]\n       am stack size-docked-stack-test: <STEP_SIZE> <l|t|r|b> [DELAY_MS]\n       am stack move-top-activity-to-pinned-stack: <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>\n       am stack positiontask <TASK_ID> <STACK_ID> <POSITION>\n       am stack list\n       am stack info <STACK_ID>\n       am stack remove <STACK_ID>\n       am task lock <TASK_ID>\n       am task lock stop\n       am task resizeable <TASK_ID> [0 (unresizeable) | 1 (crop_windows) | 2 (resizeable) | 3 (resizeable_and_pipable)]\n       am task resize <TASK_ID> <LEFT,TOP,RIGHT,BOTTOM>\n       am task drag-task-test <TASK_ID> <STEP_SIZE> [DELAY_MS] \n       am task size-task-test <TASK_ID> <STEP_SIZE> [DELAY_MS] \n       am get-config\n       am suppress-resize-config-changes <true|false>\n       am set-inactive [--user <USER_ID>] <PACKAGE> true|false\n       am get-inactive [--user <USER_ID>] <PACKAGE>\n       am send-trim-memory [--user <USER_ID>] <PROCESS>\n               [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]\n       am get-current-user\n\nam start: start an Activity.  Options are:\n    -D: enable debugging\n    -N: enable native debugging\n    -W: wait for launch to complete\n    --start-profiler <FILE>: start profiler and send results to <FILE>\n    --sampling INTERVAL: use sample profiling with INTERVAL microseconds\n        between samples (use with --start-profiler)\n    -P <FILE>: like above, but profiling stops when app goes idle\n    -R: repeat the activity launch <COUNT> times.  Prior to each repeat,\n        the top activity will be finished.\n    -S: force stop the target app before starting the activity\n    --track-allocation: enable tracking of object allocations\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n    --stack <STACK_ID>: Specify into which stack should the activity be put.\nam startservice: start a Service.  Options are:\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam stopservice: stop a Service.  Options are:\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam force-stop: force stop everything associated with <PACKAGE>.\n    --user <USER_ID> | all | current: Specify user to force stop;\n        all users if not specified.\n\nam kill: Kill all processes associated with <PACKAGE>.  Only kills.\n  processes that are safe to kill -- that is, will not impact the user\n  experience.\n    --user <USER_ID> | all | current: Specify user whose processes to kill;\n        all users if not specified.\n\nam kill-all: Kill all background processes.\n\nam broadcast: send a broadcast Intent.  Options are:\n    --user <USER_ID> | all | current: Specify which user to send to; if not\n        specified then send to all users.\n    --receiver-permission <PERMISSION>: Require receiver to hold permission.\n\nam instrument: start an Instrumentation.  Typically this target <COMPONENT>\n  is the form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there \n  is only one instrumentation.  Options are:\n    -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with\n        [-e perf true] to generate raw output for performance measurements.\n    -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a\n        common form is [-e <testrunner_flag> <value>[,<value>...]].\n    -p <FILE>: write profiling data to <FILE>\n    -w: wait for instrumentation to finish before returning.  Required for\n        test runners.\n    --user <USER_ID> | current: Specify user instrumentation runs in;\n        current user if not specified.\n    --no-window-animation: turn off window animations while running.\n    --abi <ABI>: Launch the instrumented process with the selected ABI.\n        This assumes that the process supports the selected ABI.\n\nam trace-ipc: Trace IPC transactions.\n  start: start tracing IPC transactions.\n  stop: stop tracing IPC transactions and dump the results to file.\n    --dump-file <FILE>: Specify the file the trace should be dumped to.\n\nam profile: start and stop profiler on a process.  The given <PROCESS> argument\n  may be either a process name or pid.  Options are:\n    --user <USER_ID> | current: When supplying a process name,\n        specify user of process to profile; uses current user if not specified.\n\nam dumpheap: dump the heap of a process.  The given <PROCESS> argument may\n  be either a process name or pid.  Options are:\n    -n: dump native heap instead of managed heap\n    --user <USER_ID> | current: When supplying a process name,\n        specify user of process to dump; uses current user if not specified.\n\nam set-debug-app: set application <PACKAGE> to debug.  Options are:\n    -w: wait for debugger when application starts\n    --persistent: retain this value\n\nam clear-debug-app: clear the previously set-debug-app.\n\nam set-watch-heap: start monitoring pss size of <PROCESS>, if it is at or\n    above <HEAP-LIMIT> then a heap dump is collected for the user to report\n\nam clear-watch-heap: clear the previously set-watch-heap.\n\nam bug-report: request bug report generation; will launch a notification\n    when done to select where it should be delivered. Options are: \n   --progress: will launch a notification right away to show its progress.\n\nam monitor: start monitoring for crashes or ANRs.\n    --gdb: start gdbserv on the given port at crash/ANR\n\nam hang: hang the system.\n    --allow-restart: allow watchdog to perform normal system restart\n\nam restart: restart the user-space system.\n\nam idle-maintenance: perform idle maintenance now.\n\nam screen-compat: control screen compatibility mode of <PACKAGE>.\n\nam package-importance: print current importance of <PACKAGE>.\n\nam to-uri: print the given Intent specification as a URI.\n\nam to-intent-uri: print the given Intent specification as an intent: URI.\n\nam to-app-uri: print the given Intent specification as an android-app: URI.\n\nam switch-user: switch to put USER_ID in the foreground, starting\n  execution of that user if it is currently stopped.\n\nam start-user: start USER_ID in background if it is currently stopped,\n  use switch-user if you want to start the user in foreground.\n\nam stop-user: stop execution of USER_ID, not allowing it to run any\n  code until a later explicit start or switch to it.\n  -w: wait for stop-user to complete.\n  -f: force stop even if there are related users that cannot be stopped.\n\nam stack start: start a new activity on <DISPLAY_ID> using <INTENT>.\n\nam stack movetask: move <TASK_ID> from its current stack to the top (true) or   bottom (false) of <STACK_ID>.\n\nam stack resize: change <STACK_ID> size and position to <LEFT,TOP,RIGHT,BOTTOM>.\n\nam stack resize-docked-stack: change docked stack to <LEFT,TOP,RIGHT,BOTTOM>\n   and supplying temporary different task bounds indicated by\n   <TASK_LEFT,TOP,RIGHT,BOTTOM>\n\nam stack size-docked-stack-test: test command for sizing docked stack by\n   <STEP_SIZE> increments from the side <l>eft, <t>op, <r>ight, or <b>ottom\n   applying the optional [DELAY_MS] between each step.\n\nam stack move-top-activity-to-pinned-stack: moves the top activity from\n   <STACK_ID> to the pinned stack using <LEFT,TOP,RIGHT,BOTTOM> for the\n   bounds of the pinned stack.\n\nam stack positiontask: place <TASK_ID> in <STACK_ID> at <POSITION>\nam stack list: list all of the activity stacks and their sizes.\n\nam stack info: display the information about activity stack <STACK_ID>.\n\nam stack remove: remove stack <STACK_ID>.\n\nam task lock: bring <TASK_ID> to the front and don\'t allow other tasks to run.\n\nam task lock stop: end the current task lock.\n\nam task resizeable: change resizeable mode of <TASK_ID>.\n   0 (unresizeable) | 1 (crop_windows) | 2 (resizeable) | 3 (resizeable_and_pipable)\n\nam task resize: makes sure <TASK_ID> is in a stack with the specified bounds.\n   Forces the task to be resizeable and creates a stack if no existing stack\n   has the specified bounds.\n\nam task drag-task-test: test command for dragging/moving <TASK_ID> by\n   <STEP_SIZE> increments around the screen applying the optional [DELAY_MS]\n   between each step.\n\nam task size-task-test: test command for sizing <TASK_ID> by <STEP_SIZE>   increments within the screen applying the optional [DELAY_MS] between\n   each step.\n\nam get-config: retrieve the configuration and any recent configurations\n  of the device.\nam suppress-resize-config-changes: suppresses configuration changes due to\n  user resizing an activity/task.\n\nam set-inactive: sets the inactive state of an app.\n\nam get-inactive: returns the inactive state of an app.\n\nam send-trim-memory: send a memory trim event to a <PROCESS>.\n\nam get-current-user: returns id of the current foreground user.\n\n"

    #@8
    .line 127
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b
    .line 366
    const-string/jumbo v1, ""

    #@e
    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@11
    .line 367
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@14
    .line 125
    return-void
.end method

.method parseUserArg(Ljava/lang/String;)I
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 468
    const-string/jumbo v1, "all"

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 469
    const/4 v0, -0x1

    #@a
    .line 475
    .local v0, "userId":I
    :goto_0
    return v0

    #@b
    .line 470
    .end local v0    # "userId":I
    :cond_0
    const-string/jumbo v1, "current"

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_1

    #@14
    const-string/jumbo v1, "cur"

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 471
    :cond_1
    const/4 v0, -0x2

    #@1e
    .restart local v0    # "userId":I
    goto :goto_0

    #@1f
    .line 473
    .end local v0    # "userId":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@22
    move-result v0

    #@23
    .restart local v0    # "userId":I
    goto :goto_0
.end method
