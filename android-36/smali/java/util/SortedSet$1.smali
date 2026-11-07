.class Ljava/util/SortedSet$1;
.super Ljava/util/Spliterators$IteratorSpliterator;
.source "SortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/SortedSet;->spliterator()Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$IteratorSpliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/SortedSet;


# direct methods
.method constructor blacklist <init>(Ljava/util/SortedSet;Ljava/util/Collection;I)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/SortedSet;
    .param p3, "characteristics"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 257
    .local p0, "this":Ljava/util/SortedSet$1;, "Ljava/util/SortedSet$1;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iput-object p1, p0, Ljava/util/SortedSet$1;->this$0:Ljava/util/SortedSet;

    invoke-direct {p0, p2, p3}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 260
    .local p0, "this":Ljava/util/SortedSet$1;, "Ljava/util/SortedSet$1;"
    iget-object v0, p0, Ljava/util/SortedSet$1;->this$0:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
