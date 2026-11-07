.class Lcom/android/internal/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewInfoStore$InfoRecord;,
        Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false


# instance fields
.field final blacklist mLayoutHolderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Lcom/android/internal/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mOldChangedHolders:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    .line 50
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    return-void
.end method

.method private blacklist popFromLayoutStep(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 7
    .param p1, "vh"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "flag"    # I

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 105
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_a

    .line 106
    return-object v1

    .line 108
    :cond_a
    iget-object v2, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 109
    .local v2, "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    if-eqz v2, :cond_42

    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_42

    .line 110
    iget v1, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    not-int v3, p2

    and-int/2addr v1, v3

    iput v1, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 112
    const/4 v1, 0x4

    if-ne p2, v1, :cond_25

    .line 113
    iget-object v1, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .local v1, "info":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    goto :goto_2b

    .line 114
    .end local v1    # "info":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_25
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3a

    .line 115
    iget-object v1, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 120
    .restart local v1    # "info":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_2b
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_39

    .line 121
    iget-object v3, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 122
    invoke-static {v2}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->recycle(Lcom/android/internal/widget/ViewInfoStore$InfoRecord;)V

    .line 124
    :cond_39
    return-object v1

    .line 117
    .end local v1    # "info":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_3a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must provide flag PRE or POST"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_42
    return-object v1
.end method


# virtual methods
.method blacklist addToAppearedInPreLayoutHolders(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 149
    .local v0, "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 150
    invoke-static {}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->obtain()Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_13
    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 154
    iput-object p2, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 155
    return-void
.end method

.method blacklist addToDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 202
    .local v0, "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 203
    invoke-static {}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->obtain()Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_13
    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 207
    return-void
.end method

.method blacklist addToOldChangeHolders(JLcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "key"    # J
    .param p3, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 136
    return-void
.end method

.method blacklist addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 186
    .local v0, "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 187
    invoke-static {}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->obtain()Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_13
    iput-object p2, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 191
    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 192
    return-void
.end method

.method blacklist addToPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 68
    .local v0, "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 69
    invoke-static {}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->obtain()Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_13
    iput-object p2, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 73
    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 74
    return-void
.end method

.method blacklist clear()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 59
    return-void
.end method

.method blacklist getFromOldChangeHolders(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "key"    # J

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method blacklist isDisappearing(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 78
    .local v0, "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_11

    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method blacklist isInPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 165
    .local v0, "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_12

    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method blacklist onDetach()V
    .registers 1

    .line 276
    invoke-static {}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->drainCache()V

    .line 277
    return-void
.end method

.method public blacklist onViewDetached(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 281
    return-void
.end method

.method blacklist popFromPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .param p1, "vh"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 100
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewInfoStore;->popFromLayoutStep(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method blacklist popFromPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .param p1, "vh"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 89
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewInfoStore;->popFromLayoutStep(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method blacklist process(Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "index":I
    :goto_8
    if-ltz v0, :cond_7b

    .line 223
    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 224
    .local v1, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 225
    .local v2, "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_24

    .line 227
    invoke-interface {p1, v1}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->unused(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_75

    .line 228
    :cond_24
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3a

    .line 230
    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_32

    .line 233
    invoke-interface {p1, v1}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->unused(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_75

    .line 235
    :cond_32
    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 237
    :cond_3a
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_49

    .line 239
    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->processAppeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 240
    :cond_49
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_58

    .line 242
    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->processPersistent(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 243
    :cond_58
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_65

    .line 245
    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 246
    :cond_65
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_73

    .line 248
    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->processAppeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 249
    :cond_73
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 254
    :goto_75
    invoke-static {v2}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->recycle(Lcom/android/internal/widget/ViewInfoStore$InfoRecord;)V

    .line 222
    .end local v1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v2    # "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 256
    .end local v0    # "index":I
    :cond_7b
    return-void
.end method

.method blacklist removeFromDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 215
    .local v0, "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_b

    .line 216
    return-void

    .line 218
    :cond_b
    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 219
    return-void
.end method

.method blacklist removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1b

    .line 264
    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_18

    .line 265
    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 266
    goto :goto_1b

    .line 263
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 269
    .end local v0    # "i":I
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 270
    .local v0, "info":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_28

    .line 271
    invoke-static {v0}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->recycle(Lcom/android/internal/widget/ViewInfoStore$InfoRecord;)V

    .line 273
    :cond_28
    return-void
.end method
