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
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DETACHED:I = -0x3

.field private static final greylist-max-o NONE:I = -0x1

.field private static final greylist-max-o REMOVED:I = -0x2


# instance fields
.field private greylist-max-o cursor:I

.field private greylist-max-o lastItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private greylist-max-o lastRet:I

.field private greylist-max-o nextIndex:I

.field private greylist-max-o nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private greylist-max-o prevCycles:I

.field private greylist-max-o prevTakeIndex:I

.field final synthetic blacklist this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1058
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1060
    iget-object v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1061
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1063
    :try_start_d
    iget v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v2, :cond_19

    .line 1065
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1066
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1067
    const/4 p1, -0x3

    iput p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    goto :goto_48

    .line 1069
    :cond_19
    iget v0, p1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1070
    .local v0, "takeIndex":I
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1071
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1072
    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1073
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-nez v2, :cond_37

    .line 1074
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-direct {v2, p1, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    iput-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    goto :goto_42

    .line 1076
    :cond_37
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    .line 1077
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V

    .line 1079
    :goto_42
    iget-object p1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget p1, p1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iput p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_4d

    .line 1086
    .end local v0    # "takeIndex":I
    :goto_48
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1087
    nop

    .line 1088
    return-void

    .line 1086
    :catchall_4d
    move-exception p1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1087
    throw p1
.end method

.method private greylist-max-o detach()V
    .registers 3

    .line 1169
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    if-ltz v0, :cond_f

    .line 1171
    const/4 v0, -0x3

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1173
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V

    .line 1175
    :cond_f
    return-void
.end method

.method private greylist-max-o distance(III)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "prevTakeIndex"    # I
    .param p3, "length"    # I

    .line 1327
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    sub-int v0, p1, p2

    .line 1328
    .local v0, "distance":I
    if-gez v0, :cond_5

    .line 1329
    add-int/2addr v0, p3

    .line 1330
    :cond_5
    return v0
.end method

.method private greylist-max-o incCursor(I)I
    .registers 3
    .param p1, "index"    # I

    .line 1097
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x0

    .line 1098
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-ne p1, v0, :cond_11

    const/4 p1, -0x1

    .line 1099
    :cond_11
    return p1
.end method

.method private greylist-max-o incorporateDequeues()V
    .registers 11

    .line 1126
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    .line 1127
    .local v0, "cycles":I
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1128
    .local v1, "takeIndex":I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    .line 1129
    .local v2, "prevCycles":I
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1131
    .local v5, "prevTakeIndex":I
    if-ne v0, v2, :cond_15

    if-eq v1, v5, :cond_13

    goto :goto_15

    :cond_13
    move-object v3, p0

    goto :goto_57

    .line 1132
    :cond_15
    :goto_15
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v3, v3, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v8, v3

    .line 1135
    .local v8, "len":I
    sub-int v3, v0, v2

    int-to-long v3, v3

    int-to-long v6, v8

    mul-long/2addr v3, v6

    sub-int v6, v1, v5

    int-to-long v6, v6

    add-long/2addr v6, v3

    .line 1139
    .local v6, "dequeues":J
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v4

    const/4 v9, -0x2

    if-eqz v4, :cond_2f

    .line 1140
    iput v9, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1141
    :cond_2f
    iget v4, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-direct/range {v3 .. v8}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1142
    iput v9, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1143
    :cond_39
    iget v4, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    invoke-direct/range {v3 .. v8}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1144
    iput v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1146
    :cond_43
    iget v4, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v4, :cond_53

    iget v4, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v4, :cond_53

    iget v4, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-gez v4, :cond_53

    .line 1147
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    goto :goto_57

    .line 1149
    :cond_53
    iput v0, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    .line 1150
    iput v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1153
    .end local v6    # "dequeues":J
    .end local v8    # "len":I
    :goto_57
    return-void
.end method

.method private greylist-max-o invalidated(IIJI)Z
    .registers 10
    .param p1, "index"    # I
    .param p2, "prevTakeIndex"    # I
    .param p3, "dequeues"    # J
    .param p5, "length"    # I

    .line 1108
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 1109
    return v0

    .line 1110
    :cond_4
    sub-int v1, p1, p2

    .line 1111
    .local v1, "distance":I
    if-gez v1, :cond_9

    .line 1112
    add-int/2addr v1, p5

    .line 1113
    :cond_9
    int-to-long v2, v1

    cmp-long v2, p3, v2

    if-lez v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private greylist-max-o noNext()V
    .registers 4

    .line 1191
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1192
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1196
    :try_start_7
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1198
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1199
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ltz v1, :cond_21

    .line 1200
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1202
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_26

    .line 1208
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1209
    nop

    .line 1210
    return-void

    .line 1208
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1209
    throw v1
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1241
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1243
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1245
    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_c
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_7b

    .line 1246
    .local v3, "e":Ljava/lang/Object;, "TE;"
    if-nez v3, :cond_21

    .line 1263
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1264
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1265
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    .line 1266
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1246
    return-void

    .line 1247
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 1248
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1249
    :cond_2a
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1250
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v4

    if-nez v4, :cond_6a

    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v4, :cond_38

    goto :goto_6a

    .line 1251
    :cond_38
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v4, v4, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 1252
    .local v4, "items":[Ljava/lang/Object;
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .local v5, "i":I
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v6, v6, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 1253
    .local v6, "end":I
    if-ge v5, v6, :cond_46

    move v7, v6

    goto :goto_47

    :cond_46
    array-length v7, v4

    .line 1255
    .local v7, "to":I
    :goto_47
    if-ge v5, v7, :cond_53

    .line 1256
    invoke-static {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_21 .. :try_end_50} :catchall_7b

    .line 1255
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 1257
    :cond_53
    if-ne v7, v6, :cond_67

    .line 1263
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    .end local v4    # "items":[Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v6    # "end":I
    .end local v7    # "to":I
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1264
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1265
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    .line 1266
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1267
    nop

    .line 1268
    return-void

    .line 1254
    .restart local v3    # "e":Ljava/lang/Object;, "TE;"
    .restart local v4    # "items":[Ljava/lang/Object;
    .restart local v5    # "i":I
    .restart local v6    # "end":I
    .restart local v7    # "to":I
    :cond_67
    const/4 v5, 0x0

    move v7, v6

    goto :goto_47

    .line 1263
    .end local v4    # "items":[Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v6    # "end":I
    .end local v7    # "to":I
    :cond_6a
    :goto_6a
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1264
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1265
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    .line 1266
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1250
    return-void

    .line 1263
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    :catchall_7b
    move-exception v3

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1264
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1265
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    .line 1266
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1267
    throw v3
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1184
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 1185
    const/4 v0, 0x1

    return v0

    .line 1186
    :cond_6
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->noNext()V

    .line 1187
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o isDetached()Z
    .registers 2

    .line 1092
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1213
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1214
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_45

    .line 1216
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1217
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1219
    :try_start_b
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1220
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1223
    :cond_14
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1224
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1225
    .local v2, "cursor":I
    if-ltz v2, :cond_2d

    .line 1226
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1228
    invoke-direct {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    move-result v3

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    goto :goto_3b

    .line 1230
    :cond_2d
    const/4 v3, -0x1

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1231
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1232
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3b

    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_40

    .line 1235
    .end local v2    # "cursor":I
    :cond_3b
    :goto_3b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1236
    nop

    .line 1237
    return-object v0

    .line 1235
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1236
    throw v2

    .line 1215
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_45
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api remove()V
    .registers 5

    .line 1271
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1272
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1275
    :try_start_7
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1276
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1277
    :cond_10
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1278
    .local v1, "lastRet":I
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1279
    if-ltz v1, :cond_36

    .line 1280
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1281
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    goto :goto_38

    .line 1283
    :cond_23
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1285
    .local v2, "lastItem":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1286
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_35

    .line 1287
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    .line 1288
    .end local v2    # "lastItem":Ljava/lang/Object;, "TE;"
    :cond_35
    goto :goto_38

    .line 1289
    :cond_36
    if-eq v1, v2, :cond_48

    .line 1295
    :goto_38
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v2, :cond_43

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v2, :cond_43

    .line 1296
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_4e

    .line 1298
    .end local v1    # "lastRet":I
    :cond_43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1301
    nop

    .line 1302
    return-void

    .line 1290
    .restart local v1    # "lastRet":I
    :cond_48
    :try_start_48
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    throw v2
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4e

    .line 1298
    .end local v1    # "lastRet":I
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    :catchall_4e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1301
    throw v1
.end method

.method greylist-max-o removedAt(I)Z
    .registers 13
    .param p1, "removedIndex"    # I

    .line 1340
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1341
    return v1

    .line 1343
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1344
    .local v0, "takeIndex":I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1345
    .local v2, "prevTakeIndex":I
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v3, v3, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v3, v3

    .line 1347
    .local v3, "len":I
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v4, v4, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v4, v4, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    sub-int/2addr v4, v5

    .line 1349
    const/4 v5, 0x0

    if-ge p1, v0, :cond_21

    move v6, v1

    goto :goto_22

    :cond_21
    move v6, v5

    :goto_22
    add-int/2addr v4, v6

    mul-int/2addr v4, v3

    sub-int v6, p1, v2

    add-int/2addr v4, v6

    .line 1355
    .local v4, "removedDistance":I
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1356
    .local v6, "cursor":I
    if-ltz v6, :cond_45

    .line 1357
    invoke-direct {p0, v6, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v7

    .line 1358
    .local v7, "x":I
    if-ne v7, v4, :cond_3c

    .line 1359
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-ne v6, v8, :cond_45

    .line 1360
    const/4 v8, -0x1

    move v6, v8

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    goto :goto_45

    .line 1362
    :cond_3c
    if-le v7, v4, :cond_45

    .line 1364
    invoke-static {v6, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(II)I

    move-result v8

    move v6, v8

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1367
    .end local v7    # "x":I
    :cond_45
    :goto_45
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1368
    .local v7, "lastRet":I
    const/4 v8, -0x2

    if-ltz v7, :cond_5d

    .line 1369
    invoke-direct {p0, v7, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v9

    .line 1370
    .local v9, "x":I
    if-ne v9, v4, :cond_54

    .line 1371
    move v7, v8

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    goto :goto_5d

    .line 1372
    :cond_54
    if-le v9, v4, :cond_5d

    .line 1373
    invoke-static {v7, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(II)I

    move-result v10

    move v7, v10

    iput v10, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1375
    .end local v9    # "x":I
    :cond_5d
    :goto_5d
    iget v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1376
    .local v9, "nextIndex":I
    if-ltz v9, :cond_74

    .line 1377
    invoke-direct {p0, v9, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v10

    .line 1378
    .local v10, "x":I
    if-ne v10, v4, :cond_6b

    .line 1379
    move v9, v8

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    goto :goto_74

    .line 1380
    :cond_6b
    if-le v10, v4, :cond_74

    .line 1381
    invoke-static {v9, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(II)I

    move-result v8

    move v9, v8

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1383
    .end local v10    # "x":I
    :cond_74
    :goto_74
    if-gez v6, :cond_7e

    if-gez v9, :cond_7e

    if-gez v7, :cond_7e

    .line 1384
    const/4 v5, -0x3

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1385
    return v1

    .line 1387
    :cond_7e
    return v5
.end method

.method greylist-max-o shutdown()V
    .registers 3

    .line 1312
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1313
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    const/4 v1, -0x2

    if-ltz v0, :cond_a

    .line 1314
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1315
    :cond_a
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ltz v0, :cond_13

    .line 1316
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1317
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1319
    :cond_13
    const/4 v0, -0x3

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1324
    return-void
.end method

.method greylist-max-o takeIndexWrapped()Z
    .registers 4

    .line 1397
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1398
    return v1

    .line 1399
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_17

    .line 1402
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    .line 1403
    return v1

    .line 1405
    :cond_17
    const/4 v0, 0x0

    return v0
.end method
