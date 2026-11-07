.class Lcom/android/internal/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final blacklist mCallback:Lcom/android/internal/widget/OpReorderer$Callback;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/OpReorderer$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/widget/OpReorderer$Callback;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    .line 34
    return-void
.end method

.method private blacklist getLastMoveOutOfOrder(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .line 219
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 220
    .local v0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_1c

    .line 221
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 222
    .local v2, "op1":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_18

    .line 223
    if-eqz v0, :cond_19

    .line 224
    return v1

    .line 227
    :cond_18
    const/4 v0, 0x1

    .line 220
    .end local v2    # "op1":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 230
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist swapMoveAdd(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 9
    .param p2, "move"    # I
    .param p3, "moveOp"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .param p4, "add"    # I
    .param p5, "addOp"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 162
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 164
    .local v0, "offset":I
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_9

    .line 165
    add-int/lit8 v0, v0, -0x1

    .line 167
    :cond_9
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_11

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 170
    :cond_11
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v2, :cond_1e

    .line 171
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 173
    :cond_1e
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v2, :cond_2b

    .line 174
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 176
    :cond_2b
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v0

    iput v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 177
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method private blacklist swapMoveOp(Ljava/util/List;II)V
    .registers 11
    .param p2, "badMove"    # I
    .param p3, "next"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .line 46
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 47
    .local v4, "moveOp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 48
    .local v6, "nextOp":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v0, v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_30

    :pswitch_13
    move-object v2, p1

    move v3, p2

    move v5, p3

    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .end local p2    # "badMove":I
    .end local p3    # "next":I
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .local v3, "badMove":I
    .local v5, "next":I
    goto :goto_2f

    .line 56
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .end local v3    # "badMove":I
    .end local v5    # "next":I
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .restart local p2    # "badMove":I
    .restart local p3    # "next":I
    :pswitch_17
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .end local p2    # "badMove":I
    .end local p3    # "next":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .restart local v3    # "badMove":I
    .restart local v5    # "next":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2f

    .line 50
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .end local v3    # "badMove":I
    .end local v5    # "next":I
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .restart local p2    # "badMove":I
    .restart local p3    # "next":I
    :pswitch_1f
    move-object v2, p1

    move v3, p2

    move v5, p3

    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .end local p2    # "badMove":I
    .end local p3    # "next":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .restart local v3    # "badMove":I
    .restart local v5    # "next":I
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 51
    goto :goto_2f

    .line 53
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .end local v3    # "badMove":I
    .end local v5    # "next":I
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .restart local p2    # "badMove":I
    .restart local p3    # "next":I
    :pswitch_27
    move-object v2, p1

    move v3, p2

    move v5, p3

    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .end local p2    # "badMove":I
    .end local p3    # "next":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    .restart local v3    # "badMove":I
    .restart local v5    # "next":I
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 54
    nop

    .line 59
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method blacklist reorderOps(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    move v1, v0

    .local v1, "badMove":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    .line 41
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_1

    .line 43
    :cond_f
    return-void
.end method

.method blacklist swapMoveRemove(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .param p2, "movePos"    # I
    .param p3, "moveOp"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .param p4, "removePos"    # I
    .param p5, "removeOp"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 65
    .local v0, "extraRm":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .line 68
    .local v1, "revertedMove":Z
    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1b

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "moveIsBackwards":Z
    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v5, :cond_2d

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_2d

    .line 72
    const/4 v1, 0x1

    goto :goto_2d

    .line 75
    .end local v2    # "moveIsBackwards":Z
    :cond_1b
    const/4 v2, 0x1

    .line 76
    .restart local v2    # "moveIsBackwards":Z
    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v4

    if-ne v3, v5, :cond_2d

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_2d

    .line 78
    const/4 v1, 0x1

    .line 83
    :cond_2d
    :goto_2d
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v6, 0x2

    if-ge v3, v5, :cond_3a

    .line 84
    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    iput v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_59

    .line 85
    :cond_3a
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_59

    .line 87
    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 88
    iput v6, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 89
    iput v4, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 90
    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v3, :cond_58

    .line 91
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    iget-object v3, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    invoke-interface {v3, p5}, Lcom/android/internal/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 95
    :cond_58
    return-void

    .line 99
    :cond_59
    :goto_59
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v5, :cond_65

    .line 100
    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v3, v4

    iput v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_87

    .line 101
    :cond_65
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_87

    .line 102
    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v5

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v5

    .line 104
    .local v3, "remaining":I
    iget-object v5, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    iget v7, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v7, v4

    const/4 v4, 0x0

    invoke-interface {v5, v6, v7, v3, v4}, Lcom/android/internal/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 105
    iget v4, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v4, v5

    iput v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 109
    .end local v3    # "remaining":I
    :cond_87
    :goto_87
    if-eqz v1, :cond_95

    .line 110
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v3, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    invoke-interface {v3, p3}, Lcom/android/internal/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 113
    return-void

    .line 117
    :cond_95
    if-eqz v2, :cond_ce

    .line 118
    if-eqz v0, :cond_b3

    .line 119
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_a6

    .line 120
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 122
    :cond_a6
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_b3

    .line 123
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 126
    :cond_b3
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_c0

    .line 127
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 129
    :cond_c0
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_104

    .line 130
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_104

    .line 133
    :cond_ce
    if-eqz v0, :cond_ea

    .line 134
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_dd

    .line 135
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 137
    :cond_dd
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_ea

    .line 138
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 141
    :cond_ea
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_f7

    .line 142
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 144
    :cond_f7
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_104

    .line 145
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 149
    :cond_104
    :goto_104
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_111

    .line 151
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_114

    .line 153
    :cond_111
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 155
    :goto_114
    if-eqz v0, :cond_119

    .line 156
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    :cond_119
    return-void
.end method

.method blacklist swapMoveUpdate(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 13
    .param p2, "move"    # I
    .param p3, "moveOp"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .param p4, "update"    # I
    .param p5, "updateOp"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 183
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 184
    .local v0, "extraUp1":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .line 186
    .local v1, "extraUp2":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v2, v3, :cond_10

    .line 187
    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v5

    iput v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_28

    .line 188
    :cond_10
    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_28

    .line 190
    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v5

    iput v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 191
    iget-object v2, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget-object v6, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v2, v4, v3, v5, v6}, Lcom/android/internal/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 194
    :cond_28
    :goto_28
    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, v3, :cond_34

    .line 195
    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v5

    iput v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_55

    .line 196
    :cond_34
    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_55

    .line 197
    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    .line 199
    .local v2, "remaining":I
    iget-object v3, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    iget v6, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v5

    iget-object v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v6, v2, v5}, Lcom/android/internal/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v1

    .line 201
    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v2

    iput v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 203
    .end local v2    # "remaining":I
    :cond_55
    :goto_55
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v2, :cond_60

    .line 205
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 207
    :cond_60
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    iget-object v2, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    invoke-interface {v2, p5}, Lcom/android/internal/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 210
    :goto_68
    if-eqz v0, :cond_6d

    .line 211
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    :cond_6d
    if-eqz v1, :cond_72

    .line 214
    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 216
    :cond_72
    return-void
.end method
