.class Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrapData"
.end annotation


# instance fields
.field blacklist mBindRunningAverageNs:J

.field blacklist mCreateRunningAverageNs:J

.field blacklist mMaxScrap:I

.field greylist-max-r mScrapHeap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 5077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5080
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 5081
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5082
    iput-wide v0, p0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    return-void
.end method
