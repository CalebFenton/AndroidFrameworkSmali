.class Lcom/android/internal/app/ResolverComparator;
.super Ljava/lang/Object;
.source "ResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final RECENCY_MULTIPLIER:F = 3.0f

.field private static final RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final TAG:Ljava/lang/String; = "ResolverComparator"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mCurrentTime:J

.field private final mHttp:Z

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mReferrerPackage:Ljava/lang/String;

.field private final mScoredTargets:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/app/ResolverComparator$ScoredTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mSinceTime:J

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v1, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    #@a
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@11
    move-result-object v1

    #@12
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@14
    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    #@1a
    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 70
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "http"

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_0

    #@27
    const-string/jumbo v1, "https"

    #@2a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    #@30
    .line 71
    iput-object p3, p0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    #@32
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    #@38
    .line 74
    const-string/jumbo v1, "usagestats"

    #@3b
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Landroid/app/usage/UsageStatsManager;

    #@41
    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    #@43
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@46
    move-result-wide v2

    #@47
    iput-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    #@49
    .line 77
    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    #@4b
    const-wide/32 v4, 0x48190800

    #@4e
    sub-long/2addr v2, v4

    #@4f
    iput-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    #@51
    .line 78
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    #@53
    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    #@55
    iget-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    #@57
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    #@5a
    move-result-object v1

    #@5b
    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    #@5d
    .line 67
    return-void

    #@5e
    .line 70
    :cond_0
    const/4 v1, 0x1

    #@5f
    goto :goto_0
.end method

