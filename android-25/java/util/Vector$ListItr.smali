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
        "Ljava/util/Vector",
        "<TE;>.Itr;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljava/util/Vector;I)V
    .locals 1
    .param p2, "index"    # I

    #@0
    .prologue
    .line 1198
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "this$0":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iput-object p1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    #@2
    .line 1199
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;Ljava/util/Vector$Itr;)V

    #@6
    .line 1200
    iput p2, p0, Ljava/util/Vector$Itr;->cursor:I

    #@8
    .line 1198
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1236
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    #@2
    .line 1237
    .local v0, "i":I
    iget-object v2, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    #@4
    monitor-enter v2

    #@5
    .line 1238
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    #@8
    .line 1239
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    #@a
    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    #@d
    .line 1240
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    #@f
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@11
    iput v1, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    #@13
    .line 1241
    iget v1, p0, Ljava/util/Vector$Itr;->limit:I

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    iput v1, p0, Ljava/util/Vector$Itr;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 1243
    add-int/lit8 v1, v0, 0x1

    #@1c
    iput v1, p0, Ljava/util/Vector$Itr;->cursor:I

    #@1e
    .line 1244
    const/4 v1, -0x1

    #@1f
    iput v1, p0, Ljava/util/Vector$Itr;->lastRet:I

    #@21
    .line 1235
    return-void

    #@22
    .line 1237
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public hasPrevious()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    const/4 v0, 0x0

    #@1
    .line 1204
    iget v1, p0, Ljava/util/Vector$Itr;->cursor:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public nextIndex()I
    .locals 1

    #@0
    .prologue
    .line 1208
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    #@2
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 1216
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget-object v2, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    #@2
    monitor-enter v2

    #@3
    .line 1217
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    #@6
    .line 1218
    iget v1, p0, Ljava/util/Vector$Itr;->cursor:I

    #@8
    add-int/lit8 v0, v1, -0x1

    #@a
    .line 1219
    .local v0, "i":I
    if-gez v0, :cond_0

    #@c
    .line 1220
    new-instance v1, Ljava/util/NoSuchElementException;

    #@e
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1216
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 1221
    .restart local v0    # "i":I
    :cond_0
    :try_start_1
    iput v0, p0, Ljava/util/Vector$Itr;->cursor:I

    #@17
    .line 1222
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    #@19
    iput v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    #@1b
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result-object v1

    #@1f
    monitor-exit v2

    #@20
    return-object v1
.end method

.method public previousIndex()I
    .locals 1

    #@0
    .prologue
    .line 1212
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1227
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1228
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1229
    :cond_0
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    #@d
    monitor-enter v1

    #@e
    .line 1230
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    #@11
    .line 1231
    iget-object v0, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    #@13
    iget v2, p0, Ljava/util/Vector$Itr;->lastRet:I

    #@15
    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 1226
    return-void

    #@1a
    .line 1229
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method
