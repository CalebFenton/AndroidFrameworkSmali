.class Lcom/android/internal/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/android/internal/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AdapterHelper$Callback;,
        Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist POSITION_TYPE_INVISIBLE:I = 0x0

.field static final blacklist POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final blacklist mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

.field final blacklist mDisableRecycler:Z

.field private blacklist mExistingUpdateTypes:I

.field blacklist mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final blacklist mOpReorderer:Lcom/android/internal/widget/OpReorderer;

.field final blacklist mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUpdateOpPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/AdapterHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/widget/AdapterHelper$Callback;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AdapterHelper;-><init>(Lcom/android/internal/widget/AdapterHelper$Callback;Z)V

    .line 72
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/widget/AdapterHelper$Callback;Z)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/widget/AdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 75
    iput-object p1, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    .line 76
    iput-boolean p2, p0, Lcom/android/internal/widget/AdapterHelper;->mDisableRecycler:Z

    .line 77
    new-instance v0, Lcom/android/internal/widget/OpReorderer;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OpReorderer;-><init>(Lcom/android/internal/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mOpReorderer:Lcom/android/internal/widget/OpReorderer;

    .line 78
    return-void
.end method

.method private blacklist applyAdd(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 2
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 431
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 432
    return-void
.end method

.method private blacklist applyMove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 2
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 130
    return-void
.end method

.method private blacklist applyRemove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 13
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 133
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 134
    .local v0, "tmpStart":I
    const/4 v1, 0x0

    .line 135
    .local v1, "tmpCount":I
    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    .line 136
    .local v2, "tmpEnd":I
    const/4 v3, -0x1

    .line 137
    .local v3, "type":I
    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "position":I
    :goto_b
    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ge v4, v2, :cond_41

    .line 138
    const/4 v7, 0x0

    .line 139
    .local v7, "typeChanged":Z
    iget-object v8, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v8, v4}, Lcom/android/internal/widget/AdapterHelper$Callback;->findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v8

    .line 140
    .local v8, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v9, 0x1

    if-nez v8, :cond_2c

    invoke-direct {p0, v4}, Lcom/android/internal/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v10

    if-eqz v10, :cond_20

    goto :goto_2c

    .line 158
    :cond_20
    if-ne v3, v9, :cond_2a

    .line 161
    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 162
    .local v5, "newOp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 163
    const/4 v7, 0x1

    .line 165
    .end local v5    # "newOp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_37

    .line 147
    :cond_2c
    :goto_2c
    if-nez v3, :cond_36

    .line 150
    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 151
    .restart local v5    # "newOp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 152
    const/4 v7, 0x1

    .line 154
    .end local v5    # "newOp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_36
    const/4 v3, 0x1

    .line 167
    :goto_37
    if-eqz v7, :cond_3d

    .line 168
    sub-int/2addr v4, v1

    .line 169
    sub-int/2addr v2, v1

    .line 170
    const/4 v1, 0x1

    goto :goto_3f

    .line 172
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    .line 137
    .end local v7    # "typeChanged":Z
    .end local v8    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_3f
    add-int/2addr v4, v9

    goto :goto_b

    .line 175
    .end local v4    # "position":I
    :cond_41
    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_4c

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 177
    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 179
    :cond_4c
    if-nez v3, :cond_52

    .line 180
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_55

    .line 182
    :cond_52
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 184
    :goto_55
    return-void
.end method

.method private blacklist applyUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 11
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 187
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 188
    .local v0, "tmpStart":I
    const/4 v1, 0x0

    .line 189
    .local v1, "tmpCount":I
    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    .line 190
    .local v2, "tmpEnd":I
    const/4 v3, -0x1

    .line 191
    .local v3, "type":I
    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "position":I
    :goto_b
    const/4 v5, 0x4

    if-ge v4, v2, :cond_40

    .line 192
    iget-object v6, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v6, v4}, Lcom/android/internal/widget/AdapterHelper$Callback;->findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 193
    .local v6, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v7, 0x1

    if-nez v6, :cond_2d

    invoke-direct {p0, v4}, Lcom/android/internal/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_1e

    goto :goto_2d

    .line 203
    :cond_1e
    if-ne v3, v7, :cond_2b

    .line 204
    iget-object v8, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 206
    .local v5, "newOp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 207
    const/4 v1, 0x0

    .line 208
    move v0, v4

    .line 210
    .end local v5    # "newOp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_2b
    const/4 v3, 0x0

    goto :goto_3b

    .line 194
    :cond_2d
    :goto_2d
    if-nez v3, :cond_3a

    .line 195
    iget-object v8, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 197
    .restart local v5    # "newOp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 198
    const/4 v1, 0x0

    .line 199
    move v0, v4

    .line 201
    .end local v5    # "newOp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_3a
    const/4 v3, 0x1

    .line 212
    :goto_3b
    nop

    .end local v6    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    add-int/2addr v1, v7

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 214
    .end local v4    # "position":I
    :cond_40
    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_4d

    .line 215
    iget-object v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 216
    .local v4, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 217
    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 219
    .end local v4    # "payload":Ljava/lang/Object;
    :cond_4d
    if-nez v3, :cond_53

    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_56

    .line 222
    :cond_53
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 224
    :goto_56
    return-void
