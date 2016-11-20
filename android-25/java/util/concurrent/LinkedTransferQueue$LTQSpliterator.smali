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
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field batch:I

.field current:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field exhausted:Z

.field final synthetic this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .locals 0

    #@0
    .prologue
    .line 997
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    .local p1, "this$0":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1071
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    const/16 v0, 0x1110

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1068
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    const-wide v0, 0x7fffffffffffffffL

    #@5
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1031
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1032
    :cond_0
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    #@a
    if-nez v3, :cond_4

    #@c
    .line 1033
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@e
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_1

    #@10
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@12
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_4

    #@18
    .line 1034
    :cond_1
    const/4 v3, 0x1

    #@19
    iput-boolean v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    #@1b
    .line 1036
    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@1d
    .line 1037
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_3

    #@1f
    if-eq v0, v1, :cond_3

    #@21
    .line 1038
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@24
    .line 1039
    :cond_3
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@26
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v1, v2, :cond_5

    #@28
    .line 1040
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@2a
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2d
    move-result-object v1

    #@2e
    .line 1041
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_4

    #@30
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@32
    if-nez v3, :cond_2

    #@34
    .line 1029
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_4
    return-void

    #@35
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    move-object v1, v2

    #@36
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v4, 0x1

    #@1
    .line 1048
    if-nez p1, :cond_0

    #@3
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 1049
    :cond_0
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    #@b
    if-nez v3, :cond_5

    #@d
    .line 1050
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@f
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_1

    #@11
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@13
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_5

    #@19
    .line 1053
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@1b
    .local v0, "e":Ljava/lang/Object;
    if-ne v0, v1, :cond_2

    #@1d
    .line 1054
    const/4 v0, 0x0

    #@1e
    .line 1055
    .end local v0    # "e":Ljava/lang/Object;
    :cond_2
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@20
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v1, v2, :cond_6

    #@22
    .line 1056
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@24
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@27
    move-result-object v1

    #@28
    .line 1057
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-nez v0, :cond_3

    #@2a
    if-eqz v1, :cond_3

    #@2c
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@2e
    if-nez v3, :cond_1

    #@30
    .line 1058
    :cond_3
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@32
    if-nez v1, :cond_4

    #@34
    .line 1059
    iput-boolean v4, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    #@36
    .line 1060
    :cond_4
    if-eqz v0, :cond_5

    #@38
    .line 1061
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@3b
    .line 1062
    return v4

    #@3c
    .line 1065
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    const/4 v3, 0x0

    #@3d
    return v3

    #@3e
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    move-object v1, v2

    #@3f
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 1001
    iget v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->batch:I

    #@4
    .line 1002
    .local v1, "b":I
    if-gtz v1, :cond_5

    #@6
    const/4 v4, 0x1

    #@7
    .line 1003
    .local v4, "n":I
    :goto_0
    iget-boolean v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    #@9
    if-nez v7, :cond_7

    #@b
    .line 1004
    iget-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@d
    .local v5, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v5, :cond_0

    #@f
    iget-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@11
    invoke-virtual {v7}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@14
    move-result-object v5

    #@15
    if-eqz v5, :cond_7

    #@17
    .line 1005
    :cond_0
    iget-object v7, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@19
    if-eqz v7, :cond_7

    #@1b
    .line 1006
    new-array v0, v4, [Ljava/lang/Object;

    #@1d
    .line 1007
    .local v0, "a":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@1e
    .line 1009
    .local v3, "i":I
    :cond_1
    iget-object v2, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@20
    .line 1010
    .local v2, "e":Ljava/lang/Object;
    if-eq v2, v5, :cond_2

    #@22
    aput-object v2, v0, v3

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 1011
    add-int/lit8 v3, v3, 0x1

    #@28
    .line 1012
    :cond_2
    iget-object v6, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2a
    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v6, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v5, v6, :cond_8

    #@2c
    .line 1013
    iget-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@2e
    invoke-virtual {v7}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@31
    move-result-object v5

    #@32
    .line 1014
    .end local v6    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_1
    if-eqz v5, :cond_3

    #@34
    if-ge v3, v4, :cond_3

    #@36
    iget-boolean v7, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@38
    if-nez v7, :cond_1

    #@3a
    .line 1015
    :cond_3
    iput-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3c
    if-nez v5, :cond_4

    #@3e
    .line 1016
    const/4 v7, 0x1

    #@3f
    iput-boolean v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    #@41
    .line 1017
    :cond_4
    if-lez v3, :cond_7

    #@43
    .line 1018
    iput v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->batch:I

    #@45
    .line 1020
    const/16 v7, 0x1110

    #@47
    .line 1019
    invoke-static {v0, v9, v3, v7}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    #@4a
    move-result-object v7

    #@4b
    return-object v7

    #@4c
    .line 1002
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    const/high16 v7, 0x2000000

    #@4e
    if-lt v1, v7, :cond_6

    #@50
    const/high16 v4, 0x2000000

    #@52
    .restart local v4    # "n":I
    goto :goto_0

    #@53
    .end local v4    # "n":I
    :cond_6
    add-int/lit8 v4, v1, 0x1

    #@55
    .restart local v4    # "n":I
    goto :goto_0

    #@56
    .line 1025
    :cond_7
    return-object v8

    #@57
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "e":Ljava/lang/Object;
    .restart local v3    # "i":I
    .restart local v6    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_8
    move-object v5, v6

    #@58
    .end local v6    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_1
.end method
