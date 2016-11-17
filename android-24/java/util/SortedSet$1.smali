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
        "Ljava/util/Spliterators$IteratorSpliterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Ljava/util/Collection;I)V
    .locals 0
    .param p3, "$anonymous1"    # I

    #@0
    .prologue
    .line 256
    .local p1, "this$0":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p2, "$anonymous0":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iput-object p1, p0, Ljava/util/SortedSet$1;->this$0:Ljava/util/SortedSet;

    #@2
    invoke-direct {p0, p2, p3}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    #@5
    .line 257
    return-void
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Ljava/util/SortedSet$1;->this$0:Ljava/util/SortedSet;

    #@2
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
