.class final Ljava/util/ArrayPrefixHelpers$CumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CumulateTask"
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
.field private static final whitelist serialVersionUID:J = 0x49767bc622e29967L


# instance fields
.field final blacklist array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final blacklist fence:I

.field final blacklist function:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final blacklist hi:I

.field blacklist in:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist left:Ljava/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final blacklist lo:I

.field final blacklist origin:I

.field blacklist out:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist right:Ljava/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final blacklist threshold:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V
    .registers 9
    .param p4, "lo"    # I
    .param p5, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;[TT;II)V"
        }
    .end annotation

    .line 121
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p1, "parent":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p2, "function":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 122
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .line 123
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    .line 125
    nop

    .line 127
    sub-int v0, p5, p4

    .line 126
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    move v1, v0

    .local v1, "p":I
    const/16 v2, 0x10

    if-gt v0, v2, :cond_1f

    .line 127
    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    iput v2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .line 128
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V
    .registers 9
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;[TT;IIIII)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p1, "parent":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p2, "function":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 135
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .line 136
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    .line 137
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .line 138
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    .line 139
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 21

    .line 144
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    move-object v4, v1

    .local v4, "fn":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    if-eqz v1, :cond_18c

    iget-object v5, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    move-object v1, v5

    .local v5, "a":[Ljava/lang/Object;, "[TT;"
    if-eqz v1, :cond_18c

    .line 146
    iget v8, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .local v8, "th":I
    iget v6, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    .local v6, "org":I
    iget v7, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    .line 147
    .local v7, "fnc":I
    move-object/from16 v1, p0

    move-object v3, v1

    .line 148
    .local v3, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_15
    iget v9, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    move v1, v9

    .local v1, "l":I
    if-ltz v9, :cond_18a

    iget v10, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    move v2, v10

    .local v2, "h":I
    array-length v9, v5

    if-gt v10, v9, :cond_187

    .line 149
    sub-int v9, v2, v1

    const/4 v10, 0x1

    if-le v9, v8, :cond_9e

    .line 150
    iget-object v11, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .local v11, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget-object v12, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .line 151
    .local v12, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v11, :cond_46

    .line 152
    add-int v9, v1, v2

    ushr-int/2addr v9, v10

    .line 153
    .local v9, "mid":I
    move v10, v2

    .end local v2    # "h":I
    .local v10, "h":I
    new-instance v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    move v13, v10

    .end local v10    # "h":I
    .local v13, "h":I
    iput-object v2, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object v12, v2

    move-object v14, v2

    .line 155
    .local v14, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    new-instance v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move v10, v9

    move v9, v1

    .end local v1    # "l":I
    .local v9, "l":I
    .local v10, "mid":I
    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v2, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object v11, v2

    .line 157
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v10    # "mid":I
    .local v2, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v3, v2

    goto/16 :goto_97

    .line 159
    .end local v9    # "l":I
    .end local v13    # "h":I
    .end local v14    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v1    # "l":I
    .local v2, "h":I
    .restart local v3    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_46
    move v9, v1

    move v13, v2

    .end local v1    # "l":I
    .end local v2    # "h":I
    .restart local v9    # "l":I
    .restart local v13    # "h":I
    iget-object v1, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 160
    .local v1, "pin":Ljava/lang/Object;, "TT;"
    iput-object v1, v11, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 161
    const/4 v2, 0x0

    move-object v3, v2

    .line 162
    .local v2, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v12, :cond_79

    .line 163
    iget-object v14, v11, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 164
    .local v14, "lout":Ljava/lang/Object;, "TT;"
    if-ne v9, v6, :cond_56

    move-object v15, v14

    goto :goto_5a

    .line 165
    :cond_56
    invoke-interface {v4, v1, v14}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    :goto_5a
    iput-object v15, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 167
    :goto_5c
    invoke-virtual {v12}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v15

    move/from16 v16, v15

    .local v16, "c":I
    and-int/2addr v15, v10

    if-eqz v15, :cond_68

    .line 168
    move/from16 v17, v10

    goto :goto_7b

    .line 169
    :cond_68
    or-int/lit8 v15, v16, 0x1

    move/from16 v17, v10

    move/from16 v10, v16

    .end local v16    # "c":I
    .local v10, "c":I
    invoke-virtual {v12, v10, v15}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v15

    if-eqz v15, :cond_76

    .line 170
    move-object v3, v12

    .line 171
    goto :goto_7b

    .line 169
    :cond_76
    move/from16 v10, v17

    goto :goto_5c

    .line 162
    .end local v10    # "c":I
    .end local v14    # "lout":Ljava/lang/Object;, "TT;"
    :cond_79
    move/from16 v17, v10

    .line 176
    :cond_7b
    :goto_7b
    invoke-virtual {v11}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v10

    move v14, v10

    .local v14, "c":I
    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_86

    .line 177
    move-object v14, v2

    goto :goto_93

    .line 178
    :cond_86
    or-int/lit8 v10, v14, 0x1

    invoke-virtual {v11, v14, v10}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 179
    if-eqz v3, :cond_91

    .line 180
    move-object v2, v3

    .line 181
    :cond_91
    move-object v3, v11

    .line 182
    move-object v14, v2

    .line 185
    .end local v2    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v14, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_93
    if-nez v3, :cond_97

    .line 186
    goto/16 :goto_18b

    .line 188
    .end local v1    # "pin":Ljava/lang/Object;, "TT;"
    :cond_97
    :goto_97
    if-eqz v14, :cond_9c

    .line 189
    invoke-virtual {v14}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 190
    .end local v11    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v12    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v14    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_9c
    goto/16 :goto_15

    .line 149
    .end local v9    # "l":I
    .end local v13    # "h":I
    .local v1, "l":I
    .local v2, "h":I
    :cond_9e
    move v9, v1

    move v13, v2

    move/from16 v17, v10

    .line 194
    .end local v1    # "l":I
    .end local v2    # "h":I
    .restart local v9    # "l":I
    .restart local v13    # "h":I
    :goto_a2
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    const/4 v10, 0x4

    and-int/2addr v1, v10

    if-eqz v1, :cond_ad

    .line 195
    goto/16 :goto_18b

    .line 196
    :cond_ad
    and-int/lit8 v1, v2, 0x1

    const/4 v11, 0x2

    if-eqz v1, :cond_b4

    move v1, v10

    goto :goto_b9

    .line 197
    :cond_b4
    if-le v9, v6, :cond_b8

    move v1, v11

    goto :goto_b9

    :cond_b8
    const/4 v1, 0x6

    :goto_b9
    nop

    .line 198
    .local v1, "state":I
    or-int v12, v2, v1

    invoke-virtual {v3, v2, v12}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v12

    if-eqz v12, :cond_183

    .line 199
    nop

    .line 203
    .end local v2    # "b":I
    if-eq v1, v11, :cond_e0

    .line 205
    if-ne v9, v6, :cond_cc

    .line 206
    aget-object v2, v5, v6

    .line 207
    .local v2, "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v12, v6, 0x1

    .local v12, "first":I
    goto :goto_cf

    .line 210
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    .end local v12    # "first":I
    :cond_cc
    iget-object v2, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 211
    .restart local v2    # "sum":Ljava/lang/Object;, "TT;"
    move v12, v9

    .line 213
    .restart local v12    # "first":I
    :goto_cf
    move v14, v12

    .local v14, "i":I
    :goto_d0
    if-ge v14, v13, :cond_de

    .line 214
    aget-object v15, v5, v14

    invoke-interface {v4, v2, v15}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v2, v15

    aput-object v15, v5, v14

    .line 213
    add-int/lit8 v14, v14, 0x1

    goto :goto_d0

    .line 215
    .end local v12    # "first":I
    .end local v14    # "i":I
    :cond_de
    move-object v12, v2

    goto :goto_f6

    .line 216
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    :cond_e0
    if-ge v13, v7, :cond_f3

    .line 217
    aget-object v2, v5, v9

    .line 218
    .restart local v2    # "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v12, v9, 0x1

    .local v12, "i":I
    :goto_e6
    if-ge v12, v13, :cond_f1

    .line 219
    aget-object v14, v5, v12

    invoke-interface {v4, v2, v14}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 218
    add-int/lit8 v12, v12, 0x1

    goto :goto_e6

    :cond_f1
    move-object v12, v2

    .end local v12    # "i":I
    goto :goto_f6

    .line 222
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    :cond_f3
    iget-object v2, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move-object v12, v2

    .line 223
    .local v12, "sum":Ljava/lang/Object;, "TT;"
    :goto_f6
    iput-object v12, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 225
    :goto_f8
    nop

    .line 226
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .line 227
    .local v2, "partmp":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v14, v2

    .local v14, "par":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v2, :cond_10b

    .line 228
    and-int/lit8 v10, v1, 0x4

    if-eqz v10, :cond_18b

    .line 229
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->quietlyComplete()V

    goto/16 :goto_18b

    .line 232
    :cond_10b
    invoke-virtual {v14}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v15

    .line 233
    .local v15, "b":I
    and-int v16, v15, v1

    and-int/lit8 v16, v16, 0x4

    if-eqz v16, :cond_118

    .line 234
    move-object v3, v14

    goto/16 :goto_17d

    .line 235
    :cond_118
    and-int v16, v15, v1

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_170

    .line 237
    iget-object v10, v14, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v18, v10

    .local v18, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v10, :cond_148

    iget-object v10, v14, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v19, v10

    .local v19, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v10, :cond_141

    .line 239
    move-object/from16 v10, v18

    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v10, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget-object v11, v10, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 240
    .local v11, "lout":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, v19

    move/from16 v19, v1

    .end local v1    # "state":I
    .local v0, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v19, "state":I
    iget v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    if-ne v1, v7, :cond_138

    move-object v1, v11

    goto :goto_13e

    .line 241
    :cond_138
    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    invoke-interface {v4, v11, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_13e
    iput-object v1, v14, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    goto :goto_14c

    .line 237
    .end local v0    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v10    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v11    # "lout":Ljava/lang/Object;, "TT;"
    .restart local v1    # "state":I
    .restart local v18    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v19, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_141
    move-object/from16 v10, v18

    move-object/from16 v0, v19

    move/from16 v19, v1

    .end local v1    # "state":I
    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v0    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v10    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v19, "state":I
    goto :goto_14c

    .end local v0    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v10    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v19    # "state":I
    .restart local v1    # "state":I
    .restart local v18    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_148
    move/from16 v19, v1

    move-object/from16 v10, v18

    .line 243
    .end local v1    # "state":I
    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v10    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v19    # "state":I
    :goto_14c
    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_157

    iget v0, v14, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ne v0, v6, :cond_157

    .line 244
    move/from16 v0, v17

    goto :goto_158

    :cond_157
    const/4 v0, 0x0

    .line 245
    .local v0, "refork":I
    :goto_158
    or-int v1, v15, v19

    or-int/2addr v1, v0

    move v11, v1

    .local v11, "nextState":I
    if-eq v1, v15, :cond_168

    .line 246
    invoke-virtual {v14, v15, v11}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_165

    goto :goto_168

    :cond_165
    move/from16 v1, v19

    goto :goto_16f

    .line 247
    :cond_168
    :goto_168
    const/4 v1, 0x2

    .line 248
    .end local v19    # "state":I
    .restart local v1    # "state":I
    move-object v3, v14

    .line 249
    if-eqz v0, :cond_16f

    .line 250
    invoke-virtual {v14}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 252
    .end local v0    # "refork":I
    .end local v10    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v11    # "nextState":I
    :cond_16f
    :goto_16f
    goto :goto_17d

    .line 253
    :cond_170
    move/from16 v19, v1

    .end local v1    # "state":I
    .restart local v19    # "state":I
    or-int v0, v15, v19

    invoke-virtual {v14, v15, v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 254
    goto :goto_18b

    .line 253
    :cond_17b
    move/from16 v1, v19

    .line 255
    .end local v2    # "partmp":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v15    # "b":I
    .end local v19    # "state":I
    .restart local v1    # "state":I
    :goto_17d
    const/4 v10, 0x4

    const/4 v11, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_f8

    .line 198
    .end local v12    # "sum":Ljava/lang/Object;, "TT;"
    .end local v14    # "par":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v2, "b":I
    :cond_183
    move-object/from16 v0, p0

    goto/16 :goto_a2

    .line 148
    .end local v9    # "l":I
    .end local v13    # "h":I
    .local v1, "l":I
    .local v2, "h":I
    :cond_187
    move v9, v1

    move v13, v2

    .end local v1    # "l":I
    .end local v2    # "h":I
    .restart local v9    # "l":I
    .restart local v13    # "h":I
    goto :goto_18b

    .end local v9    # "l":I
    .end local v13    # "h":I
    .restart local v1    # "l":I
    :cond_18a
    move v9, v1

    .line 258
    .end local v1    # "l":I
    .restart local v9    # "l":I
    :cond_18b
    :goto_18b
    return-void

    .line 145
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v5    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v6    # "org":I
    .end local v7    # "fnc":I
    .end local v8    # "th":I
    .end local v9    # "l":I
    :cond_18c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
