.class abstract Ljava/util/LinkedHashMap$LinkedHashIterator;
.super Ljava/lang/Object;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LinkedHashIterator"
.end annotation


# instance fields
.field blacklist current:Ljava/util/LinkedHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o expectedModCount:I

.field blacklist next:Ljava/util/LinkedHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field blacklist reversed:Z

.field final synthetic blacklist this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;Z)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;
    .param p2, "reversed"    # Z
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

    .line 1047
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    iput-boolean p2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->reversed:Z

    .line 1049
    if-eqz p2, :cond_c

    iget-object v0, p1, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_e

    :cond_c
    iget-object v0, p1, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    :goto_e
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$Entry;

    .line 1050
    iget v0, p1, Ljava/util/LinkedHashMap;->modCount:I

    iput v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    .line 1051
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->current:Ljava/util/LinkedHashMap$Entry;

    .line 1052
    return-void
.end method


# virtual methods
.method public final whitelist test-api hasNext()Z
    .registers 2

    .line 1055
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$Entry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final blacklist nextNode()Ljava/util/LinkedHashMap$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1059
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$Entry;

    .line 1060
    .local v0, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    iget v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    if-ne v1, v2, :cond_20

    .line 1062
    if-eqz v0, :cond_1a

    .line 1064
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->current:Ljava/util/LinkedHashMap$Entry;

    .line 1065
    iget-boolean v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->reversed:Z

    if-eqz v1, :cond_15

    iget-object v1, v0, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    goto :goto_17

    :cond_15
    iget-object v1, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    :goto_17
    iput-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$Entry;

    .line 1066
    return-object v0

    .line 1063
    :cond_1a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1061
    :cond_20
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api remove()V
    .registers 9

    .line 1070
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->current:Ljava/util/LinkedHashMap$Entry;

    .line 1071
    .local v0, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_28

    .line 1073
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    iget v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    if-ne v1, v2, :cond_22

    .line 1075
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->current:Ljava/util/LinkedHashMap$Entry;

    .line 1076
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v3, v0, Ljava/util/HashMap$Node;->hash:I

    iget-object v4, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 1077
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    iput v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    .line 1078
    return-void

    .line 1074
    :cond_22
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1072
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
