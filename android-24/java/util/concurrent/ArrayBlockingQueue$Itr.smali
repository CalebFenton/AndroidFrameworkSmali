.class Ljava/util/concurrent/ArrayBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final DETACHED:I = -0x3

.field private static final NONE:I = -0x1

.field private static final REMOVED:I = -0x2


# instance fields
.field private cursor:I

.field private lastItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:I

.field private nextIndex:I

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private prevCycles:I

.field private prevTakeIndex:I

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v2, -0x1

    #@1
    .line 981
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 983
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@8
    .line 984
    iget-object v0, p1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 985
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@d
    .line 987
    :try_start_0
    iget v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@f
    if-nez v2, :cond_0

    #@11
    .line 989
    const/4 v2, -0x1

    #@12
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@14
    .line 990
    const/4 v2, -0x1

    #@15
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@17
    .line 991
    const/4 v2, -0x3

    #@18
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 1010
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 981
    return-void

    #@1e
    .line 993
    :cond_0
    :try_start_1
    iget v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@20
    .line 994
    .local v1, "takeIndex":I
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@22
    .line 995
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@24
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    #@2a
    .line 996
    invoke-direct {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    #@2d
    move-result v2

    #@2e
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@30
    .line 997
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@32
    if-nez v2, :cond_1

    #@34
    .line 998
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@36
    invoke-direct {v2, p1, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    #@39
    iput-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@3b
    .line 1003
    :goto_1
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@3d
    iget v2, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    #@3f
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 1009
    .end local v1    # "takeIndex":I
    :catchall_0
    move-exception v2

    #@43
    .line 1010
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@46
    .line 1009
    throw v2

    #@47
    .line 1000
    .restart local v1    # "takeIndex":I
    :cond_1
    :try_start_2
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@49
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    #@4c
    .line 1001
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@4e
    const/4 v3, 0x0

    #@4f
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_1
.end method

.method private detach()V
    .locals 2

    #@0
    .prologue
    .line 1093
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 1095
    const/4 v0, -0x3

    #@5
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@7
    .line 1097
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@9
    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V

    #@f
    .line 1086
    :cond_0
    return-void
.end method

.method private distance(III)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "prevTakeIndex"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 1222
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    sub-int v0, p1, p2

    #@2
    .line 1223
    .local v0, "distance":I
    if-gez v0, :cond_0

    #@4
    .line 1224
    add-int/2addr v0, p3

    #@5
    .line 1225
    :cond_0
    return v0
.end method

.method private incCursor(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1021
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    add-int/lit8 p1, p1, 0x1

    #@2
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@4
    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@6
    array-length v0, v0

    #@7
    if-ne p1, v0, :cond_0

    #@9
    const/4 p1, 0x0

    #@a
    .line 1022
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@c
    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@e
    if-ne p1, v0, :cond_1

    #@10
    const/4 p1, -0x1

    #@11
    .line 1023
    :cond_1
    return p1
.end method

.method private incorporateDequeues()V
    .locals 10

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v9, -0x2

    #@1
    .line 1050
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@3
    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@5
    iget v0, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    #@7
    .line 1051
    .local v0, "cycles":I
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@9
    iget v8, v1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@b
    .line 1052
    .local v8, "takeIndex":I
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    #@d
    .line 1053
    .local v7, "prevCycles":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@f
    .line 1055
    .local v3, "prevTakeIndex":I
    if-ne v0, v7, :cond_0

    #@11
    if-eq v8, v3, :cond_4

    #@13
    .line 1056
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@15
    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@17
    array-length v6, v1

    #@18
    .line 1059
    .local v6, "len":I
    sub-int v1, v0, v7

    #@1a
    mul-int/2addr v1, v6

    #@1b
    .line 1060
    sub-int v2, v8, v3

    #@1d
    .line 1059
    add-int/2addr v1, v2

    #@1e
    int-to-long v4, v1

    #@1f
    .line 1063
    .local v4, "dequeues":J
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@21
    move-object v1, p0

    #@22
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 1064
    iput v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@2a
    .line 1065
    :cond_1
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@2c
    move-object v1, p0

    #@2d
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 1066
    iput v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@35
    .line 1067
    :cond_2
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@37
    move-object v1, p0

    #@38
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_3

    #@3e
    .line 1068
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@40
    .line 1070
    :cond_3
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@42
    if-gez v1, :cond_5

    #@44
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@46
    if-gez v1, :cond_5

    #@48
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@4a
    if-gez v1, :cond_5

    #@4c
    .line 1071
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    #@4f
    .line 1044
    .end local v4    # "dequeues":J
    .end local v6    # "len":I
    :cond_4
    :goto_0
    return-void

    #@50
    .line 1073
    .restart local v4    # "dequeues":J
    .restart local v6    # "len":I
    :cond_5
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    #@52
    .line 1074
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@54
    goto :goto_0
.end method

.method private invalidated(IIJI)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "prevTakeIndex"    # I
    .param p3, "dequeues"    # J
    .param p5, "length"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v1, 0x0

    #@1
    .line 1032
    if-gez p1, :cond_0

    #@3
    .line 1033
    return v1

    #@4
    .line 1034
    :cond_0
    sub-int v0, p1, p2

    #@6
    .line 1035
    .local v0, "distance":I
    if-gez v0, :cond_1

    #@8
    .line 1036
    add-int/2addr v0, p5

    #@9
    .line 1037
    :cond_1
    int-to-long v2, v0

    #@a
    cmp-long v2, p3, v2

    #@c
    if-lez v2, :cond_2

    #@e
    const/4 v1, 0x1

    #@f
    :cond_2
    return v1
.end method

.method private noNext()V
    .locals 3

    #@0
    .prologue
    .line 1116
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@2
    iget-object v0, v1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@4
    .line 1117
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@7
    .line 1121
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1123
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    #@10
    .line 1124
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@12
    if-ltz v1, :cond_0

    #@14
    .line 1125
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@16
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@18
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    #@1e
    .line 1127
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 1133
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 1115
    return-void

    #@25
    .line 1132
    :catchall_0
    move-exception v1

    #@26
    .line 1133
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 1132
    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 1109
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1110
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 1111
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->noNext()V

    #@9
    .line 1112
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method isDetached()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v0, 0x0

    #@1
    .line 1016
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@3
    if-gez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 1139
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    #@2
    .line 1140
    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_0

    #@4
    .line 1141
    new-instance v3, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v3

    #@a
    .line 1142
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@c
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@e
    .line 1143
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@11
    .line 1145
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 1146
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    #@1a
    .line 1149
    :cond_1
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@1c
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@1e
    .line 1150
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@20
    .line 1151
    .local v0, "cursor":I
    if-ltz v0, :cond_2

    #@22
    .line 1152
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@24
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@26
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    #@2c
    .line 1154
    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    #@2f
    move-result v3

    #@30
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 1160
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@35
    .line 1162
    return-object v2

    #@36
    .line 1156
    :cond_2
    const/4 v3, -0x1

    #@37
    :try_start_1
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@39
    .line 1157
    const/4 v3, 0x0

    #@3a
    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1159
    .end local v0    # "cursor":I
    :catchall_0
    move-exception v3

    #@3e
    .line 1160
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@41
    .line 1159
    throw v3
.end method

.method public remove()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v4, -0x1

    #@1
    .line 1167
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@3
    iget-object v2, v3, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    .line 1168
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@8
    .line 1170
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 1171
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    #@11
    .line 1172
    :cond_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@13
    .line 1173
    .local v1, "lastRet":I
    const/4 v3, -0x1

    #@14
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@16
    .line 1174
    if-ltz v1, :cond_4

    #@18
    .line 1175
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_3

    #@1e
    .line 1176
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@20
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    #@23
    .line 1190
    :cond_1
    :goto_0
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@25
    if-gez v3, :cond_2

    #@27
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@29
    if-gez v3, :cond_2

    #@2b
    .line 1191
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 1193
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@31
    .line 1165
    return-void

    #@32
    .line 1178
    :cond_3
    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    #@34
    .line 1180
    .local v0, "lastItem":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    #@35
    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    #@37
    .line 1181
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@39
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    if-ne v3, v0, :cond_1

    #@3f
    .line 1182
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@41
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 1192
    .end local v0    # "lastItem":Ljava/lang/Object;, "TE;"
    .end local v1    # "lastRet":I
    :catchall_0
    move-exception v3

    #@46
    .line 1193
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@49
    .line 1192
    throw v3

    #@4a
    .line 1184
    .restart local v1    # "lastRet":I
    :cond_4
    if-ne v1, v4, :cond_1

    #@4c
    .line 1185
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    #@4e
    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    #@51
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method removedAt(I)Z
    .locals 13
    .param p1, "removedIndex"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v12, -0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 1235
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@6
    move-result v8

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 1236
    return v9

    #@a
    .line 1238
    :cond_0
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@c
    iget v6, v8, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@e
    .line 1239
    .local v6, "takeIndex":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@10
    .line 1240
    .local v4, "prevTakeIndex":I
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@12
    iget-object v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@14
    array-length v2, v8

    #@15
    .line 1243
    .local v2, "len":I
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@17
    iget-object v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@19
    iget v8, v8, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    #@1b
    iget v11, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    #@1d
    sub-int v11, v8, v11

    #@1f
    .line 1244
    if-ge p1, v6, :cond_4

    #@21
    move v8, v9

    #@22
    .line 1243
    :goto_0
    add-int/2addr v8, v11

    #@23
    mul-int/2addr v8, v2

    #@24
    .line 1245
    sub-int v11, p1, v4

    #@26
    .line 1243
    add-int v5, v8, v11

    #@28
    .line 1250
    .local v5, "removedDistance":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@2a
    .line 1251
    .local v0, "cursor":I
    if-ltz v0, :cond_1

    #@2c
    .line 1252
    invoke-direct {p0, v0, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    #@2f
    move-result v7

    #@30
    .line 1253
    .local v7, "x":I
    if-ne v7, v5, :cond_5

    #@32
    .line 1254
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@34
    iget v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@36
    if-ne v0, v8, :cond_1

    #@38
    .line 1255
    const/4 v0, -0x1

    #@39
    const/4 v8, -0x1

    #@3a
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@3c
    .line 1262
    .end local v7    # "x":I
    :cond_1
    :goto_1
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@3e
    .line 1263
    .local v1, "lastRet":I
    if-ltz v1, :cond_2

    #@40
    .line 1264
    invoke-direct {p0, v1, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    #@43
    move-result v7

    #@44
    .line 1265
    .restart local v7    # "x":I
    if-ne v7, v5, :cond_6

    #@46
    .line 1266
    const/4 v1, -0x2

    #@47
    iput v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@49
    .line 1270
    .end local v7    # "x":I
    :cond_2
    :goto_2
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@4b
    .line 1271
    .local v3, "nextIndex":I
    if-ltz v3, :cond_3

    #@4d
    .line 1272
    invoke-direct {p0, v3, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    #@50
    move-result v7

    #@51
    .line 1273
    .restart local v7    # "x":I
    if-ne v7, v5, :cond_7

    #@53
    .line 1274
    const/4 v3, -0x2

    #@54
    iput v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@56
    .line 1278
    .end local v7    # "x":I
    :cond_3
    :goto_3
    if-gez v0, :cond_8

    #@58
    if-gez v3, :cond_8

    #@5a
    if-gez v1, :cond_8

    #@5c
    .line 1279
    const/4 v8, -0x3

    #@5d
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@5f
    .line 1280
    return v9

    #@60
    .end local v0    # "cursor":I
    .end local v1    # "lastRet":I
    .end local v3    # "nextIndex":I
    .end local v5    # "removedDistance":I
    :cond_4
    move v8, v10

    #@61
    .line 1244
    goto :goto_0

    #@62
    .line 1257
    .restart local v0    # "cursor":I
    .restart local v5    # "removedDistance":I
    .restart local v7    # "x":I
    :cond_5
    if-le v7, v5, :cond_1

    #@64
    .line 1259
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@66
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    #@69
    move-result v0

    #@6a
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@6c
    goto :goto_1

    #@6d
    .line 1267
    .restart local v1    # "lastRet":I
    :cond_6
    if-le v7, v5, :cond_2

    #@6f
    .line 1268
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@71
    invoke-virtual {v8, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    #@74
    move-result v1

    #@75
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@77
    goto :goto_2

    #@78
    .line 1275
    .restart local v3    # "nextIndex":I
    :cond_7
    if-le v7, v5, :cond_3

    #@7a
    .line 1276
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@7c
    invoke-virtual {v8, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    #@7f
    move-result v3

    #@80
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@82
    goto :goto_3

    #@83
    .line 1282
    .end local v7    # "x":I
    :cond_8
    return v10
.end method

.method shutdown()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v1, -0x2

    #@1
    .line 1207
    const/4 v0, -0x1

    #@2
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@4
    .line 1208
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 1209
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@a
    .line 1210
    :cond_0
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@c
    if-ltz v0, :cond_1

    #@e
    .line 1211
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@10
    .line 1212
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    #@13
    .line 1214
    :cond_1
    const/4 v0, -0x3

    #@14
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@16
    .line 1205
    return-void
.end method

.method takeIndexWrapped()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v2, 0x1

    #@1
    .line 1292
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1293
    return v2

    #@8
    .line 1294
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@a
    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@c
    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    #@e
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    #@10
    sub-int/2addr v0, v1

    #@11
    if-le v0, v2, :cond_1

    #@13
    .line 1297
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    #@16
    .line 1298
    return v2

    #@17
    .line 1300
    :cond_1
    const/4 v0, 0x0

    #@18
    return v0
.end method
