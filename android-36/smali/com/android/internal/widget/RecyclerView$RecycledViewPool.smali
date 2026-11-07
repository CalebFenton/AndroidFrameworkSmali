.class public Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private blacklist mAttachCount:I

.field blacklist mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 5060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5084
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 5086
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private blacklist getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    .registers 4
    .param p1, "viewType"    # I

    .line 5209
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5210
    .local v0, "scrapData":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-nez v0, :cond_15

    .line 5211
    new-instance v1, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    move-object v0, v1

    .line 5212
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5214
    :cond_15
    return-object v0
.end method


# virtual methods
.method blacklist attach(Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 5176
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5177
    return-void
.end method

.method public blacklist clear()V
    .registers 4

    .line 5089
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 5090
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5091
    .local v1, "data":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5089
    .end local v1    # "data":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5093
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method blacklist detach()V
    .registers 2

    .line 5180
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5181
    return-void
.end method

.method blacklist factorInBindTime(IJ)V
    .registers 7
    .param p1, "viewType"    # I
    .param p2, "bindTimeNs"    # J

    .line 5160
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5161
    .local v0, "scrapData":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5163
    return-void
.end method

.method blacklist factorInCreateTime(IJ)V
    .registers 7
    .param p1, "viewType"    # I
    .param p2, "createTimeNs"    # J

    .line 5154
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5155
    .local v0, "scrapData":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5157
    return-void
.end method

.method public blacklist getRecycledView(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "viewType"    # I

    .line 5114
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5115
    .local v0, "scrapData":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-eqz v0, :cond_21

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 5116
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5117
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    return-object v2

    .line 5119
    .end local v1    # "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getRecycledViewCount(I)I
    .registers 3
    .param p1, "viewType"    # I

    .line 5110
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method blacklist onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V
    .registers 5
    .param p1, "oldAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .line 5197
    if-eqz p1, :cond_5

    .line 5198
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 5200
    :cond_5
    if-nez p3, :cond_e

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_e

    .line 5201
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 5203
    :cond_e
    if-eqz p2, :cond_13

    .line 5204
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->attach(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 5206
    :cond_13
    return-void
.end method

.method public blacklist putRecycledView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p1, "scrap"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5134
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 5135
    .local v0, "viewType":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5136
    .local v1, "scrapHeap":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget v2, v2, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_1b

    .line 5137
    return-void

    .line 5142
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5143
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5144
    return-void
.end method

.method blacklist runningAverage(JJ)J
    .registers 11
    .param p1, "oldAverage"    # J
    .param p3, "newValue"    # J

    .line 5147
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 5148
    return-wide p3

    .line 5150
    :cond_7
    const-wide/16 v0, 0x4

    div-long v2, p1, v0

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    div-long v0, p3, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public blacklist setMaxRecycledViews(II)V
    .registers 6
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .line 5096
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5097
    .local v0, "scrapData":Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
    iput p2, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 5098
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5099
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    if-eqz v1, :cond_1a

    .line 5100
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_1a

    .line 5101
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 5104
    :cond_1a
    return-void
.end method

.method blacklist size()I
    .registers 5

    .line 5123
    const/4 v0, 0x0

    .line 5124
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 5125
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5126
    .local v2, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_1b

    .line 5127
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 5124
    .end local v2    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5130
    .end local v1    # "i":I
    :cond_1e
    return v0
.end method

.method blacklist willBindInTime(IJJ)Z
    .registers 10
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .line 5171
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5172
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v2, 0x1

    :goto_16
    return v2
.end method

.method blacklist willCreateInTime(IJJ)Z
    .registers 10
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .line 5166
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5167
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v2, 0x1

    :goto_16
    return v2
.end method
