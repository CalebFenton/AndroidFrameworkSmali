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
    .line 1000
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1002
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@8
    .line 1003
    iget-object v0, p1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 1004
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@d
    .line 1006
    :try_start_0
    iget v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@f
    if-nez v2, :cond_0

    #@11
    .line 1008
    const/4 v2, -0x1

    #@12
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@14
    .line 1009
    const/4 v2, -0x1

    #@15
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@17
    .line 1010
    const/4 v2, -0x3

    #@18
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 1029
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 1000
    return-void

    #@1e
    .line 1012
    :cond_0
    :try_start_1
    iget v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@20
    .line 1013
    .local v1, "takeIndex":I
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@22
    .line 1014
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@24
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    #@2a
    .line 1015
    invoke-direct {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    #@2d
    move-result v2

    #@2e
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@30
    .line 1016
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@32
    if-nez v2, :cond_1

    #@34
    .line 1017
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@36
    invoke-direct {v2, p1, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    #@39
    iput-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@3b
    .line 1022
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
    .line 1028
    .end local v1    # "takeIndex":I
    :catchall_0
    move-exception v2

    #@43
    .line 1029
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@46
    .line 1028
    throw v2

    #@47
    .line 1019
    .restart local v1    # "takeIndex":I
    :cond_1
    :try_start_2
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@49
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    #@4c
    .line 1020
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
    .line 1112
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 1114
    const/4 v0, -0x3

    #@5
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@7
    .line 1116
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@9
    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V

    #@f
    .line 1105
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
    .line 1241
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    sub-int v0, p1, p2

    #@2
    .line 1242
    .local v0, "distance":I
    if-gez v0, :cond_0

    #@4
    .line 1243
    add-int/2addr v0, p3

    #@5
    .line 1244
    :cond_0
    return v0
.end method

.method private incCursor(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1040
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
    .line 1041
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@c
    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@e
    if-ne p1, v0, :cond_1

    #@10
    const/4 p1, -0x1

    #@11
    .line 1042
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
    .line 1069
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@3
    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@5
    iget v0, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    #@7
    .line 1070
    .local v0, "cycles":I
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@9
    iget v8, v1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@b
    .line 1071
    .local v8, "takeIndex":I
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    #@d
    .line 1072
    .local v7, "prevCycles":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@f
    .line 1074
    .local v3, "prevTakeIndex":I
    if-ne v0, v7, :cond_0

    #@11
    if-eq v8, v3, :cond_4

    #@13
    .line 1075
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@15
    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@17
    array-length v6, v1

    #@18
    .line 1078
    .local v6, "len":I
    sub-int v1, v0, v7

    #@1a
    mul-int/2addr v1, v6

    #@1b
    .line 1079
    sub-int v2, v8, v3

    #@1d
    .line 1078
    add-int/2addr v1, v2

    #@1e
    int-to-long v4, v1

    #@1f
    .line 1082
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
    .line 1083
    iput v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@2a
    .line 1084
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
    .line 1085
    iput v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@35
    .line 1086
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
    .line 1087
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@40
    .line 1089
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
    .line 1090
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    #@4f
    .line 1063
    .end local v4    # "dequeues":J
    .end local v6    # "len":I
    :cond_4
    :goto_0
    return-void

    #@50
    .line 1092
    .restart local v4    # "dequeues":J
    .restart local v6    # "len":I
    :cond_5
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    #@52
    .line 1093
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
    .line 1051
    if-gez p1, :cond_0

    #@3
    .line 1052
    return v1

    #@4
    .line 1053
    :cond_0
    sub-int v0, p1, p2

    #@6
    .line 1054
    .local v0, "distance":I
    if-gez v0, :cond_1

    #@8
    .line 1055
    add-int/2addr v0, p5

    #@9
    .line 1056
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
    .line 1135
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@2
    iget-object v0, v1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@4
    .line 1136
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@7
    .line 1140
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1142
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    #@10
    .line 1143
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@12
    if-ltz v1, :cond_0

    #@14
    .line 1144
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
    .line 1146
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 1152
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 1134
    return-void

    #@25
    .line 1151
    :catchall_0
    move-exception v1

    #@26
    .line 1152
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 1151
    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 1128
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1129
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 1130
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->noNext()V

    #@9
    .line 1131
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
    .line 1035
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
    .line 1158
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    #@2
    .line 1159
    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_0

    #@4
    .line 1160
    new-instance v3, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v3

    #@a
    .line 1161
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@c
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@e
    .line 1162
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@11
    .line 1164
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 1165
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    #@1a
    .line 1168
    :cond_1
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@1c
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@1e
    .line 1169
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@20
    .line 1170
    .local v0, "cursor":I
    if-ltz v0, :cond_2

    #@22
    .line 1171
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
    .line 1173
    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    #@2f
    move-result v3

    #@30
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 1179
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@35
    .line 1181
    return-object v2

    #@36
    .line 1175
    :cond_2
    const/4 v3, -0x1

    #@37
    :try_start_1
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@39
    .line 1176
    const/4 v3, 0x0

    #@3a
    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1178
    .end local v0    # "cursor":I
    :catchall_0
    move-exception v3

    #@3e
    .line 1179
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@41
    .line 1178
    throw v3
.end method

.method public remove()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v4, -0x1

    #@1
    .line 1186
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@3
    iget-object v2, v3, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    .line 1187
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@8
    .line 1189
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 1190
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    #@11
    .line 1191
    :cond_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@13
    .line 1192
    .local v1, "lastRet":I
    const/4 v3, -0x1

    #@14
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@16
    .line 1193
    if-ltz v1, :cond_4

    #@18
    .line 1194
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_3

    #@1e
    .line 1195
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@20
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    #@23
    .line 1209
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
    .line 1210
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 1212
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@31
    .line 1184
    return-void

    #@32
    .line 1197
    :cond_3
    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    #@34
    .line 1199
    .local v0, "lastItem":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    #@35
    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    #@37
    .line 1200
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@39
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    if-ne v3, v0, :cond_1

    #@3f
    .line 1201
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@41
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 1211
    .end local v0    # "lastItem":Ljava/lang/Object;, "TE;"
    .end local v1    # "lastRet":I
    :catchall_0
    move-exception v3

    #@46
    .line 1212
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@49
    .line 1211
    throw v3

    #@4a
    .line 1203
    .restart local v1    # "lastRet":I
    :cond_4
    if-ne v1, v4, :cond_1

    #@4c
    .line 1204
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
    .line 1254
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@6
    move-result v8

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 1255
    return v9

    #@a
    .line 1257
    :cond_0
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@c
    iget v6, v8, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@e
    .line 1258
    .local v6, "takeIndex":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@10
    .line 1259
    .local v4, "prevTakeIndex":I
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@12
    iget-object v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@14
    array-length v2, v8

    #@15
    .line 1262
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
    .line 1263
    if-ge p1, v6, :cond_4

    #@21
    move v8, v9

    #@22
    .line 1262
    :goto_0
    add-int/2addr v8, v11

    #@23
    mul-int/2addr v8, v2

    #@24
    .line 1264
    sub-int v11, p1, v4

    #@26
    .line 1262
    add-int v5, v8, v11

    #@28
    .line 1269
    .local v5, "removedDistance":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@2a
    .line 1270
    .local v0, "cursor":I
    if-ltz v0, :cond_1

    #@2c
    .line 1271
    invoke-direct {p0, v0, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    #@2f
    move-result v7

    #@30
    .line 1272
    .local v7, "x":I
    if-ne v7, v5, :cond_5

    #@32
    .line 1273
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@34
    iget v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@36
    if-ne v0, v8, :cond_1

    #@38
    .line 1274
    const/4 v0, -0x1

    #@39
    const/4 v8, -0x1

    #@3a
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@3c
    .line 1281
    .end local v7    # "x":I
    :cond_1
    :goto_1
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@3e
    .line 1282
    .local v1, "lastRet":I
    if-ltz v1, :cond_2

    #@40
    .line 1283
    invoke-direct {p0, v1, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    #@43
    move-result v7

    #@44
    .line 1284
    .restart local v7    # "x":I
    if-ne v7, v5, :cond_6

    #@46
    .line 1285
    const/4 v1, -0x2

    #@47
    iput v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@49
    .line 1289
    .end local v7    # "x":I
    :cond_2
    :goto_2
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@4b
    .line 1290
    .local v3, "nextIndex":I
    if-ltz v3, :cond_3

    #@4d
    .line 1291
    invoke-direct {p0, v3, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    #@50
    move-result v7

    #@51
    .line 1292
    .restart local v7    # "x":I
    if-ne v7, v5, :cond_7

    #@53
    .line 1293
    const/4 v3, -0x2

    #@54
    iput v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@56
    .line 1297
    .end local v7    # "x":I
    :cond_3
    :goto_3
    if-gez v0, :cond_8

    #@58
    if-gez v3, :cond_8

    #@5a
    if-gez v1, :cond_8

    #@5c
    .line 1298
    const/4 v8, -0x3

    #@5d
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@5f
    .line 1299
    return v9

    #@60
    .end local v0    # "cursor":I
    .end local v1    # "lastRet":I
    .end local v3    # "nextIndex":I
    .end local v5    # "removedDistance":I
    :cond_4
    move v8, v10

    #@61
    .line 1263
    goto :goto_0

    #@62
    .line 1276
    .restart local v0    # "cursor":I
    .restart local v5    # "removedDistance":I
    .restart local v7    # "x":I
    :cond_5
    if-le v7, v5, :cond_1

    #@64
    .line 1278
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
    .line 1286
    .restart local v1    # "lastRet":I
    :cond_6
    if-le v7, v5, :cond_2

    #@6f
    .line 1287
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
    .line 1294
    .restart local v3    # "nextIndex":I
    :cond_7
    if-le v7, v5, :cond_3

    #@7a
    .line 1295
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
    .line 1301
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
    .line 1226
    const/4 v0, -0x1

    #@2
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    #@4
    .line 1227
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 1228
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    #@a
    .line 1229
    :cond_0
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@c
    if-ltz v0, :cond_1

    #@e
    .line 1230
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    #@10
    .line 1231
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    #@13
    .line 1233
    :cond_1
    const/4 v0, -0x3

    #@14
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    #@16
    .line 1224
    return-void
.end method

.method takeIndexWrapped()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v2, 0x1

    #@1
    .line 1311
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1312
    return v2

    #@8
    .line 1313
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
    .line 1316
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    #@16
    .line 1317
    return v2

    #@17
    .line 1319
    :cond_1
    const/4 v0, 0x0

    #@18
    return v0
.end method