.end method

.method private blacklist canFindInPreLayout(I)Z
    .registers 9
    .param p1, "position"    # I

    .line 410
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 411
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3f

    .line 412
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 413
    .local v2, "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v3, v4, :cond_23

    .line 414
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v3

    if-ne v3, p1, :cond_3c

    .line 415
    return v5

    .line 417
    :cond_23
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v3, v5, :cond_3c

    .line 419
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    .line 420
    .local v3, "end":I
    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_2e
    if-ge v4, v3, :cond_3c

    .line 421
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_39

    .line 422
    return v5

    .line 420
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 411
    .end local v2    # "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .end local v3    # "end":I
    .end local v4    # "pos":I
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 427
    .end local v1    # "i":I
    :cond_3f
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 230
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8d

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8d

    .line 244
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    .line 248
    .local v0, "tmpStart":I
    const/4 v2, 0x1

    .line 249
    .local v2, "tmpCnt":I
    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 251
    .local v3, "offsetPositionForPartial":I
    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_96

    .line 259
    :pswitch_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "op should be remove or update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :pswitch_34
    const/4 v4, 0x1

    .line 254
    .local v4, "positionMultiplier":I
    goto :goto_38

    .line 256
    .end local v4    # "positionMultiplier":I
    :pswitch_36
    const/4 v4, 0x0

    .line 257
    .restart local v4    # "positionMultiplier":I
    nop

    .line 261
    :goto_38
    const/4 v5, 0x1

    .local v5, "p":I
    :goto_39
    iget v6, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v5, v6, :cond_79

    .line 262
    iget v6, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v7, v4, v5

    add-int/2addr v6, v7

    .line 263
    .local v6, "pos":I
    iget v7, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v7

    .line 267
    .local v7, "updatedPos":I
    const/4 v8, 0x0

    .line 268
    .local v8, "continuous":Z
    iget v9, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_a0

    :pswitch_4f
    goto :goto_5b

    .line 270
    :pswitch_50
    add-int/lit8 v9, v0, 0x1

    if-ne v7, v9, :cond_55

    move v10, v1

    :cond_55
    move v8, v10

    .line 271
    goto :goto_5b

    .line 273
    :pswitch_57
    if-ne v7, v0, :cond_5a

    move v10, v1

    :cond_5a
    move v8, v10

    .line 276
    :goto_5b
    if-eqz v8, :cond_60

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 280
    :cond_60
    iget v9, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v10, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v9, v0, v2, v10}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    .line 284
    .local v9, "tmp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v9, v3}, Lcom/android/internal/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;I)V

    .line 285
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 286
    iget v10, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_74

    .line 287
    add-int/2addr v3, v2

    .line 289
    :cond_74
    move v0, v7

    .line 290
    const/4 v2, 0x1

    .line 261
    .end local v6    # "pos":I
    .end local v7    # "updatedPos":I
    .end local v8    # "continuous":Z
    .end local v9    # "tmp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :goto_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 293
    .end local v5    # "p":I
    :cond_79
    iget-object v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 294
    .local v1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 295
    if-lez v2, :cond_8c

    .line 296
    iget v5, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v5, v0, v2, v1}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 300
    .local v5, "tmp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;I)V

    .line 301
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 311
    .end local v5    # "tmp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_8c
    return-void

    .line 231
    .end local v0    # "tmpStart":I
    .end local v1    # "payload":Ljava/lang/Object;
    .end local v2    # "tmpCnt":I
    .end local v3    # "offsetPositionForPartial":I
    .end local v4    # "positionMultiplier":I
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_96
    .packed-switch 0x2
        :pswitch_36
        :pswitch_1b
        :pswitch_34
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_57
        :pswitch_4f
        :pswitch_50
    .end packed-switch
.end method

.method private blacklist postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 6
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v0, :sswitch_data_4e

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :sswitch_23
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    .line 445
    goto :goto_4d

    .line 451
    :sswitch_2d
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 452
    goto :goto_4d

    .line 447
    :sswitch_39
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    .line 449
    goto :goto_4d

    .line 441
    :sswitch_43
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 442
    nop

    .line 456
    :goto_4d
    return-void

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_39
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_23
    .end sparse-switch
