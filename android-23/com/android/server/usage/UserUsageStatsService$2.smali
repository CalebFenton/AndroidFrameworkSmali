.class final Lcom/android/server/usage/UserUsageStatsService$2;
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
        "Landroid/app/usage/ConfigurationStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 254
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
            "Landroid/app/usage/ConfigurationStats;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 258
    .local p3, "accResult":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    if-nez p2, :cond_0

    #@2
    .line 259
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@7
    move-result-object v2

    #@8
    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@b
    .line 260
    return-void

    #@c
    .line 263
    :cond_0
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@11
    move-result v0

    #@12
    .line 264
    .local v0, "configCount":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 265
    new-instance v3, Landroid/app/usage/ConfigurationStats;

    #@17
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/app/usage/ConfigurationStats;

    #@1f
    invoke-direct {v3, v2}, Landroid/app/usage/ConfigurationStats;-><init>(Landroid/app/usage/ConfigurationStats;)V

    #@22
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 264
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 257
    :cond_1
    return-void
.end method
