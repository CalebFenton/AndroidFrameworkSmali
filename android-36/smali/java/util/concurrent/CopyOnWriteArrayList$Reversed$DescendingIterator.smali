.class Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final blacklist it:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1757
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingIterator;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1758
    iget-object v0, p1, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1759
    :try_start_6
    iget-object v1, p1, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    iget-object v2, p1, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;->it:Ljava/util/ListIterator;

    .line 1760
    monitor-exit v0

    .line 1761
    return-void

    .line 1760
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1762
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1763
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1764
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method
