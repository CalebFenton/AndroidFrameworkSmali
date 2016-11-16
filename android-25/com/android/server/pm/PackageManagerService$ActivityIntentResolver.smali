.class final Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 10335
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    #@5
    .line 10852
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    .line 10851
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    #@c
    .line 10335
    return-void
.end method

.method private adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .locals 17
    .param p2, "intent"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 10503
    .local p1, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    #@3
    move-result v14

    #@4
    if-gtz v14, :cond_0

    #@6
    .line 10504
    return-void

    #@7
    .line 10507
    :cond_0
    move-object/from16 v0, p2

    #@9
    iget-object v14, v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@b
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@d
    .line 10508
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    .line 10511
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v14, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@11
    and-int/lit8 v14, v14, 0x8

    #@13
    if-eqz v14, :cond_1

    #@15
    const/4 v12, 0x1

    #@16
    .line 10512
    .local v12, "privilegedApp":Z
    :goto_0
    if-nez v12, :cond_2

    #@18
    .line 10514
    const-string/jumbo v14, "PackageManager"

    #@1b
    new-instance v15, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v16, "Non-privileged app; cap priority to 0; package: "

    #@23
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v15

    #@27
    .line 10515
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@29
    move-object/from16 v16, v0

    #@2b
    .line 10514
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v15

    #@2f
    .line 10516
    const-string/jumbo v16, " activity: "

    #@32
    .line 10514
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v15

    #@36
    .line 10516
    move-object/from16 v0, p2

    #@38
    iget-object v0, v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@3a
    move-object/from16 v16, v0

    #@3c
    move-object/from16 v0, v16

    #@3e
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    #@40
    move-object/from16 v16, v0

    #@42
    .line 10514
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v15

    #@46
    .line 10517
    const-string/jumbo v16, " origPrio: "

    #@49
    .line 10514
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v15

    #@4d
    .line 10517
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    #@50
    move-result v16

    #@51
    .line 10514
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v15

    #@55
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v15

    #@59
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 10518
    const/4 v14, 0x0

    #@5d
    move-object/from16 v0, p2

    #@5f
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    #@62
    .line 10519
    return-void

    #@63
    .line 10511
    .end local v12    # "privilegedApp":Z
    :cond_1
    const/4 v12, 0x0

    #@64
    goto :goto_0

    #@65
    .line 10522
    .restart local v12    # "privilegedApp":Z
    :cond_2
    if-nez p1, :cond_6

    #@67
    .line 10524
    move-object/from16 v0, p0

    #@69
    move-object/from16 v1, p2

    #@6b
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    #@6e
    move-result v14

    #@6f
    if-eqz v14, :cond_5

    #@71
    .line 10525
    move-object/from16 v0, p0

    #@73
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@75
    invoke-static {v14}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Z

    #@78
    move-result v14

    #@79
    if-eqz v14, :cond_3

    #@7b
    .line 10533
    move-object/from16 v0, p0

    #@7d
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7f
    invoke-static {v14}, Lcom/android/server/pm/PackageManagerService;->-get10(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    #@82
    move-result-object v14

    #@83
    move-object/from16 v0, p2

    #@85
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@88
    .line 10540
    return-void

    #@89
    .line 10546
    :cond_3
    move-object/from16 v0, p2

    #@8b
    iget-object v14, v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@8d
    iget-object v14, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@8f
    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@91
    move-object/from16 v0, p0

    #@93
    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@95
    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    #@97
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v14

    #@9b
    if-eqz v14, :cond_4

    #@9d
    .line 10555
    return-void

    #@9e
    .line 10557
    :cond_4
    const-string/jumbo v14, "PackageManager"

    #@a1
    new-instance v15, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v16, "Protected action; cap priority to 0; package: "

    #@a9
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v15

    #@ad
    .line 10558
    move-object/from16 v0, p2

    #@af
    iget-object v0, v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@b1
    move-object/from16 v16, v0

    #@b3
    move-object/from16 v0, v16

    #@b5
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@b7
    move-object/from16 v16, v0

    #@b9
    move-object/from16 v0, v16

    #@bb
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@bd
    move-object/from16 v16, v0

    #@bf
    .line 10557
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v15

    #@c3
    .line 10559
    const-string/jumbo v16, " activity: "

    #@c6
    .line 10557
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v15

    #@ca
    .line 10559
    move-object/from16 v0, p2

    #@cc
    iget-object v0, v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@ce
    move-object/from16 v16, v0

    #@d0
    move-object/from16 v0, v16

    #@d2
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    #@d4
    move-object/from16 v16, v0

    #@d6
    .line 10557
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v15

    #@da
    .line 10560
    const-string/jumbo v16, " origPrio: "

    #@dd
    .line 10557
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v15

    #@e1
    .line 10560
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    #@e4
    move-result v16

    #@e5
    .line 10557
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v15

    #@e9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v15

    #@ed
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f0
    .line 10561
    const/4 v14, 0x0

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    #@f6
    .line 10562
    return-void

    #@f7
    .line 10566
    :cond_5
    return-void

    #@f8
    .line 10571
    :cond_6
    move-object/from16 v0, p0

    #@fa
    move-object/from16 v1, p1

    #@fc
    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;

    #@ff
    move-result-object v8

    #@100
    .line 10572
    .local v8, "foundActivity":Landroid/content/pm/PackageParser$Activity;
    if-nez v8, :cond_7

    #@102
    .line 10580
    const/4 v14, 0x0

    #@103
    move-object/from16 v0, p2

    #@105
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    #@108
    .line 10581
    return-void

    #@109
    .line 10588
    :cond_7
    new-instance v11, Ljava/util/ArrayList;

    #@10b
    iget-object v14, v8, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@10d
    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@110
    .line 10589
    .local v11, "intentListCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    move-object/from16 v0, p0

    #@112
    move-object/from16 v1, p2

    #@114
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    #@117
    move-result-object v9

    #@118
    .line 10592
    .local v9, "foundFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    #@11b
    move-result-object v2

    #@11c
    .line 10593
    .local v2, "actionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v2, :cond_8

    #@11e
    .line 10595
    new-instance v14, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;

    #@120
    move-object/from16 v0, p0

    #@122
    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    #@125
    .line 10594
    move-object/from16 v0, p0

    #@127
    invoke-direct {v0, v11, v14, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    #@12a
    .line 10596
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@12d
    move-result v14

    #@12e
    if-nez v14, :cond_8

    #@130
    .line 10604
    const/4 v14, 0x0

    #@131
    move-object/from16 v0, p2

    #@133
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    #@136
    .line 10605
    return-void

    #@137
    .line 10610
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    #@13a
    move-result-object v7

    #@13b
    .line 10611
    .local v7, "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v7, :cond_9

    #@13d
    .line 10612
    new-instance v14, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;

    #@13f
    move-object/from16 v0, p0

    #@141
    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    #@144
    move-object/from16 v0, p0

    #@146
    invoke-direct {v0, v11, v14, v7}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    #@149
    .line 10614
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@14c
    move-result v14

    #@14d
    if-nez v14, :cond_9

    #@14f
    .line 10622
    const/4 v14, 0x0

    #@150
    move-object/from16 v0, p2

    #@152
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    #@155
    .line 10623
    return-void

    #@156
    .line 10628
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->schemesIterator()Ljava/util/Iterator;

    #@159
    move-result-object v13

    #@15a
    .line 10629
    .local v13, "schemesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v13, :cond_a

    #@15c
    .line 10630
    new-instance v14, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;

    #@15e
    move-object/from16 v0, p0

    #@160
    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    #@163
    move-object/from16 v0, p0

    #@165
    invoke-direct {v0, v11, v14, v13}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    #@168
    .line 10632
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@16b
    move-result v14

    #@16c
    if-nez v14, :cond_a

    #@16e
    .line 10640
    const/4 v14, 0x0

    #@16f
    move-object/from16 v0, p2

    #@171
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    #@174
    .line 10641
    return-void

    #@175
    .line 10647
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->authoritiesIterator()Ljava/util/Iterator;

    #@178
    move-result-object v5

    #@179
    .line 10648
    .local v5, "authoritiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_b

    #@17b
    .line 10650
    new-instance v14, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;

    #@17d
    move-object/from16 v0, p0

    #@17f
    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    #@182
    .line 10649
    move-object/from16 v0, p0

    #@184
    invoke-direct {v0, v11, v14, v5}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    #@187
    .line 10652
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@18a
    move-result v14

    #@18b
    if-nez v14, :cond_b

    #@18d
    .line 10660
    const/4 v14, 0x0

    #@18e
    move-object/from16 v0, p2

    #@190
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    #@193
    .line 10661
    return-void

    #@194
    .line 10666
    :cond_b
    const/4 v6, 0x0

    #@195
    .line 10667
    .local v6, "cappedPriority":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@198
    move-result v14

    #@199
    add-int/lit8 v10, v14, -0x1

    #@19b
    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_c

    #@19d
    .line 10668
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a0
    move-result-object v14

    #@1a1
    check-cast v14, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@1a3
    invoke-virtual {v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    #@1a6
    move-result v14

    #@1a7
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    #@1aa
    move-result v6

    #@1ab
    .line 10667
    add-int/lit8 v10, v10, -0x1

    #@1ad
    goto :goto_1

    #@1ae
    .line 10670
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    #@1b1
    move-result v14

    #@1b2
    if-le v14, v6, :cond_d

    #@1b4
    .line 10678
    move-object/from16 v0, p2

    #@1b6
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    #@1b9
    .line 10679
    return-void

    #@1ba
    .line 10501
    :cond_d
    return-void
.end method

.method private findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;
    .locals 5
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Landroid/content/pm/PackageParser$Activity;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    const/4 v4, 0x0

    #@1
    .line 10382
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "sysActivity$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_4

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    #@11
    .line 10383
    .local v0, "sysActivity":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@13
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@15
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 10384
    return-object v0

    #@1e
    .line 10386
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@20
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@22
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 10387
    return-object v0

    #@2b
    .line 10389
    :cond_2
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2d
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@2f
    if-eqz v2, :cond_0

    #@31
    .line 10390
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@33
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@35
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_3

    #@3d
    .line 10391
    return-object v0

    #@3e
    .line 10393
    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@40
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@42
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_0

    #@4a
    .line 10394
    return-object v0

    #@4b
    .line 10398
    .end local v0    # "sysActivity":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    return-object v4
.end method

.method private getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 10442
    .local p1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .local p2, "generator":Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;, "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator<TT;>;"
    .local p3, "searchIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    #@3
    move-result v6

    #@4
    if-eqz v6, :cond_1

    #@6
    .line 10444
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@9
    move-result v6

    #@a
    if-nez v6, :cond_2

    #@c
    .line 10440
    :cond_1
    return-void

    #@d
    .line 10448
    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    .line 10451
    .local v4, "searchAction":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .line 10452
    .local v1, "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_0

    #@1b
    .line 10453
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@21
    .line 10454
    .local v0, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v5, 0x0

    #@22
    .line 10458
    .local v5, "selectionFound":Z
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;->generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;

    #@25
    move-result-object v3

    #@26
    .line 10459
    .local v3, "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_4
    if-eqz v3, :cond_5

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_5

    #@2e
    .line 10460
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    .line 10461
    .local v2, "intentSelection":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_4

    #@34
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_4

    #@3a
    .line 10462
    const/4 v5, 0x1

    #@3b
    .line 10469
    .end local v2    # "intentSelection":Ljava/lang/Object;, "TT;"
    :cond_5
    if-nez v5, :cond_3

    #@3d
    .line 10470
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@40
    goto :goto_0
.end method

.method private isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .locals 3
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@0
    .prologue
    .line 10477
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 10478
    .local v0, "actionsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    if-eqz v0, :cond_1

    #@6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 10479
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/String;

    #@12
    .line 10480
    .local v1, "filterAction":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get1()Ljava/util/Set;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 10481
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 10484
    .end local v1    # "filterAction":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@1f
    return v2
.end method


# virtual methods
.method public final addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 9
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 10685
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    #@6
    move-result-object v7

    #@7
    invoke-virtual {v6, v7, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 10692
    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v0

    #@10
    .line 10693
    .local v0, "NI":I
    const/4 v2, 0x0

    #@11
    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@13
    .line 10694
    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@1b
    .line 10695
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string/jumbo v6, "activity"

    #@1e
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_0

    #@24
    .line 10697
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@26
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@28
    iget-object v7, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@2a
    iget-object v7, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2c
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2e
    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    #@31
    move-result-object v3

    #@32
    .line 10699
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_2

    #@34
    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@36
    if-eqz v6, :cond_2

    #@38
    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3a
    iget-object v4, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@3c
    .line 10700
    .local v4, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    :goto_1
    invoke-direct {p0, v4, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    #@3f
    .line 10706
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->debugCheck()Z

    #@42
    move-result v6

    #@43
    if-nez v6, :cond_1

    #@45
    .line 10707
    const-string/jumbo v6, "PackageManager"

    #@48
    new-instance v7, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v8, "==> For Activity "

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    iget-object v8, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@56
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 10709
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@66
    .line 10693
    add-int/lit8 v2, v2, 0x1

    #@68
    goto :goto_0

    #@69
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    move-object v4, v5

    #@6a
    .line 10699
    goto :goto_1

    #@6b
    .line 10684
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Ljava/util/List;

    #@0
    .prologue
    .line 10733
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z
    .locals 6
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    #@1
    .line 10735
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@3
    iget-object v1, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@5
    .line 10736
    .local v1, "filterAi":Landroid/content/pm/ActivityInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v2, v3, -0x1

    #@b
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@d
    .line 10737
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@13
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@15
    .line 10738
    .local v0, "destAi":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@17
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@19
    if-ne v3, v4, :cond_0

    #@1b
    .line 10739
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1d
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1f
    if-ne v3, v4, :cond_0

    #@21
    .line 10740
    return v5

    #@22
    .line 10736
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@24
    goto :goto_0

    #@25
    .line 10743
    .end local v0    # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_1
    const/4 v3, 0x1

    #@26
    return v3
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 10823
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    #@5
    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@0
    .prologue
    .line 10825
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 10826
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@5
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 10825
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 10827
    const/16 v0, 0x20

    #@12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@15
    .line 10828
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@17
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    #@1a
    .line 10829
    const-string/jumbo v0, " filter "

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 10830
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@23
    move-result v0

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b
    .line 10824
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    #@0
    .prologue
    move-object v0, p3

    #@1
    .line 10839
    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    #@3
    .line 10840
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 10841
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 10840
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 10842
    const/16 v1, 0x20

    #@13
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@16
    .line 10843
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    #@19
    .line 10844
    const/4 v1, 0x1

    #@1a
    if-le p4, v1, :cond_0

    #@1c
    .line 10845
    const-string/jumbo v1, " ("

    #@1f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@25
    const-string/jumbo v1, " filters)"

    #@28
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    .line 10847
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2e
    .line 10838
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 10834
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@0
    .prologue
    .line 10835
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@2
    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 10752
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z
    .locals 4
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 10753
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v3, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    const/4 v2, 0x1

    #@a
    return v2

    #@b
    .line 10754
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@d
    iget-object v0, v3, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@f
    .line 10755
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    #@11
    .line 10756
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    #@13
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@15
    .line 10757
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_2

    #@17
    .line 10761
    iget v3, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@19
    and-int/lit8 v3, v3, 0x1

    #@1b
    if-nez v3, :cond_1

    #@1d
    .line 10762
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    #@20
    move-result v2

    #@21
    .line 10761
    :cond_1
    return v2

    #@22
    .line 10765
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v2
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 10769
    check-cast p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p2    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@0
    .prologue
    .line 10771
    iget-object v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@2
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@4
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 10747
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 10748
    new-array v0, p1, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 8
    .param p1, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 10777
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v4, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    return-object v7

    #@a
    .line 10778
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@c
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@e
    iget-object v5, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@10
    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@12
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@14
    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_1

    #@1a
    .line 10779
    return-object v7

    #@1b
    .line 10781
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@1d
    .line 10782
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@1f
    iget-object v2, v4, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    #@21
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@23
    .line 10783
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_2

    #@25
    .line 10784
    return-object v7

    #@26
    .line 10786
    :cond_2
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@28
    .line 10787
    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@2b
    move-result-object v5

    #@2c
    .line 10786
    invoke-static {v0, v4, v5, p3}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    #@2f
    move-result-object v1

    #@30
    .line 10788
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_3

    #@32
    .line 10789
    return-object v7

    #@33
    .line 10791
    :cond_3
    new-instance v3, Landroid/content/pm/ResolveInfo;

    #@35
    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    #@38
    .line 10792
    .local v3, "res":Landroid/content/pm/ResolveInfo;
    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3a
    .line 10793
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@3c
    and-int/lit8 v4, v4, 0x40

    #@3e
    if-eqz v4, :cond_4

    #@40
    .line 10794
    iput-object p1, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@42
    .line 10796
    :cond_4
    if-eqz p1, :cond_5

    #@44
    .line 10797
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->handleAllWebDataURI()Z

    #@47
    move-result v4

    #@48
    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    #@4a
    .line 10799
    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    #@4d
    move-result v4

    #@4e
    iput v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    #@50
    .line 10800
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@52
    iget v4, v4, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    #@54
    iput v4, v3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@56
    .line 10803
    iput p2, v3, Landroid/content/pm/ResolveInfo;->match:I

    #@58
    .line 10804
    iget-boolean v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    #@5a
    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@5c
    .line 10805
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    #@5e
    iput v4, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@60
    .line 10806
    iget-object v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@62
    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@64
    .line 10807
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@66
    invoke-static {v4, p3}, Lcom/android/server/pm/PackageManagerService;->-wrap7(Lcom/android/server/pm/PackageManagerService;I)Z

    #@69
    move-result v4

    #@6a
    if-eqz v4, :cond_6

    #@6c
    .line 10808
    const/4 v4, 0x1

    #@6d
    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    #@6f
    .line 10812
    :goto_0
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    #@71
    iput v4, v3, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@73
    .line 10813
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@75
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@77
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@7a
    move-result v4

    #@7b
    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->system:Z

    #@7d
    .line 10814
    return-object v3

    #@7e
    .line 10810
    :cond_6
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    #@80
    iput v4, v3, Landroid/content/pm/ResolveInfo;->icon:I

    #@82
    goto :goto_0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 10775
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p1    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 10346
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 10347
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@d
    .line 10349
    const/high16 v1, 0x10000

    #@f
    and-int/2addr v1, p3

    #@10
    if-eqz v1, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    .line 10348
    :cond_1
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 10339
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 10340
    :cond_0
    if-eqz p3, :cond_1

    #@c
    const/high16 v0, 0x10000

    #@e
    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@10
    .line 10341
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 10340
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "packageActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    const/4 v1, 0x0

    #@1
    .line 10354
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    return-object v1

    #@a
    .line 10355
    :cond_0
    if-nez p4, :cond_1

    #@c
    .line 10356
    return-object v1

    #@d
    .line 10358
    :cond_1
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@f
    .line 10359
    const/high16 v0, 0x10000

    #@11
    and-int/2addr v0, p3

    #@12
    if-eqz v0, :cond_3

    #@14
    const/4 v3, 0x1

    #@15
    .line 10360
    .local v3, "defaultOnly":Z
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v6

    #@19
    .line 10362
    .local v6, "N":I
    new-instance v4, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    .line 10365
    .local v4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v8, 0x0

    #@1f
    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_4

    #@21
    .line 10366
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    #@27
    iget-object v9, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@29
    .line 10367
    .local v9, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-eqz v9, :cond_2

    #@2b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v0

    #@2f
    if-lez v0, :cond_2

    #@31
    .line 10369
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v0

    #@35
    new-array v7, v0, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@37
    .line 10370
    .local v7, "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3a
    .line 10371
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 10365
    .end local v7    # "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 10359
    .end local v3    # "defaultOnly":Z
    .end local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_3
    const/4 v3, 0x0

    #@41
    .restart local v3    # "defaultOnly":Z
    goto :goto_0

    #@42
    .restart local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    :cond_4
    move-object v0, p0

    #@43
    move-object v1, p1

    #@44
    move-object v2, p2

    #@45
    move v5, p5

    #@46
    .line 10374
    invoke-super/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method

.method public final removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 5
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 10714
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 10721
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    .line 10722
    .local v0, "NI":I
    const/4 v2, 0x0

    #@10
    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@12
    .line 10723
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@1a
    .line 10728
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    #@1d
    .line 10722
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 10713
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 10819
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get11()Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@7
    .line 10818
    return-void
.end method
