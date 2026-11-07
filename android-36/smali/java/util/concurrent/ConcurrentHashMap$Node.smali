.class Ljava/util/concurrent/ConcurrentHashMap$Node;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o hash:I

.field final greylist-max-o key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field volatile greylist-max-o next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile greylist-max-o val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .line 631
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .line 633
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 634
    iput-object p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 635
    return-void
.end method

.method constructor greylist-max-o <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 638
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 639
    iput-object p4, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 640
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 654
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2f

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 655
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "k":Ljava/lang/Object;
    if-eqz v0, :cond_2f

    .line 656
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;
    if-eqz v0, :cond_2f

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v2, v0, :cond_22

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 657
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_22
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "u":Ljava/lang/Object;
    if-eq v3, v0, :cond_2d

    .line 658
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2d
    const/4 v0, 0x1

    goto :goto_30

    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "u":Ljava/lang/Object;
    :cond_2f
    const/4 v0, 0x0

    .line 654
    :goto_30
    return v0
.end method

.method greylist-max-o find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 6
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

    .line 665
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v0, p0

    .line 666
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p2, :cond_1a

    .line 669
    :cond_3
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v1, p1, :cond_15

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "ek":Ljava/lang/Object;, "TK;"
    if-eq v1, p2, :cond_14

    if-eqz v2, :cond_15

    .line 670
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 671
    :cond_14
    return-object v0

    .line 672
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    :cond_15
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v1

    if-nez v1, :cond_3

    .line 674
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 642
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 643
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 644
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 649
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 646
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/concurrent/Helpers;->mapEntryToString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
