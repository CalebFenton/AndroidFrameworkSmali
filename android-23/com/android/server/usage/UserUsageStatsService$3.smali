.class Lcom/android/server/usage/UserUsageStatsService$3;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJ)Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
        "<",
        "Landroid/app/usage/UsageEvents$Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;

.field final synthetic val$beginTime:J

.field final synthetic val$endTime:J

.field final synthetic val$names:Landroid/util/ArraySet;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJLandroid/util/ArraySet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p2, "val$beginTime"    # J
    .param p4, "val$endTime"    # J

    #@0
    .prologue
    .line 352
    .local p6, "val$names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$3;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    #@2
    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$beginTime:J

    #@4
    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$endTime:J

    #@6
    iput-object p6, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$names:Landroid/util/ArraySet;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .locals 8
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "mutable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/usage/IntervalStats;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 356
    .local p3, "accumulatedResult":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 357
    return-void

    #@5
    .line 360
    :cond_0
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@7
    iget-wide v6, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$beginTime:J

    #@9
    invoke-virtual {v4, v6, v7}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    #@c
    move-result v3

    #@d
    .line 361
    .local v3, "startIndex":I
    if-gez v3, :cond_1

    #@f
    .line 362
    return-void

    #@10
    .line 365
    :cond_1
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@12
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@15
    move-result v2

    #@16
    .line 366
    .local v2, "size":I
    move v1, v3

    #@17
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@19
    .line 367
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@1b
    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    #@1e
    move-result-wide v4

    #@1f
    iget-wide v6, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$endTime:J

    #@21
    cmp-long v4, v4, v6

    #@23
    if-ltz v4, :cond_2

    #@25
    .line 368
    return-void

    #@26
    .line 371
    :cond_2
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@28
    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    #@2e
    .line 372
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$names:Landroid/util/ArraySet;

    #@30
    iget-object v5, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@32
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@35
    .line 373
    iget-object v4, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@37
    if-eqz v4, :cond_3

    #@39
    .line 374
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$names:Landroid/util/ArraySet;

    #@3b
    iget-object v5, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@3d
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@40
    .line 376
    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    .line 366
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_0

    #@46
    .line 355
    .end local v0    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_4
    return-void
.end method