.end method

.method private blacklist updatePositionWithPostponed(II)I
    .registers 11
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 330
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ltz v1, :cond_9a

    .line 331
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 332
    .local v4, "postponed":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v5, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v6, 0x2

    if-ne v5, v2, :cond_73

    .line 334
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v5, :cond_25

    .line 335
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 336
    .local v2, "start":I
    iget v5, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .local v5, "end":I
    goto :goto_29

    .line 338
    .end local v2    # "start":I
    .end local v5    # "end":I
    :cond_25
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 339
    .restart local v2    # "start":I
    iget v5, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 341
    .restart local v5    # "end":I
    :goto_29
    if-lt p1, v2, :cond_55

    if-gt p1, v5, :cond_55

    .line 343
    iget v7, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v7, :cond_43

    .line 344
    if-ne p2, v3, :cond_39

    .line 345
    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_40

    .line 346
    :cond_39
    if-ne p2, v6, :cond_40

    .line 347
    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 350
    :cond_40
    :goto_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_72

    .line 352
    :cond_43
    if-ne p2, v3, :cond_4b

    .line 353
    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_52

    .line 354
    :cond_4b
    if-ne p2, v6, :cond_52

    .line 355
    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 358
    :cond_52
    :goto_52
    add-int/lit8 p1, p1, -0x1

    goto :goto_72

    .line 360
    :cond_55
    iget v7, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v7, :cond_72

    .line 362
    if-ne p2, v3, :cond_66

    .line 363
    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 364
    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_72

    .line 365
    :cond_66
    if-ne p2, v6, :cond_72

    .line 366
    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 367
    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 370
    .end local v2    # "start":I
    .end local v5    # "end":I
    :cond_72
    :goto_72
    goto :goto_96

    .line 371
    :cond_73
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_87

    .line 372
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v3, :cond_7f

    .line 373
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_96

    .line 374
    :cond_7f
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v6, :cond_96

    .line 375
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_96

    .line 378
    :cond_87
    if-ne p2, v3, :cond_8f

    .line 379
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v3

    iput v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_96

    .line 380
    :cond_8f
    if-ne p2, v6, :cond_96

    .line 381
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    iput v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 330
    .end local v4    # "postponed":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_96
    :goto_96
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_8

    .line 394
    .end local v1    # "i":I
    :cond_9a
    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .restart local v1    # "i":I
    :goto_a1
    if-ltz v1, :cond_d1

    .line 395
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 396
    .local v3, "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v2, :cond_c2

    .line 397
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v4, v5, :cond_b9

    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v4, :cond_ce

    .line 398
    :cond_b9
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 399
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_ce

    .line 401
    :cond_c2
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v4, :cond_ce

    .line 402
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 403
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 394
    .end local v3    # "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_ce
    :goto_ce
    add-int/lit8 v1, v1, -0x1

    goto :goto_a1

    .line 406
    .end local v1    # "i":I
    :cond_d1
    return p1
.end method


# virtual methods
.method varargs blacklist addUpdateOp([Lcom/android/internal/widget/AdapterHelper$UpdateOp;)Lcom/android/internal/widget/AdapterHelper;
    .registers 3
    .param p1, "ops"    # [Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 82
    return-object p0
.end method

.method public blacklist applyPendingUpdatesToPosition(I)I
    .registers 7
    .param p1, "position"    # I

    .line 587
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 588
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_46

    .line 589
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 590
    .local v2, "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_48

    goto :goto_43

    .line 606
    :sswitch_17
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1e

    .line 607
    iget p1, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_43

    .line 609
    :cond_1e
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_24

    .line 610
    add-int/lit8 p1, p1, -0x1

    .line 612
    :cond_24
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_43

    .line 613
    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    .line 597
    :sswitch_2b
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_43

    .line 598
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    .line 599
    .local v3, "end":I
    if-le v3, p1, :cond_38

    .line 600
    const/4 v4, -0x1

    return v4

    .line 602
    :cond_38
    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    .line 603
    .end local v3    # "end":I
    goto :goto_43

    .line 592
    :sswitch_3c
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_43

    .line 593
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    .line 588
    .end local v2    # "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 619
    .end local v1    # "i":I
    :cond_46
    return p1

    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_2b
        0x8 -> :sswitch_17
    .end sparse-switch
.end method

.method blacklist consumePostponedUpdates()V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 120
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 122
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 123
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 124
    return-void
.end method

.method blacklist consumeUpdatesInOnePass()V
    .registers 8

    .line 556
    invoke-virtual {p0}, Lcom/android/internal/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_64

    .line 559
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 560
    .local v2, "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_6e

    goto :goto_58

    .line 574
    :sswitch_1a
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 575
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_58

    .line 570
    :sswitch_29
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 571
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v6, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 572
    goto :goto_58

    .line 566
    :sswitch_3a
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 567
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 568
    goto :goto_58

    .line 562
    :sswitch_49
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 563
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 564
    nop

    .line 578
    :goto_58
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_61

    .line 579
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 558
    .end local v2    # "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 582
    .end local v1    # "i":I
    :cond_64
    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 583
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 584
    return-void

    nop

    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_49
        0x2 -> :sswitch_3a
        0x4 -> :sswitch_29
        0x8 -> :sswitch_1a
    .end sparse-switch
.end method

.method blacklist dispatchFirstPassAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;I)V
    .registers 6
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchFirstPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 315
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_26

    .line 323
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 321
    goto :goto_24

    .line 317
    :pswitch_1c
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 318
    nop

    .line 326
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method

