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
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x49767bc622e29967L


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final fence:I

.field final function:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final hi:I

.field in:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field left:Ljava/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayPrefixHelpers$CumulateTask",
            "<TT;>;"
        }
    .end annotation
.end field

.field final lo:I

.field final origin:I

.field out:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field right:Ljava/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayPrefixHelpers$CumulateTask",
            "<TT;>;"
        }
    .end annotation
.end field

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V
    .locals 4
    .param p4, "lo"    # I
    .param p5, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayPrefixHelpers$CumulateTask",
            "<TT;>;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;[TT;II)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p1, "parent":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p2, "function":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v1, 0x10

    #@2
    .line 87
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@5
    .line 88
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    #@7
    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    #@9
    .line 89
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    #@b
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    #@d
    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    #@f
    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    #@11
    .line 92
    sub-int v2, p5, p4

    #@13
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@16
    move-result v3

    #@17
    shl-int/lit8 v3, v3, 0x3

    #@19
    div-int v0, v2, v3

    #@1b
    .local v0, "p":I
    if-gt v0, v1, :cond_0

    #@1d
    move v0, v1

    #@1e
    .line 91
    .end local v0    # "p":I
    :cond_0
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    #@20
    .line 86
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V
    .locals 0
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayPrefixHelpers$CumulateTask",
            "<TT;>;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;[TT;IIIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p1, "parent":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p2, "function":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 101
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    #@5
    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    #@7
    .line 102
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    #@9
    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    #@b
    .line 103
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    #@d
    .line 104
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    #@f
    iput p8, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    #@11
    .line 99
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 34

    #@0
    .prologue
    .line 110
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    #@4
    .local v5, "fn":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    if-eqz v5, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    #@a
    .local v6, "a":[Ljava/lang/Object;, "[TT;"
    if-nez v6, :cond_1

    #@c
    .line 111
    .end local v6    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    new-instance v13, Ljava/lang/NullPointerException;

    #@e
    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    #@11
    throw v13

    #@12
    .line 112
    .restart local v6    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_1
    move-object/from16 v0, p0

    #@14
    iget v9, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    #@16
    .local v9, "th":I
    move-object/from16 v0, p0

    #@18
    iget v7, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    #@1a
    .local v7, "org":I
    move-object/from16 v0, p0

    #@1c
    iget v8, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    #@1e
    .line 113
    .local v8, "fnc":I
    move-object/from16 v4, p0

    #@20
    .line 114
    :cond_2
    :goto_0
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    #@22
    move/from16 v19, v0

    #@24
    .local v19, "l":I
    if-ltz v19, :cond_7

    #@26
    iget v11, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    #@28
    .local v11, "h":I
    array-length v13, v6

    #@29
    if-gt v11, v13, :cond_7

    #@2b
    .line 115
    sub-int v13, v11, v19

    #@2d
    if-le v13, v9, :cond_c

    #@2f
    .line 116
    iget-object v12, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@31
    .local v12, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget-object v3, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@33
    .line 117
    .local v3, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v12, :cond_4

    #@35
    .line 118
    add-int v13, v19, v11

    #@37
    ushr-int/lit8 v10, v13, 0x1

    #@39
    .line 120
    .local v10, "mid":I
    new-instance v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@3b
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    invoke-direct/range {v3 .. v11}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    #@3e
    .line 119
    iput-object v3, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@40
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v23, v3

    #@42
    .line 122
    .local v23, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    new-instance v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@44
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v13, v4

    #@45
    move-object v14, v5

    #@46
    move-object v15, v6

    #@47
    move/from16 v16, v7

    #@49
    move/from16 v17, v8

    #@4b
    move/from16 v18, v9

    #@4d
    move/from16 v20, v10

    #@4f
    invoke-direct/range {v12 .. v20}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    #@52
    .line 121
    iput-object v12, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@54
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v4, v12

    #@55
    .line 154
    .end local v10    # "mid":I
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_3
    if-eqz v23, :cond_2

    #@57
    .line 155
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@5a
    goto :goto_0

    #@5b
    .line 125
    :cond_4
    iget-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    #@5d
    move-object/from16 v30, v0

    #@5f
    .line 126
    .local v30, "pin":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, v30

    #@61
    iput-object v0, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    #@63
    .line 127
    const/4 v4, 0x0

    #@64
    .local v4, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    const/16 v23, 0x0

    #@66
    .line 128
    .local v23, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v3, :cond_6

    #@68
    .line 129
    iget-object v0, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    #@6a
    move-object/from16 v26, v0

    #@6c
    .line 130
    .local v26, "lout":Ljava/lang/Object;, "TT;"
    move/from16 v0, v19

    #@6e
    if-ne v0, v7, :cond_8

    #@70
    .end local v26    # "lout":Ljava/lang/Object;, "TT;"
    :goto_1
    move-object/from16 v0, v26

    #@72
    iput-object v0, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    #@74
    .line 133
    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@77
    move-result v22

    #@78
    .local v22, "c":I
    and-int/lit8 v13, v22, 0x1

    #@7a
    if-eqz v13, :cond_9

    #@7c
    .line 142
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v22    # "c":I
    :cond_6
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@7f
    move-result v22

    #@80
    .restart local v22    # "c":I
    and-int/lit8 v13, v22, 0x1

    #@82
    if-eqz v13, :cond_a

    #@84
    .line 151
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_3
    if-nez v4, :cond_3

    #@86
    .line 107
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v11    # "h":I
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v22    # "c":I
    .end local v30    # "pin":Ljava/lang/Object;, "TT;"
    :cond_7
    :goto_4
    return-void

    #@87
    .line 131
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v11    # "h":I
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v23    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v26    # "lout":Ljava/lang/Object;, "TT;"
    .restart local v30    # "pin":Ljava/lang/Object;, "TT;"
    :cond_8
    move-object/from16 v0, v30

    #@89
    move-object/from16 v1, v26

    #@8b
    invoke-interface {v5, v0, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    move-result-object v26

    #@8f
    goto :goto_1

    #@90
    .line 135
    .end local v26    # "lout":Ljava/lang/Object;, "TT;"
    .restart local v22    # "c":I
    :cond_9
    or-int/lit8 v13, v22, 0x1

    #@92
    move/from16 v0, v22

    #@94
    invoke-virtual {v3, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@97
    move-result v13

    #@98
    if-eqz v13, :cond_5

    #@9a
    .line 136
    move-object v4, v3

    #@9b
    .line 137
    .local v4, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    goto :goto_2

    #@9c
    .line 144
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_a
    or-int/lit8 v13, v22, 0x1

    #@9e
    move/from16 v0, v22

    #@a0
    invoke-virtual {v12, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@a3
    move-result v13

    #@a4
    if-eqz v13, :cond_6

    #@a6
    .line 145
    if-eqz v4, :cond_b

    #@a8
    .line 146
    move-object/from16 v23, v4

    #@aa
    .line 147
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_b
    move-object v4, v12

    #@ab
    .line 148
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    goto :goto_3

    #@ac
    .line 160
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v22    # "c":I
    .end local v30    # "pin":Ljava/lang/Object;, "TT;"
    :cond_c
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@af
    move-result v21

    #@b0
    .local v21, "b":I
    and-int/lit8 v13, v21, 0x4

    #@b2
    if-nez v13, :cond_7

    #@b4
    .line 162
    and-int/lit8 v13, v21, 0x1

    #@b6
    if-eqz v13, :cond_d

    #@b8
    const/16 v32, 0x4

    #@ba
    .line 164
    .local v32, "state":I
    :goto_5
    or-int v13, v21, v32

    #@bc
    move/from16 v0, v21

    #@be
    invoke-virtual {v4, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@c1
    move-result v13

    #@c2
    if-eqz v13, :cond_c

    #@c4
    .line 169
    const/4 v13, 0x2

    #@c5
    move/from16 v0, v32

    #@c7
    if-eq v0, v13, :cond_10

    #@c9
    .line 171
    move/from16 v0, v19

    #@cb
    if-ne v0, v7, :cond_f

    #@cd
    .line 172
    aget-object v33, v6, v7

    #@cf
    .line 173
    .local v33, "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v24, v7, 0x1

    #@d1
    .line 179
    .local v24, "first":I
    :goto_6
    move/from16 v25, v24

    #@d3
    .local v25, "i":I
    :goto_7
    move/from16 v0, v25

    #@d5
    if-ge v0, v11, :cond_12

    #@d7
    .line 180
    aget-object v13, v6, v25

    #@d9
    move-object/from16 v0, v33

    #@db
    invoke-interface {v5, v0, v13}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@de
    move-result-object v33

    #@df
    aput-object v33, v6, v25

    #@e1
    .line 179
    add-int/lit8 v25, v25, 0x1

    #@e3
    goto :goto_7

    #@e4
    .line 163
    .end local v24    # "first":I
    .end local v25    # "i":I
    .end local v32    # "state":I
    .end local v33    # "sum":Ljava/lang/Object;, "TT;"
    :cond_d
    move/from16 v0, v19

    #@e6
    if-le v0, v7, :cond_e

    #@e8
    const/16 v32, 0x2

    #@ea
    goto :goto_5

    #@eb
    :cond_e
    const/16 v32, 0x6

    #@ed
    goto :goto_5

    #@ee
    .line 176
    .restart local v32    # "state":I
    :cond_f
    iget-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    #@f0
    move-object/from16 v33, v0

    #@f2
    .line 177
    .restart local v33    # "sum":Ljava/lang/Object;, "TT;"
    move/from16 v24, v19

    #@f4
    .restart local v24    # "first":I
    goto :goto_6

    #@f5
    .line 182
    .end local v24    # "first":I
    .end local v33    # "sum":Ljava/lang/Object;, "TT;"
    :cond_10
    if-ge v11, v8, :cond_11

    #@f7
    .line 183
    aget-object v33, v6, v19

    #@f9
    .line 184
    .restart local v33    # "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v25, v19, 0x1

    #@fb
    .restart local v25    # "i":I
    :goto_8
    move/from16 v0, v25

    #@fd
    if-ge v0, v11, :cond_12

    #@ff
    .line 185
    aget-object v13, v6, v25

    #@101
    move-object/from16 v0, v33

    #@103
    invoke-interface {v5, v0, v13}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@106
    move-result-object v33

    #@107
    .line 184
    add-int/lit8 v25, v25, 0x1

    #@109
    goto :goto_8

    #@10a
    .line 188
    .end local v25    # "i":I
    .end local v33    # "sum":Ljava/lang/Object;, "TT;"
    :cond_11
    iget-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    #@10c
    move-object/from16 v33, v0

    #@10e
    .line 189
    .restart local v33    # "sum":Ljava/lang/Object;, "TT;"
    :cond_12
    move-object/from16 v0, v33

    #@110
    iput-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    #@112
    .line 192
    :cond_13
    :goto_9
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    #@115
    move-result-object v29

    #@116
    check-cast v29, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@118
    .line 193
    .local v29, "partmp":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v28, v29

    #@11a
    .local v28, "par":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v29, :cond_14

    #@11c
    .line 194
    and-int/lit8 v13, v32, 0x4

    #@11e
    if-eqz v13, :cond_7

    #@120
    .line 195
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    #@123
    goto/16 :goto_4

    #@125
    .line 198
    :cond_14
    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@128
    move-result v21

    #@129
    .line 199
    and-int v13, v21, v32

    #@12b
    and-int/lit8 v13, v13, 0x4

    #@12d
    if-eqz v13, :cond_15

    #@12f
    .line 200
    move-object/from16 v4, v29

    #@131
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    goto :goto_9

    #@132
    .line 201
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_15
    and-int v13, v21, v32

    #@134
    and-int/lit8 v13, v13, 0x2

    #@136
    if-eqz v13, :cond_1a

    #@138
    .line 203
    move-object/from16 v0, v29

    #@13a
    iget-object v12, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@13c
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v12, :cond_16

    #@13e
    .line 204
    move-object/from16 v0, v29

    #@140
    iget-object v3, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@142
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v3, :cond_16

    #@144
    .line 205
    iget-object v0, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    #@146
    move-object/from16 v26, v0

    #@148
    .line 206
    .restart local v26    # "lout":Ljava/lang/Object;, "TT;"
    iget v13, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    #@14a
    if-ne v13, v8, :cond_18

    #@14c
    .end local v26    # "lout":Ljava/lang/Object;, "TT;"
    :goto_a
    move-object/from16 v0, v26

    #@14e
    move-object/from16 v1, v29

    #@150
    iput-object v0, v1, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    #@152
    .line 209
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_16
    and-int/lit8 v13, v21, 0x1

    #@154
    if-nez v13, :cond_19

    #@156
    .line 210
    move-object/from16 v0, v29

    #@158
    iget v13, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    #@15a
    if-ne v13, v7, :cond_19

    #@15c
    const/16 v31, 0x1

    #@15e
    .line 211
    .local v31, "refork":I
    :goto_b
    or-int v13, v21, v32

    #@160
    or-int v27, v13, v31

    #@162
    .local v27, "nextState":I
    move/from16 v0, v27

    #@164
    move/from16 v1, v21

    #@166
    if-eq v0, v1, :cond_17

    #@168
    .line 212
    move-object/from16 v0, v29

    #@16a
    move/from16 v1, v21

    #@16c
    move/from16 v2, v27

    #@16e
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@171
    move-result v13

    #@172
    .line 211
    if-eqz v13, :cond_13

    #@174
    .line 213
    :cond_17
    const/16 v32, 0x2

    #@176
    .line 214
    move-object/from16 v4, v29

    #@178
    .line 215
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v31, :cond_13

    #@17a
    .line 216
    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@17d
    goto :goto_9

    #@17e
    .line 207
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v27    # "nextState":I
    .end local v31    # "refork":I
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v26    # "lout":Ljava/lang/Object;, "TT;"
    :cond_18
    iget-object v13, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    #@180
    move-object/from16 v0, v26

    #@182
    invoke-interface {v5, v0, v13}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@185
    move-result-object v26

    #@186
    goto :goto_a

    #@187
    .line 210
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v26    # "lout":Ljava/lang/Object;, "TT;"
    :cond_19
    const/16 v31, 0x0

    #@189
    goto :goto_b

    #@18a
    .line 219
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_1a
    or-int v13, v21, v32

    #@18c
    move-object/from16 v0, v29

    #@18e
    move/from16 v1, v21

    #@190
    invoke-virtual {v0, v1, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@193
    move-result v13

    #@194
    if-eqz v13, :cond_13

    #@196
    goto/16 :goto_4
.end method
