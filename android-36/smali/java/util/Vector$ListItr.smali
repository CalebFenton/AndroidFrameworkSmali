.class final Ljava/util/Vector$ListItr;
.super Ljava/util/Vector$Itr;
.source "Vector.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector<",
        "TE;>.Itr;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/Vector;


# direct methods
.method constructor blacklist <init>(Ljava/util/Vector;I)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/Vector;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1324
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iput-object p1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    .line 1325
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;Ljava/util/Vector-IA;)V

    .line 1326
    iput p2, p0, Ljava/util/Vector$ListItr;->cursor:I

    .line 1327
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1362
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/Vector$ListItr;->cursor:I

    .line 1363
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    monitor-enter v1

    .line 1364
    :try_start_5
    invoke-virtual {p0}, Ljava/util/Vector$ListItr;->checkForComodification()V

    .line 1365
    iget-object v2, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    invoke-virtual {v2, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 1366
    iget-object v2, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->modCount:I

    iput v2, p0, Ljava/util/Vector$ListItr;->expectedModCount:I

    .line 1368
    iget v2, p0, Ljava/util/Vector$ListItr;->limit:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Vector$ListItr;->limit:I

    .line 1369
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_22

    .line 1370
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/Vector$ListItr;->cursor:I

    .line 1371
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Vector$ListItr;->lastRet:I

    .line 1372
    return-void

    .line 1369
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 1330
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget v0, p0, Ljava/util/Vector$ListItr;->cursor:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 1334
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget v0, p0, Ljava/util/Vector$ListItr;->cursor:I

    return v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1342
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget-object v0, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 1343
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Vector$ListItr;->checkForComodification()V

    .line 1344
    iget v1, p0, Ljava/util/Vector$ListItr;->cursor:I

    add-int/lit8 v1, v1, -0x1

    .line 1345
    .local v1, "i":I
    if-ltz v1, :cond_18

    .line 1347
    iput v1, p0, Ljava/util/Vector$ListItr;->cursor:I

    .line 1348
    iget-object v2, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    iput v1, p0, Ljava/util/Vector$ListItr;->lastRet:I

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1346
    :cond_18
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    throw v2

    .line 1349
    .end local v1    # "i":I
    .restart local p0    # "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 1338
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget v0, p0, Ljava/util/Vector$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1353
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/Vector$ListItr;->lastRet:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 1355
    iget-object v0, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 1356
    :try_start_8
    invoke-virtual {p0}, Ljava/util/Vector$ListItr;->checkForComodification()V

    .line 1357
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    iget v2, p0, Ljava/util/Vector$ListItr;->lastRet:I

    invoke-virtual {v1, v2, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1358
    monitor-exit v0

    .line 1359
    return-void

    .line 1358
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1

    .line 1354
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
