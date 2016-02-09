.class public Lcom/android/commands/am/Am;
.super Lcom/android/internal/os/BaseCommand;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/am/Am$StopUserCallback;,
        Lcom/android/commands/am/Am$MyActivityController;,
        Lcom/android/commands/am/Am$IntentReceiver;,
        Lcom/android/commands/am/Am$InstrumentationWatcher;
    }
.end annotation


# static fields
.field private static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mAutoStop:Z

.field private mProfileFile:Ljava/lang/String;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I

.field private mSamplingInterval:I

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

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 76
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    #@4
    .line 82
    iput v0, p0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@6
    .line 83
    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@8
    .line 84
    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mStopOption:Z

    #@a
    .line 86
    iput v0, p0, Lcom/android/commands/am/Am;->mRepeat:I

    #@c
    .line 76
    return-void
.end method

.method private getBounds()Landroid/graphics/Rect;
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 2244
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 2245
    .local v3, "leftStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@8
    move-result-object v8

    #@9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v2

    #@d
    .line 2246
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@10
    move-result-object v7

    #@11
    .line 2247
    .local v7, "topStr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@14
    move-result-object v8

    #@15
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v6

    #@19
    .line 2248
    .local v6, "top":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    .line 2249
    .local v5, "rightStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@24
    move-result v4

    #@25
    .line 2250
    .local v4, "right":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 2251
    .local v1, "bottomStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@30
    move-result v0

    #@31
    .line 2252
    .local v0, "bottom":I
    if-gez v2, :cond_0

    #@33
    .line 2253
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@35
    new-instance v9, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v10, "Error: bad left arg: "

    #@3d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v9

    #@41
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4c
    .line 2254
    return-object v11

    #@4d
    .line 2256
    :cond_0
    if-gez v6, :cond_1

    #@4f
    .line 2257
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@51
    new-instance v9, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v10, "Error: bad top arg: "

    #@59
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v9

    #@61
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 2258
    return-object v11

    #@69
    .line 2260
    :cond_1
    if-gtz v4, :cond_2

    #@6b
    .line 2261
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6d
    new-instance v9, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v10, "Error: bad right arg: "

    #@75
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v9

    #@79
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@84
    .line 2262
    return-object v11

    #@85
    .line 2264
    :cond_2
    if-gtz v0, :cond_3

    #@87
    .line 2265
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@89
    new-instance v9, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v10, "Error: bad bottom arg: "

    #@91
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v9

    #@95
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v9

    #@99
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v9

    #@9d
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a0
    .line 2266
    return-object v11

    #@a1
    .line 2268
    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    #@a3
    invoke-direct {v8, v2, v6, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@a6
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
    .line 2057
    const-string/jumbo v3, "usagestats"

    #@3
    .line 2056
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    #@a
    move-result-object v2

    #@b
    .line 2058
    .local v2, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v6

    #@f
    .line 2059
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
    .line 2063
    .local v4, "nDaysAgo":J
    :try_start_0
    const-string/jumbo v8, "com.android.shell"

    #@1f
    const/4 v3, 0x4

    #@20
    .line 2062
    invoke-interface/range {v2 .. v8}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    #@23
    move-result-object v12

    #@24
    .line 2064
    .local v12, "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-nez v12, :cond_0

    #@26
    .line 2065
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@29
    move-result-object v3

    #@2a
    return-object v3

    #@2b
    .line 2068
    :cond_0
    new-instance v17, Landroid/util/ArrayMap;

    #@2d
    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    #@30
    .line 2069
    .local v17, "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@33
    move-result-object v10

    #@34
    .line 2070
    .local v10, "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@37
    move-result v11

    #@38
    .line 2071
    .local v11, "configStatsListSize":I
    const/4 v15, 0x0

    #@39
    .local v15, "i":I
    :goto_0
    if-ge v15, v11, :cond_2

    #@3b
    .line 2072
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v18

    #@3f
    check-cast v18, Landroid/app/usage/ConfigurationStats;

    #@41
    .line 2073
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
    .line 2074
    .local v16, "indexOfKey":I
    if-gez v16, :cond_1

    #@4d
    .line 2075
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
    .line 2071
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@60
    goto :goto_0

    #@61
    .line 2078
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
    .line 2077
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
    .line 2094
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
    .line 2095
    .local v14, "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@84
    move-result-object v3

    #@85
    return-object v3

    #@86
    .line 2082
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v10    # "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    .restart local v11    # "configStatsListSize":I
    .restart local v12    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    .restart local v15    # "i":I
    .restart local v17    # "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    new-instance v9, Lcom/android/commands/am/Am$1;

    #@88
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v17

    #@8c
    invoke-direct {v9, v0, v1}, Lcom/android/commands/am/Am$1;-><init>(Lcom/android/commands/am/Am;Landroid/util/ArrayMap;)V

    #@8f
    .line 2089
    .local v9, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    new-instance v13, Ljava/util/ArrayList;

    #@91
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@94
    move-result v3

    #@95
    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@98
    .line 2090
    .local v13, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@9f
    .line 2091
    invoke-static {v13, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@a2
    .line 2092
    return-object v13
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 100
    new-instance v0, Lcom/android/commands/am/Am;

    #@2
    invoke-direct {v0}, Lcom/android/commands/am/Am;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/commands/am/Am;->run([Ljava/lang/String;)V

    #@8
    .line 99
    return-void
.end method

.method private makeIntent(I)Landroid/content/Intent;
    .locals 33
    .param p1, "defUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    new-instance v15, Landroid/content/Intent;

    #@2
    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    #@5
    .line 443
    .local v15, "intent":Landroid/content/Intent;
    move-object v4, v15

    #@6
    .line 444
    .local v4, "baseIntent":Landroid/content/Intent;
    const/4 v12, 0x0

    #@7
    .line 446
    .local v12, "hasIntentInfo":Z
    const/16 v30, 0x0

    #@9
    move/from16 v0, v30

    #@b
    move-object/from16 v1, p0

    #@d
    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    #@f
    .line 447
    const/16 v30, 0x0

    #@11
    move/from16 v0, v30

    #@13
    move-object/from16 v1, p0

    #@15
    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@17
    .line 448
    const/16 v30, 0x0

    #@19
    move/from16 v0, v30

    #@1b
    move-object/from16 v1, p0

    #@1d
    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mStopOption:Z

    #@1f
    .line 449
    const/16 v30, 0x0

    #@21
    move/from16 v0, v30

    #@23
    move-object/from16 v1, p0

    #@25
    iput v0, v1, Lcom/android/commands/am/Am;->mRepeat:I

    #@27
    .line 450
    const/16 v30, 0x0

    #@29
    move-object/from16 v0, v30

    #@2b
    move-object/from16 v1, p0

    #@2d
    iput-object v0, v1, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@2f
    .line 451
    const/16 v30, 0x0

    #@31
    move/from16 v0, v30

    #@33
    move-object/from16 v1, p0

    #@35
    iput v0, v1, Lcom/android/commands/am/Am;->mSamplingInterval:I

    #@37
    .line 452
    const/16 v30, 0x0

    #@39
    move/from16 v0, v30

    #@3b
    move-object/from16 v1, p0

    #@3d
    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mAutoStop:Z

    #@3f
    .line 453
    move/from16 v0, p1

    #@41
    move-object/from16 v1, p0

    #@43
    iput v0, v1, Lcom/android/commands/am/Am;->mUserId:I

    #@45
    .line 454
    const/4 v9, 0x0

    #@46
    .line 455
    .local v9, "data":Landroid/net/Uri;
    const/16 v27, 0x0

    #@48
    .line 458
    .end local v9    # "data":Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4b
    move-result-object v24

    #@4c
    .local v24, "opt":Ljava/lang/String;
    if-eqz v24, :cond_4a

    #@4e
    .line 459
    const-string/jumbo v30, "-a"

    #@51
    move-object/from16 v0, v24

    #@53
    move-object/from16 v1, v30

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v30

    #@59
    if-eqz v30, :cond_1

    #@5b
    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@5e
    move-result-object v30

    #@5f
    move-object/from16 v0, v30

    #@61
    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@64
    .line 461
    if-ne v15, v4, :cond_0

    #@66
    .line 462
    const/4 v12, 0x1

    #@67
    goto :goto_0

    #@68
    .line 464
    :cond_1
    const-string/jumbo v30, "-d"

    #@6b
    move-object/from16 v0, v24

    #@6d
    move-object/from16 v1, v30

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v30

    #@73
    if-eqz v30, :cond_2

    #@75
    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@78
    move-result-object v30

    #@79
    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@7c
    move-result-object v9

    #@7d
    .line 466
    .local v9, "data":Landroid/net/Uri;
    if-ne v15, v4, :cond_0

    #@7f
    .line 467
    const/4 v12, 0x1

    #@80
    goto :goto_0

    #@81
    .line 469
    .end local v9    # "data":Landroid/net/Uri;
    :cond_2
    const-string/jumbo v30, "-t"

    #@84
    move-object/from16 v0, v24

    #@86
    move-object/from16 v1, v30

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v30

    #@8c
    if-eqz v30, :cond_3

    #@8e
    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@91
    move-result-object v27

    #@92
    .line 471
    .local v27, "type":Ljava/lang/String;
    if-ne v15, v4, :cond_0

    #@94
    .line 472
    const/4 v12, 0x1

    #@95
    goto :goto_0

    #@96
    .line 474
    .end local v27    # "type":Ljava/lang/String;
    :cond_3
    const-string/jumbo v30, "-c"

    #@99
    move-object/from16 v0, v24

    #@9b
    move-object/from16 v1, v30

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v30

    #@a1
    if-eqz v30, :cond_4

    #@a3
    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@a6
    move-result-object v30

    #@a7
    move-object/from16 v0, v30

    #@a9
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@ac
    .line 476
    if-ne v15, v4, :cond_0

    #@ae
    .line 477
    const/4 v12, 0x1

    #@af
    goto :goto_0

    #@b0
    .line 479
    :cond_4
    const-string/jumbo v30, "-e"

    #@b3
    move-object/from16 v0, v24

    #@b5
    move-object/from16 v1, v30

    #@b7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v30

    #@bb
    if-nez v30, :cond_5

    #@bd
    const-string/jumbo v30, "--es"

    #@c0
    move-object/from16 v0, v24

    #@c2
    move-object/from16 v1, v30

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v30

    #@c8
    if-eqz v30, :cond_6

    #@ca
    .line 480
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@cd
    move-result-object v16

    #@ce
    .line 481
    .local v16, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@d1
    move-result-object v29

    #@d2
    .line 482
    .local v29, "value":Ljava/lang/String;
    move-object/from16 v0, v16

    #@d4
    move-object/from16 v1, v29

    #@d6
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@d9
    goto/16 :goto_0

    #@db
    .line 483
    .end local v16    # "key":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v30, "--esn"

    #@de
    move-object/from16 v0, v24

    #@e0
    move-object/from16 v1, v30

    #@e2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e5
    move-result v30

    #@e6
    if-eqz v30, :cond_7

    #@e8
    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@eb
    move-result-object v16

    #@ec
    .line 485
    .restart local v16    # "key":Ljava/lang/String;
    const/16 v30, 0x0

    #@ee
    check-cast v30, Ljava/lang/String;

    #@f0
    move-object/from16 v0, v16

    #@f2
    move-object/from16 v1, v30

    #@f4
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@f7
    goto/16 :goto_0

    #@f9
    .line 486
    .end local v16    # "key":Ljava/lang/String;
    :cond_7
    const-string/jumbo v30, "--ei"

    #@fc
    move-object/from16 v0, v24

    #@fe
    move-object/from16 v1, v30

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@103
    move-result v30

    #@104
    if-eqz v30, :cond_8

    #@106
    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@109
    move-result-object v16

    #@10a
    .line 488
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@10d
    move-result-object v29

    #@10e
    .line 489
    .restart local v29    # "value":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@111
    move-result-object v30

    #@112
    move-object/from16 v0, v16

    #@114
    move-object/from16 v1, v30

    #@116
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@119
    goto/16 :goto_0

    #@11b
    .line 490
    .end local v16    # "key":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v30, "--eu"

    #@11e
    move-object/from16 v0, v24

    #@120
    move-object/from16 v1, v30

    #@122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@125
    move-result v30

    #@126
    if-eqz v30, :cond_9

    #@128
    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@12b
    move-result-object v16

    #@12c
    .line 492
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@12f
    move-result-object v29

    #@130
    .line 493
    .restart local v29    # "value":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@133
    move-result-object v30

    #@134
    move-object/from16 v0, v16

    #@136
    move-object/from16 v1, v30

    #@138
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@13b
    goto/16 :goto_0

    #@13d
    .line 494
    .end local v16    # "key":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_9
    const-string/jumbo v30, "--ecn"

    #@140
    move-object/from16 v0, v24

    #@142
    move-object/from16 v1, v30

    #@144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@147
    move-result v30

    #@148
    if-eqz v30, :cond_b

    #@14a
    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@14d
    move-result-object v16

    #@14e
    .line 496
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@151
    move-result-object v29

    #@152
    .line 497
    .restart local v29    # "value":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@155
    move-result-object v8

    #@156
    .line 498
    .local v8, "cn":Landroid/content/ComponentName;
    if-nez v8, :cond_a

    #@158
    new-instance v30, Ljava/lang/IllegalArgumentException;

    #@15a
    new-instance v31, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v32, "Bad component name: "

    #@162
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v31

    #@166
    move-object/from16 v0, v31

    #@168
    move-object/from16 v1, v29

    #@16a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v31

    #@16e
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v31

    #@172
    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@175
    throw v30

    #@176
    .line 499
    :cond_a
    move-object/from16 v0, v16

    #@178
    invoke-virtual {v15, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@17b
    goto/16 :goto_0

    #@17d
    .line 500
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v16    # "key":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v30, "--eia"

    #@180
    move-object/from16 v0, v24

    #@182
    move-object/from16 v1, v30

    #@184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@187
    move-result v30

    #@188
    if-eqz v30, :cond_d

    #@18a
    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@18d
    move-result-object v16

    #@18e
    .line 502
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@191
    move-result-object v29

    #@192
    .line 503
    .restart local v29    # "value":Ljava/lang/String;
    const-string/jumbo v30, ","

    #@195
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@198
    move-result-object v26

    #@199
    .line 504
    .local v26, "strings":[Ljava/lang/String;
    move-object/from16 v0, v26

    #@19b
    array-length v0, v0

    #@19c
    move/from16 v30, v0

    #@19e
    move/from16 v0, v30

    #@1a0
    new-array v0, v0, [I

    #@1a2
    move-object/from16 v22, v0

    #@1a4
    .line 505
    .local v22, "list":[I
    const/4 v14, 0x0

    #@1a5
    .local v14, "i":I
    :goto_1
    move-object/from16 v0, v26

    #@1a7
    array-length v0, v0

    #@1a8
    move/from16 v30, v0

    #@1aa
    move/from16 v0, v30

    #@1ac
    if-ge v14, v0, :cond_c

    #@1ae
    .line 506
    aget-object v30, v26, v14

    #@1b0
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@1b3
    move-result-object v30

    #@1b4
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    #@1b7
    move-result v30

    #@1b8
    aput v30, v22, v14

    #@1ba
    .line 505
    add-int/lit8 v14, v14, 0x1

    #@1bc
    goto :goto_1

    #@1bd
    .line 508
    :cond_c
    move-object/from16 v0, v16

    #@1bf
    move-object/from16 v1, v22

    #@1c1
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    #@1c4
    goto/16 :goto_0

    #@1c6
    .line 509
    .end local v14    # "i":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v22    # "list":[I
    .end local v26    # "strings":[Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_d
    const-string/jumbo v30, "--eial"

    #@1c9
    move-object/from16 v0, v24

    #@1cb
    move-object/from16 v1, v30

    #@1cd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d0
    move-result v30

    #@1d1
    if-eqz v30, :cond_f

    #@1d3
    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@1d6
    move-result-object v16

    #@1d7
    .line 511
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@1da
    move-result-object v29

    #@1db
    .line 512
    .restart local v29    # "value":Ljava/lang/String;
    const-string/jumbo v30, ","

    #@1de
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1e1
    move-result-object v26

    #@1e2
    .line 513
    .restart local v26    # "strings":[Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    #@1e4
    move-object/from16 v0, v26

    #@1e6
    array-length v0, v0

    #@1e7
    move/from16 v30, v0

    #@1e9
    move-object/from16 v0, v18

    #@1eb
    move/from16 v1, v30

    #@1ed
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1f0
    .line 514
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    #@1f1
    .restart local v14    # "i":I
    :goto_2
    move-object/from16 v0, v26

    #@1f3
    array-length v0, v0

    #@1f4
    move/from16 v30, v0

    #@1f6
    move/from16 v0, v30

    #@1f8
    if-ge v14, v0, :cond_e

    #@1fa
    .line 515
    aget-object v30, v26, v14

    #@1fc
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@1ff
    move-result-object v30

    #@200
    move-object/from16 v0, v18

    #@202
    move-object/from16 v1, v30

    #@204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@207
    .line 514
    add-int/lit8 v14, v14, 0x1

    #@209
    goto :goto_2

    #@20a
    .line 517
    :cond_e
    move-object/from16 v0, v16

    #@20c
    move-object/from16 v1, v18

    #@20e
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@211
    goto/16 :goto_0

    #@213
    .line 518
    .end local v14    # "i":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "strings":[Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_f
    const-string/jumbo v30, "--el"

    #@216
    move-object/from16 v0, v24

    #@218
    move-object/from16 v1, v30

    #@21a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21d
    move-result v30

    #@21e
    if-eqz v30, :cond_10

    #@220
    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@223
    move-result-object v16

    #@224
    .line 520
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@227
    move-result-object v29

    #@228
    .line 521
    .restart local v29    # "value":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@22b
    move-result-object v30

    #@22c
    move-object/from16 v0, v16

    #@22e
    move-object/from16 v1, v30

    #@230
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@233
    goto/16 :goto_0

    #@235
    .line 522
    .end local v16    # "key":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_10
    const-string/jumbo v30, "--ela"

    #@238
    move-object/from16 v0, v24

    #@23a
    move-object/from16 v1, v30

    #@23c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23f
    move-result v30

    #@240
    if-eqz v30, :cond_12

    #@242
    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@245
    move-result-object v16

    #@246
    .line 524
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@249
    move-result-object v29

    #@24a
    .line 525
    .restart local v29    # "value":Ljava/lang/String;
    const-string/jumbo v30, ","

    #@24d
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@250
    move-result-object v26

    #@251
    .line 526
    .restart local v26    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v26

    #@253
    array-length v0, v0

    #@254
    move/from16 v30, v0

    #@256
    move/from16 v0, v30

    #@258
    new-array v0, v0, [J

    #@25a
    move-object/from16 v23, v0

    #@25c
    .line 527
    .local v23, "list":[J
    const/4 v14, 0x0

    #@25d
    .restart local v14    # "i":I
    :goto_3
    move-object/from16 v0, v26

    #@25f
    array-length v0, v0

    #@260
    move/from16 v30, v0

    #@262
    move/from16 v0, v30

    #@264
    if-ge v14, v0, :cond_11

    #@266
    .line 528
    aget-object v30, v26, v14

    #@268
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@26b
    move-result-object v30

    #@26c
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    #@26f
    move-result-wide v30

    #@270
    aput-wide v30, v23, v14

    #@272
    .line 527
    add-int/lit8 v14, v14, 0x1

    #@274
    goto :goto_3

    #@275
    .line 530
    :cond_11
    move-object/from16 v0, v16

    #@277
    move-object/from16 v1, v23

    #@279
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    #@27c
    .line 531
    const/4 v12, 0x1

    #@27d
    goto/16 :goto_0

    #@27f
    .line 532
    .end local v14    # "i":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v23    # "list":[J
    .end local v26    # "strings":[Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_12
    const-string/jumbo v30, "--elal"

    #@282
    move-object/from16 v0, v24

    #@284
    move-object/from16 v1, v30

    #@286
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@289
    move-result v30

    #@28a
    if-eqz v30, :cond_14

    #@28c
    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@28f
    move-result-object v16

    #@290
    .line 534
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@293
    move-result-object v29

    #@294
    .line 535
    .restart local v29    # "value":Ljava/lang/String;
    const-string/jumbo v30, ","

    #@297
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@29a
    move-result-object v26

    #@29b
    .line 536
    .restart local v26    # "strings":[Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    #@29d
    move-object/from16 v0, v26

    #@29f
    array-length v0, v0

    #@2a0
    move/from16 v30, v0

    #@2a2
    move-object/from16 v0, v19

    #@2a4
    move/from16 v1, v30

    #@2a6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@2a9
    .line 537
    .local v19, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v14, 0x0

    #@2aa
    .restart local v14    # "i":I
    :goto_4
    move-object/from16 v0, v26

    #@2ac
    array-length v0, v0

    #@2ad
    move/from16 v30, v0

    #@2af
    move/from16 v0, v30

    #@2b1
    if-ge v14, v0, :cond_13

    #@2b3
    .line 538
    aget-object v30, v26, v14

    #@2b5
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@2b8
    move-result-object v30

    #@2b9
    move-object/from16 v0, v19

    #@2bb
    move-object/from16 v1, v30

    #@2bd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c0
    .line 537
    add-int/lit8 v14, v14, 0x1

    #@2c2
    goto :goto_4

    #@2c3
    .line 540
    :cond_13
    move-object/from16 v0, v16

    #@2c5
    move-object/from16 v1, v19

    #@2c7
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@2ca
    .line 541
    const/4 v12, 0x1

    #@2cb
    goto/16 :goto_0

    #@2cd
    .line 542
    .end local v14    # "i":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v19    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v26    # "strings":[Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_14
    const-string/jumbo v30, "--ef"

    #@2d0
    move-object/from16 v0, v24

    #@2d2
    move-object/from16 v1, v30

    #@2d4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d7
    move-result v30

    #@2d8
    if-eqz v30, :cond_15

    #@2da
    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@2dd
    move-result-object v16

    #@2de
    .line 544
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@2e1
    move-result-object v29

    #@2e2
    .line 545
    .restart local v29    # "value":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    #@2e5
    move-result-object v30

    #@2e6
    move-object/from16 v0, v16

    #@2e8
    move-object/from16 v1, v30

    #@2ea
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@2ed
    .line 546
    const/4 v12, 0x1

    #@2ee
    goto/16 :goto_0

    #@2f0
    .line 547
    .end local v16    # "key":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_15
    const-string/jumbo v30, "--efa"

    #@2f3
    move-object/from16 v0, v24

    #@2f5
    move-object/from16 v1, v30

    #@2f7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2fa
    move-result v30

    #@2fb
    if-eqz v30, :cond_17

    #@2fd
    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@300
    move-result-object v16

    #@301
    .line 549
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@304
    move-result-object v29

    #@305
    .line 550
    .restart local v29    # "value":Ljava/lang/String;
    const-string/jumbo v30, ","

    #@308
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@30b
    move-result-object v26

    #@30c
    .line 551
    .restart local v26    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v26

    #@30e
    array-length v0, v0

    #@30f
    move/from16 v30, v0

    #@311
    move/from16 v0, v30

    #@313
    new-array v0, v0, [F

    #@315
    move-object/from16 v21, v0

    #@317
    .line 552
    .local v21, "list":[F
    const/4 v14, 0x0

    #@318
    .restart local v14    # "i":I
    :goto_5
    move-object/from16 v0, v26

    #@31a
    array-length v0, v0

    #@31b
    move/from16 v30, v0

    #@31d
    move/from16 v0, v30

    #@31f
    if-ge v14, v0, :cond_16

    #@321
    .line 553
    aget-object v30, v26, v14

    #@323
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    #@326
    move-result-object v30

    #@327
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    #@32a
    move-result v30

    #@32b
    aput v30, v21, v14

    #@32d
    .line 552
    add-int/lit8 v14, v14, 0x1

    #@32f
    goto :goto_5

    #@330
    .line 555
    :cond_16
    move-object/from16 v0, v16

    #@332
    move-object/from16 v1, v21

    #@334
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    #@337
    .line 556
    const/4 v12, 0x1

    #@338
    goto/16 :goto_0

    #@33a
    .line 557
    .end local v14    # "i":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v21    # "list":[F
    .end local v26    # "strings":[Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_17
    const-string/jumbo v30, "--efal"

    #@33d
    move-object/from16 v0, v24

    #@33f
    move-object/from16 v1, v30

    #@341
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@344
    move-result v30

    #@345
    if-eqz v30, :cond_19

    #@347
    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@34a
    move-result-object v16

    #@34b
    .line 559
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@34e
    move-result-object v29

    #@34f
    .line 560
    .restart local v29    # "value":Ljava/lang/String;
    const-string/jumbo v30, ","

    #@352
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@355
    move-result-object v26

    #@356
    .line 561
    .restart local v26    # "strings":[Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    #@358
    move-object/from16 v0, v26

    #@35a
    array-length v0, v0

    #@35b
    move/from16 v30, v0

    #@35d
    move-object/from16 v0, v17

    #@35f
    move/from16 v1, v30

    #@361
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@364
    .line 562
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v14, 0x0

    #@365
    .restart local v14    # "i":I
    :goto_6
    move-object/from16 v0, v26

    #@367
    array-length v0, v0

    #@368
    move/from16 v30, v0

    #@36a
    move/from16 v0, v30

    #@36c
    if-ge v14, v0, :cond_18

    #@36e
    .line 563
    aget-object v30, v26, v14

    #@370
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    #@373
    move-result-object v30

    #@374
    move-object/from16 v0, v17

    #@376
    move-object/from16 v1, v30

    #@378
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37b
    .line 562
    add-int/lit8 v14, v14, 0x1

    #@37d
    goto :goto_6

    #@37e
    .line 565
    :cond_18
    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@381
    .line 566
    const/4 v12, 0x1

    #@382
    goto/16 :goto_0

    #@384
    .line 567
    .end local v14    # "i":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v26    # "strings":[Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_19
    const-string/jumbo v30, "--esa"

    #@387
    move-object/from16 v0, v24

    #@389
    move-object/from16 v1, v30

    #@38b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38e
    move-result v30

    #@38f
    if-eqz v30, :cond_1a

    #@391
    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@394
    move-result-object v16

    #@395
    .line 569
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@398
    move-result-object v29

    #@399
    .line 573
    .restart local v29    # "value":Ljava/lang/String;
    const-string/jumbo v30, "(?<!\\\\),"

    #@39c
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@39f
    move-result-object v26

    #@3a0
    .line 574
    .restart local v26    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v16

    #@3a2
    move-object/from16 v1, v26

    #@3a4
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@3a7
    .line 575
    const/4 v12, 0x1

    #@3a8
    goto/16 :goto_0

    #@3aa
    .line 576
    .end local v16    # "key":Ljava/lang/String;
    .end local v26    # "strings":[Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v30, "--esal"

    #@3ad
    move-object/from16 v0, v24

    #@3af
    move-object/from16 v1, v30

    #@3b1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b4
    move-result v30

    #@3b5
    if-eqz v30, :cond_1c

    #@3b7
    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3ba
    move-result-object v16

    #@3bb
    .line 578
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3be
    move-result-object v29

    #@3bf
    .line 582
    .restart local v29    # "value":Ljava/lang/String;
    const-string/jumbo v30, "(?<!\\\\),"

    #@3c2
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3c5
    move-result-object v26

    #@3c6
    .line 583
    .restart local v26    # "strings":[Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    #@3c8
    move-object/from16 v0, v26

    #@3ca
    array-length v0, v0

    #@3cb
    move/from16 v30, v0

    #@3cd
    move-object/from16 v0, v20

    #@3cf
    move/from16 v1, v30

    #@3d1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@3d4
    .line 584
    .local v20, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    #@3d5
    .restart local v14    # "i":I
    :goto_7
    move-object/from16 v0, v26

    #@3d7
    array-length v0, v0

    #@3d8
    move/from16 v30, v0

    #@3da
    move/from16 v0, v30

    #@3dc
    if-ge v14, v0, :cond_1b

    #@3de
    .line 585
    aget-object v30, v26, v14

    #@3e0
    move-object/from16 v0, v20

    #@3e2
    move-object/from16 v1, v30

    #@3e4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e7
    .line 584
    add-int/lit8 v14, v14, 0x1

    #@3e9
    goto :goto_7

    #@3ea
    .line 587
    :cond_1b
    move-object/from16 v0, v16

    #@3ec
    move-object/from16 v1, v20

    #@3ee
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@3f1
    .line 588
    const/4 v12, 0x1

    #@3f2
    goto/16 :goto_0

    #@3f4
    .line 589
    .end local v14    # "i":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "strings":[Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v30, "--ez"

    #@3f7
    move-object/from16 v0, v24

    #@3f9
    move-object/from16 v1, v30

    #@3fb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3fe
    move-result v30

    #@3ff
    if-eqz v30, :cond_22

    #@401
    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@404
    move-result-object v16

    #@405
    .line 591
    .restart local v16    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@408
    move-result-object v30

    #@409
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@40c
    move-result-object v29

    #@40d
    .line 595
    .restart local v29    # "value":Ljava/lang/String;
    const-string/jumbo v30, "true"

    #@410
    move-object/from16 v0, v30

    #@412
    move-object/from16 v1, v29

    #@414
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@417
    move-result v30

    #@418
    if-nez v30, :cond_1d

    #@41a
    const-string/jumbo v30, "t"

    #@41d
    move-object/from16 v0, v30

    #@41f
    move-object/from16 v1, v29

    #@421
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@424
    move-result v30

    #@425
    if-eqz v30, :cond_1e

    #@427
    .line 596
    :cond_1d
    const/4 v3, 0x1

    #@428
    .line 607
    .local v3, "arg":Z
    :goto_8
    move-object/from16 v0, v16

    #@42a
    invoke-virtual {v15, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@42d
    goto/16 :goto_0

    #@42f
    .line 597
    .end local v3    # "arg":Z
    :cond_1e
    const-string/jumbo v30, "false"

    #@432
    move-object/from16 v0, v30

    #@434
    move-object/from16 v1, v29

    #@436
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@439
    move-result v30

    #@43a
    if-nez v30, :cond_1f

    #@43c
    const-string/jumbo v30, "f"

    #@43f
    move-object/from16 v0, v30

    #@441
    move-object/from16 v1, v29

    #@443
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@446
    move-result v30

    #@447
    if-eqz v30, :cond_20

    #@449
    .line 598
    :cond_1f
    const/4 v3, 0x0

    #@44a
    .restart local v3    # "arg":Z
    goto :goto_8

    #@44b
    .line 601
    .end local v3    # "arg":Z
    :cond_20
    :try_start_0
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@44e
    move-result-object v30

    #@44f
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@452
    move-result v30

    #@453
    if-eqz v30, :cond_21

    #@455
    const/4 v3, 0x1

    #@456
    .restart local v3    # "arg":Z
    goto :goto_8

    #@457
    .end local v3    # "arg":Z
    :cond_21
    const/4 v3, 0x0

    #@458
    .restart local v3    # "arg":Z
    goto :goto_8

    #@459
    .line 602
    .end local v3    # "arg":Z
    :catch_0
    move-exception v10

    #@45a
    .line 603
    .local v10, "ex":Ljava/lang/NumberFormatException;
    new-instance v30, Ljava/lang/IllegalArgumentException;

    #@45c
    new-instance v31, Ljava/lang/StringBuilder;

    #@45e
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@461
    const-string/jumbo v32, "Invalid boolean value: "

    #@464
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@467
    move-result-object v31

    #@468
    move-object/from16 v0, v31

    #@46a
    move-object/from16 v1, v29

    #@46c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46f
    move-result-object v31

    #@470
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@473
    move-result-object v31

    #@474
    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@477
    throw v30

    #@478
    .line 608
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .end local v16    # "key":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_22
    const-string/jumbo v30, "-n"

    #@47b
    move-object/from16 v0, v24

    #@47d
    move-object/from16 v1, v30

    #@47f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@482
    move-result v30

    #@483
    if-eqz v30, :cond_24

    #@485
    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@488
    move-result-object v25

    #@489
    .line 610
    .local v25, "str":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@48c
    move-result-object v8

    #@48d
    .line 611
    .restart local v8    # "cn":Landroid/content/ComponentName;
    if-nez v8, :cond_23

    #@48f
    new-instance v30, Ljava/lang/IllegalArgumentException;

    #@491
    new-instance v31, Ljava/lang/StringBuilder;

    #@493
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@496
    const-string/jumbo v32, "Bad component name: "

    #@499
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49c
    move-result-object v31

    #@49d
    move-object/from16 v0, v31

    #@49f
    move-object/from16 v1, v25

    #@4a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a4
    move-result-object v31

    #@4a5
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a8
    move-result-object v31

    #@4a9
    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4ac
    throw v30

    #@4ad
    .line 612
    :cond_23
    invoke-virtual {v15, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@4b0
    .line 613
    if-ne v15, v4, :cond_0

    #@4b2
    .line 614
    const/4 v12, 0x1

    #@4b3
    goto/16 :goto_0

    #@4b5
    .line 616
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v25    # "str":Ljava/lang/String;
    :cond_24
    const-string/jumbo v30, "-p"

    #@4b8
    move-object/from16 v0, v24

    #@4ba
    move-object/from16 v1, v30

    #@4bc
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4bf
    move-result v30

    #@4c0
    if-eqz v30, :cond_25

    #@4c2
    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@4c5
    move-result-object v25

    #@4c6
    .line 618
    .restart local v25    # "str":Ljava/lang/String;
    move-object/from16 v0, v25

    #@4c8
    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@4cb
    .line 619
    if-ne v15, v4, :cond_0

    #@4cd
    .line 620
    const/4 v12, 0x1

    #@4ce
    goto/16 :goto_0

    #@4d0
    .line 622
    .end local v25    # "str":Ljava/lang/String;
    :cond_25
    const-string/jumbo v30, "-f"

    #@4d3
    move-object/from16 v0, v24

    #@4d5
    move-object/from16 v1, v30

    #@4d7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4da
    move-result v30

    #@4db
    if-eqz v30, :cond_26

    #@4dd
    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@4e0
    move-result-object v25

    #@4e1
    .line 624
    .restart local v25    # "str":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@4e4
    move-result-object v30

    #@4e5
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    #@4e8
    move-result v30

    #@4e9
    move/from16 v0, v30

    #@4eb
    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@4ee
    goto/16 :goto_0

    #@4f0
    .line 625
    .end local v25    # "str":Ljava/lang/String;
    :cond_26
    const-string/jumbo v30, "--grant-read-uri-permission"

    #@4f3
    move-object/from16 v0, v24

    #@4f5
    move-object/from16 v1, v30

    #@4f7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4fa
    move-result v30

    #@4fb
    if-eqz v30, :cond_27

    #@4fd
    .line 626
    const/16 v30, 0x1

    #@4ff
    move/from16 v0, v30

    #@501
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@504
    goto/16 :goto_0

    #@506
    .line 627
    :cond_27
    const-string/jumbo v30, "--grant-write-uri-permission"

    #@509
    move-object/from16 v0, v24

    #@50b
    move-object/from16 v1, v30

    #@50d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@510
    move-result v30

    #@511
    if-eqz v30, :cond_28

    #@513
    .line 628
    const/16 v30, 0x2

    #@515
    move/from16 v0, v30

    #@517
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@51a
    goto/16 :goto_0

    #@51c
    .line 629
    :cond_28
    const-string/jumbo v30, "--grant-persistable-uri-permission"

    #@51f
    move-object/from16 v0, v24

    #@521
    move-object/from16 v1, v30

    #@523
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@526
    move-result v30

    #@527
    if-eqz v30, :cond_29

    #@529
    .line 630
    const/16 v30, 0x40

    #@52b
    move/from16 v0, v30

    #@52d
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@530
    goto/16 :goto_0

    #@532
    .line 631
    :cond_29
    const-string/jumbo v30, "--grant-prefix-uri-permission"

    #@535
    move-object/from16 v0, v24

    #@537
    move-object/from16 v1, v30

    #@539
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53c
    move-result v30

    #@53d
    if-eqz v30, :cond_2a

    #@53f
    .line 632
    const/16 v30, 0x80

    #@541
    move/from16 v0, v30

    #@543
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@546
    goto/16 :goto_0

    #@548
    .line 633
    :cond_2a
    const-string/jumbo v30, "--exclude-stopped-packages"

    #@54b
    move-object/from16 v0, v24

    #@54d
    move-object/from16 v1, v30

    #@54f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@552
    move-result v30

    #@553
    if-eqz v30, :cond_2b

    #@555
    .line 634
    const/16 v30, 0x10

    #@557
    move/from16 v0, v30

    #@559
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@55c
    goto/16 :goto_0

    #@55e
    .line 635
    :cond_2b
    const-string/jumbo v30, "--include-stopped-packages"

    #@561
    move-object/from16 v0, v24

    #@563
    move-object/from16 v1, v30

    #@565
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@568
    move-result v30

    #@569
    if-eqz v30, :cond_2c

    #@56b
    .line 636
    const/16 v30, 0x20

    #@56d
    move/from16 v0, v30

    #@56f
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@572
    goto/16 :goto_0

    #@574
    .line 637
    :cond_2c
    const-string/jumbo v30, "--debug-log-resolution"

    #@577
    move-object/from16 v0, v24

    #@579
    move-object/from16 v1, v30

    #@57b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57e
    move-result v30

    #@57f
    if-eqz v30, :cond_2d

    #@581
    .line 638
    const/16 v30, 0x8

    #@583
    move/from16 v0, v30

    #@585
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@588
    goto/16 :goto_0

    #@58a
    .line 639
    :cond_2d
    const-string/jumbo v30, "--activity-brought-to-front"

    #@58d
    move-object/from16 v0, v24

    #@58f
    move-object/from16 v1, v30

    #@591
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@594
    move-result v30

    #@595
    if-eqz v30, :cond_2e

    #@597
    .line 640
    const/high16 v30, 0x400000

    #@599
    move/from16 v0, v30

    #@59b
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@59e
    goto/16 :goto_0

    #@5a0
    .line 641
    :cond_2e
    const-string/jumbo v30, "--activity-clear-top"

    #@5a3
    move-object/from16 v0, v24

    #@5a5
    move-object/from16 v1, v30

    #@5a7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5aa
    move-result v30

    #@5ab
    if-eqz v30, :cond_2f

    #@5ad
    .line 642
    const/high16 v30, 0x4000000

    #@5af
    move/from16 v0, v30

    #@5b1
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5b4
    goto/16 :goto_0

    #@5b6
    .line 643
    :cond_2f
    const-string/jumbo v30, "--activity-clear-when-task-reset"

    #@5b9
    move-object/from16 v0, v24

    #@5bb
    move-object/from16 v1, v30

    #@5bd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c0
    move-result v30

    #@5c1
    if-eqz v30, :cond_30

    #@5c3
    .line 644
    const/high16 v30, 0x80000

    #@5c5
    move/from16 v0, v30

    #@5c7
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5ca
    goto/16 :goto_0

    #@5cc
    .line 645
    :cond_30
    const-string/jumbo v30, "--activity-exclude-from-recents"

    #@5cf
    move-object/from16 v0, v24

    #@5d1
    move-object/from16 v1, v30

    #@5d3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d6
    move-result v30

    #@5d7
    if-eqz v30, :cond_31

    #@5d9
    .line 646
    const/high16 v30, 0x800000

    #@5db
    move/from16 v0, v30

    #@5dd
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5e0
    goto/16 :goto_0

    #@5e2
    .line 647
    :cond_31
    const-string/jumbo v30, "--activity-launched-from-history"

    #@5e5
    move-object/from16 v0, v24

    #@5e7
    move-object/from16 v1, v30

    #@5e9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5ec
    move-result v30

    #@5ed
    if-eqz v30, :cond_32

    #@5ef
    .line 648
    const/high16 v30, 0x100000

    #@5f1
    move/from16 v0, v30

    #@5f3
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5f6
    goto/16 :goto_0

    #@5f8
    .line 649
    :cond_32
    const-string/jumbo v30, "--activity-multiple-task"

    #@5fb
    move-object/from16 v0, v24

    #@5fd
    move-object/from16 v1, v30

    #@5ff
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@602
    move-result v30

    #@603
    if-eqz v30, :cond_33

    #@605
    .line 650
    const/high16 v30, 0x8000000

    #@607
    move/from16 v0, v30

    #@609
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@60c
    goto/16 :goto_0

    #@60e
    .line 651
    :cond_33
    const-string/jumbo v30, "--activity-no-animation"

    #@611
    move-object/from16 v0, v24

    #@613
    move-object/from16 v1, v30

    #@615
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@618
    move-result v30

    #@619
    if-eqz v30, :cond_34

    #@61b
    .line 652
    const/high16 v30, 0x10000

    #@61d
    move/from16 v0, v30

    #@61f
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@622
    goto/16 :goto_0

    #@624
    .line 653
    :cond_34
    const-string/jumbo v30, "--activity-no-history"

    #@627
    move-object/from16 v0, v24

    #@629
    move-object/from16 v1, v30

    #@62b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62e
    move-result v30

    #@62f
    if-eqz v30, :cond_35

    #@631
    .line 654
    const/high16 v30, 0x40000000    # 2.0f

    #@633
    move/from16 v0, v30

    #@635
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@638
    goto/16 :goto_0

    #@63a
    .line 655
    :cond_35
    const-string/jumbo v30, "--activity-no-user-action"

    #@63d
    move-object/from16 v0, v24

    #@63f
    move-object/from16 v1, v30

    #@641
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@644
    move-result v30

    #@645
    if-eqz v30, :cond_36

    #@647
    .line 656
    const/high16 v30, 0x40000

    #@649
    move/from16 v0, v30

    #@64b
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@64e
    goto/16 :goto_0

    #@650
    .line 657
    :cond_36
    const-string/jumbo v30, "--activity-previous-is-top"

    #@653
    move-object/from16 v0, v24

    #@655
    move-object/from16 v1, v30

    #@657
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65a
    move-result v30

    #@65b
    if-eqz v30, :cond_37

    #@65d
    .line 658
    const/high16 v30, 0x1000000

    #@65f
    move/from16 v0, v30

    #@661
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@664
    goto/16 :goto_0

    #@666
    .line 659
    :cond_37
    const-string/jumbo v30, "--activity-reorder-to-front"

    #@669
    move-object/from16 v0, v24

    #@66b
    move-object/from16 v1, v30

    #@66d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@670
    move-result v30

    #@671
    if-eqz v30, :cond_38

    #@673
    .line 660
    const/high16 v30, 0x20000

    #@675
    move/from16 v0, v30

    #@677
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@67a
    goto/16 :goto_0

    #@67c
    .line 661
    :cond_38
    const-string/jumbo v30, "--activity-reset-task-if-needed"

    #@67f
    move-object/from16 v0, v24

    #@681
    move-object/from16 v1, v30

    #@683
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@686
    move-result v30

    #@687
    if-eqz v30, :cond_39

    #@689
    .line 662
    const/high16 v30, 0x200000

    #@68b
    move/from16 v0, v30

    #@68d
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@690
    goto/16 :goto_0

    #@692
    .line 663
    :cond_39
    const-string/jumbo v30, "--activity-single-top"

    #@695
    move-object/from16 v0, v24

    #@697
    move-object/from16 v1, v30

    #@699
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69c
    move-result v30

    #@69d
    if-eqz v30, :cond_3a

    #@69f
    .line 664
    const/high16 v30, 0x20000000

    #@6a1
    move/from16 v0, v30

    #@6a3
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6a6
    goto/16 :goto_0

    #@6a8
    .line 665
    :cond_3a
    const-string/jumbo v30, "--activity-clear-task"

    #@6ab
    move-object/from16 v0, v24

    #@6ad
    move-object/from16 v1, v30

    #@6af
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b2
    move-result v30

    #@6b3
    if-eqz v30, :cond_3b

    #@6b5
    .line 666
    const v30, 0x8000

    #@6b8
    move/from16 v0, v30

    #@6ba
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6bd
    goto/16 :goto_0

    #@6bf
    .line 667
    :cond_3b
    const-string/jumbo v30, "--activity-task-on-home"

    #@6c2
    move-object/from16 v0, v24

    #@6c4
    move-object/from16 v1, v30

    #@6c6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c9
    move-result v30

    #@6ca
    if-eqz v30, :cond_3c

    #@6cc
    .line 668
    const/16 v30, 0x4000

    #@6ce
    move/from16 v0, v30

    #@6d0
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6d3
    goto/16 :goto_0

    #@6d5
    .line 669
    :cond_3c
    const-string/jumbo v30, "--receiver-registered-only"

    #@6d8
    move-object/from16 v0, v24

    #@6da
    move-object/from16 v1, v30

    #@6dc
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6df
    move-result v30

    #@6e0
    if-eqz v30, :cond_3d

    #@6e2
    .line 670
    const/high16 v30, 0x40000000    # 2.0f

    #@6e4
    move/from16 v0, v30

    #@6e6
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6e9
    goto/16 :goto_0

    #@6eb
    .line 671
    :cond_3d
    const-string/jumbo v30, "--receiver-replace-pending"

    #@6ee
    move-object/from16 v0, v24

    #@6f0
    move-object/from16 v1, v30

    #@6f2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f5
    move-result v30

    #@6f6
    if-eqz v30, :cond_3e

    #@6f8
    .line 672
    const/high16 v30, 0x20000000

    #@6fa
    move/from16 v0, v30

    #@6fc
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6ff
    goto/16 :goto_0

    #@701
    .line 673
    :cond_3e
    const-string/jumbo v30, "--selector"

    #@704
    move-object/from16 v0, v24

    #@706
    move-object/from16 v1, v30

    #@708
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70b
    move-result v30

    #@70c
    if-eqz v30, :cond_3f

    #@70e
    .line 674
    move-object/from16 v0, v27

    #@710
    invoke-virtual {v15, v9, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@713
    .line 675
    new-instance v15, Landroid/content/Intent;

    #@715
    .end local v15    # "intent":Landroid/content/Intent;
    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    #@718
    .restart local v15    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    #@71a
    .line 676
    :cond_3f
    const-string/jumbo v30, "-D"

    #@71d
    move-object/from16 v0, v24

    #@71f
    move-object/from16 v1, v30

    #@721
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@724
    move-result v30

    #@725
    if-eqz v30, :cond_40

    #@727
    .line 677
    move-object/from16 v0, p0

    #@729
    iget v0, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@72b
    move/from16 v30, v0

    #@72d
    or-int/lit8 v30, v30, 0x2

    #@72f
    move/from16 v0, v30

    #@731
    move-object/from16 v1, p0

    #@733
    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    #@735
    goto/16 :goto_0

    #@737
    .line 678
    :cond_40
    const-string/jumbo v30, "-W"

    #@73a
    move-object/from16 v0, v24

    #@73c
    move-object/from16 v1, v30

    #@73e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@741
    move-result v30

    #@742
    if-eqz v30, :cond_41

    #@744
    .line 679
    const/16 v30, 0x1

    #@746
    move/from16 v0, v30

    #@748
    move-object/from16 v1, p0

    #@74a
    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@74c
    goto/16 :goto_0

    #@74e
    .line 680
    :cond_41
    const-string/jumbo v30, "-P"

    #@751
    move-object/from16 v0, v24

    #@753
    move-object/from16 v1, v30

    #@755
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@758
    move-result v30

    #@759
    if-eqz v30, :cond_42

    #@75b
    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@75e
    move-result-object v30

    #@75f
    move-object/from16 v0, v30

    #@761
    move-object/from16 v1, p0

    #@763
    iput-object v0, v1, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@765
    .line 682
    const/16 v30, 0x1

    #@767
    move/from16 v0, v30

    #@769
    move-object/from16 v1, p0

    #@76b
    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mAutoStop:Z

    #@76d
    goto/16 :goto_0

    #@76f
    .line 683
    :cond_42
    const-string/jumbo v30, "--start-profiler"

    #@772
    move-object/from16 v0, v24

    #@774
    move-object/from16 v1, v30

    #@776
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@779
    move-result v30

    #@77a
    if-eqz v30, :cond_43

    #@77c
    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@77f
    move-result-object v30

    #@780
    move-object/from16 v0, v30

    #@782
    move-object/from16 v1, p0

    #@784
    iput-object v0, v1, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@786
    .line 685
    const/16 v30, 0x0

    #@788
    move/from16 v0, v30

    #@78a
    move-object/from16 v1, p0

    #@78c
    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mAutoStop:Z

    #@78e
    goto/16 :goto_0

    #@790
    .line 686
    :cond_43
    const-string/jumbo v30, "--sampling"

    #@793
    move-object/from16 v0, v24

    #@795
    move-object/from16 v1, v30

    #@797
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79a
    move-result v30

    #@79b
    if-eqz v30, :cond_44

    #@79d
    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@7a0
    move-result-object v30

    #@7a1
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7a4
    move-result v30

    #@7a5
    move/from16 v0, v30

    #@7a7
    move-object/from16 v1, p0

    #@7a9
    iput v0, v1, Lcom/android/commands/am/Am;->mSamplingInterval:I

    #@7ab
    goto/16 :goto_0

    #@7ad
    .line 688
    :cond_44
    const-string/jumbo v30, "-R"

    #@7b0
    move-object/from16 v0, v24

    #@7b2
    move-object/from16 v1, v30

    #@7b4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b7
    move-result v30

    #@7b8
    if-eqz v30, :cond_45

    #@7ba
    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@7bd
    move-result-object v30

    #@7be
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7c1
    move-result v30

    #@7c2
    move/from16 v0, v30

    #@7c4
    move-object/from16 v1, p0

    #@7c6
    iput v0, v1, Lcom/android/commands/am/Am;->mRepeat:I

    #@7c8
    goto/16 :goto_0

    #@7ca
    .line 690
    :cond_45
    const-string/jumbo v30, "-S"

    #@7cd
    move-object/from16 v0, v24

    #@7cf
    move-object/from16 v1, v30

    #@7d1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d4
    move-result v30

    #@7d5
    if-eqz v30, :cond_46

    #@7d7
    .line 691
    const/16 v30, 0x1

    #@7d9
    move/from16 v0, v30

    #@7db
    move-object/from16 v1, p0

    #@7dd
    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mStopOption:Z

    #@7df
    goto/16 :goto_0

    #@7e1
    .line 692
    :cond_46
    const-string/jumbo v30, "--opengl-trace"

    #@7e4
    move-object/from16 v0, v24

    #@7e6
    move-object/from16 v1, v30

    #@7e8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7eb
    move-result v30

    #@7ec
    if-eqz v30, :cond_47

    #@7ee
    .line 693
    move-object/from16 v0, p0

    #@7f0
    iget v0, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@7f2
    move/from16 v30, v0

    #@7f4
    or-int/lit8 v30, v30, 0x4

    #@7f6
    move/from16 v0, v30

    #@7f8
    move-object/from16 v1, p0

    #@7fa
    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    #@7fc
    goto/16 :goto_0

    #@7fe
    .line 694
    :cond_47
    const-string/jumbo v30, "--user"

    #@801
    move-object/from16 v0, v24

    #@803
    move-object/from16 v1, v30

    #@805
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@808
    move-result v30

    #@809
    if-eqz v30, :cond_48

    #@80b
    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@80e
    move-result-object v30

    #@80f
    move-object/from16 v0, p0

    #@811
    move-object/from16 v1, v30

    #@813
    invoke-virtual {v0, v1}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@816
    move-result v30

    #@817
    move/from16 v0, v30

    #@819
    move-object/from16 v1, p0

    #@81b
    iput v0, v1, Lcom/android/commands/am/Am;->mUserId:I

    #@81d
    goto/16 :goto_0

    #@81f
    .line 696
    :cond_48
    const-string/jumbo v30, "--receiver-permission"

    #@822
    move-object/from16 v0, v24

    #@824
    move-object/from16 v1, v30

    #@826
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@829
    move-result v30

    #@82a
    if-eqz v30, :cond_49

    #@82c
    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@82f
    move-result-object v30

    #@830
    move-object/from16 v0, v30

    #@832
    move-object/from16 v1, p0

    #@834
    iput-object v0, v1, Lcom/android/commands/am/Am;->mReceiverPermission:Ljava/lang/String;

    #@836
    goto/16 :goto_0

    #@838
    .line 699
    :cond_49
    sget-object v30, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@83a
    new-instance v31, Ljava/lang/StringBuilder;

    #@83c
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@83f
    const-string/jumbo v32, "Error: Unknown option: "

    #@842
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@845
    move-result-object v31

    #@846
    move-object/from16 v0, v31

    #@848
    move-object/from16 v1, v24

    #@84a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84d
    move-result-object v31

    #@84e
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@851
    move-result-object v31

    #@852
    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@855
    .line 700
    const/16 v30, 0x0

    #@857
    return-object v30

    #@858
    .line 703
    :cond_4a
    move-object/from16 v0, v27

    #@85a
    invoke-virtual {v15, v9, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@85d
    .line 705
    if-eq v15, v4, :cond_4d

    #@85f
    const/4 v13, 0x1

    #@860
    .line 706
    .local v13, "hasSelector":Z
    :goto_9
    if-eqz v13, :cond_4b

    #@862
    .line 708
    invoke-virtual {v4, v15}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    #@865
    .line 709
    move-object v15, v4

    #@866
    .line 712
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    #@869
    move-result-object v2

    #@86a
    .line 713
    .local v2, "arg":Ljava/lang/String;
    const/4 v4, 0x0

    #@86b
    .line 714
    .local v4, "baseIntent":Landroid/content/Intent;
    if-nez v2, :cond_4e

    #@86d
    .line 715
    if-eqz v13, :cond_4c

    #@86f
    .line 721
    new-instance v4, Landroid/content/Intent;

    #@871
    .end local v4    # "baseIntent":Landroid/content/Intent;
    const-string/jumbo v30, "android.intent.action.MAIN"

    #@874
    move-object/from16 v0, v30

    #@876
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@879
    .line 722
    .local v4, "baseIntent":Landroid/content/Intent;
    const-string/jumbo v30, "android.intent.category.LAUNCHER"

    #@87c
    move-object/from16 v0, v30

    #@87e
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@881
    .line 741
    .end local v4    # "baseIntent":Landroid/content/Intent;
    :cond_4c
    :goto_a
    if-eqz v4, :cond_53

    #@883
    .line 742
    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@886
    move-result-object v11

    #@887
    .line 743
    .local v11, "extras":Landroid/os/Bundle;
    const/16 v30, 0x0

    #@889
    check-cast v30, Landroid/os/Bundle;

    #@88b
    move-object/from16 v0, v30

    #@88d
    invoke-virtual {v15, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@890
    .line 744
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@893
    move-result-object v28

    #@894
    .line 745
    .local v28, "uriExtras":Landroid/os/Bundle;
    const/16 v30, 0x0

    #@896
    check-cast v30, Landroid/os/Bundle;

    #@898
    move-object/from16 v0, v30

    #@89a
    invoke-virtual {v4, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@89d
    .line 746
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8a0
    move-result-object v30

    #@8a1
    if-eqz v30, :cond_51

    #@8a3
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@8a6
    move-result-object v30

    #@8a7
    if-eqz v30, :cond_51

    #@8a9
    .line 747
    new-instance v7, Ljava/util/HashSet;

    #@8ab
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@8ae
    move-result-object v30

    #@8af
    move-object/from16 v0, v30

    #@8b1
    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@8b4
    .line 748
    .local v7, "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8b7
    move-result-object v6

    #@8b8
    .local v6, "c$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@8bb
    move-result v30

    #@8bc
    if-eqz v30, :cond_51

    #@8be
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8c1
    move-result-object v5

    #@8c2
    check-cast v5, Ljava/lang/String;

    #@8c4
    .line 749
    .local v5, "c":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    #@8c7
    goto :goto_b

    #@8c8
    .line 705
    .end local v2    # "arg":Ljava/lang/String;
    .end local v5    # "c":Ljava/lang/String;
    .end local v6    # "c$iterator":Ljava/util/Iterator;
    .end local v7    # "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v13    # "hasSelector":Z
    .end local v28    # "uriExtras":Landroid/os/Bundle;
    .restart local v4    # "baseIntent":Landroid/content/Intent;
    :cond_4d
    const/4 v13, 0x0

    #@8c9
    .restart local v13    # "hasSelector":Z
    goto :goto_9

    #@8ca
    .line 724
    .restart local v2    # "arg":Ljava/lang/String;
    .local v4, "baseIntent":Landroid/content/Intent;
    :cond_4e
    const/16 v30, 0x3a

    #@8cc
    move/from16 v0, v30

    #@8ce
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    #@8d1
    move-result v30

    #@8d2
    if-ltz v30, :cond_4f

    #@8d4
    .line 727
    const/16 v30, 0x7

    #@8d6
    move/from16 v0, v30

    #@8d8
    invoke-static {v2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    #@8db
    move-result-object v4

    #@8dc
    .local v4, "baseIntent":Landroid/content/Intent;
    goto :goto_a

    #@8dd
    .line 729
    .local v4, "baseIntent":Landroid/content/Intent;
    :cond_4f
    const/16 v30, 0x2f

    #@8df
    move/from16 v0, v30

    #@8e1
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    #@8e4
    move-result v30

    #@8e5
    if-ltz v30, :cond_50

    #@8e7
    .line 732
    new-instance v4, Landroid/content/Intent;

    #@8e9
    .end local v4    # "baseIntent":Landroid/content/Intent;
    const-string/jumbo v30, "android.intent.action.MAIN"

    #@8ec
    move-object/from16 v0, v30

    #@8ee
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8f1
    .line 733
    .local v4, "baseIntent":Landroid/content/Intent;
    const-string/jumbo v30, "android.intent.category.LAUNCHER"

    #@8f4
    move-object/from16 v0, v30

    #@8f6
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@8f9
    .line 734
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@8fc
    move-result-object v30

    #@8fd
    move-object/from16 v0, v30

    #@8ff
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@902
    goto/16 :goto_a

    #@904
    .line 737
    .local v4, "baseIntent":Landroid/content/Intent;
    :cond_50
    new-instance v4, Landroid/content/Intent;

    #@906
    .end local v4    # "baseIntent":Landroid/content/Intent;
    const-string/jumbo v30, "android.intent.action.MAIN"

    #@909
    move-object/from16 v0, v30

    #@90b
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@90e
    .line 738
    .local v4, "baseIntent":Landroid/content/Intent;
    const-string/jumbo v30, "android.intent.category.LAUNCHER"

    #@911
    move-object/from16 v0, v30

    #@913
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@916
    .line 739
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@919
    goto/16 :goto_a

    #@91b
    .line 752
    .end local v4    # "baseIntent":Landroid/content/Intent;
    .restart local v11    # "extras":Landroid/os/Bundle;
    .restart local v28    # "uriExtras":Landroid/os/Bundle;
    :cond_51
    const/16 v30, 0x48

    #@91d
    move/from16 v0, v30

    #@91f
    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    #@922
    .line 753
    if-nez v11, :cond_54

    #@924
    .line 754
    move-object/from16 v11, v28

    #@926
    .line 759
    :cond_52
    :goto_c
    invoke-virtual {v15, v11}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@929
    .line 760
    const/4 v12, 0x1

    #@92a
    .line 763
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v28    # "uriExtras":Landroid/os/Bundle;
    :cond_53
    if-nez v12, :cond_55

    #@92c
    new-instance v30, Ljava/lang/IllegalArgumentException;

    #@92e
    const-string/jumbo v31, "No intent supplied"

    #@931
    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@934
    throw v30

    #@935
    .line 755
    .restart local v11    # "extras":Landroid/os/Bundle;
    .restart local v28    # "uriExtras":Landroid/os/Bundle;
    :cond_54
    if-eqz v28, :cond_52

    #@937
    .line 756
    move-object/from16 v0, v28

    #@939
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@93c
    .line 757
    move-object/from16 v11, v28

    #@93e
    goto :goto_c

    #@93f
    .line 764
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v28    # "uriExtras":Landroid/os/Bundle;
    :cond_55
    return-object v15
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
    .line 2235
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v0

    #@4
    .line 2236
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-static {v2}, Landroid/os/SELinux;->getFileContext(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 2237
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
    .line 2238
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
    .line 2240
    :cond_0
    return-object v0
.end method

.method static removeWallOption()V
    .locals 3

    #@0
    .prologue
    .line 1108
    const-string/jumbo v1, "dalvik.vm.extra-opts"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 1109
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
    .line 1110
    const-string/jumbo v1, "-Xprofile:wallclock"

    #@15
    const-string/jumbo v2, ""

    #@18
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 1111
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 1112
    const-string/jumbo v1, "dalvik.vm.extra-opts"

    #@23
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 1107
    :cond_0
    return-void
.end method

.method private runBugReport()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2
    invoke-interface {v0}, Landroid/app/IActivityManager;->requestBugReport()V

    #@5
    .line 1290
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    const-string/jumbo v1, "Your lovely bug report is being created; please be patient."

    #@a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d
    .line 1288
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
    .line 1274
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
    .line 1273
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
    .line 1284
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1285
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
    .line 1283
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
    .line 1213
    const/4 v3, 0x1

    #@1
    .line 1214
    .local v3, "managed":Z
    const/4 v2, -0x2

    #@2
    .line 1217
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
    .line 1218
    const-string/jumbo v0, "--user"

    #@b
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1219
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@18
    move-result v2

    #@19
    .line 1220
    const/4 v0, -0x1

    #@1a
    if-ne v2, v0, :cond_0

    #@1c
    .line 1221
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v9, "Error: Can\'t dump heap with user \'all\'"

    #@21
    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 1222
    return-void

    #@25
    .line 1224
    :cond_1
    const-string/jumbo v0, "-n"

    #@28
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 1225
    const/4 v3, 0x0

    #@2f
    goto :goto_0

    #@30
    .line 1227
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
    .line 1228
    return-void

    #@4a
    .line 1231
    :cond_3
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 1232
    .local v1, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 1233
    .local v4, "heapFile":Ljava/lang/String;
    const/4 v5, 0x0

    #@53
    .line 1236
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v7, Ljava/io/File;

    #@55
    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@58
    .line 1237
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    #@5b
    .line 1239
    const/high16 v0, 0x3c000000    # 0.0078125f

    #@5d
    .line 1238
    invoke-static {v7, v0}, Lcom/android/commands/am/Am;->openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    move-result-object v5

    #@61
    .line 1248
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@63
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    #@66
    move-result v0

    #@67
    if-nez v0, :cond_4

    #@69
    .line 1249
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
    .line 1242
    .end local v7    # "file":Ljava/io/File;
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v6

    #@84
    .line 1243
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
    .line 1244
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9f
    const-string/jumbo v9, "Consider using a file under /data/local/tmp/"

    #@a2
    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a5
    .line 1245
    return-void

    #@a6
    .line 1212
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
    .line 972
    const/4 v1, -0x1

    #@1
    .line 975
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@7
    .line 976
    const-string/jumbo v2, "--user"

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 977
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
    .line 979
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
    .line 980
    return-void

    #@33
    .line 983
    :cond_1
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@35
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    #@3c
    .line 971
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
    .line 2100
    const/16 v1, 0xe

    #@2
    .line 2101
    .local v1, "days":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    .line 2102
    .local v4, "option":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@8
    .line 2103
    const-string/jumbo v7, "--days"

    #@b
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v7

    #@f
    if-nez v7, :cond_0

    #@11
    .line 2104
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
    .line 2107
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@32
    move-result v1

    #@33
    .line 2108
    if-gtz v1, :cond_1

    #@35
    .line 2109
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@37
    const-string/jumbo v8, "--days must be a positive integer"

    #@3a
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v7

    #@3e
    .line 2114
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@40
    invoke-interface {v7}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    #@43
    move-result-object v0

    #@44
    .line 2115
    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v0, :cond_2

    #@46
    .line 2116
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@48
    const-string/jumbo v8, "Activity manager has no configuration"

    #@4b
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4e
    .line 2117
    return-void

    #@4f
    .line 2120
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
    .line 2121
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
    .line 2123
    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->getRecentConfigurations(I)Ljava/util/List;

    #@91
    move-result-object v6

    #@92
    .line 2124
    .local v6, "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@95
    move-result v5

    #@96
    .line 2125
    .local v5, "recentConfigSize":I
    if-lez v5, :cond_3

    #@98
    .line 2126
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9a
    const-string/jumbo v8, "recentConfigs:"

    #@9d
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a0
    .line 2129
    :cond_3
    const/4 v3, 0x0

    #@a1
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_4

    #@a3
    .line 2130
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
    .line 2131
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b4
    move-result-object v7

    #@b5
    check-cast v7, Landroid/content/res/Configuration;

    #@b7
    .line 2130
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
    .line 2129
    add-int/lit8 v3, v3, 0x1

    #@c8
    goto :goto_0

    #@c9
    .line 2134
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v3    # "i":I
    .end local v5    # "recentConfigSize":I
    .end local v6    # "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    :catch_0
    move-exception v2

    #@ca
    .line 2099
    :cond_4
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
    .line 2159
    const/4 v3, 0x0

    #@1
    .line 2162
    .local v3, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@7
    .line 2163
    const-string/jumbo v5, "--user"

    #@a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 2164
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
    .line 2166
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
    .line 2167
    return-void

    #@33
    .line 2170
    :cond_1
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 2173
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "usagestats"

    #@3a
    .line 2172
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@3d
    move-result-object v5

    #@3e
    invoke-static {v5}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    #@41
    move-result-object v4

    #@42
    .line 2174
    .local v4, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-interface {v4, v2, v3}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;I)Z

    #@45
    move-result v0

    #@46
    .line 2175
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
    .line 2158
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
    .line 1670
    const/4 v0, 0x0

    #@1
    .line 1671
    .local v0, "allowRestart":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@7
    .line 1672
    const-string/jumbo v2, "--allow-restart"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1673
    const/4 v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1675
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
    .line 1676
    return-void

    #@2c
    .line 1680
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2e
    const-string/jumbo v3, "Hanging the system..."

    #@31
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 1681
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@36
    new-instance v3, Landroid/os/Binder;

    #@38
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    #@3b
    invoke-interface {v2, v3, v0}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V

    #@3e
    .line 1668
    return-void
.end method

.method private runIdleMaintenance()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 1697
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v14

    #@7
    .local v14, "opt":Ljava/lang/String;
    if-eqz v14, :cond_0

    #@9
    .line 1698
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Error: Unknown option: "

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 1699
    return-void

    #@23
    .line 1702
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@25
    const-string/jumbo v3, "Performing idle maintenance..."

    #@28
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 1703
    new-instance v2, Landroid/content/Intent;

    #@2d
    .line 1704
    const-string/jumbo v0, "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

    #@30
    .line 1703
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@33
    .line 1705
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@35
    .line 1706
    const/4 v11, 0x1

    #@36
    move-object v3, v1

    #@37
    move-object v4, v1

    #@38
    move-object v6, v1

    #@39
    move-object v7, v1

    #@3a
    move-object v8, v1

    #@3b
    move-object v10, v1

    #@3c
    move v12, v5

    #@3d
    move v13, v9

    #@3e
    .line 1705
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    #@41
    .line 1695
    return-void
.end method

.method private runInstrument()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1017
    const/4 v3, 0x0

    #@1
    .line 1018
    .local v3, "profileFile":Ljava/lang/String;
    const/16 v20, 0x0

    #@3
    .line 1019
    .local v20, "wait":Z
    const/16 v17, 0x0

    #@5
    .line 1020
    .local v17, "rawMode":Z
    const/4 v14, 0x0

    #@6
    .line 1021
    .local v14, "no_window_animation":Z
    const/4 v8, -0x2

    #@7
    .line 1022
    .local v8, "userId":I
    new-instance v5, Landroid/os/Bundle;

    #@9
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@c
    .line 1023
    .local v5, "args":Landroid/os/Bundle;
    const/4 v10, 0x0

    #@d
    .local v10, "argKey":Ljava/lang/String;
    const/4 v11, 0x0

    #@e
    .line 1024
    .local v11, "argValue":Ljava/lang/String;
    const-string/jumbo v1, "window"

    #@11
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@18
    move-result-object v21

    #@19
    .line 1025
    .local v21, "wm":Landroid/view/IWindowManager;
    const/4 v9, 0x0

    #@1a
    .line 1028
    .end local v3    # "profileFile":Ljava/lang/String;
    .end local v10    # "argKey":Ljava/lang/String;
    .end local v11    # "argValue":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@1d
    move-result-object v16

    #@1e
    .local v16, "opt":Ljava/lang/String;
    if-eqz v16, :cond_8

    #@20
    .line 1029
    const-string/jumbo v1, "-p"

    #@23
    move-object/from16 v0, v16

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_0

    #@2b
    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .local v3, "profileFile":Ljava/lang/String;
    goto :goto_0

    #@30
    .line 1031
    .end local v3    # "profileFile":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "-w"

    #@33
    move-object/from16 v0, v16

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 1032
    const/16 v20, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1033
    :cond_1
    const-string/jumbo v1, "-r"

    #@41
    move-object/from16 v0, v16

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_2

    #@49
    .line 1034
    const/16 v17, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 1035
    :cond_2
    const-string/jumbo v1, "-e"

    #@4f
    move-object/from16 v0, v16

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_3

    #@57
    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@5a
    move-result-object v10

    #@5b
    .line 1037
    .local v10, "argKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@5e
    move-result-object v11

    #@5f
    .line 1038
    .local v11, "argValue":Ljava/lang/String;
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    .line 1039
    .end local v10    # "argKey":Ljava/lang/String;
    .end local v11    # "argValue":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "--no_window_animation"

    #@66
    move-object/from16 v0, v16

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v1

    #@6c
    if-nez v1, :cond_4

    #@6e
    .line 1040
    const-string/jumbo v1, "--no-window-animation"

    #@71
    move-object/from16 v0, v16

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v1

    #@77
    .line 1039
    if-eqz v1, :cond_5

    #@79
    .line 1041
    :cond_4
    const/4 v14, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 1042
    :cond_5
    const-string/jumbo v1, "--user"

    #@7e
    move-object/from16 v0, v16

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v1

    #@84
    if-eqz v1, :cond_6

    #@86
    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    move-object/from16 v0, p0

    #@8c
    invoke-virtual {v0, v1}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@8f
    move-result v8

    #@90
    goto :goto_0

    #@91
    .line 1044
    :cond_6
    const-string/jumbo v1, "--abi"

    #@94
    move-object/from16 v0, v16

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_7

    #@9c
    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@9f
    move-result-object v9

    #@a0
    .local v9, "abi":Ljava/lang/String;
    goto/16 :goto_0

    #@a2
    .line 1047
    .end local v9    # "abi":Ljava/lang/String;
    :cond_7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a4
    new-instance v4, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v22, "Error: Unknown option: "

    #@ac
    move-object/from16 v0, v22

    #@ae
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v4

    #@b2
    move-object/from16 v0, v16

    #@b4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v4

    #@b8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v4

    #@bc
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@bf
    .line 1048
    return-void

    #@c0
    .line 1052
    :cond_8
    const/4 v1, -0x1

    #@c1
    if-ne v8, v1, :cond_9

    #@c3
    .line 1053
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c5
    const-string/jumbo v4, "Error: Can\'t start instrumentation with user \'all\'"

    #@c8
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@cb
    .line 1054
    return-void

    #@cc
    .line 1057
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@cf
    move-result-object v12

    #@d0
    .line 1058
    .local v12, "cnArg":Ljava/lang/String;
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@d3
    move-result-object v2

    #@d4
    .line 1059
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_a

    #@d6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d8
    new-instance v4, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v22, "Bad component name: "

    #@e0
    move-object/from16 v0, v22

    #@e2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v4

    #@e6
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v4

    #@ea
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v4

    #@ee
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f1
    throw v1

    #@f2
    .line 1061
    :cond_a
    const/4 v6, 0x0

    #@f3
    .line 1062
    .local v6, "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    const/4 v7, 0x0

    #@f4
    .line 1063
    .local v7, "connection":Landroid/app/UiAutomationConnection;
    if-eqz v20, :cond_b

    #@f6
    .line 1064
    new-instance v6, Lcom/android/commands/am/Am$InstrumentationWatcher;

    #@f8
    .end local v6    # "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    const/4 v1, 0x0

    #@f9
    move-object/from16 v0, p0

    #@fb
    invoke-direct {v6, v0, v1}, Lcom/android/commands/am/Am$InstrumentationWatcher;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$InstrumentationWatcher;)V

    #@fe
    .line 1065
    .local v6, "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    move/from16 v0, v17

    #@100
    invoke-virtual {v6, v0}, Lcom/android/commands/am/Am$InstrumentationWatcher;->setRawOutput(Z)V

    #@103
    .line 1066
    new-instance v7, Landroid/app/UiAutomationConnection;

    #@105
    .end local v7    # "connection":Landroid/app/UiAutomationConnection;
    invoke-direct {v7}, Landroid/app/UiAutomationConnection;-><init>()V

    #@108
    .line 1069
    .end local v6    # "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    :cond_b
    const/4 v15, 0x0

    #@109
    .line 1070
    .local v15, "oldAnims":[F
    if-eqz v14, :cond_c

    #@10b
    .line 1071
    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->getAnimationScales()[F

    #@10e
    move-result-object v15

    #@10f
    .line 1072
    .local v15, "oldAnims":[F
    const/4 v1, 0x0

    #@110
    const/4 v4, 0x0

    #@111
    move-object/from16 v0, v21

    #@113
    invoke-interface {v0, v1, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    #@116
    .line 1073
    const/4 v1, 0x1

    #@117
    const/4 v4, 0x0

    #@118
    move-object/from16 v0, v21

    #@11a
    invoke-interface {v0, v1, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    #@11d
    .line 1076
    .end local v15    # "oldAnims":[F
    :cond_c
    if-eqz v9, :cond_f

    #@11f
    .line 1077
    sget-object v19, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@121
    .line 1078
    .local v19, "supportedAbis":[Ljava/lang/String;
    const/4 v13, 0x0

    #@122
    .line 1079
    .local v13, "matched":Z
    const/4 v1, 0x0

    #@123
    move-object/from16 v0, v19

    #@125
    array-length v4, v0

    #@126
    :goto_1
    if-ge v1, v4, :cond_d

    #@128
    aget-object v18, v19, v1

    #@12a
    .line 1080
    .local v18, "supportedAbi":Ljava/lang/String;
    move-object/from16 v0, v18

    #@12c
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12f
    move-result v22

    #@130
    if-eqz v22, :cond_e

    #@132
    .line 1081
    const/4 v13, 0x1

    #@133
    .line 1086
    .end local v18    # "supportedAbi":Ljava/lang/String;
    :cond_d
    if-nez v13, :cond_f

    #@135
    .line 1087
    new-instance v1, Landroid/util/AndroidException;

    #@137
    .line 1088
    new-instance v4, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    const-string/jumbo v22, "INSTRUMENTATION_FAILED: Unsupported instruction set "

    #@13f
    move-object/from16 v0, v22

    #@141
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v4

    #@145
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v4

    #@149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v4

    #@14d
    .line 1087
    invoke-direct {v1, v4}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@150
    throw v1

    #@151
    .line 1079
    .restart local v18    # "supportedAbi":Ljava/lang/String;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    #@153
    goto :goto_1

    #@154
    .line 1092
    .end local v13    # "matched":Z
    .end local v18    # "supportedAbi":Ljava/lang/String;
    .end local v19    # "supportedAbis":[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    #@156
    iget-object v1, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@158
    const/4 v4, 0x0

    #@159
    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    #@15c
    move-result v1

    #@15d
    if-nez v1, :cond_10

    #@15f
    .line 1093
    new-instance v1, Landroid/util/AndroidException;

    #@161
    new-instance v4, Ljava/lang/StringBuilder;

    #@163
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@166
    const-string/jumbo v22, "INSTRUMENTATION_FAILED: "

    #@169
    move-object/from16 v0, v22

    #@16b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v4

    #@16f
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@172
    move-result-object v22

    #@173
    move-object/from16 v0, v22

    #@175
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v4

    #@179
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v4

    #@17d
    invoke-direct {v1, v4}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@180
    throw v1

    #@181
    .line 1096
    :cond_10
    if-eqz v6, :cond_11

    #@183
    .line 1097
    invoke-virtual {v6}, Lcom/android/commands/am/Am$InstrumentationWatcher;->waitForFinish()Z

    #@186
    move-result v1

    #@187
    if-nez v1, :cond_11

    #@189
    .line 1098
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18b
    const-string/jumbo v4, "INSTRUMENTATION_ABORTED: System has crashed."

    #@18e
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@191
    .line 1102
    :cond_11
    if-eqz v15, :cond_12

    #@193
    .line 1103
    move-object/from16 v0, v21

    #@195
    invoke-interface {v0, v15}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    #@198
    .line 1016
    :cond_12
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
    .line 987
    const/4 v1, -0x1

    #@1
    .line 990
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@7
    .line 991
    const-string/jumbo v2, "--user"

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 992
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
    .line 994
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
    .line 995
    return-void

    #@33
    .line 998
    :cond_1
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@35
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    #@3c
    .line 986
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
    .line 1002
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2
    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    #@5
    .line 1001
    return-void
.end method

.method private runMonitor()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1654
    const/4 v1, 0x0

    #@1
    .line 1655
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@7
    .line 1656
    const-string/jumbo v3, "--gdb"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 1657
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .local v1, "gdbPort":Ljava/lang/String;
    goto :goto_0

    #@15
    .line 1659
    .end local v1    # "gdbPort":Ljava/lang/String;
    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Error: Unknown option: "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 1660
    return-void

    #@2f
    .line 1664
    :cond_1
    new-instance v0, Lcom/android/commands/am/Am$MyActivityController;

    #@31
    invoke-direct {v0, p0, v1}, Lcom/android/commands/am/Am$MyActivityController;-><init>(Lcom/android/commands/am/Am;Ljava/lang/String;)V

    #@34
    .line 1665
    .local v0, "controller":Lcom/android/commands/am/Am$MyActivityController;
    invoke-virtual {v0}, Lcom/android/commands/am/Am$MyActivityController;->run()V

    #@37
    .line 1652
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
    .line 1734
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1736
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
    .line 1737
    .local v2, "procState":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    .line 1738
    invoke-static {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    #@12
    move-result v4

    #@13
    .line 1737
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 1733
    .end local v2    # "procState":I
    :goto_0
    return-void

    #@17
    .line 1739
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
    .line 1117
    const/4 v10, 0x0

    #@2
    .line 1118
    .local v10, "profileFile":Ljava/lang/String;
    const/4 v3, 0x0

    #@3
    .line 1119
    .local v3, "start":Z
    const/4 v12, 0x0

    #@4
    .line 1120
    .local v12, "wall":Z
    const/4 v2, -0x2

    #@5
    .line 1121
    .local v2, "userId":I
    const/4 v5, 0x0

    #@6
    .line 1122
    .local v5, "profileType":I
    iput v14, p0, Lcom/android/commands/am/Am;->mSamplingInterval:I

    #@8
    .line 1124
    const/4 v1, 0x0

    #@9
    .line 1126
    .local v1, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@c
    move-result-object v6

    #@d
    .line 1128
    .local v6, "cmd":Ljava/lang/String;
    const-string/jumbo v0, "start"

    #@10
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_5

    #@16
    .line 1129
    const/4 v3, 0x1

    #@17
    .line 1131
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@1a
    move-result-object v9

    #@1b
    .local v9, "opt":Ljava/lang/String;
    if-eqz v9, :cond_3

    #@1d
    .line 1132
    const-string/jumbo v0, "--user"

    #@20
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 1133
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
    .line 1134
    :cond_0
    const-string/jumbo v0, "--wall"

    #@32
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 1135
    const/4 v12, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1136
    :cond_1
    const-string/jumbo v0, "--sampling"

    #@3d
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_2

    #@43
    .line 1137
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
    .line 1139
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
    .line 1140
    return-void

    #@68
    .line 1143
    :cond_3
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    .line 1166
    .end local v9    # "opt":Ljava/lang/String;
    .local v1, "process":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v0, -0x1

    #@6d
    if-ne v2, v0, :cond_a

    #@6f
    .line 1167
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@71
    const-string/jumbo v13, "Error: Can\'t profile with user \'all\'"

    #@74
    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@77
    .line 1168
    return-void

    #@78
    .line 1144
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
    .line 1146
    :goto_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@84
    move-result-object v9

    #@85
    .restart local v9    # "opt":Ljava/lang/String;
    if-eqz v9, :cond_7

    #@87
    .line 1147
    const-string/jumbo v0, "--user"

    #@8a
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v0

    #@8e
    if-eqz v0, :cond_6

    #@90
    .line 1148
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
    .line 1150
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
    .line 1151
    return-void

    #@b3
    .line 1154
    :cond_7
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    .local v1, "process":Ljava/lang/String;
    goto :goto_1

    #@b8
    .line 1157
    .end local v9    # "opt":Ljava/lang/String;
    .local v1, "process":Ljava/lang/String;
    :cond_8
    move-object v1, v6

    #@b9
    .line 1158
    .local v1, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    .line 1159
    const-string/jumbo v0, "start"

    #@c0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v0

    #@c4
    if-eqz v0, :cond_9

    #@c6
    .line 1160
    const/4 v3, 0x1

    #@c7
    goto :goto_1

    #@c8
    .line 1161
    :cond_9
    const-string/jumbo v0, "stop"

    #@cb
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v0

    #@cf
    if-nez v0, :cond_4

    #@d1
    .line 1162
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
    .line 1171
    :cond_a
    const/4 v8, 0x0

    #@f3
    .line 1172
    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    #@f4
    .line 1174
    .local v4, "profilerInfo":Landroid/app/ProfilerInfo;
    if-eqz v3, :cond_b

    #@f6
    .line 1175
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@f9
    move-result-object v10

    #@fa
    .line 1178
    .local v10, "profileFile":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    #@fc
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@ff
    .line 1179
    const/high16 v13, 0x3c000000    # 0.0078125f

    #@101
    .line 1177
    invoke-static {v0, v13}, Lcom/android/commands/am/Am;->openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@104
    move-result-object v8

    #@105
    .line 1187
    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Landroid/app/ProfilerInfo;

    #@107
    .end local v4    # "profilerInfo":Landroid/app/ProfilerInfo;
    iget v0, p0, Lcom/android/commands/am/Am;->mSamplingInterval:I

    #@109
    invoke-direct {v4, v10, v8, v0, v14}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    #@10c
    .line 1191
    .end local v8    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "profileFile":Ljava/lang/String;
    :cond_b
    if-eqz v12, :cond_f

    #@10e
    .line 1193
    :try_start_1
    const-string/jumbo v0, "dalvik.vm.extra-opts"

    #@111
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@114
    move-result-object v11

    #@115
    .line 1194
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
    .line 1201
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
    .line 1202
    const/4 v12, 0x0

    #@129
    .line 1203
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
    .line 1205
    :catchall_0
    move-exception v0

    #@144
    .line 1206
    if-nez v12, :cond_d

    #@146
    .line 1205
    :cond_d
    throw v0

    #@147
    .line 1182
    .restart local v4    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v10    # "profileFile":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@148
    .line 1183
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
    .line 1184
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@163
    const-string/jumbo v13, "Consider using a file under /data/local/tmp/"

    #@166
    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@169
    .line 1185
    return-void

    #@16a
    .line 1195
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
    .line 1198
    .end local v11    # "props":Ljava/lang/String;
    :cond_f
    if-eqz v3, :cond_c

    #@181
    goto :goto_3

    #@182
    .line 1206
    :cond_10
    if-nez v12, :cond_11

    #@184
    .line 1116
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
    .line 1686
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 1687
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
    .line 1688
    return-void

    #@20
    .line 1691
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v2, "Restart the system..."

    #@25
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 1692
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2a
    invoke-interface {v1}, Landroid/app/IActivityManager;->restart()V

    #@2d
    .line 1684
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
    .line 1710
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1712
    .local v2, "mode":Ljava/lang/String;
    const-string/jumbo v4, "on"

    #@7
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 1713
    const/4 v1, 0x1

    #@e
    .line 1721
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 1724
    .local v3, "packageName":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@14
    if-eqz v1, :cond_3

    #@16
    .line 1725
    const/4 v4, 0x1

    #@17
    .line 1724
    :goto_1
    invoke-interface {v5, v3, v4}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1729
    :goto_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 1730
    if-nez v3, :cond_0

    #@20
    .line 1709
    return-void

    #@21
    .line 1714
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
    .line 1715
    const/4 v1, 0x0

    #@2b
    .restart local v1    # "enabled":Z
    goto :goto_0

    #@2c
    .line 1717
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
    .line 1718
    return-void

    #@46
    .line 1726
    .restart local v1    # "enabled":Z
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    #@47
    goto :goto_1

    #@48
    .line 1727
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
    .line 2179
    const/4 v4, -0x2

    #@1
    .line 2181
    .local v4, "userId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@7
    .line 2182
    const-string/jumbo v5, "--user"

    #@a
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_1

    #@10
    .line 2183
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@17
    move-result v4

    #@18
    .line 2184
    const/4 v5, -0x1

    #@19
    if-ne v4, v5, :cond_0

    #@1b
    .line 2185
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1d
    const-string/jumbo v6, "Error: Can\'t use user \'all\'"

    #@20
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@23
    .line 2186
    return-void

    #@24
    .line 2189
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
    .line 2190
    return-void

    #@3e
    .line 2194
    :cond_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    .line 2195
    .local v3, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 2197
    .local v1, "levelArg":Ljava/lang/String;
    const-string/jumbo v5, "HIDDEN"

    #@49
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_4

    #@4f
    .line 2199
    const/16 v0, 0x14

    #@51
    .line 2223
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
    .line 2224
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
    .line 2178
    :cond_3
    return-void

    #@73
    .line 2197
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
    .line 2202
    const/4 v0, 0x5

    #@7d
    .line 2203
    .restart local v0    # "level":I
    goto :goto_0

    #@7e
    .line 2197
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
    .line 2205
    const/16 v0, 0x28

    #@89
    .line 2206
    .restart local v0    # "level":I
    goto :goto_0

    #@8a
    .line 2197
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
    .line 2208
    const/16 v0, 0xa

    #@95
    .line 2209
    .restart local v0    # "level":I
    goto :goto_0

    #@96
    .line 2197
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
    .line 2211
    const/16 v0, 0x3c

    #@a1
    .line 2212
    .restart local v0    # "level":I
    goto :goto_0

    #@a2
    .line 2197
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
    .line 2214
    const/16 v0, 0xf

    #@ad
    .line 2215
    .restart local v0    # "level":I
    goto :goto_0

    #@ae
    .line 2197
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
    .line 2217
    const/16 v0, 0x50

    #@b9
    .line 2218
    .restart local v0    # "level":I
    goto :goto_0

    #@ba
    .line 2220
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
    .line 2221
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
    .line 1254
    const/4 v3, 0x0

    #@1
    .line 1255
    .local v3, "wait":Z
    const/4 v1, 0x0

    #@2
    .line 1258
    .local v1, "persistent":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@8
    .line 1259
    const-string/jumbo v4, "-w"

    #@b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 1260
    const/4 v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1261
    :cond_0
    const-string/jumbo v4, "--persistent"

    #@16
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 1262
    const/4 v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1264
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
    .line 1265
    return-void

    #@38
    .line 1269
    :cond_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 1270
    .local v2, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@3e
    invoke-interface {v4, v2, v3, v1}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    #@41
    .line 1253
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
    .line 2139
    const/4 v2, 0x0

    #@1
    .line 2142
    .local v2, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@7
    .line 2143
    const-string/jumbo v5, "--user"

    #@a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 2144
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
    .line 2146
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
    .line 2147
    return-void

    #@33
    .line 2150
    :cond_1
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 2151
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    .line 2154
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "usagestats"

    #@3e
    .line 2153
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@41
    move-result-object v5

    #@42
    invoke-static {v5}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    #@45
    move-result-object v3

    #@46
    .line 2155
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@49
    move-result v5

    #@4a
    invoke-interface {v3, v1, v5, v2}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    #@4d
    .line 2138
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
    .line 1278
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1279
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1280
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
    .line 1277
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
    .line 1852
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1853
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "start"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1854
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackStart()V

    #@10
    .line 1851
    :goto_0
    return-void

    #@11
    .line 1855
    :cond_0
    const-string/jumbo v1, "movetask"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1856
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackMoveTask()V

    #@1d
    goto :goto_0

    #@1e
    .line 1857
    :cond_1
    const-string/jumbo v1, "resize"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 1858
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackResize()V

    #@2a
    goto :goto_0

    #@2b
    .line 1859
    :cond_2
    const-string/jumbo v1, "list"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 1860
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackList()V

    #@37
    goto :goto_0

    #@38
    .line 1861
    :cond_3
    const-string/jumbo v1, "info"

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 1862
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackInfo()V

    #@44
    goto :goto_0

    #@45
    .line 1863
    :cond_4
    const-string/jumbo v1, "split"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_5

    #@4e
    .line 1864
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackSplit()V

    #@51
    goto :goto_0

    #@52
    .line 1866
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v2, "Error: unknown command \'"

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    const-string/jumbo v2, "\'"

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@70
    .line 1867
    return-void
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
    .line 1934
    :try_start_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 1935
    .local v3, "stackIdStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v2

    #@c
    .line 1936
    .local v2, "stackId":I
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@e
    invoke-interface {v4, v2}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    #@11
    move-result-object v1

    #@12
    .line 1937
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1932
    .end local v1    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v2    # "stackId":I
    .end local v3    # "stackIdStr":Ljava/lang/String;
    :goto_0
    return-void

    #@18
    .line 1938
    :catch_0
    move-exception v0

    #@19
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
    .line 1924
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2
    invoke-interface {v4}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    #@5
    move-result-object v3

    #@6
    .line 1925
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
    .line 1926
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18
    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    goto :goto_0

    #@1c
    .line 1928
    .end local v1    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v3    # "stacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :catch_0
    move-exception v0

    #@1d
    .line 1922
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
    .line 1886
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 1887
    .local v4, "taskIdStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@7
    move-result-object v7

    #@8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v3

    #@c
    .line 1888
    .local v3, "taskId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 1889
    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v1

    #@18
    .line 1890
    .local v1, "stackId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    .line 1892
    .local v6, "toTopStr":Ljava/lang/String;
    const-string/jumbo v7, "true"

    #@1f
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_0

    #@25
    .line 1893
    const/4 v5, 0x1

    #@26
    .line 1902
    .local v5, "toTop":Z
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@28
    invoke-interface {v7, v3, v1, v5}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1885
    :goto_1
    return-void

    #@2c
    .line 1894
    .end local v5    # "toTop":Z
    :cond_0
    const-string/jumbo v7, "false"

    #@2f
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_1

    #@35
    .line 1895
    const/4 v5, 0x0

    #@36
    .restart local v5    # "toTop":Z
    goto :goto_0

    #@37
    .line 1897
    .end local v5    # "toTop":Z
    :cond_1
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@39
    new-instance v8, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v9, "Error: bad toTop arg: "

    #@41
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v8

    #@49
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v8

    #@4d
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 1898
    return-void

    #@51
    .line 1903
    .restart local v5    # "toTop":Z
    :catch_0
    move-exception v0

    #@52
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private runStackResize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1908
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 1909
    .local v3, "stackIdStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v2

    #@c
    .line 1910
    .local v2, "stackId":I
    invoke-direct {p0}, Lcom/android/commands/am/Am;->getBounds()Landroid/graphics/Rect;

    #@f
    move-result-object v0

    #@10
    .line 1911
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    #@12
    .line 1912
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14
    const-string/jumbo v5, "Error: invalid input bounds"

    #@17
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    .line 1913
    return-void

    #@1b
    .line 1917
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@1d
    invoke-interface {v4, v2, v0}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 1907
    :goto_0
    return-void

    #@21
    .line 1918
    :catch_0
    move-exception v1

    #@22
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private runStackSplit()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1943
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v14

    #@4
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@7
    move-result-object v14

    #@8
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v12

    #@c
    .line 1944
    .local v12, "stackId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@f
    move-result-object v11

    #@10
    .line 1945
    .local v11, "splitDirection":Ljava/lang/String;
    const/4 v7, 0x0

    #@11
    .line 1947
    .local v7, "intent":Landroid/content/Intent;
    const/4 v14, -0x2

    #@12
    :try_start_0
    move-object/from16 v0, p0

    #@14
    invoke-direct {v0, v14}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v7

    #@18
    .line 1953
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    #@1a
    iget-object v14, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@1c
    invoke-interface {v14, v12}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    #@1f
    move-result-object v4

    #@20
    .line 1955
    .local v4, "currentStackInfo":Landroid/app/ActivityManager$StackInfo;
    new-instance v3, Landroid/graphics/Rect;

    #@22
    iget-object v14, v4, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@24
    invoke-direct {v3, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@27
    .line 1956
    .local v3, "currentStackBounds":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    #@29
    iget-object v14, v4, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@2b
    invoke-direct {v8, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@2e
    .line 1957
    .local v8, "newStackBounds":Landroid/graphics/Rect;
    const-string/jumbo v14, "v"

    #@31
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v14

    #@35
    if-eqz v14, :cond_2

    #@37
    .line 1958
    iget-object v14, v4, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    #@3c
    move-result v14

    #@3d
    iput v14, v8, Landroid/graphics/Rect;->left:I

    #@3f
    iput v14, v3, Landroid/graphics/Rect;->right:I

    #@41
    .line 1967
    :goto_1
    move-object/from16 v0, p0

    #@43
    iget-object v14, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@45
    iget v15, v4, Landroid/app/ActivityManager$StackInfo;->displayId:I

    #@47
    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    #@4a
    move-result-object v2

    #@4b
    .line 1968
    .local v2, "container":Landroid/app/IActivityContainer;
    if-nez v2, :cond_0

    #@4d
    .line 1969
    const-string/jumbo v14, "Error: Unable to create new stack..."

    #@50
    move-object/from16 v0, p0

    #@52
    invoke-virtual {v0, v14}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@55
    .line 1972
    :cond_0
    invoke-interface {v2}, Landroid/app/IActivityContainer;->getStackId()I

    #@58
    move-result v9

    #@59
    .line 1974
    .local v9, "newStackId":I
    if-eqz v7, :cond_4

    #@5b
    .line 1975
    invoke-interface {v2, v7}, Landroid/app/IActivityContainer;->startActivity(Landroid/content/Intent;)I

    #@5e
    .line 1982
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    #@60
    iget-object v14, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@62
    invoke-interface {v14, v9}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    #@65
    move-result-object v10

    #@66
    .line 1985
    .local v10, "newStackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v15, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@68
    const/4 v14, 0x0

    #@69
    array-length v0, v15

    #@6a
    move/from16 v16, v0

    #@6c
    :goto_3
    move/from16 v0, v16

    #@6e
    if-ge v14, v0, :cond_5

    #@70
    aget v13, v15, v14

    #@72
    .line 1986
    .local v13, "taskId":I
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@76
    move-object/from16 v17, v0

    #@78
    const/16 v18, 0x1

    #@7a
    move-object/from16 v0, v17

    #@7c
    move/from16 v1, v18

    #@7e
    invoke-interface {v0, v13, v1}, Landroid/app/IActivityManager;->setTaskResizeable(IZ)V

    #@81
    .line 1985
    add-int/lit8 v14, v14, 0x1

    #@83
    goto :goto_3

    #@84
    .line 1948
    .end local v2    # "container":Landroid/app/IActivityContainer;
    .end local v3    # "currentStackBounds":Landroid/graphics/Rect;
    .end local v4    # "currentStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v8    # "newStackBounds":Landroid/graphics/Rect;
    .end local v9    # "newStackId":I
    .end local v10    # "newStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v13    # "taskId":I
    .restart local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    #@85
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@86
    .line 1959
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v3    # "currentStackBounds":Landroid/graphics/Rect;
    .restart local v4    # "currentStackInfo":Landroid/app/ActivityManager$StackInfo;
    .restart local v8    # "newStackBounds":Landroid/graphics/Rect;
    :cond_2
    const-string/jumbo v14, "h"

    #@89
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v14

    #@8d
    if-eqz v14, :cond_3

    #@8f
    .line 1960
    iget-object v14, v4, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@91
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    #@94
    move-result v14

    #@95
    iput v14, v8, Landroid/graphics/Rect;->top:I

    #@97
    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    #@99
    goto :goto_1

    #@9a
    .line 1996
    .end local v3    # "currentStackBounds":Landroid/graphics/Rect;
    .end local v4    # "currentStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v8    # "newStackBounds":Landroid/graphics/Rect;
    :catch_1
    move-exception v5

    #@9b
    .line 1942
    :goto_4
    return-void

    #@9c
    .line 1962
    .restart local v3    # "currentStackBounds":Landroid/graphics/Rect;
    .restart local v4    # "currentStackInfo":Landroid/app/ActivityManager$StackInfo;
    .restart local v8    # "newStackBounds":Landroid/graphics/Rect;
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v15, "Error: unknown split direction \'"

    #@a4
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v14

    #@a8
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v14

    #@ac
    const-string/jumbo v15, "\'"

    #@af
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v14

    #@b3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v14

    #@b7
    move-object/from16 v0, p0

    #@b9
    invoke-virtual {v0, v14}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@bc
    .line 1963
    return-void

    #@bd
    .line 1976
    .restart local v2    # "container":Landroid/app/IActivityContainer;
    .restart local v9    # "newStackId":I
    :cond_4
    iget-object v14, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@bf
    if-eqz v14, :cond_1

    #@c1
    iget-object v14, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@c3
    array-length v14, v14

    #@c4
    const/4 v15, 0x1

    #@c5
    if-le v14, v15, :cond_1

    #@c7
    .line 1978
    move-object/from16 v0, p0

    #@c9
    iget-object v14, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@cb
    iget-object v15, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@cd
    iget-object v0, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@cf
    move-object/from16 v16, v0

    #@d1
    move-object/from16 v0, v16

    #@d3
    array-length v0, v0

    #@d4
    move/from16 v16, v0

    #@d6
    add-int/lit8 v16, v16, -0x1

    #@d8
    aget v15, v15, v16

    #@da
    .line 1979
    const/16 v16, 0x1

    #@dc
    .line 1978
    move/from16 v0, v16

    #@de
    invoke-interface {v14, v15, v9, v0}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    #@e1
    goto/16 :goto_2

    #@e3
    .line 1989
    .restart local v10    # "newStackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_5
    iget-object v15, v10, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@e5
    const/4 v14, 0x0

    #@e6
    array-length v0, v15

    #@e7
    move/from16 v16, v0

    #@e9
    :goto_5
    move/from16 v0, v16

    #@eb
    if-ge v14, v0, :cond_6

    #@ed
    aget v13, v15, v14

    #@ef
    .line 1990
    .restart local v13    # "taskId":I
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@f3
    move-object/from16 v17, v0

    #@f5
    const/16 v18, 0x1

    #@f7
    move-object/from16 v0, v17

    #@f9
    move/from16 v1, v18

    #@fb
    invoke-interface {v0, v13, v1}, Landroid/app/IActivityManager;->setTaskResizeable(IZ)V

    #@fe
    .line 1989
    add-int/lit8 v14, v14, 0x1

    #@100
    goto :goto_5

    #@101
    .line 1994
    .end local v13    # "taskId":I
    :cond_6
    move-object/from16 v0, p0

    #@103
    iget-object v14, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@105
    iget v15, v4, Landroid/app/ActivityManager$StackInfo;->stackId:I

    #@107
    invoke-interface {v14, v15, v3}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;)V

    #@10a
    .line 1995
    move-object/from16 v0, p0

    #@10c
    iget-object v14, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@10e
    iget v15, v10, Landroid/app/ActivityManager$StackInfo;->stackId:I

    #@110
    invoke-interface {v14, v15, v8}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@113
    goto :goto_4
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
    .line 1872
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1873
    .local v2, "displayIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v1

    #@c
    .line 1874
    .local v1, "displayId":I
    const/4 v5, -0x2

    #@d
    invoke-direct {p0, v5}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@10
    move-result-object v4

    #@11
    .line 1877
    .local v4, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@13
    invoke-interface {v5, v1}, Landroid/app/IActivityManager;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    #@16
    move-result-object v0

    #@17
    .line 1878
    .local v0, "container":Landroid/app/IActivityContainer;
    if-eqz v0, :cond_0

    #@19
    .line 1879
    invoke-interface {v0, v4}, Landroid/app/IActivityContainer;->startActivity(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1871
    .end local v0    # "container":Landroid/app/IActivityContainer;
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 1881
    :catch_0
    move-exception v3

    #@1e
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
    .line 803
    const/4 v2, -0x2

    #@1
    move-object/from16 v0, p0

    #@3
    invoke-direct {v0, v2}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@6
    move-result-object v5

    #@7
    .line 805
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@9
    iget v2, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@b
    const/4 v3, -0x1

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 806
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10
    const-string/jumbo v3, "Error: Can\'t start service with user \'all\'"

    #@13
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    .line 807
    return-void

    #@17
    .line 810
    :cond_0
    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 811
    .local v6, "mimeType":Ljava/lang/String;
    if-nez v6, :cond_1

    #@1d
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@20
    move-result-object v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 812
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
    .line 811
    if-eqz v2, :cond_1

    #@34
    .line 813
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
    .line 817
    :cond_1
    move-object/from16 v0, p0

    #@46
    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mStopOption:Z

    #@48
    if-eqz v2, :cond_2

    #@4a
    .line 819
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@4d
    move-result-object v2

    #@4e
    if-eqz v2, :cond_a

    #@50
    .line 820
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@57
    move-result-object v21

    #@58
    .line 841
    .local v21, "packageName":Ljava/lang/String;
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
    move-object/from16 v0, v21

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
    .line 842
    move-object/from16 v0, p0

    #@75
    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@77
    move-object/from16 v0, p0

    #@79
    iget v3, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@7b
    move-object/from16 v0, v21

    #@7d
    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    #@80
    .line 843
    const-wide/16 v2, 0xfa

    #@82
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    #@85
    .line 846
    .end local v21    # "packageName":Ljava/lang/String;
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
    .line 847
    const/high16 v2, 0x10000000

    #@a0
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a3
    .line 849
    const/16 v18, 0x0

    #@a5
    .line 850
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v11, 0x0

    #@a6
    .line 852
    .local v11, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    #@a8
    iget-object v2, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@aa
    if-eqz v2, :cond_3

    #@ac
    .line 855
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v3, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@b2
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b5
    .line 856
    const/high16 v3, 0x3c000000    # 0.0078125f

    #@b7
    .line 854
    invoke-static {v2, v3}, Lcom/android/commands/am/Am;->openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@ba
    move-result-object v18

    #@bb
    .line 864
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
    .line 867
    .end local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/16 v24, 0x0

    #@d0
    .line 869
    .local v24, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d3
    move-result-wide v26

    #@d4
    .line 870
    .local v26, "startTime":J
    move-object/from16 v0, p0

    #@d6
    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@d8
    if-eqz v2, :cond_f

    #@da
    .line 871
    move-object/from16 v0, p0

    #@dc
    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@de
    .line 872
    move-object/from16 v0, p0

    #@e0
    iget v10, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget v13, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@e6
    .line 871
    const/4 v3, 0x0

    #@e7
    const/4 v4, 0x0

    #@e8
    .line 872
    const/4 v7, 0x0

    #@e9
    const/4 v8, 0x0

    #@ea
    const/4 v9, 0x0

    #@eb
    const/4 v12, 0x0

    #@ec
    .line 871
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    #@ef
    move-result-object v24

    #@f0
    .line 873
    .local v24, "result":Landroid/app/IActivityManager$WaitResult;
    move-object/from16 v0, v24

    #@f2
    iget v0, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    #@f4
    move/from16 v23, v0

    #@f6
    .line 878
    .end local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    .local v23, "res":I
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@f9
    move-result-wide v16

    #@fa
    .line 879
    .local v16, "endTime":J
    move-object/from16 v0, p0

    #@fc
    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@fe
    if-eqz v2, :cond_10

    #@100
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@102
    .line 880
    .local v20, "out":Ljava/io/PrintStream;
    :goto_2
    const/16 v19, 0x0

    #@104
    .line 881
    .local v19, "launched":Z
    packed-switch v23, :pswitch_data_0

    #@107
    .line 943
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v3, "Error: Activity not started, unknown error code "

    #@10f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v2

    #@113
    move/from16 v0, v23

    #@115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@118
    move-result-object v2

    #@119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v2

    #@11d
    .line 942
    move-object/from16 v0, v20

    #@11f
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@122
    .line 946
    :goto_3
    move-object/from16 v0, p0

    #@124
    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    #@126
    if-eqz v2, :cond_8

    #@128
    if-eqz v19, :cond_8

    #@12a
    .line 947
    if-nez v24, :cond_4

    #@12c
    .line 948
    new-instance v24, Landroid/app/IActivityManager$WaitResult;

    #@12e
    invoke-direct/range {v24 .. v24}, Landroid/app/IActivityManager$WaitResult;-><init>()V

    #@131
    .line 949
    .restart local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@134
    move-result-object v2

    #@135
    move-object/from16 v0, v24

    #@137
    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@139
    .line 951
    .end local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@13b
    new-instance v2, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v4, "Status: "

    #@143
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v4

    #@147
    move-object/from16 v0, v24

    #@149
    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@14b
    if-eqz v2, :cond_11

    #@14d
    const-string/jumbo v2, "timeout"

    #@150
    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v2

    #@154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v2

    #@158
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15b
    .line 952
    move-object/from16 v0, v24

    #@15d
    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@15f
    if-eqz v2, :cond_5

    #@161
    .line 953
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@163
    new-instance v3, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    const-string/jumbo v4, "Activity: "

    #@16b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v3

    #@16f
    move-object/from16 v0, v24

    #@171
    iget-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@173
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@176
    move-result-object v4

    #@177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v3

    #@17b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v3

    #@17f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@182
    .line 955
    :cond_5
    move-object/from16 v0, v24

    #@184
    iget-wide v2, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@186
    const-wide/16 v8, 0x0

    #@188
    cmp-long v2, v2, v8

    #@18a
    if-ltz v2, :cond_6

    #@18c
    .line 956
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18e
    new-instance v3, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string/jumbo v4, "ThisTime: "

    #@196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v3

    #@19a
    move-object/from16 v0, v24

    #@19c
    iget-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@19e
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v3

    #@1a2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v3

    #@1a6
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a9
    .line 958
    :cond_6
    move-object/from16 v0, v24

    #@1ab
    iget-wide v2, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@1ad
    const-wide/16 v8, 0x0

    #@1af
    cmp-long v2, v2, v8

    #@1b1
    if-ltz v2, :cond_7

    #@1b3
    .line 959
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1b5
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v4, "TotalTime: "

    #@1bd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v3

    #@1c1
    move-object/from16 v0, v24

    #@1c3
    iget-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@1c5
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v3

    #@1c9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v3

    #@1cd
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d0
    .line 961
    :cond_7
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1d2
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d7
    const-string/jumbo v4, "WaitTime: "

    #@1da
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v3

    #@1de
    sub-long v8, v16, v26

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
    .line 962
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1ed
    const-string/jumbo v3, "Complete"

    #@1f0
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f3
    .line 964
    :cond_8
    move-object/from16 v0, p0

    #@1f5
    iget v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    #@1f7
    add-int/lit8 v2, v2, -0x1

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iput v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    #@1fd
    .line 965
    move-object/from16 v0, p0

    #@1ff
    iget v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    #@201
    const/4 v3, 0x1

    #@202
    if-le v2, v3, :cond_9

    #@204
    .line 966
    move-object/from16 v0, p0

    #@206
    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@208
    invoke-interface {v2}, Landroid/app/IActivityManager;->unhandledBack()V

    #@20b
    .line 968
    :cond_9
    move-object/from16 v0, p0

    #@20d
    iget v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    #@20f
    const/4 v3, 0x1

    #@210
    if-gt v2, v3, :cond_1

    #@212
    .line 802
    return-void

    #@213
    .line 823
    .end local v16    # "endTime":J
    .end local v19    # "launched":Z
    .end local v20    # "out":Ljava/io/PrintStream;
    .end local v23    # "res":I
    .end local v26    # "startTime":J
    :cond_a
    const-string/jumbo v2, "package"

    #@216
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@219
    move-result-object v2

    #@21a
    .line 822
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@21d
    move-result-object v22

    #@21e
    .line 824
    .local v22, "pm":Landroid/content/pm/IPackageManager;
    if-nez v22, :cond_b

    #@220
    .line 825
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@222
    const-string/jumbo v3, "Error: Package manager not running; aborting"

    #@225
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@228
    .line 826
    return-void

    #@229
    .line 829
    :cond_b
    move-object/from16 v0, p0

    #@22b
    iget v2, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@22d
    .line 828
    const/4 v3, 0x0

    #@22e
    move-object/from16 v0, v22

    #@230
    invoke-interface {v0, v5, v6, v3, v2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@233
    move-result-object v14

    #@234
    .line 830
    .local v14, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_c

    #@236
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@239
    move-result v2

    #@23a
    if-gtz v2, :cond_d

    #@23c
    .line 831
    :cond_c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@23e
    new-instance v3, Ljava/lang/StringBuilder;

    #@240
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@243
    const-string/jumbo v4, "Error: Intent does not match any activities: "

    #@246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v3

    #@24a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v3

    #@24e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@251
    move-result-object v3

    #@252
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@255
    .line 833
    return-void

    #@256
    .line 834
    :cond_d
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@259
    move-result v2

    #@25a
    const/4 v3, 0x1

    #@25b
    if-le v2, v3, :cond_e

    #@25d
    .line 835
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@25f
    new-instance v3, Ljava/lang/StringBuilder;

    #@261
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@264
    const-string/jumbo v4, "Error: Intent matches multiple activities; can\'t stop: "

    #@267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v3

    #@26b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v3

    #@26f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@272
    move-result-object v3

    #@273
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@276
    .line 837
    return-void

    #@277
    .line 839
    :cond_e
    const/4 v2, 0x0

    #@278
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27b
    move-result-object v2

    #@27c
    check-cast v2, Landroid/content/pm/ResolveInfo;

    #@27e
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@280
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@282
    move-object/from16 v21, v0

    #@284
    .restart local v21    # "packageName":Ljava/lang/String;
    goto/16 :goto_0

    #@286
    .line 859
    .end local v14    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v15

    #@287
    .line 860
    .local v15, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@289
    new-instance v3, Ljava/lang/StringBuilder;

    #@28b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28e
    const-string/jumbo v4, "Error: Unable to open file: "

    #@291
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-result-object v3

    #@295
    move-object/from16 v0, p0

    #@297
    iget-object v4, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    #@299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29c
    move-result-object v3

    #@29d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a0
    move-result-object v3

    #@2a1
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a4
    .line 861
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a6
    const-string/jumbo v3, "Consider using a file under /data/local/tmp/"

    #@2a9
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2ac
    .line 862
    return-void

    #@2ad
    .line 875
    .end local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .end local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v24, "result":Landroid/app/IActivityManager$WaitResult;
    .restart local v26    # "startTime":J
    :cond_f
    move-object/from16 v0, p0

    #@2af
    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2b1
    .line 876
    move-object/from16 v0, p0

    #@2b3
    iget v10, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    iget v13, v0, Lcom/android/commands/am/Am;->mUserId:I

    #@2b9
    .line 875
    const/4 v3, 0x0

    #@2ba
    const/4 v4, 0x0

    #@2bb
    .line 876
    const/4 v7, 0x0

    #@2bc
    const/4 v8, 0x0

    #@2bd
    const/4 v9, 0x0

    #@2be
    const/4 v12, 0x0

    #@2bf
    .line 875
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    #@2c2
    move-result v23

    #@2c3
    .restart local v23    # "res":I
    goto/16 :goto_1

    #@2c5
    .line 879
    .end local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    .restart local v16    # "endTime":J
    :cond_10
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2c7
    .restart local v20    # "out":Ljava/io/PrintStream;
    goto/16 :goto_2

    #@2c9
    .line 883
    .restart local v19    # "launched":Z
    :pswitch_1
    const/16 v19, 0x1

    #@2cb
    .line 884
    goto/16 :goto_3

    #@2cd
    .line 886
    :pswitch_2
    const/16 v19, 0x1

    #@2cf
    .line 888
    const-string/jumbo v2, "Warning: Activity not started because the  current activity is being kept for the user."

    #@2d2
    .line 887
    move-object/from16 v0, v20

    #@2d4
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d7
    goto/16 :goto_3

    #@2d9
    .line 892
    :pswitch_3
    const/16 v19, 0x1

    #@2db
    .line 894
    const-string/jumbo v2, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    #@2de
    .line 893
    move-object/from16 v0, v20

    #@2e0
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e3
    goto/16 :goto_3

    #@2e5
    .line 899
    :pswitch_4
    const/16 v19, 0x1

    #@2e7
    .line 901
    const-string/jumbo v2, "Warning: Activity not started because intent should be handled by the caller"

    #@2ea
    .line 900
    move-object/from16 v0, v20

    #@2ec
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2ef
    goto/16 :goto_3

    #@2f1
    .line 905
    :pswitch_5
    const/16 v19, 0x1

    #@2f3
    .line 907
    const-string/jumbo v2, "Warning: Activity not started, its current task has been brought to the front"

    #@2f6
    .line 906
    move-object/from16 v0, v20

    #@2f8
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2fb
    goto/16 :goto_3

    #@2fd
    .line 912
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    #@2ff
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@302
    const-string/jumbo v3, "Error: Activity not started, unable to resolve "

    #@305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@308
    move-result-object v2

    #@309
    .line 913
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@30c
    move-result-object v3

    #@30d
    .line 912
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@310
    move-result-object v2

    #@311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@314
    move-result-object v2

    #@315
    .line 911
    move-object/from16 v0, v20

    #@317
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@31a
    goto/16 :goto_3

    #@31c
    .line 916
    :pswitch_7
    const-string/jumbo v2, "Error type 3"

    #@31f
    move-object/from16 v0, v20

    #@321
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@324
    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    #@326
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@329
    const-string/jumbo v3, "Error: Activity class "

    #@32c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32f
    move-result-object v2

    #@330
    .line 918
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@333
    move-result-object v3

    #@334
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@337
    move-result-object v3

    #@338
    .line 917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33b
    move-result-object v2

    #@33c
    .line 919
    const-string/jumbo v3, " does not exist."

    #@33f
    .line 917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@342
    move-result-object v2

    #@343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@346
    move-result-object v2

    #@347
    move-object/from16 v0, v20

    #@349
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34c
    goto/16 :goto_3

    #@34e
    .line 923
    :pswitch_8
    const-string/jumbo v2, "Error: Activity not started, you requested to both forward and receive its result"

    #@351
    .line 922
    move-object/from16 v0, v20

    #@353
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@356
    goto/16 :goto_3

    #@358
    .line 928
    :pswitch_9
    const-string/jumbo v2, "Error: Activity not started, you do not have permission to access it."

    #@35b
    .line 927
    move-object/from16 v0, v20

    #@35d
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@360
    goto/16 :goto_3

    #@362
    .line 933
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    #@364
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@367
    const-string/jumbo v3, "Error: Activity not started, voice control not allowed for: "

    #@36a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v2

    #@36e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@371
    move-result-object v2

    #@372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@375
    move-result-object v2

    #@376
    .line 932
    move-object/from16 v0, v20

    #@378
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37b
    goto/16 :goto_3

    #@37d
    .line 938
    :pswitch_b
    const-string/jumbo v2, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    #@380
    .line 937
    move-object/from16 v0, v20

    #@382
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@385
    goto/16 :goto_3

    #@387
    .line 951
    :cond_11
    const-string/jumbo v2, "ok"

    #@38a
    goto/16 :goto_4

    #@38c
    .line 881
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
    .line 768
    const/4 v0, -0x2

    #@2
    invoke-direct {p0, v0}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@5
    move-result-object v2

    #@6
    .line 769
    .local v2, "intent":Landroid/content/Intent;
    iget v0, p0, Lcom/android/commands/am/Am;->mUserId:I

    #@8
    const/4 v3, -0x1

    #@9
    if-ne v0, v3, :cond_0

    #@b
    .line 770
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d
    const-string/jumbo v1, "Error: Can\'t start activity with user \'all\'"

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13
    .line 771
    return-void

    #@14
    .line 773
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
    .line 774
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2f
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 775
    const-string/jumbo v4, "com.android.shell"

    #@36
    iget v5, p0, Lcom/android/commands/am/Am;->mUserId:I

    #@38
    .line 774
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    #@3b
    move-result-object v6

    #@3c
    .line 776
    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_2

    #@3e
    .line 777
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@40
    const-string/jumbo v1, "Error: Not found; no service started."

    #@43
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@46
    .line 767
    :cond_1
    :goto_0
    return-void

    #@47
    .line 778
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
    .line 779
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
    .line 780
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
    .line 781
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
    .line 1299
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1300
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
    .line 1301
    .local v0, "success":Z
    if-eqz v0, :cond_0

    #@10
    .line 1302
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v3, "Success: user started"

    #@15
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 1298
    :goto_0
    return-void

    #@19
    .line 1304
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
    .line 786
    const/4 v2, -0x2

    #@2
    invoke-direct {p0, v2}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    .line 787
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/android/commands/am/Am;->mUserId:I

    #@8
    if-ne v2, v6, :cond_0

    #@a
    .line 788
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    const-string/jumbo v3, "Error: Can\'t stop activity with user \'all\'"

    #@f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12
    .line 789
    return-void

    #@13
    .line 791
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
    .line 792
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
    .line 793
    .local v1, "result":I
    if-nez v1, :cond_2

    #@3b
    .line 794
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d
    const-string/jumbo v3, "Service not stopped: was not running."

    #@40
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 785
    :cond_1
    :goto_0
    return-void

    #@44
    .line 795
    :cond_2
    const/4 v2, 0x1

    #@45
    if-ne v1, v2, :cond_3

    #@47
    .line 796
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@49
    const-string/jumbo v3, "Service stopped"

    #@4c
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    goto :goto_0

    #@50
    .line 797
    :cond_3
    if-ne v1, v6, :cond_1

    #@52
    .line 798
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@54
    const-string/jumbo v3, "Error stopping service"

    #@57
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5a
    goto :goto_0
.end method

.method private runStopUser()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1333
    const/4 v5, 0x0

    #@2
    .line 1334
    .local v5, "wait":Z
    const/4 v1, 0x0

    #@3
    .line 1335
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@9
    .line 1336
    const-string/jumbo v6, "-w"

    #@c
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    .line 1337
    const/4 v5, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1339
    :cond_0
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@16
    new-instance v7, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v8, "Error: unknown option: "

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d
    .line 1340
    return-void

    #@2e
    .line 1343
    :cond_1
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@35
    move-result v4

    #@36
    .line 1344
    .local v4, "user":I
    if-eqz v5, :cond_3

    #@38
    new-instance v0, Lcom/android/commands/am/Am$StopUserCallback;

    #@3a
    invoke-direct {v0, v7}, Lcom/android/commands/am/Am$StopUserCallback;-><init>(Lcom/android/commands/am/Am$StopUserCallback;)V

    #@3d
    .line 1346
    :goto_1
    iget-object v6, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@3f
    invoke-interface {v6, v4, v0}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I

    #@42
    move-result v2

    #@43
    .line 1347
    .local v2, "res":I
    if-eqz v2, :cond_4

    #@45
    .line 1348
    const-string/jumbo v3, ""

    #@48
    .line 1349
    .local v3, "txt":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    #@4b
    .line 1357
    :goto_2
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4d
    new-instance v7, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v8, "Switch failed: "

    #@55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 1332
    .end local v3    # "txt":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    #@69
    .line 1344
    .end local v2    # "res":I
    :cond_3
    const/4 v0, 0x0

    #@6a
    .local v0, "callback":Lcom/android/commands/am/Am$StopUserCallback;
    goto :goto_1

    #@6b
    .line 1351
    .end local v0    # "callback":Lcom/android/commands/am/Am$StopUserCallback;
    .restart local v2    # "res":I
    .restart local v3    # "txt":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, " (Can\'t stop current user)"

    #@6e
    goto :goto_2

    #@6f
    .line 1354
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v7, " (Unknown user "

    #@77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    const-string/jumbo v7, ")"

    #@82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v6

    #@86
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    goto :goto_2

    #@8b
    .line 1358
    .end local v3    # "txt":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_2

    #@8d
    .line 1359
    invoke-virtual {v0}, Lcom/android/commands/am/Am$StopUserCallback;->waitForFinish()V

    #@90
    goto :goto_3

    #@91
    .line 1349
    nop

    #@92
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 1294
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1295
    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    #@d
    .line 1293
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
    .line 2001
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2002
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "lock"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2003
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTaskLock()V

    #@10
    .line 2000
    :goto_0
    return-void

    #@11
    .line 2004
    :cond_0
    const-string/jumbo v1, "resizeable"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 2005
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTaskResizeable()V

    #@1d
    goto :goto_0

    #@1e
    .line 2006
    :cond_1
    const-string/jumbo v1, "resize"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 2007
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTaskResize()V

    #@2a
    goto :goto_0

    #@2b
    .line 2009
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Error: unknown command \'"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    const-string/jumbo v2, "\'"

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@49
    .line 2010
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
    .line 2015
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 2017
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
    .line 2018
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@f
    invoke-interface {v3}, Landroid/app/IActivityManager;->stopLockTaskMode()V

    #@12
    .line 2023
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
    .line 2024
    const-string/jumbo v5, "in lockTaskMode"

    #@32
    .line 2023
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
    .line 2014
    :goto_2
    return-void

    #@3e
    .line 2020
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@45
    move-result v1

    #@46
    .line 2021
    .local v1, "taskId":I
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@48
    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->startLockTaskMode(I)V

    #@4b
    goto :goto_0

    #@4c
    .line 2025
    .end local v1    # "taskId":I
    :catch_0
    move-exception v0

    #@4d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@4e
    .line 2023
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v3, "not "
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    goto :goto_1
.end method

.method private runTaskResize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2042
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 2043
    .local v3, "taskIdStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v2

    #@c
    .line 2044
    .local v2, "taskId":I
    invoke-direct {p0}, Lcom/android/commands/am/Am;->getBounds()Landroid/graphics/Rect;

    #@f
    move-result-object v0

    #@10
    .line 2045
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    #@12
    .line 2046
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14
    const-string/jumbo v5, "Error: invalid input bounds"

    #@17
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    .line 2047
    return-void

    #@1b
    .line 2050
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@1d
    invoke-interface {v4, v2, v0}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 2041
    :goto_0
    return-void

    #@21
    .line 2051
    :catch_0
    move-exception v1

    #@22
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
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
    .line 2030
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 2031
    .local v4, "taskIdStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v3

    #@c
    .line 2032
    .local v3, "taskId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 2033
    .local v2, "resizeableStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@17
    move-result v1

    #@18
    .line 2036
    .local v1, "resizeable":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@1a
    invoke-interface {v5, v3, v1}, Landroid/app/IActivityManager;->setTaskResizeable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 2029
    :goto_0
    return-void

    #@1e
    .line 2037
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
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
    .line 1744
    const/4 v1, -0x2

    #@1
    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    .line 1745
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 1743
    return-void
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
    .line 1006
    const/4 v0, -0x2

    #@4
    invoke-direct {p0, v0}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    #@7
    move-result-object v2

    #@8
    .line 1007
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/android/commands/am/Am$IntentReceiver;

    #@a
    invoke-direct {v4, p0, v1}, Lcom/android/commands/am/Am$IntentReceiver;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$IntentReceiver;)V

    #@d
    .line 1008
    .local v4, "receiver":Lcom/android/commands/am/Am$IntentReceiver;
    iget-object v0, p0, Lcom/android/commands/am/Am;->mReceiverPermission:Ljava/lang/String;

    #@f
    if-nez v0, :cond_0

    #@11
    const/4 v8, 0x0

    #@12
    .line 1010
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
    .line 1011
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@2d
    .line 1012
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
    .line 1011
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    #@38
    .line 1013
    invoke-virtual {v4}, Lcom/android/commands/am/Am$IntentReceiver;->waitForFinish()V

    #@3b
    .line 1005
    return-void

    #@3c
    .line 1009
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
    .line 350
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iput-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@6
    .line 351
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 352
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    const-string/jumbo v2, "Error type 2"

    #@f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12
    .line 353
    new-instance v1, Landroid/util/AndroidException;

    #@14
    const-string/jumbo v2, "Can\'t connect to activity manager; is the system running?"

    #@17
    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 358
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "start"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 359
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStart()V

    #@2b
    .line 348
    :goto_0
    return-void

    #@2c
    .line 360
    :cond_1
    const-string/jumbo v1, "startservice"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_2

    #@35
    .line 361
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStartService()V

    #@38
    goto :goto_0

    #@39
    .line 362
    :cond_2
    const-string/jumbo v1, "stopservice"

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_3

    #@42
    .line 363
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStopService()V

    #@45
    goto :goto_0

    #@46
    .line 364
    :cond_3
    const-string/jumbo v1, "force-stop"

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_4

    #@4f
    .line 365
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runForceStop()V

    #@52
    goto :goto_0

    #@53
    .line 366
    :cond_4
    const-string/jumbo v1, "kill"

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v1

    #@5a
    if-eqz v1, :cond_5

    #@5c
    .line 367
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runKill()V

    #@5f
    goto :goto_0

    #@60
    .line 368
    :cond_5
    const-string/jumbo v1, "kill-all"

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v1

    #@67
    if-eqz v1, :cond_6

    #@69
    .line 369
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runKillAll()V

    #@6c
    goto :goto_0

    #@6d
    .line 370
    :cond_6
    const-string/jumbo v1, "instrument"

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_7

    #@76
    .line 371
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runInstrument()V

    #@79
    goto :goto_0

    #@7a
    .line 372
    :cond_7
    const-string/jumbo v1, "broadcast"

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_8

    #@83
    .line 373
    invoke-direct {p0}, Lcom/android/commands/am/Am;->sendBroadcast()V

    #@86
    goto :goto_0

    #@87
    .line 374
    :cond_8
    const-string/jumbo v1, "profile"

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v1

    #@8e
    if-eqz v1, :cond_9

    #@90
    .line 375
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runProfile()V

    #@93
    goto :goto_0

    #@94
    .line 376
    :cond_9
    const-string/jumbo v1, "dumpheap"

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v1

    #@9b
    if-eqz v1, :cond_a

    #@9d
    .line 377
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runDumpHeap()V

    #@a0
    goto :goto_0

    #@a1
    .line 378
    :cond_a
    const-string/jumbo v1, "set-debug-app"

    #@a4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v1

    #@a8
    if-eqz v1, :cond_b

    #@aa
    .line 379
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSetDebugApp()V

    #@ad
    goto/16 :goto_0

    #@af
    .line 380
    :cond_b
    const-string/jumbo v1, "clear-debug-app"

    #@b2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v1

    #@b6
    if-eqz v1, :cond_c

    #@b8
    .line 381
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runClearDebugApp()V

    #@bb
    goto/16 :goto_0

    #@bd
    .line 382
    :cond_c
    const-string/jumbo v1, "set-watch-heap"

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v1

    #@c4
    if-eqz v1, :cond_d

    #@c6
    .line 383
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSetWatchHeap()V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 384
    :cond_d
    const-string/jumbo v1, "clear-watch-heap"

    #@ce
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v1

    #@d2
    if-eqz v1, :cond_e

    #@d4
    .line 385
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runClearWatchHeap()V

    #@d7
    goto/16 :goto_0

    #@d9
    .line 386
    :cond_e
    const-string/jumbo v1, "bug-report"

    #@dc
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v1

    #@e0
    if-eqz v1, :cond_f

    #@e2
    .line 387
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runBugReport()V

    #@e5
    goto/16 :goto_0

    #@e7
    .line 388
    :cond_f
    const-string/jumbo v1, "monitor"

    #@ea
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result v1

    #@ee
    if-eqz v1, :cond_10

    #@f0
    .line 389
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runMonitor()V

    #@f3
    goto/16 :goto_0

    #@f5
    .line 390
    :cond_10
    const-string/jumbo v1, "hang"

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v1

    #@fc
    if-eqz v1, :cond_11

    #@fe
    .line 391
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runHang()V

    #@101
    goto/16 :goto_0

    #@103
    .line 392
    :cond_11
    const-string/jumbo v1, "restart"

    #@106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@109
    move-result v1

    #@10a
    if-eqz v1, :cond_12

    #@10c
    .line 393
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runRestart()V

    #@10f
    goto/16 :goto_0

    #@111
    .line 394
    :cond_12
    const-string/jumbo v1, "idle-maintenance"

    #@114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@117
    move-result v1

    #@118
    if-eqz v1, :cond_13

    #@11a
    .line 395
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runIdleMaintenance()V

    #@11d
    goto/16 :goto_0

    #@11f
    .line 396
    :cond_13
    const-string/jumbo v1, "screen-compat"

    #@122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@125
    move-result v1

    #@126
    if-eqz v1, :cond_14

    #@128
    .line 397
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runScreenCompat()V

    #@12b
    goto/16 :goto_0

    #@12d
    .line 398
    :cond_14
    const-string/jumbo v1, "package-importance"

    #@130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@133
    move-result v1

    #@134
    if-eqz v1, :cond_15

    #@136
    .line 399
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runPackageImportance()V

    #@139
    goto/16 :goto_0

    #@13b
    .line 400
    :cond_15
    const-string/jumbo v1, "to-uri"

    #@13e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@141
    move-result v1

    #@142
    if-eqz v1, :cond_16

    #@144
    .line 401
    const/4 v1, 0x0

    #@145
    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->runToUri(I)V

    #@148
    goto/16 :goto_0

    #@14a
    .line 402
    :cond_16
    const-string/jumbo v1, "to-intent-uri"

    #@14d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@150
    move-result v1

    #@151
    if-eqz v1, :cond_17

    #@153
    .line 403
    const/4 v1, 0x1

    #@154
    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->runToUri(I)V

    #@157
    goto/16 :goto_0

    #@159
    .line 404
    :cond_17
    const-string/jumbo v1, "to-app-uri"

    #@15c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15f
    move-result v1

    #@160
    if-eqz v1, :cond_18

    #@162
    .line 405
    const/4 v1, 0x2

    #@163
    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->runToUri(I)V

    #@166
    goto/16 :goto_0

    #@168
    .line 406
    :cond_18
    const-string/jumbo v1, "switch-user"

    #@16b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16e
    move-result v1

    #@16f
    if-eqz v1, :cond_19

    #@171
    .line 407
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSwitchUser()V

    #@174
    goto/16 :goto_0

    #@176
    .line 408
    :cond_19
    const-string/jumbo v1, "start-user"

    #@179
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17c
    move-result v1

    #@17d
    if-eqz v1, :cond_1a

    #@17f
    .line 409
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStartUserInBackground()V

    #@182
    goto/16 :goto_0

    #@184
    .line 410
    :cond_1a
    const-string/jumbo v1, "stop-user"

    #@187
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18a
    move-result v1

    #@18b
    if-eqz v1, :cond_1b

    #@18d
    .line 411
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStopUser()V

    #@190
    goto/16 :goto_0

    #@192
    .line 412
    :cond_1b
    const-string/jumbo v1, "stack"

    #@195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@198
    move-result v1

    #@199
    if-eqz v1, :cond_1c

    #@19b
    .line 413
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStack()V

    #@19e
    goto/16 :goto_0

    #@1a0
    .line 414
    :cond_1c
    const-string/jumbo v1, "task"

    #@1a3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a6
    move-result v1

    #@1a7
    if-eqz v1, :cond_1d

    #@1a9
    .line 415
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runTask()V

    #@1ac
    goto/16 :goto_0

    #@1ae
    .line 416
    :cond_1d
    const-string/jumbo v1, "get-config"

    #@1b1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b4
    move-result v1

    #@1b5
    if-eqz v1, :cond_1e

    #@1b7
    .line 417
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runGetConfig()V

    #@1ba
    goto/16 :goto_0

    #@1bc
    .line 418
    :cond_1e
    const-string/jumbo v1, "set-inactive"

    #@1bf
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c2
    move-result v1

    #@1c3
    if-eqz v1, :cond_1f

    #@1c5
    .line 419
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSetInactive()V

    #@1c8
    goto/16 :goto_0

    #@1ca
    .line 420
    :cond_1f
    const-string/jumbo v1, "get-inactive"

    #@1cd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d0
    move-result v1

    #@1d1
    if-eqz v1, :cond_20

    #@1d3
    .line 421
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runGetInactive()V

    #@1d6
    goto/16 :goto_0

    #@1d8
    .line 422
    :cond_20
    const-string/jumbo v1, "send-trim-memory"

    #@1db
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1de
    move-result v1

    #@1df
    if-eqz v1, :cond_21

    #@1e1
    .line 423
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSendTrimMemory()V

    #@1e4
    goto/16 :goto_0

    #@1e6
    .line 425
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1eb
    const-string/jumbo v2, "Error: unknown command \'"

    #@1ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v1

    #@1f2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v1

    #@1f6
    const-string/jumbo v2, "\'"

    #@1f9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v1

    #@1fd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@200
    move-result-object v1

    #@201
    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    #@204
    goto/16 :goto_0
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 106
    const-string/jumbo v0, "usage: am [subcommand] [options]\nusage: am start [-D] [-W] [-P <FILE>] [--start-profiler <FILE>]\n               [--sampling INTERVAL] [-R COUNT] [-S] [--opengl-trace]\n               [--user <USER_ID> | current] <INTENT>\n       am startservice [--user <USER_ID> | current] <INTENT>\n       am stopservice [--user <USER_ID> | current] <INTENT>\n       am force-stop [--user <USER_ID> | all | current] <PACKAGE>\n       am kill [--user <USER_ID> | all | current] <PACKAGE>\n       am kill-all\n       am broadcast [--user <USER_ID> | all | current] <INTENT>\n       am instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]\n               [--user <USER_ID> | current]\n               [--no-window-animation] [--abi <ABI>] <COMPONENT>\n       am profile start [--user <USER_ID> current] [--sampling INTERVAL] <PROCESS> <FILE>\n       am profile stop [--user <USER_ID> current] [<PROCESS>]\n       am dumpheap [--user <USER_ID> current] [-n] <PROCESS> <FILE>\n       am set-debug-app [-w] [--persistent] <PACKAGE>\n       am clear-debug-app\n       am set-watch-heap <PROCESS> <MEM-LIMIT>\n       am clear-watch-heap\n       am monitor [--gdb <port>]\n       am hang [--allow-restart]\n       am restart\n       am idle-maintenance\n       am screen-compat [on|off] <PACKAGE>\n       am package-importance <PACKAGE>\n       am to-uri [INTENT]\n       am to-intent-uri [INTENT]\n       am to-app-uri [INTENT]\n       am switch-user <USER_ID>\n       am start-user <USER_ID>\n       am stop-user [-w] <USER_ID>\n       am stack start <DISPLAY_ID> <INTENT>\n       am stack movetask <TASK_ID> <STACK_ID> [true|false]\n       am stack resize <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>\n       am stack split <STACK_ID> <v|h> [INTENT]\n       am stack list\n       am stack info <STACK_ID>\n       am task lock <TASK_ID>\n       am task lock stop\n       am task resizeable <TASK_ID> [true|false]\n       am task resize <TASK_ID> <LEFT,TOP,RIGHT,BOTTOM>\n       am get-config\n       am set-inactive [--user <USER_ID>] <PACKAGE> true|false\n       am get-inactive [--user <USER_ID>] <PACKAGE>\n       am send-trim-memory [--user <USER_ID>] <PROCESS>\n               [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]\n\nam start: start an Activity.  Options are:\n    -D: enable debugging\n    -W: wait for launch to complete\n    --start-profiler <FILE>: start profiler and send results to <FILE>\n    --sampling INTERVAL: use sample profiling with INTERVAL microseconds\n        between samples (use with --start-profiler)\n    -P <FILE>: like above, but profiling stops when app goes idle\n    -R: repeat the activity launch <COUNT> times.  Prior to each repeat,\n        the top activity will be finished.\n    -S: force stop the target app before starting the activity\n    --opengl-trace: enable tracing of OpenGL functions\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam startservice: start a Service.  Options are:\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam stopservice: stop a Service.  Options are:\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam force-stop: force stop everything associated with <PACKAGE>.\n    --user <USER_ID> | all | current: Specify user to force stop;\n        all users if not specified.\n\nam kill: Kill all processes associated with <PACKAGE>.  Only kills.\n  processes that are safe to kill -- that is, will not impact the user\n  experience.\n    --user <USER_ID> | all | current: Specify user whose processes to kill;\n        all users if not specified.\n\nam kill-all: Kill all background processes.\n\nam broadcast: send a broadcast Intent.  Options are:\n    --user <USER_ID> | all | current: Specify which user to send to; if not\n        specified then send to all users.\n    --receiver-permission <PERMISSION>: Require receiver to hold permission.\n\nam instrument: start an Instrumentation.  Typically this target <COMPONENT>\n  is the form <TEST_PACKAGE>/<RUNNER_CLASS>.  Options are:\n    -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with\n        [-e perf true] to generate raw output for performance measurements.\n    -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a\n        common form is [-e <testrunner_flag> <value>[,<value>...]].\n    -p <FILE>: write profiling data to <FILE>\n    -w: wait for instrumentation to finish before returning.  Required for\n        test runners.\n    --user <USER_ID> | current: Specify user instrumentation runs in;\n        current user if not specified.\n    --no-window-animation: turn off window animations while running.\n    --abi <ABI>: Launch the instrumented process with the selected ABI.\n        This assumes that the process supports the selected ABI.\n\nam profile: start and stop profiler on a process.  The given <PROCESS> argument\n  may be either a process name or pid.  Options are:\n    --user <USER_ID> | current: When supplying a process name,\n        specify user of process to profile; uses current user if not specified.\n\nam dumpheap: dump the heap of a process.  The given <PROCESS> argument may\n  be either a process name or pid.  Options are:\n    -n: dump native heap instead of managed heap\n    --user <USER_ID> | current: When supplying a process name,\n        specify user of process to dump; uses current user if not specified.\n\nam set-debug-app: set application <PACKAGE> to debug.  Options are:\n    -w: wait for debugger when application starts\n    --persistent: retain this value\n\nam clear-debug-app: clear the previously set-debug-app.\n\nam set-watch-heap: start monitoring pss size of <PROCESS>, if it is at or\n    above <HEAP-LIMIT> then a heap dump is collected for the user to report\n\nam clear-watch-heap: clear the previously set-watch-heap.\n\nam bug-report: request bug report generation; will launch UI\n    when done to select where it should be delivered.\n\nam monitor: start monitoring for crashes or ANRs.\n    --gdb: start gdbserv on the given port at crash/ANR\n\nam hang: hang the system.\n    --allow-restart: allow watchdog to perform normal system restart\n\nam restart: restart the user-space system.\n\nam idle-maintenance: perform idle maintenance now.\n\nam screen-compat: control screen compatibility mode of <PACKAGE>.\n\nam package-importance: print current importance of <PACKAGE>.\n\nam to-uri: print the given Intent specification as a URI.\n\nam to-intent-uri: print the given Intent specification as an intent: URI.\n\nam to-app-uri: print the given Intent specification as an android-app: URI.\n\nam switch-user: switch to put USER_ID in the foreground, starting\n  execution of that user if it is currently stopped.\n\nam start-user: start USER_ID in background if it is currently stopped,\n  use switch-user if you want to start the user in foreground.\n\nam stop-user: stop execution of USER_ID, not allowing it to run any\n  code until a later explicit start or switch to it.\n  -w: wait for stop-user to complete.\n\nam stack start: start a new activity on <DISPLAY_ID> using <INTENT>.\n\nam stack movetask: move <TASK_ID> from its current stack to the top (true) or   bottom (false) of <STACK_ID>.\n\nam stack resize: change <STACK_ID> size and position to <LEFT,TOP,RIGHT,BOTTOM>.\n\nam stack split: split <STACK_ID> into 2 stacks <v>ertically or <h>orizontally\n   starting the new stack with [INTENT] if specified. If [INTENT] isn\'t\n   specified and the current stack has more than one task, then the top task\n   of the current task will be moved to the new stack. Command will also force\n   all current tasks in both stacks to be resizeable.\n\nam stack list: list all of the activity stacks and their sizes.\n\nam stack info: display the information about activity stack <STACK_ID>.\n\nam task lock: bring <TASK_ID> to the front and don\'t allow other tasks to run.\n\nam task lock stop: end the current task lock.\n\nam task resizeable: change if <TASK_ID> is resizeable (true) or not (false).\n\nam task resize: makes sure <TASK_ID> is in a stack with the specified bounds.\n   Forces the task to be resizeable and creates a stack if no existing stack\n   has the specified bounds.\n\nam get-config: retrieve the configuration and any recent configurations\n  of the device.\n\nam set-inactive: sets the inactive state of an app.\n\nam get-inactive: returns the inactive state of an app.\n\nam send-trim-memory: Send a memory trim event to a <PROCESS>.\n\n<INTENT> specifications include these flags and arguments:\n    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]\n    [-c <CATEGORY> [-c <CATEGORY>] ...]\n    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]\n    [--esn <EXTRA_KEY> ...]\n    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]\n    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]\n    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]\n    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]\n    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]\n    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]\n    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]\n        (mutiple extras passed as Integer[])\n    [--eial <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]\n        (mutiple extras passed as List<Integer>)\n    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]\n        (mutiple extras passed as Long[])\n    [--elal <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]\n        (mutiple extras passed as List<Long>)\n    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]\n        (mutiple extras passed as Float[])\n    [--efal <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]\n        (mutiple extras passed as List<Float>)\n    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]\n        (mutiple extras passed as String[]; to embed a comma into a string,\n         escape it using \"\\,\")\n    [--esal <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]\n        (mutiple extras passed as List<String>; to embed a comma into a string,\n         escape it using \"\\,\")\n    [--grant-read-uri-permission] [--grant-write-uri-permission]\n    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]\n    [--debug-log-resolution] [--exclude-stopped-packages]\n    [--include-stopped-packages]\n    [--activity-brought-to-front] [--activity-clear-top]\n    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]\n    [--activity-launched-from-history] [--activity-multiple-task]\n    [--activity-no-animation] [--activity-no-history]\n    [--activity-no-user-action] [--activity-previous-is-top]\n    [--activity-reorder-to-front] [--activity-reset-task-if-needed]\n    [--activity-single-top] [--activity-clear-task]\n    [--activity-task-on-home]\n    [--receiver-registered-only] [--receiver-replace-pending]\n    [--selector]\n    [<URI> | <PACKAGE> | <COMPONENT>]\n"

    #@3
    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 104
    return-void
.end method

.method parseUserArg(Ljava/lang/String;)I
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 431
    const-string/jumbo v1, "all"

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 432
    const/4 v0, -0x1

    #@a
    .line 438
    .local v0, "userId":I
    :goto_0
    return v0

    #@b
    .line 433
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
    .line 434
    :cond_1
    const/4 v0, -0x2

    #@1e
    .restart local v0    # "userId":I
    goto :goto_0

    #@1f
    .line 436
    .end local v0    # "userId":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@22
    move-result v0

    #@23
    .restart local v0    # "userId":I
    goto :goto_0
.end method
