.class Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
.super Ljava/lang/Object;
.source "ResolverRankerServiceResolverComparator.java"

# interfaces
.implements Lcom/android/internal/app/ResolverComparatorModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResolverRankerServiceComparatorModel"
.end annotation


# instance fields
.field private final blacklist mAnnotationsUsed:Z

.field private final blacklist mCollator:Ljava/text/Collator;

.field private final blacklist mPmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRanker:Landroid/service/resolver/IResolverRankerService;

.field private final blacklist mRankerServiceName:Landroid/content/ComponentName;

.field private final blacklist mStatsPerUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetsDictPerUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/LinkedHashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$KAirRa-8g6HkDRCF0hfhchuCY1o(Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->lambda$getComparator$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/text/Collator;Landroid/service/resolver/IResolverRankerService;Landroid/content/ComponentName;ZLjava/util/Map;)V
    .registers 9
    .param p4, "collator"    # Ljava/text/Collator;
    .param p5, "ranker"    # Landroid/service/resolver/IResolverRankerService;
    .param p6, "rankerServiceName"    # Landroid/content/ComponentName;
    .param p7, "annotationsUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;>;",
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/LinkedHashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;",
            "Ljava/text/Collator;",
            "Landroid/service/resolver/IResolverRankerService;",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Landroid/content/pm/PackageManager;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p1, "statsPerUser":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/UserHandle;Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;>;"
    .local p2, "targetsDictPerUser":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/UserHandle;Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;>;"
    .local p3, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    .local p8, "pmMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/UserHandle;Landroid/content/pm/PackageManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mStatsPerUser:Ljava/util/Map;

    .line 544
    iput-object p2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDictPerUser:Ljava/util/Map;

    .line 545
    iput-object p3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargets:Ljava/util/List;

    .line 546
    iput-object p4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mCollator:Ljava/text/Collator;

    .line 547
    iput-object p5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRanker:Landroid/service/resolver/IResolverRankerService;

    .line 548
    iput-object p6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRankerServiceName:Landroid/content/ComponentName;

    .line 549
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mAnnotationsUsed:Z

    .line 550
    iput-object p8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mPmMap:Ljava/util/Map;

    .line 551
    return-void
.end method

.method private blacklist getActivityResolverTargetForUser(Landroid/content/pm/ActivityInfo;Landroid/os/UserHandle;)Landroid/service/resolver/ResolverTarget;
    .registers 7
    .param p1, "activity"    # Landroid/content/pm/ActivityInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 650
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mStatsPerUser:Ljava/util/Map;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_25

    .line 653
    :cond_d
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDictPerUser:Ljava/util/Map;

    .line 654
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/resolver/ResolverTarget;

    .line 653
    return-object v0

    .line 651
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$getComparator$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 10
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 559
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getActivityResolverTargetForUser(Landroid/content/pm/ActivityInfo;Landroid/os/UserHandle;)Landroid/service/resolver/ResolverTarget;

    move-result-object v0

    .line 561
    .local v0, "lhsTarget":Landroid/service/resolver/ResolverTarget;
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getActivityResolverTargetForUser(Landroid/content/pm/ActivityInfo;Landroid/os/UserHandle;)Landroid/service/resolver/ResolverTarget;

    move-result-object v1

    .line 564
    .local v1, "rhsTarget":Landroid/service/resolver/ResolverTarget;
    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    .line 565
    nop

    .line 566
    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v2

    invoke-virtual {v0}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v3

    .line 565
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    .line 568
    .local v2, "selectProbabilityDiff":I
    if-eqz v2, :cond_29

    .line 569
    if-lez v2, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, -0x1

    :goto_28
    return v3

    .line 573
    .end local v2    # "selectProbabilityDiff":I
    :cond_29
    const/4 v2, 0x0

    .line 574
    .local v2, "sa":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mPmMap:Ljava/util/Map;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 575
    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mPmMap:Ljava/util/Map;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 577
    :cond_42
    if-nez v2, :cond_48

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 578
    :cond_48
    const/4 v3, 0x0

    .line 579
    .local v3, "sb":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mPmMap:Ljava/util/Map;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 580
    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mPmMap:Ljava/util/Map;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 582
    :cond_61
    if-nez v3, :cond_67

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 584
    :cond_67
    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mCollator:Ljava/text/Collator;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method private blacklist logMetrics(I)V
    .registers 6
    .param p1, "selectedPos"    # I

    .line 637
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRankerServiceName:Landroid/content/ComponentName;

    if-eqz v0, :cond_2c

    .line 638
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 639
    .local v0, "metricsLogger":Lcom/android/internal/logging/MetricsLogger;
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x43d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 640
    .local v1, "log":Landroid/metrics/LogMaker;
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    .line 641
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mAnnotationsUsed:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x43e

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 642
    const/16 v2, 0x43f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 643
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 645
    .end local v0    # "metricsLogger":Lcom/android/internal/logging/MetricsLogger;
    .end local v1    # "log":Landroid/metrics/LogMaker;
    :cond_2c
    return-void
.end method


# virtual methods
.method public blacklist getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 558
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;)V

    return-object v0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .registers 4
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 590
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDictPerUser:Ljava/util/Map;

    .line 591
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 592
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 593
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 594
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v0}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v0

    .line 593
    return v0

    .line 596
    :cond_43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyOnTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 8
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 601
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v0, :cond_7f

    .line 603
    const/4 v0, -0x1

    .line 604
    .local v0, "selectedPos":I
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 605
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDictPerUser:Ljava/util/Map;

    .line 606
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 607
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .line 609
    :cond_33
    if-ltz v0, :cond_65

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargets:Ljava/util/List;

    if-eqz v1, :cond_65

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result v1

    .line 611
    .local v1, "selectedProbability":F
    const/4 v2, 0x0

    .line 612
    .local v2, "order":I
    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    .line 613
    .local v4, "target":Landroid/service/resolver/ResolverTarget;
    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_5a

    .line 614
    add-int/lit8 v2, v2, 0x1

    .line 616
    .end local v4    # "target":Landroid/service/resolver/ResolverTarget;
    :cond_5a
    goto :goto_44

    .line 617
    :cond_5b
    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->logMetrics(I)V

    .line 618
    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargets:Ljava/util/List;

    invoke-interface {v3, v4, v0}, Landroid/service/resolver/IResolverRankerService;->train(Ljava/util/List;I)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_65} :catch_66

    .line 627
    .end local v0    # "selectedPos":I
    .end local v1    # "selectedProbability":F
    .end local v2    # "order":I
    :cond_65
    goto :goto_7f

    .line 625
    :catch_66
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Train: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RRSResolverComparator"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7f
    :goto_7f
    return-void
.end method