.method static isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 2
    .param p0, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 146
    if-eqz p0, :cond_1

    #@3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_1

    #@9
    .line 147
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@c
    move-result-object v1

    #@d
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@f
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@11
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@13
    and-int/lit8 v1, v1, 0x8

    #@15
    if-eqz v1, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    :cond_0
    return v0

    #@19
    .line 150
    :cond_1
    return v0
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 13
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@0
    .prologue
    .line 155
    const/4 v9, 0x0

    #@1
    invoke-virtual {p1, v9}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@4
    move-result-object v1

    #@5
    .line 156
    .local v1, "lhs":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    #@6
    invoke-virtual {p2, v9}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@9
    move-result-object v4

    #@a
    .line 159
    .local v4, "rhs":Landroid/content/pm/ResolveInfo;
    iget v9, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@c
    const/4 v10, -0x2

    #@d
    if-eq v9, v10, :cond_0

    #@f
    .line 160
    const/4 v9, 0x1

    #@10
    return v9

    #@11
    .line 163
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    #@13
    if-eqz v9, :cond_2

    #@15
    .line 167
    iget v9, v1, Landroid/content/pm/ResolveInfo;->match:I

    #@17
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    #@1a
    move-result v2

    #@1b
    .line 168
    .local v2, "lhsSpecific":Z
    iget v9, v4, Landroid/content/pm/ResolveInfo;->match:I

    #@1d
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    #@20
    move-result v5

    #@21
    .line 169
    .local v5, "rhsSpecific":Z
    if-eq v2, v5, :cond_2

    #@23
    .line 170
    if-eqz v2, :cond_1

    #@25
    const/4 v9, -0x1

    #@26
    :goto_0
    return v9

    #@27
    :cond_1
    const/4 v9, 0x1

    #@28
    goto :goto_0

    #@29
    .line 174
    .end local v2    # "lhsSpecific":Z
    .end local v5    # "rhsSpecific":Z
    :cond_2
    iget-object v9, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    #@2b
    if-eqz v9, :cond_4

    #@2d
    .line 175
    iget-object v9, p0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    #@2f
    new-instance v10, Landroid/content/ComponentName;

    #@31
    .line 176
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@33
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@35
    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@37
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@39
    .line 175
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    #@42
    .line 177
    .local v3, "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    iget-object v9, p0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    #@44
    new-instance v10, Landroid/content/ComponentName;

    #@46
    .line 178
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@48
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4a
    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4c
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@4e
    .line 177
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v6

    #@55
    check-cast v6, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    #@57
    .line 179
    .local v6, "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    iget v9, v6, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    #@59
    iget v10, v3, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    #@5b
    sub-float v0, v9, v10

    #@5d
    .line 181
    .local v0, "diff":F
    const/4 v9, 0x0

    #@5e
    cmpl-float v9, v0, v9

    #@60
    if-eqz v9, :cond_4

    #@62
    .line 182
    const/4 v9, 0x0

    #@63
    cmpl-float v9, v0, v9

    #@65
    if-lez v9, :cond_3

    #@67
    const/4 v9, 0x1

    #@68
    :goto_1
    return v9

    #@69
    :cond_3
    const/4 v9, -0x1

    #@6a
    goto :goto_1

    #@6b
    .line 186
    .end local v0    # "diff":F
    .end local v3    # "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v6    # "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    :cond_4
    iget-object v9, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    #@6d
    invoke-virtual {v1, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@70
    move-result-object v7

    #@71
    .line 187
    .local v7, "sa":Ljava/lang/CharSequence;
    if-nez v7, :cond_5

    #@73
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@75
    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@77
    .line 188
    :cond_5
    iget-object v9, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    #@79
    invoke-virtual {v4, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@7c
    move-result-object v8

    #@7d
    .line 189
    .local v8, "sb":Ljava/lang/CharSequence;
    if-nez v8, :cond_6

    #@7f
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@81
    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@83
    .line 191
    :cond_6
    iget-object v9, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    #@85
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@88
    move-result-object v10

    #@89
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@8c
    move-result-object v10

    #@8d
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@90
    move-result-object v11

    #@91
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@94
    move-result-object v11

    #@95
    invoke-virtual {v9, v10, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    move-result v9

    #@99
    return v9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhsp"    # Ljava/lang/Object;
    .param p2, "rhsp"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 154
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@2
    .end local p1    # "lhsp":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@4
    .end local p2    # "rhsp":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compute(Ljava/util/List;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    #@4
    move-object/from16 v25, v0

    #@6
    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedHashMap;->clear()V

    #@9
    .line 84
    move-object/from16 v0, p0

    #@b
    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    #@d
    move-wide/from16 v26, v0

    #@f
    const-wide/32 v28, 0x2932e00

    #@12
    sub-long v16, v26, v28

    #@14
    .line 86
    .local v16, "recentSinceTime":J
    const-wide/16 v26, 0x1

    #@16
    add-long v10, v16, v26

    #@18
    .line 87
    .local v10, "mostRecentlyUsedTime":J
    const-wide/16 v12, 0x1

    #@1a
    .line 88
    .local v12, "mostTimeSpent":J
    const/4 v8, 0x1

    #@1b
    .line 90
    .local v8, "mostLaunched":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v21

    #@1f
    .local v21, "target$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v25

    #@23
    if-eqz v25, :cond_4

    #@25
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v19

    #@29
    check-cast v19, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@2b
    .line 92
    .local v19, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    new-instance v18, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    #@2d
    const/16 v25, 0x0

    #@2f
    move-object/from16 v0, v19

    #@31
    move/from16 v1, v25

    #@33
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@36
    move-result-object v25

    #@37
    move-object/from16 v0, v25

    #@39
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3b
    move-object/from16 v25, v0

    #@3d
    move-object/from16 v0, v18

    #@3f
    move-object/from16 v1, v25

    #@41
    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverComparator$ScoredTarget;-><init>(Landroid/content/pm/ComponentInfo;)V

    #@44
    .line 93
    .local v18, "scoredTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    #@48
    move-object/from16 v25, v0

    #@4a
    move-object/from16 v0, v19

    #@4c
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    #@4e
    move-object/from16 v26, v0

    #@50
    move-object/from16 v0, v25

    #@52
    move-object/from16 v1, v26

    #@54
    move-object/from16 v2, v18

    #@56
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 94
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    #@5d
    move-object/from16 v25, v0

    #@5f
    move-object/from16 v0, v19

    #@61
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    #@63
    move-object/from16 v26, v0

    #@65
    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@68
    move-result-object v26

    #@69
    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    move-result-object v9

    #@6d
    check-cast v9, Landroid/app/usage/UsageStats;

    #@6f
    .line 95
    .local v9, "pkStats":Landroid/app/usage/UsageStats;
    if-eqz v9, :cond_0

    #@71
    .line 99
    move-object/from16 v0, v19

    #@73
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    #@75
    move-object/from16 v25, v0

    #@77
    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@7a
    move-result-object v25

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    #@7f
    move-object/from16 v26, v0

    #@81
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v25

    #@85
    if-nez v25, :cond_1

    #@87
    .line 100
    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/ResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    #@8a
    move-result v25

    #@8b
    if-eqz v25, :cond_3

    #@8d
    .line 107
    :cond_1
    :goto_1
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    #@90
    move-result-wide v22

    #@91
    .line 108
    .local v22, "timeSpent":J
    move-wide/from16 v0, v22

    #@93
    move-object/from16 v2, v18

    #@95
    iput-wide v0, v2, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->timeSpent:J

    #@97
    .line 109
    cmp-long v25, v22, v12

    #@99
    if-lez v25, :cond_2

    #@9b
    .line 110
    move-wide/from16 v12, v22

    #@9d
    .line 112
    :cond_2
    iget v7, v9, Landroid/app/usage/UsageStats;->mLaunchCount:I

    #@9f
    .line 113
    .local v7, "launched":I
    int-to-long v0, v7

    #@a0
    move-wide/from16 v26, v0

    #@a2
    move-wide/from16 v0, v26

    #@a4
    move-object/from16 v2, v18

    #@a6
    iput-wide v0, v2, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->launchCount:J

    #@a8
    .line 114
    if-le v7, v8, :cond_0

    #@aa
    .line 115
    move v8, v7

    #@ab
    goto/16 :goto_0

    #@ad
    .line 101
    .end local v7    # "launched":I
    .end local v22    # "timeSpent":J
    :cond_3
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    #@b0
    move-result-wide v4

    #@b1
    .line 102
    .local v4, "lastTimeUsed":J
    move-object/from16 v0, v18

    #@b3
    iput-wide v4, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->lastTimeUsed:J

    #@b5
    .line 103
    cmp-long v25, v4, v10

    #@b7
    if-lez v25, :cond_1

    #@b9
    .line 104
    move-wide v10, v4

    #@ba
    goto :goto_1

    #@bb
    .line 128
    .end local v4    # "lastTimeUsed":J
    .end local v9    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v18    # "scoredTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v19    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_4
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    #@bf
    move-object/from16 v25, v0

    #@c1
    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@c4
    move-result-object v25

    #@c5
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c8
    move-result-object v21

    #@c9
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@cc
    move-result v25

    #@cd
    if-eqz v25, :cond_5

    #@cf
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d2
    move-result-object v20

    #@d3
    check-cast v20, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    #@d5
    .line 129
    .local v20, "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, v20

    #@d7
    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->lastTimeUsed:J

    #@d9
    move-wide/from16 v26, v0

    #@db
    sub-long v26, v26, v16

    #@dd
    const-wide/16 v28, 0x0

    #@df
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(JJ)J

    #@e2
    move-result-wide v26

    #@e3
    move-wide/from16 v0, v26

    #@e5
    long-to-float v0, v0

    #@e6
    move/from16 v25, v0

    #@e8
    .line 130
    sub-long v26, v10, v16

    #@ea
    move-wide/from16 v0, v26

    #@ec
    long-to-float v0, v0

    #@ed
    move/from16 v26, v0

    #@ef
    .line 129
    div-float v14, v25, v26

    #@f1
    .line 131
    .local v14, "recency":F
    mul-float v25, v14, v14

    #@f3
    const/high16 v26, 0x40400000    # 3.0f

    #@f5
    mul-float v15, v25, v26

    #@f7
    .line 132
    .local v15, "recencyScore":F
    move-object/from16 v0, v20

    #@f9
    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->timeSpent:J

    #@fb
    move-wide/from16 v26, v0

    #@fd
    move-wide/from16 v0, v26

    #@ff
    long-to-float v0, v0

    #@100
    move/from16 v25, v0

    #@102
    long-to-float v0, v12

    #@103
    move/from16 v26, v0

    #@105
    div-float v24, v25, v26

    #@107
    .line 133
    .local v24, "usageTimeScore":F
    move-object/from16 v0, v20

    #@109
    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->launchCount:J

    #@10b
    move-wide/from16 v26, v0

    #@10d
    move-wide/from16 v0, v26

    #@10f
    long-to-float v0, v0

    #@110
    move/from16 v25, v0

    #@112
    int-to-float v0, v8

    #@113
    move/from16 v26, v0

    #@115
    div-float v6, v25, v26

    #@117
    .line 135
    .local v6, "launchCountScore":F
    add-float v25, v15, v24

    #@119
    add-float v25, v25, v6

    #@11b
    move/from16 v0, v25

    #@11d
    move-object/from16 v1, v20

    #@11f
    iput v0, v1, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    #@121
    goto :goto_2

    #@122
    .line 81
    .end local v6    # "launchCountScore":F
    .end local v14    # "recency":F
    .end local v15    # "recencyScore":F
    .end local v20    # "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v24    # "usageTimeScore":F
    :cond_5
    return-void
.end method

.method public getScore(Landroid/content/ComponentName;)F
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    #@8
    .line 196
    .local v0, "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    if-eqz v0, :cond_0

    #@a
    .line 197
    iget v1, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    #@c
    return v1

    #@d
    .line 199
    :cond_0
    const/4 v1, 0x0

    #@e
    return v1
.end method
