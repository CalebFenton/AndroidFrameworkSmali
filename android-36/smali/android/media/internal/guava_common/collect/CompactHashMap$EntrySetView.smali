.class Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 741
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 750
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 760
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 762
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 763
    :cond_11
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 764
    check-cast p1, Ljava/util/Map$Entry;

    .line 765
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I
    invoke-static {v0, v2}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$500(Landroid/media/internal/guava_common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_37

    .line 766
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->value(I)Ljava/lang/Object;
    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$600(Landroid/media/internal/guava_common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 p0, 0x1

    return p0

    :cond_37
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 755
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 773
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 775
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 776
    :cond_11
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 777
    check-cast p1, Ljava/util/Map$Entry;

    .line 778
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_21

    return v1

    .line 781
    :cond_21
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->hashTableMask()I
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$700(Landroid/media/internal/guava_common/collect/CompactHashMap;)I

    move-result v4

    .line 784
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 785
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    .line 787
    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$800(Landroid/media/internal/guava_common/collect/CompactHashMap;)Ljava/lang/Object;

    move-result-object v5

    iget-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    .line 788
    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$900(Landroid/media/internal/guava_common/collect/CompactHashMap;)[I

    move-result-object v6

    iget-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    .line 789
    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$1000(Landroid/media/internal/guava_common/collect/CompactHashMap;)[Ljava/lang/Object;

    move-result-object v7

    iget-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    .line 790
    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$1100(Landroid/media/internal/guava_common/collect/CompactHashMap;)[Ljava/lang/Object;

    move-result-object v8

    .line 783
    invoke-static/range {v2 .. v8}, Landroid/media/internal/guava_common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4f

    return v1

    .line 795
    :cond_4f
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {v0, p1, v4}, Landroid/media/internal/guava_common/collect/CompactHashMap;->moveLastEntry(II)V

    .line 796
    iget-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    # operator-- for: Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$1210(Landroid/media/internal/guava_common/collect/CompactHashMap;)I

    .line 797
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->incrementModCount()V

    const/4 p0, 0x1

    return p0

    :cond_60
    return v1
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 745
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result p0

    return p0
.end method
