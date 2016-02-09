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
    .line 1534
    const v0, -0x70000001

    #@4
    invoke-direct {p0, v0, v1, v1, v1}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@7
    .line 1535
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@9
    .line 1533
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
    .line 1540
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3
    .line 1541
    .local v4, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p2, :cond_4

    #@5
    if-eqz v4, :cond_4

    #@7
    array-length v3, v4

    #@8
    .local v3, "n":I
    if-lez v3, :cond_4

    #@a
    .line 1542
    add-int/lit8 v5, v3, -0x1

    #@c
    and-int/2addr v5, p1

    #@d
    invoke-static {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10
    move-result-object v0

    #@11
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4

    #@13
    .line 1545
    :cond_0
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@15
    .local v1, "eh":I
    if-ne v1, p1, :cond_2

    #@17
    .line 1546
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@19
    .local v2, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_1

    #@1b
    if-eqz v2, :cond_2

    #@1d
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    .line 1545
    if-eqz v5, :cond_2

    #@23
    .line 1547
    :cond_1
    return-object v0

    #@24
    .line 1548
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    :cond_2
    if-gez v1, :cond_3

    #@26
    .line 1549
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@29
    move-result-object v5

    #@2a
    return-object v5

    #@2b
    .line 1550
    :cond_3
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2d
    if-nez v0, :cond_0

    #@2f
    .line 1552
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v1    # "eh":I
    .end local v3    # "n":I
    :cond_4
    return-object v6
.end method
