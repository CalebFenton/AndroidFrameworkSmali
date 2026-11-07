.class final Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LTQSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field greylist-max-o batch:I

.field blacklist current:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

.field greylist-max-o exhausted:Z

.field final synthetic blacklist this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/LinkedTransferQueue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1000
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist current()Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .registers 3

    .line 1076
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-nez v0, :cond_13

    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    if-nez v0, :cond_13

    .line 1077
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v0

    move-object v1, v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->setCurrent(Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    .line 1078
    :cond_13
    return-object v1
.end method

.method private blacklist setCurrent(Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V
    .registers 3
    .param p1, "p"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1070
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    if-nez p1, :cond_7

    .line 1071
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    .line 1072
    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1084
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator;"
    const/16 v0, 0x1110

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1081
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1031
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current()Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v0, :cond_15

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1035
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    .line 1036
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/LinkedTransferQueue;->forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    .line 1038
    :cond_15
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1042
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current()Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v0, :cond_30

    .line 1045
    const/4 v0, 0x0

    .line 1047
    .local v0, "e":Ljava/lang/Object;, "TE;"
    :cond_b
    iget-boolean v2, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    .line 1048
    .local v2, "isData":Z
    iget-object v3, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 1049
    .local v3, "item":Ljava/lang/Object;
    iget-object v4, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v5, v4

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v5, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v1, v4, :cond_18

    .line 1050
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v5, v1, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1051
    :cond_18
    if-eqz v2, :cond_1f

    .line 1052
    if-eqz v3, :cond_23

    .line 1053
    move-object v0, v3

    .line 1054
    move-object v1, v5

    goto :goto_26

    .line 1057
    :cond_1f
    if-nez v3, :cond_23

    .line 1058
    const/4 v1, 0x0

    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_24

    .line 1059
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v2    # "isData":Z
    .end local v3    # "item":Ljava/lang/Object;
    .restart local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_23
    move-object v1, v5

    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_24
    if-nez v1, :cond_b

    .line 1060
    :goto_26
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->setCurrent(Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    .line 1061
    if-eqz v0, :cond_30

    .line 1062
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1063
    const/4 v2, 0x1

    return v2

    .line 1066
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1004
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current()Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    const/4 v2, 0x0

    if-eqz v0, :cond_54

    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v3, v0

    .local v3, "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-nez v0, :cond_e

    goto :goto_54

    .line 1006
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    iget v4, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->batch:I

    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x2000000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->batch:I

    .line 1007
    .local v4, "n":I
    const/4 v5, 0x0

    .line 1009
    .local v5, "a":[Ljava/lang/Object;
    :cond_1c
    iget-object v6, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 1010
    .local v6, "item":Ljava/lang/Object;
    iget-boolean v7, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-eqz v7, :cond_2e

    .line 1011
    if-eqz v6, :cond_32

    .line 1012
    if-nez v5, :cond_28

    .line 1013
    new-array v5, v4, [Ljava/lang/Object;

    .line 1014
    :cond_28
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    aput-object v6, v5, v0

    move v0, v7

    goto :goto_32

    .line 1016
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :cond_2e
    if-nez v6, :cond_32

    .line 1017
    const/4 v1, 0x0

    .line 1018
    goto :goto_46

    .line 1020
    :cond_32
    :goto_32
    move-object v7, v3

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v7, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v1, v3, :cond_3c

    .line 1021
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v1

    .end local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_3d

    .line 1020
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_3c
    move-object v1, v7

    .line 1022
    .end local v6    # "item":Ljava/lang/Object;
    .end local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_3d
    if-eqz v1, :cond_46

    iget-object v6, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v3, v6

    if-eqz v6, :cond_46

    if-lt v0, v4, :cond_1c

    .line 1023
    :cond_46
    :goto_46
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->setCurrent(Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    .line 1024
    if-nez v0, :cond_4c

    goto :goto_53

    .line 1025
    :cond_4c
    const/4 v2, 0x0

    const/16 v6, 0x1110

    invoke-static {v5, v2, v0, v6}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v2

    .line 1024
    :goto_53
    return-object v2

    .line 1005
    .end local v0    # "i":I
    .end local v3    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v4    # "n":I
    .end local v5    # "a":[Ljava/lang/Object;
    :cond_54
    :goto_54
    return-object v2
.end method
