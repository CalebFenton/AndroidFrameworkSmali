.class public final Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews$RemoteCollectionItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHasStableIds:Z

.field private final blacklist mIds:Landroid/util/LongArray;

.field private blacklist mViewTypeCount:I

.field private final blacklist mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 9838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9839
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    .line 9840
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .registers 6
    .param p1, "id"    # J
    .param p3, "view"    # Landroid/widget/RemoteViews;

    .line 9855
    if-eqz p3, :cond_1b

    .line 9856
    invoke-static {p3}, Landroid/widget/RemoteViews;->-$$Nest$mhasMultipleLayouts(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 9861
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongArray;->add(J)V

    .line 9862
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9863
    return-object p0

    .line 9857
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RemoteViews used in a RemoteCollectionItems cannot specify separate layouts for orientations or sizes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9855
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist build()Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 7

    .line 9897
    iget v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1f

    .line 9900
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda1;-><init>()V

    .line 9901
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 9902
    invoke-interface {v0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v0

    .line 9903
    invoke-interface {v0}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    .line 9905
    :cond_1f
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    .line 9906
    invoke-virtual {v2}, Landroid/util/LongArray;->toArray()[J

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/widget/RemoteViews;

    .line 9907
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/widget/RemoteViews;

    iget-boolean v4, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mHasStableIds:Z

    iget v5, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    .line 9909
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>([J[Landroid/widget/RemoteViews;ZI)V

    .line 9905
    return-object v0
.end method

.method public whitelist setHasStableIds(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .registers 2
    .param p1, "hasStableIds"    # Z

    .line 9873
    iput-boolean p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mHasStableIds:Z

    .line 9874
    return-object p0
.end method

.method public whitelist setViewTypeCount(I)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .registers 2
    .param p1, "viewTypeCount"    # I

    .line 9890
    iput p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    .line 9891
    return-object p0
.end method
