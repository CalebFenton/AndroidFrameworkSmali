.class public abstract Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private blacklist mCacheSpanIndices:Z

.field final blacklist mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method blacklist findReferenceIndexFromCache(I)I
    .registers 6
    .param p1, "position"    # I

    .line 929
    const/4 v0, 0x0

    .line 930
    .local v0, "lo":I
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 931
    .local v1, "hi":I
    :goto_9
    if-gt v0, v1, :cond_1d

    .line 932
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 933
    .local v2, "mid":I
    iget-object v3, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 934
    .local v3, "midVal":I
    if-ge v3, p1, :cond_1a

    .line 935
    add-int/lit8 v0, v2, 0x1

    goto :goto_1c

    .line 937
    :cond_1a
    add-int/lit8 v1, v2, -0x1

    .line 939
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_1c
    goto :goto_9

    .line 940
    :cond_1d
    add-int/lit8 v2, v0, -0x1

    .line 941
    .local v2, "index":I
    if-ltz v2, :cond_30

    iget-object v3, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 942
    iget-object v3, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    return v3

    .line 944
    :cond_30
    const/4 v3, -0x1

    return v3
.end method

.method blacklist getCachedSpanIndex(II)I
    .registers 6
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 862
    iget-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_9

    .line 863
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0

    .line 865
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 866
    .local v0, "existing":I
    if-eq v0, v1, :cond_13

    .line 867
    return v0

    .line 869
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 870
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 871
    return v1
.end method

.method public blacklist getSpanGroupIndex(II)I
    .registers 8
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, "span":I
    const/4 v1, 0x0

    .line 960
    .local v1, "group":I
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    .line 961
    .local v2, "positionSpanSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, p1, :cond_1c

    .line 962
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 963
    .local v4, "size":I
    add-int/2addr v0, v4

    .line 964
    if-ne v0, p2, :cond_14

    .line 965
    const/4 v0, 0x0

    .line 966
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 967
    :cond_14
    if-le v0, p2, :cond_19

    .line 969
    move v0, v4

    .line 970
    add-int/lit8 v1, v1, 0x1

    .line 961
    .end local v4    # "size":I
    :cond_19
    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 973
    .end local v3    # "i":I
    :cond_1c
    add-int v3, v0, v2

    if-le v3, p2, :cond_22

    .line 974
    add-int/lit8 v1, v1, 0x1

    .line 976
    :cond_22
    return v1
.end method

.method public blacklist getSpanIndex(II)I
    .registers 10
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 899
    .local v0, "positionSpanSize":I
    const/4 v1, 0x0

    if-ne v0, p2, :cond_8

    .line 900
    return v1

    .line 902
    :cond_8
    const/4 v2, 0x0

    .line 903
    .local v2, "span":I
    const/4 v3, 0x0

    .line 905
    .local v3, "startPos":I
    iget-boolean v4, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_2a

    .line 906
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v4

    .line 907
    .local v4, "prevKey":I
    if-ltz v4, :cond_2a

    .line 908
    iget-object v5, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    add-int v2, v5, v6

    .line 909
    add-int/lit8 v3, v4, 0x1

    .line 912
    .end local v4    # "prevKey":I
    :cond_2a
    move v4, v3

    .local v4, "i":I
    :goto_2b
    if-ge v4, p1, :cond_3c

    .line 913
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    .line 914
    .local v5, "size":I
    add-int/2addr v2, v5

    .line 915
    if-ne v2, p2, :cond_36

    .line 916
    const/4 v2, 0x0

    goto :goto_39

    .line 917
    :cond_36
    if-le v2, p2, :cond_39

    .line 919
    move v2, v5

    .line 912
    .end local v5    # "size":I
    :cond_39
    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 922
    .end local v4    # "i":I
    :cond_3c
    add-int v4, v2, v0

    if-gt v4, p2, :cond_41

    .line 923
    return v2

    .line 925
    :cond_41
    return v1
.end method

.method public abstract blacklist getSpanSize(I)I
.end method

.method public blacklist invalidateSpanIndexCache()V
    .registers 2

    .line 849
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 850
    return-void
.end method

.method public blacklist isSpanIndexCacheEnabled()Z
    .registers 2

    .line 858
    iget-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public blacklist setSpanIndexCacheEnabled(Z)V
    .registers 2
    .param p1, "cacheSpanIndices"    # Z

    .line 841
    iput-boolean p1, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 842
    return-void
.end method
