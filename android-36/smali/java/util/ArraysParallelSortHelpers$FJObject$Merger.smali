.class final Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final blacklist a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final blacklist gran:I

.field final blacklist lbase:I

.field final blacklist lsize:I

.field final blacklist rbase:I

.field final blacklist rsize:I

.field final blacklist w:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final blacklist wbase:I


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V
    .registers 11
    .param p4, "lbase"    # I
    .param p5, "lsize"    # I
    .param p6, "rbase"    # I
    .param p7, "rsize"    # I
    .param p8, "wbase"    # I
    .param p9, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;[TT;[TT;IIIIII",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "w":[Ljava/lang/Object;, "[TT;"
    .local p10, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 168
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->a:[Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->w:[Ljava/lang/Object;

    .line 169
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lsize:I

    .line 170
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rsize:I

    .line 171
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->gran:I

    .line 172
    iput-object p10, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->comparator:Ljava/util/Comparator;

    .line 173
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 21

    .line 176
    .local p0, "this":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move-object/from16 v1, p0

    iget-object v10, v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->comparator:Ljava/util/Comparator;

    .line 177
    .local v10, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget-object v2, v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->a:[Ljava/lang/Object;

    .local v2, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v3, v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->w:[Ljava/lang/Object;

    .line 178
    .local v3, "w":[Ljava/lang/Object;, "[TT;"
    iget v11, v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lbase:I

    .local v11, "lb":I
    iget v0, v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lsize:I

    .local v0, "ln":I
    iget v12, v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rbase:I

    .line 179
    .local v12, "rb":I
    iget v4, v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rsize:I

    .local v4, "rn":I
    iget v13, v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->wbase:I

    .local v13, "k":I
    iget v9, v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->gran:I

    .line 180
    .local v9, "g":I
    if-eqz v2, :cond_cf

    if-eqz v3, :cond_cf

    if-ltz v11, :cond_cf

    if-ltz v12, :cond_cf

    if-ltz v13, :cond_cf

    if-eqz v10, :cond_cf

    move v14, v0

    move v15, v4

    .line 184
    .end local v0    # "ln":I
    .end local v4    # "rn":I
    .local v14, "ln":I
    .local v15, "rn":I
    :goto_22
    const/4 v0, 0x1

    if-lt v14, v15, :cond_52

    .line 185
    if-gt v14, v9, :cond_28

    .line 186
    goto :goto_57

    .line 187
    :cond_28
    move v4, v15

    .line 188
    .local v4, "rh":I
    ushr-int/lit8 v5, v14, 0x1

    move v6, v5

    .local v6, "lh":I
    add-int/2addr v5, v11

    aget-object v5, v2, v5

    .line 189
    .local v5, "split":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .local v7, "lo":I
    :goto_30
    if-ge v7, v4, :cond_4a

    .line 190
    add-int v8, v7, v4

    ushr-int/2addr v8, v0

    .line 191
    .local v8, "rm":I
    add-int v16, v8, v12

    move/from16 v17, v0

    aget-object v0, v2, v16

    invoke-interface {v10, v5, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_44

    .line 192
    move v0, v8

    move v4, v0

    .end local v4    # "rh":I
    .local v0, "rh":I
    goto :goto_47

    .line 194
    .end local v0    # "rh":I
    .restart local v4    # "rh":I
    :cond_44
    add-int/lit8 v0, v8, 0x1

    move v7, v0

    .line 195
    .end local v8    # "rm":I
    :goto_47
    move/from16 v0, v17

    goto :goto_30

    .line 189
    :cond_4a
    move/from16 v17, v0

    .line 196
    .end local v5    # "split":Ljava/lang/Object;, "TT;"
    .end local v7    # "lo":I
    move/from16 v16, v4

    move/from16 v18, v6

    goto/16 :goto_ac

    .line 198
    .end local v4    # "rh":I
    .end local v6    # "lh":I
    :cond_52
    move/from16 v17, v0

    if-gt v15, v9, :cond_8b

    .line 199
    nop

    .line 219
    :goto_57
    add-int v0, v11, v14

    .local v0, "lf":I
    add-int v4, v12, v15

    .line 220
    .local v4, "rf":I
    :goto_5b
    if-ge v11, v0, :cond_78

    if-ge v12, v4, :cond_78

    .line 222
    aget-object v5, v2, v11

    move-object v6, v5

    .local v6, "al":Ljava/lang/Object;, "TT;"
    aget-object v7, v2, v12

    move-object v8, v7

    .local v8, "ar":Ljava/lang/Object;, "TT;"
    invoke-interface {v10, v5, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6f

    .line 223
    add-int/lit8 v11, v11, 0x1

    move-object v5, v6

    .local v5, "t":Ljava/lang/Object;, "TT;"
    goto :goto_72

    .line 226
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    :cond_6f
    add-int/lit8 v12, v12, 0x1

    move-object v5, v8

    .line 228
    .restart local v5    # "t":Ljava/lang/Object;, "TT;"
    :goto_72
    add-int/lit8 v7, v13, 0x1

    .end local v13    # "k":I
    .local v7, "k":I
    aput-object v5, v3, v13

    .line 229
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    .end local v6    # "al":Ljava/lang/Object;, "TT;"
    .end local v8    # "ar":Ljava/lang/Object;, "TT;"
    move v13, v7

    goto :goto_5b

    .line 230
    .end local v7    # "k":I
    .restart local v13    # "k":I
    :cond_78
    if-ge v12, v4, :cond_80

    .line 231
    sub-int v5, v4, v12

    invoke-static {v2, v12, v3, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_87

    .line 232
    :cond_80
    if-ge v11, v0, :cond_87

    .line 233
    sub-int v5, v0, v11

    invoke-static {v2, v11, v3, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    :cond_87
    :goto_87
    invoke-virtual {v1}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->tryComplete()V

    .line 236
    return-void

    .line 200
    .end local v0    # "lf":I
    .end local v4    # "rf":I
    :cond_8b
    move v0, v14

    .line 201
    .local v0, "lh":I
    ushr-int/lit8 v4, v15, 0x1

    move v5, v4

    .local v5, "rh":I
    add-int/2addr v4, v12

    aget-object v4, v2, v4

    .line 202
    .local v4, "split":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .local v6, "lo":I
    :goto_93
    if-ge v6, v0, :cond_a8

    .line 203
    add-int v7, v6, v0

    ushr-int/lit8 v7, v7, 0x1

    .line 204
    .local v7, "lm":I
    add-int v8, v7, v11

    aget-object v8, v2, v8

    invoke-interface {v10, v4, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-gtz v8, :cond_a5

    .line 205
    move v0, v7

    goto :goto_a7

    .line 207
    :cond_a5
    add-int/lit8 v6, v7, 0x1

    .line 208
    .end local v7    # "lm":I
    :goto_a7
    goto :goto_93

    .line 202
    :cond_a8
    move/from16 v18, v0

    move/from16 v16, v5

    .line 210
    .end local v0    # "lh":I
    .end local v4    # "split":Ljava/lang/Object;, "TT;"
    .end local v5    # "rh":I
    .end local v6    # "lo":I
    .local v16, "rh":I
    .local v18, "lh":I
    :goto_ac
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v4, v11, v18

    sub-int v5, v14, v18

    add-int v6, v12, v16

    sub-int v7, v15, v16

    add-int v8, v13, v18

    add-int v8, v8, v16

    move/from16 v19, v11

    move/from16 v11, v17

    .end local v11    # "lb":I
    .local v19, "lb":I
    invoke-direct/range {v0 .. v10}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    .line 213
    .local v0, "m":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move/from16 v15, v16

    .line 214
    move/from16 v14, v18

    .line 215
    invoke-virtual {v1, v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->addToPendingCount(I)V

    .line 216
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 217
    .end local v0    # "m":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move/from16 v11, v19

    goto/16 :goto_22

    .line 180
    .end local v14    # "ln":I
    .end local v15    # "rn":I
    .end local v16    # "rh":I
    .end local v18    # "lh":I
    .end local v19    # "lb":I
    .local v0, "ln":I
    .local v4, "rn":I
    .restart local v11    # "lb":I
    :cond_cf
    move/from16 v19, v11

    .line 182
    .end local v11    # "lb":I
    .restart local v19    # "lb":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5
.end method
