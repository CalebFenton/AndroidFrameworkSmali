.class abstract Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SubMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o expectedModCount:I

.field final greylist-max-o fenceKey:Ljava/lang/Object;

.field greylist-max-o lastReturned:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o next:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/TreeMap$NavigableSubMap;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2041
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2042
    iget-object v0, p1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    .line 2043
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 2044
    iput-object p2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 2045
    if-nez p3, :cond_19

    invoke-static {}, Ljava/util/TreeMap;->-$$Nest$sfgetUNBOUNDED()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b

    :cond_19
    iget-object v0, p3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    :goto_1b
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    .line 2046
    return-void
.end method


# virtual methods
.method public final whitelist test-api hasNext()Z
    .registers 3

    .line 2049
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method final greylist-max-o nextEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2053
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 2054
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_25

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-eq v1, v2, :cond_25

    .line 2056
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_1f

    .line 2058
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 2059
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 2060
    return-object v0

    .line 2057
    :cond_1f
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 2055
    :cond_25
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method final greylist-max-o prevEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2064
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 2065
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_25

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-eq v1, v2, :cond_25

    .line 2067
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_1f

    .line 2069
    invoke-static {v0}, Ljava/util/TreeMap;->predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 2070
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 2071
    return-object v0

    .line 2068
    :cond_1f
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 2066
    :cond_25
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method final greylist-max-o removeAscending()V
    .registers 3

    .line 2075
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_3d

    .line 2077
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-ne v0, v1, :cond_37

    .line 2080
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_20

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_20

    .line 2081
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 2082
    :cond_20
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v0, v1}, Ljava/util/TreeMap;->-$$Nest$mdeleteEntry(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2083
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 2084
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    .line 2085
    return-void

    .line 2078
    :cond_37
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 2076
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final greylist-max-o removeDescending()V
    .registers 3

    .line 2088
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_2d

    .line 2090
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-ne v0, v1, :cond_27

    .line 2092
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v0, v1}, Ljava/util/TreeMap;->-$$Nest$mdeleteEntry(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2093
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 2094
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    .line 2095
    return-void

    .line 2091
    :cond_27
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 2089
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
