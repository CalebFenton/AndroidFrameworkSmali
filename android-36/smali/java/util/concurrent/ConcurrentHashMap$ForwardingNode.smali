.class final Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;
.super Ljava/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForwardingNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Node<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2239
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2240
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2241
    return-void
.end method


# virtual methods
.method greylist-max-o find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 10
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2245
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2247
    .local v0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_2
    const/4 v1, 0x0

    if-eqz p2, :cond_41

    if-eqz v0, :cond_41

    array-length v2, v0

    move v3, v2

    .local v3, "n":I
    if-eqz v2, :cond_41

    add-int/lit8 v2, v3, -0x1

    and-int/2addr v2, p1

    .line 2248
    invoke-static {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v4, v2

    .local v4, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v2, :cond_16

    goto :goto_41

    .line 2252
    :cond_16
    :goto_16
    iget v2, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v5, v2

    .local v5, "eh":I
    if-ne v2, p1, :cond_29

    iget-object v2, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v6, v2

    .local v6, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_28

    if-eqz v6, :cond_29

    .line 2253
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2254
    :cond_28
    return-object v4

    .line 2255
    .end local v6    # "ek":Ljava/lang/Object;, "TK;"
    :cond_29
    if-gez v5, :cond_3a

    .line 2256
    instance-of v1, v4, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v1, :cond_35

    .line 2257
    move-object v1, v4

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2258
    goto :goto_2

    .line 2261
    :cond_35
    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    return-object v1

    .line 2263
    :cond_3a
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v4, v2

    if-nez v2, :cond_40

    .line 2264
    return-object v1

    .line 2265
    .end local v5    # "eh":I
    :cond_40
    goto :goto_16

    .line 2249
    .end local v3    # "n":I
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_41
    :goto_41
    return-object v1
.end method
