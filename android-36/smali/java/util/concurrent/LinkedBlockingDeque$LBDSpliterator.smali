.class final Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LBDSpliterator"
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

.field greylist-max-o current:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o est:J

.field greylist-max-o exhausted:Z

.field final synthetic blacklist this$0:Ljava/util/concurrent/LinkedBlockingDeque;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1187
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    iget-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    .line 1187
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1262
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator;"
    const/16 v0, 0x1110

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1189
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator;"
    iget-wide v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

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

    .line 1252
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v0, :cond_14

    .line 1254
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    .line 1255
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1256
    .local v0, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1257
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/LinkedBlockingDeque$Node;)V

    .line 1259
    .end local v0    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_14
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1226
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v0, :cond_3f

    .line 1228
    const/4 v0, 0x0

    .line 1229
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1230
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1233
    :try_start_f
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v3, v2

    .local v3, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v2, :cond_1b

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v3, v2

    if-eqz v2, :cond_29

    .line 1235
    :cond_1b
    iget-object v2, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    move-object v0, v2

    .line 1236
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v2

    move-object v3, v2

    .line 1237
    if-nez v0, :cond_29

    if-nez v3, :cond_1b

    .line 1238
    :cond_29
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    const/4 v2, 0x1

    if-nez v3, :cond_30

    .line 1239
    iput-boolean v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_3a

    .line 1241
    .end local v3    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1242
    nop

    .line 1243
    if-eqz v0, :cond_3f

    .line 1244
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1245
    return v2

    .line 1241
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1242
    throw v2

    .line 1248
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_3f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1193
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator;"
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v0, :cond_76

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v1, v0

    if-eqz v0, :cond_76

    :cond_10
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_76

    .line 1196
    iget v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->batch:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/high16 v3, 0x2000000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->batch:I

    .line 1197
    .local v0, "n":I
    new-array v3, v0, [Ljava/lang/Object;

    .line 1198
    .local v3, "a":[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v4, v4, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1199
    .local v4, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v5, 0x0

    .line 1200
    .local v5, "i":I
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1201
    .local v6, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1203
    if-nez v6, :cond_38

    :try_start_2e
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v7, v7, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v6, v7

    if-eqz v7, :cond_50

    goto :goto_38

    .line 1208
    :catchall_36
    move-exception v2

    goto :goto_4c

    .line 1204
    :cond_38
    :goto_38
    if-eqz v6, :cond_50

    if-ge v5, v0, :cond_50

    .line 1205
    iget-object v7, v6, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v7, v3, v5

    if-eqz v7, :cond_44

    .line 1206
    add-int/lit8 v5, v5, 0x1

    .line 1204
    :cond_44
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/LinkedBlockingDeque;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v7
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_36

    move-object v6, v7

    goto :goto_38

    .line 1208
    :goto_4c
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1209
    throw v2

    .line 1208
    :cond_50
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1209
    nop

    .line 1210
    iput-object v6, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    const-wide/16 v7, 0x0

    if-nez v6, :cond_5f

    .line 1211
    iput-wide v7, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    .line 1212
    iput-boolean v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    goto :goto_6b

    .line 1214
    :cond_5f
    iget-wide v9, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    int-to-long v11, v5

    sub-long/2addr v9, v11

    iput-wide v9, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    cmp-long v2, v9, v7

    if-gez v2, :cond_6b

    .line 1215
    iput-wide v7, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    .line 1216
    :cond_6b
    :goto_6b
    if-lez v5, :cond_76

    .line 1217
    nop

    .line 1218
    const/4 v2, 0x0

    const/16 v7, 0x1110

    invoke-static {v3, v2, v5, v7}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v2

    .line 1217
    return-object v2

    .line 1222
    .end local v0    # "n":I
    .end local v1    # "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v3    # "a":[Ljava/lang/Object;
    .end local v4    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "i":I
    .end local v6    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_76
    const/4 v0, 0x0

    return-object v0
.end method
