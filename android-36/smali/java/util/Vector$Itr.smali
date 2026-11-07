.class Ljava/util/Vector$Itr;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Vector;
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


# instance fields
.field greylist-max-o cursor:I

.field greylist-max-o expectedModCount:I

.field greylist-max-o lastRet:I

.field protected greylist-max-o limit:I

.field final synthetic blacklist this$0:Ljava/util/Vector;


# direct methods
.method private constructor blacklist <init>(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1243
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iget-object p1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget p1, p1, Ljava/util/Vector;->elementCount:I

    iput p1, p0, Ljava/util/Vector$Itr;->limit:I

    .line 1255
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1256
    iget-object p1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget p1, p1, Ljava/util/Vector;->modCount:I

    iput p1, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Vector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;)V

    return-void
.end method


# virtual methods
.method final greylist-max-o checkForComodification()V
    .registers 3

    .line 1315
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->modCount:I

    iget v1, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_9

    .line 1317
    return-void

    .line 1316
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1293
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 1297
    :try_start_6
    iget v1, p0, Ljava/util/Vector$Itr;->limit:I

    .line 1298
    .local v1, "size":I
    iget v2, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1299
    .local v2, "i":I
    if-lt v2, v1, :cond_e

    .line 1300
    monitor-exit v0

    return-void

    .line 1302
    :cond_e
    iget-object v3, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget-object v3, v3, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 1303
    .local v3, "es":[Ljava/lang/Object;
    array-length v4, v3

    if-ge v2, v4, :cond_35

    .line 1305
    :goto_15
    if-ge v2, v1, :cond_2a

    iget-object v4, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v4, v4, Ljava/util/Vector;->modCount:I

    iget v5, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    if-ne v4, v5, :cond_2a

    .line 1306
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-static {v3, v2}, Ljava/util/Vector;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v2, v4

    goto :goto_15

    .line 1308
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_2a
    iput v2, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1309
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1310
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1311
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "es":[Ljava/lang/Object;
    monitor-exit v0

    .line 1312
    return-void

    .line 1304
    .restart local v1    # "size":I
    .restart local v2    # "i":I
    .restart local v3    # "es":[Ljava/lang/Object;
    :cond_35
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    .end local p0    # "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    throw v4

    .line 1311
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "es":[Ljava/lang/Object;
    .restart local p0    # "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1261
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    iget v1, p0, Ljava/util/Vector$Itr;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1265
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 1266
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1267
    iget v1, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1270
    .local v1, "i":I
    iget v2, p0, Ljava/util/Vector$Itr;->limit:I

    if-ge v1, v2, :cond_1a

    .line 1272
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1273
    iget-object v2, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iput v1, p0, Ljava/util/Vector$Itr;->lastRet:I

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1271
    :cond_1a
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    throw v2

    .line 1274
    .end local v1    # "i":I
    .restart local p0    # "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist test-api remove()V
    .registers 5

    .line 1278
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    .line 1280
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 1281
    :try_start_8
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1282
    iget-object v2, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v3, p0, Ljava/util/Vector$Itr;->lastRet:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1283
    iget-object v2, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->modCount:I

    iput v2, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    .line 1285
    iget v2, p0, Ljava/util/Vector$Itr;->limit:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/Vector$Itr;->limit:I

    .line 1286
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 1287
    iget v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    iput v0, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1288
    iput v1, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1289
    return-void

    .line 1286
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1

    .line 1279
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
