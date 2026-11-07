.class abstract Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Iter"
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
.field greylist-max-o lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2113
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2114
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->advance(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 2115
    return-void
.end method


# virtual methods
.method final blacklist advance(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2123
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    .local p1, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .line 2124
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 2125
    .local v1, "v":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz p1, :cond_12

    .line 2126
    :goto_6
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v0, v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v1, v2

    if-nez v2, :cond_12

    .line 2127
    move-object p1, v0

    goto :goto_6

    .line 2129
    :cond_12
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    .line 2130
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2131
    return-void
.end method

.method public final whitelist test-api hasNext()Z
    .registers 2

    .line 2118
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist test-api remove()V
    .registers 4

    .line 2135
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v1, v0

    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_13

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "k":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_13

    .line 2139
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2141
    return-void

    .line 2136
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
