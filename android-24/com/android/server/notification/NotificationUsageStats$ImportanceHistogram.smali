.class Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportanceHistogram"
.end annotation


# static fields
.field private static final IMPORTANCE_NAMES:[Ljava/lang/String;

.field private static final NUM_IMPORTANCES:I = 0x6


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCount:[I

.field private final mCounterNames:[Ljava/lang/String;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 704
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "none"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "min"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "low"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "default"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "high"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    const-string/jumbo v1, "max"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    .line 703
    sput-object v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->IMPORTANCE_NAMES:[Ljava/lang/String;

    #@29
    .line 700
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x6

    #@1
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 711
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mContext:Landroid/content/Context;

    #@6
    .line 712
    new-array v1, v4, [I

    #@8
    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    #@a
    .line 713
    new-array v1, v4, [Ljava/lang/String;

    #@c
    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    #@e
    .line 714
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    #@10
    .line 715
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@13
    .line 716
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    sget-object v3, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->IMPORTANCE_NAMES:[Ljava/lang/String;

    #@22
    aget-object v3, v3, v0

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    aput-object v2, v1, v0

    #@2e
    .line 715
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 710
    :cond_0
    return-void
.end method


# virtual methods
.method increment(I)V
    .locals 2
    .param p1, "imp"    # I

    #@0
    .prologue
    .line 721
    if-gez p1, :cond_1

    #@2
    const/4 p1, 0x0

    #@3
    .line 722
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    #@5
    aget v1, v0, p1

    #@7
    add-int/lit8 v1, v1, 0x1

    #@9
    aput v1, v0, p1

    #@b
    .line 720
    return-void

    #@c
    .line 721
    :cond_1
    const/4 v0, 0x6

    #@d
    if-le p1, v0, :cond_0

    #@f
    const/4 p1, 0x6

    #@10
    goto :goto_0
.end method

.method maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 4
    .param p1, "prev"    # Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    #@0
    .prologue
    .line 726
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    #@2
    if-ge v0, v2, :cond_1

    #@4
    .line 727
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    #@6
    aget v2, v2, v0

    #@8
    iget-object v3, p1, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    #@a
    aget v3, v3, v0

    #@c
    sub-int v1, v2, v3

    #@e
    .line 728
    .local v1, "value":I
    if-lez v1, :cond_0

    #@10
    .line 729
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mContext:Landroid/content/Context;

    #@12
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    #@14
    aget-object v3, v3, v0

    #@16
    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@19
    .line 726
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 725
    .end local v1    # "value":I
    :cond_1
    return-void
.end method

.method public maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 3
    .param p1, "dump"    # Lorg/json/JSONObject;
    .param p2, "prev"    # Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    #@2
    new-instance v1, Lorg/json/JSONArray;

    #@4
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    #@6
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    #@9
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@c
    .line 741
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 748
    .local v1, "output":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v2

    #@b
    const-string/jumbo v3, ": ["

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 749
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    #@13
    if-ge v0, v2, :cond_1

    #@15
    .line 750
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    #@17
    aget v2, v2, v0

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    .line 751
    const/4 v2, 0x5

    #@1d
    if-ge v0, v2, :cond_0

    #@1f
    .line 752
    const-string/jumbo v2, ", "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 749
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 755
    :cond_1
    const-string/jumbo v2, "]"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 756
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    return-object v2
.end method

.method update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 3
    .param p1, "that"    # Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    #@0
    .prologue
    .line 735
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 736
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    #@6
    iget-object v2, p1, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    #@8
    aget v2, v2, v0

    #@a
    aput v2, v1, v0

    #@c
    .line 735
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 734
    :cond_0
    return-void
.end method
