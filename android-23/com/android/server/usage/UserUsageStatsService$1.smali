.class final Lcom/android/server/usage/UserUsageStatsService$1;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UserUsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
        "<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .locals 4
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "mutable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/usage/IntervalStats;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 241
    .local p3, "accResult":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez p2, :cond_0

    #@2
    .line 242
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@7
    move-result-object v2

    #@8
    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@b
    .line 243
    return-void

    #@c
    .line 246
    :cond_0
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@11
    move-result v1

    #@12
    .line 247
    .local v1, "statCount":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@15
    .line 248
    new-instance v3, Landroid/app/usage/UsageStats;

    #@17
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/app/usage/UsageStats;

    #@1f
    invoke-direct {v3, v2}, Landroid/app/usage/UsageStats;-><init>(Landroid/app/usage/UsageStats;)V

    #@22
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 247
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 240
    :cond_1
    return-void
.end method
