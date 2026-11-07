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

.field final blacklist base:I

.field blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final blacklist gran:I

.field final blacklist size:I

.field final blacklist w:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final blacklist wbase:I


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V
    .registers 9
    .param p4, "base"    # I
    .param p5, "size"    # I
    .param p6, "wbase"    # I
    .param p7, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;[TT;[TT;IIII",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter<TT;>;"
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "w":[Ljava/lang/Object;, "[TT;"
    .local p8, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 124
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->a:[Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->w:[Ljava/lang/Object;

    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->base:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->size:I

    .line 125
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->wbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->gran:I

    .line 126
    iput-object p8, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->comparator:Ljava/util/Comparator;

    .line 127
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 23

    .line 129
    .local p0, "this":Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .line 130
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget-object v10, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->comparator:Ljava/util/Comparator;

    .line 131
    .local v10, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->a:[Ljava/lang/Object;

    .local v4, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->w:[Ljava/lang/Object;

    .line 132
    .local v5, "w":[Ljava/lang/Object;, "[TT;"
    iget v3, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->base:I

    .local v3, "b":I
    iget v2, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->size:I

    .local v2, "n":I
    iget v6, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->wbase:I

    .local v6, "wb":I
    iget v9, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->gran:I

    move v13, v2

    .line 133
    .end local v2    # "n":I
    .local v9, "g":I
    .local v13, "n":I
    :goto_13
    if-le v13, v9, :cond_b2

    .line 134
    ushr-int/lit8 v7, v13, 0x1

    .local v7, "h":I
    ushr-int/lit8 v14, v7, 0x1

    .local v14, "q":I
    add-int v15, v7, v14

    .line 135
    .local v15, "u":I
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$Relay;

    move-object v8, v2

    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    move-object v11, v8

    add-int v8, v6, v7

    move-object v12, v11

    move v11, v9

    .end local v9    # "g":I
    .local v11, "g":I
    sub-int v9, v13, v7

    move/from16 v21, v3

    move-object v3, v1

    move-object v1, v12

    move-object v12, v10

    move/from16 v10, v21

    move-object/from16 v21, v5

    move-object v5, v4

    move-object/from16 v4, v21

    .end local v1    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v3, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v4, "w":[Ljava/lang/Object;, "[TT;"
    .local v5, "a":[Ljava/lang/Object;, "[TT;"
    .local v10, "b":I
    .local v12, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct/range {v2 .. v12}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    move-object/from16 v18, v3

    move/from16 v17, v6

    move/from16 v19, v7

    move/from16 v16, v10

    move-object v10, v12

    .end local v3    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v6    # "wb":I
    .end local v7    # "h":I
    .end local v12    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v4, "a":[Ljava/lang/Object;, "[TT;"
    .local v5, "w":[Ljava/lang/Object;, "[TT;"
    .local v10, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v16, "b":I
    .local v17, "wb":I
    .local v18, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v19, "h":I
    invoke-direct {v1, v2}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    move-object v3, v1

    .line 137
    .local v3, "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v1, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v6, v16, v19

    add-int v8, v16, v15

    sub-int v9, v13, v15

    .end local v10    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .restart local v12    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    add-int v10, v17, v19

    move v7, v14

    .end local v14    # "q":I
    .local v7, "q":I
    invoke-direct/range {v2 .. v12}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    move-object v14, v3

    move-object v10, v12

    move v12, v7

    .end local v3    # "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v7    # "q":I
    .restart local v10    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v12, "q":I
    .local v14, "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    invoke-direct {v1, v2}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    move-object v3, v1

    .line 139
    .local v3, "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v6, v16, v15

    sub-int v7, v13, v15

    add-int v8, v17, v15

    move v9, v11

    .end local v11    # "g":I
    .restart local v9    # "g":I
    invoke-direct/range {v2 .. v10}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .end local v9    # "g":I
    .restart local v11    # "g":I
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 140
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v6, v16, v19

    add-int v8, v17, v19

    move v7, v12

    .end local v11    # "g":I
    .end local v12    # "q":I
    .restart local v7    # "q":I
    .restart local v9    # "g":I
    invoke-direct/range {v2 .. v10}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .end local v3    # "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v9    # "g":I
    .local v1, "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .restart local v11    # "g":I
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 141
    new-instance v3, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v8, v16, v7

    sub-int v9, v19, v7

    move-object v6, v14

    move-object v14, v3

    move-object v3, v6

    move-object v12, v10

    move/from16 v6, v16

    move/from16 v10, v17

    .end local v14    # "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v16    # "b":I
    .end local v17    # "wb":I
    .local v3, "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .local v6, "b":I
    .local v10, "wb":I
    .local v12, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct/range {v2 .. v12}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    move-object/from16 v20, v3

    move-object v10, v12

    move v12, v7

    .end local v3    # "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v6    # "b":I
    .end local v7    # "q":I
    .local v10, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v12, "q":I
    .restart local v16    # "b":I
    .restart local v17    # "wb":I
    .local v20, "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    invoke-direct {v14, v2}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    move-object v3, v14

    .line 143
    .local v3, "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v6, v16, v12

    sub-int v7, v19, v12

    add-int v8, v17, v12

    move v9, v11

    .end local v11    # "g":I
    .restart local v9    # "g":I
    invoke-direct/range {v2 .. v10}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .end local v9    # "g":I
    .restart local v11    # "g":I
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 144
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;

    invoke-direct {v2, v3}, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 145
    .end local v18    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v2, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move v13, v12

    .line 146
    .end local v1    # "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v3    # "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v12    # "q":I
    .end local v15    # "u":I
    .end local v19    # "h":I
    .end local v20    # "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    move-object v1, v2

    move/from16 v3, v16

    move/from16 v6, v17

    goto/16 :goto_13

    .line 147
    .end local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "g":I
    .end local v16    # "b":I
    .end local v17    # "wb":I
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v3, "b":I
    .local v6, "wb":I
    .restart local v9    # "g":I
    :cond_b2
    move-object/from16 v18, v1

    move/from16 v16, v3

    move/from16 v17, v6

    .end local v1    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v3    # "b":I
    .end local v6    # "wb":I
    .restart local v16    # "b":I
    .restart local v17    # "wb":I
    .restart local v18    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    add-int v3, v16, v13

    move-object v2, v4

    move-object v6, v5

    move-object v5, v10

    move v8, v13

    move/from16 v7, v17

    move v4, v3

    move/from16 v3, v16

    .end local v4    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v10    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .end local v13    # "n":I
    .end local v16    # "b":I
    .end local v17    # "wb":I
    .local v2, "a":[Ljava/lang/Object;, "[TT;"
    .restart local v3    # "b":I
    .local v5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v6, "w":[Ljava/lang/Object;, "[TT;"
    .local v7, "wb":I
    .local v8, "n":I
    invoke-static/range {v2 .. v8}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 148
    move-object v4, v2

    move-object v5, v6

    .end local v2    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v3    # "b":I
    .end local v6    # "w":[Ljava/lang/Object;, "[TT;"
    .end local v7    # "wb":I
    .restart local v4    # "a":[Ljava/lang/Object;, "[TT;"
    .local v5, "w":[Ljava/lang/Object;, "[TT;"
    .restart local v10    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .restart local v16    # "b":I
    .restart local v17    # "wb":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 149
    return-void
.end method