.method blacklist findPositionOffset(I)I
    .registers 3
    .param p1, "position"    # I

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method blacklist findPositionOffset(II)I
    .registers 8
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 472
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_4c

    .line 473
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 474
    .local v2, "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2b

    .line 475
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1e

    .line 476
    iget p1, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_49

    .line 478
    :cond_1e
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_24

    .line 479
    add-int/lit8 p1, p1, -0x1

    .line 481
    :cond_24
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_49

    .line 482
    add-int/lit8 p1, p1, 0x1

    goto :goto_49

    .line 485
    :cond_2b
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_49

    .line 486
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    .line 487
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_3d

    .line 488
    const/4 v3, -0x1

    return v3

    .line 490
    :cond_3d
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_49

    .line 491
    :cond_41
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_49

    .line 492
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    .line 472
    .end local v2    # "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 496
    .end local v1    # "i":I
    :cond_4c
    return p1
.end method

.method blacklist hasAnyUpdateTypes(I)Z
    .registers 3
    .param p1, "updateTypes"    # I

    .line 463
    iget v0, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method blacklist hasPendingUpdates()Z
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist hasUpdates()Z
    .registers 2

    .line 623
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .registers 7
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 726
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 727
    .local v0, "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    if-nez v0, :cond_11

    .line 728
    new-instance v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_19

    .line 730
    :cond_11
    iput p1, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 731
    iput p2, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 732
    iput p3, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 733
    iput-object p4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 735
    :goto_19
    return-object v0
.end method

.method blacklist onItemRangeChanged(IILjava/lang/Object;)Z
    .registers 9
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 503
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    .line 504
    return v0

    .line 506
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 508
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method blacklist onItemRangeInserted(II)Z
    .registers 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 515
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    .line 516
    return v0

    .line 518
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 520
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method blacklist onItemRangeMoved(III)Z
    .registers 9
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "itemCount"    # I

    .line 539
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 540
    return v0

    .line 542
    :cond_4
    const/4 v1, 0x1

    if-ne p3, v1, :cond_22

    .line 545
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0, v4, p1, p2, v3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 547
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_21

    move v0, v1

    :cond_21
    return v0

    .line 543
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist onItemRangeRemoved(II)Z
    .registers 8
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 527
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    .line 528
    return v0

    .line 530
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 532
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1e

    move v0, v1

    :cond_1e
    return v0
.end method

.method blacklist preProcess()V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mOpReorderer:Lcom/android/internal/widget/OpReorderer;

    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 94
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_3a

    .line 95
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 96
    .local v2, "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_40

    goto :goto_2e

    .line 107
    :sswitch_1e
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyMove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2e

    .line 104
    :sswitch_22
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 105
    goto :goto_2e

    .line 101
    :sswitch_26
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyRemove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 102
    goto :goto_2e

    .line 98
    :sswitch_2a
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyAdd(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 99
    nop

    .line 110
    :goto_2e
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_37

    .line 111
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 94
    .end local v2    # "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 114
    .end local v1    # "i":I
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 115
    return-void

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_26
        0x4 -> :sswitch_22
        0x8 -> :sswitch_1e
    .end sparse-switch
.end method

.method public blacklist recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 3
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 740
    iget-boolean v0, p0, Lcom/android/internal/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_c

    .line 741
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 744
    :cond_c
    return-void
.end method

.method blacklist recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 747
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 748
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 749
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 751
    .end local v1    # "i":I
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 752
    return-void
.end method

.method blacklist reset()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 89
    return-void
.end method
