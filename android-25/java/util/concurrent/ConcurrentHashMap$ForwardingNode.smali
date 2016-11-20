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
        "Ljava/util/concurrent/ConcurrentHashMap$Node",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ForwardingNode<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 2205
    const/4 v0, -0x1

    #@2
    invoke-direct {p0, v0, v1, v1, v1}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@5
    .line 2206
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@7
    .line 2204
    return-void
.end method


# virtual methods
.method find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 7
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ForwardingNode<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 2211
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3
    .line 2213
    .local v4, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz p2, :cond_0

    #@5
    if-nez v4, :cond_1

    #@7
    .line 2215
    :cond_0
    return-object v6

    #@8
    .line 2213
    :cond_1
    array-length v3, v4

    #@9
    .local v3, "n":I
    if-eqz v3, :cond_0

    #@b
    .line 2214
    add-int/lit8 v5, v3, -0x1

    #@d
    and-int/2addr v5, p1

    #@e
    invoke-static {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@11
    move-result-object v0

    #@12
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    #@14
    .line 2218
    :cond_2
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@16
    .local v1, "eh":I
    if-ne v1, p1, :cond_4

    #@18
    .line 2219
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1a
    .local v2, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_3

    #@1c
    if-eqz v2, :cond_4

    #@1e
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v5

    #@22
    .line 2218
    if-eqz v5, :cond_4

    #@24
    .line 2220
    :cond_3
    return-object v0

    #@25
    .line 2221
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    :cond_4
    if-gez v1, :cond_6

    #@27
    .line 2222
    instance-of v5, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@29
    if-eqz v5, :cond_5

    #@2b
    .line 2223
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@2d
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2f
    goto :goto_0

    #@30
    .line 2227
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@33
    move-result-object v5

    #@34
    return-object v5

    #@35
    .line 2229
    :cond_6
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@37
    if-nez v0, :cond_2

    #@39
    .line 2230
    return-object v6
.end method
