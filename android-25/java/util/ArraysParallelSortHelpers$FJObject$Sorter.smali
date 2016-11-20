.class final Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sorter"
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
.field static final serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final base:I

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final gran:I

.field final size:I

.field final w:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V
    .locals 0
    .param p4, "base"    # I
    .param p5, "size"    # I
    .param p6, "wbase"    # I
    .param p7, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[TT;[TT;IIII",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 121
    .local p0, "this":Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter<TT;>;"
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "w":[Ljava/lang/Object;, "[TT;"
    .local p8, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 122
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->a:[Ljava/lang/Object;

    #@5
    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->w:[Ljava/lang/Object;

    #@7
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->base:I

    #@9
    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->size:I

    #@b
    .line 123
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->wbase:I

    #@d
    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->gran:I

    #@f
    .line 124
    iput-object p8, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->comparator:Ljava/util/Comparator;

    #@11
    .line 120
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 30

    #@0
    .prologue
    .line 127
    .local p0, "this":Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter<TT;>;"
    move-object/from16 v2, p0

    #@2
    .line 128
    .local v2, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    #@4
    iget-object v11, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->comparator:Ljava/util/Comparator;

    #@6
    .line 129
    .local v11, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->a:[Ljava/lang/Object;

    #@a
    .local v4, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    #@c
    iget-object v3, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->w:[Ljava/lang/Object;

    #@e
    .line 130
    .local v3, "w":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    #@10
    iget v9, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->base:I

    #@12
    .local v9, "b":I
    move-object/from16 v0, p0

    #@14
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->size:I

    #@16
    move/from16 v24, v0

    #@18
    .local v24, "n":I
    move-object/from16 v0, p0

    #@1a
    iget v5, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->wbase:I

    #@1c
    .local v5, "wb":I
    move-object/from16 v0, p0

    #@1e
    iget v10, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->gran:I

    #@20
    .line 131
    .local v10, "g":I
    :goto_0
    move/from16 v0, v24

    #@22
    if-le v0, v10, :cond_0

    #@24
    .line 132
    ushr-int/lit8 v6, v24, 0x1

    #@26
    .local v6, "h":I
    ushr-int/lit8 v17, v6, 0x1

    #@28
    .local v17, "q":I
    add-int v29, v6, v17

    #@2a
    .line 133
    .local v29, "u":I
    new-instance v13, Ljava/util/ArraysParallelSortHelpers$Relay;

    #@2c
    new-instance v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    #@2e
    .line 134
    add-int v7, v5, v6

    #@30
    sub-int v8, v24, v6

    #@32
    .line 133
    invoke-direct/range {v1 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    #@35
    invoke-direct {v13, v1}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@38
    .line 135
    .local v13, "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v28, Ljava/util/ArraysParallelSortHelpers$Relay;

    #@3a
    new-instance v12, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    #@3c
    add-int v16, v9, v6

    #@3e
    .line 136
    add-int v18, v9, v29

    #@40
    sub-int v19, v24, v29

    #@42
    add-int v20, v5, v6

    #@44
    move-object v14, v4

    #@45
    move-object v15, v3

    #@46
    move/from16 v21, v10

    #@48
    move-object/from16 v22, v11

    #@4a
    .line 135
    invoke-direct/range {v12 .. v22}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    #@4d
    move-object/from16 v0, v28

    #@4f
    invoke-direct {v0, v12}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@52
    .line 137
    .local v28, "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v18, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    #@54
    add-int v22, v9, v29

    #@56
    sub-int v23, v24, v29

    #@58
    add-int v24, v5, v29

    #@5a
    move-object/from16 v19, v28

    #@5c
    move-object/from16 v20, v4

    #@5e
    move-object/from16 v21, v3

    #@60
    move/from16 v25, v10

    #@62
    move-object/from16 v26, v11

    #@64
    invoke-direct/range {v18 .. v26}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    #@67
    .end local v24    # "n":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@6a
    .line 138
    new-instance v18, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    #@6c
    add-int v22, v9, v6

    #@6e
    add-int v24, v5, v6

    #@70
    move-object/from16 v19, v28

    #@72
    move-object/from16 v20, v4

    #@74
    move-object/from16 v21, v3

    #@76
    move/from16 v23, v17

    #@78
    move/from16 v25, v10

    #@7a
    move-object/from16 v26, v11

    #@7c
    invoke-direct/range {v18 .. v26}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    #@7f
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@82
    .line 139
    new-instance v27, Ljava/util/ArraysParallelSortHelpers$Relay;

    #@84
    new-instance v12, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    #@86
    .line 140
    add-int v18, v9, v17

    #@88
    sub-int v19, v6, v17

    #@8a
    move-object v14, v4

    #@8b
    move-object v15, v3

    #@8c
    move/from16 v16, v9

    #@8e
    move/from16 v20, v5

    #@90
    move/from16 v21, v10

    #@92
    move-object/from16 v22, v11

    #@94
    .line 139
    invoke-direct/range {v12 .. v22}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    #@97
    move-object/from16 v0, v27

    #@99
    invoke-direct {v0, v12}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@9c
    .line 141
    .local v27, "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v18, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    #@9e
    add-int v22, v9, v17

    #@a0
    sub-int v23, v6, v17

    #@a2
    add-int v24, v5, v17

    #@a4
    move-object/from16 v19, v27

    #@a6
    move-object/from16 v20, v4

    #@a8
    move-object/from16 v21, v3

    #@aa
    move/from16 v25, v10

    #@ac
    move-object/from16 v26, v11

    #@ae
    invoke-direct/range {v18 .. v26}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    #@b1
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@b4
    .line 142
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;

    #@b6
    .end local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, v27

    #@b8
    invoke-direct {v2, v0}, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@bb
    .line 143
    .restart local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move/from16 v24, v17

    #@bd
    .restart local v24    # "n":I
    goto/16 :goto_0

    #@bf
    .line 145
    .end local v6    # "h":I
    .end local v13    # "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v17    # "q":I
    .end local v27    # "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v28    # "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v29    # "u":I
    :cond_0
    add-int v20, v9, v24

    #@c1
    move-object/from16 v18, v4

    #@c3
    move/from16 v19, v9

    #@c5
    move-object/from16 v21, v11

    #@c7
    move-object/from16 v22, v3

    #@c9
    move/from16 v23, v5

    #@cb
    invoke-static/range {v18 .. v24}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    #@ce
    .line 146
    invoke-virtual {v2}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@d1
    .line 126
    return-void
.end method
