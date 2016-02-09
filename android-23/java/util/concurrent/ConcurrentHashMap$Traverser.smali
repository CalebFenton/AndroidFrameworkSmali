.class Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Traverser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field baseIndex:I

.field baseLimit:I

.field final baseSize:I

.field index:I

.field next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V
    .locals 1
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;III)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2565
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Traverser<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2566
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@5
    .line 2567
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    #@7
    .line 2568
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@9
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@b
    .line 2569
    iput p4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    #@d
    .line 2570
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10
    .line 2565
    return-void
.end method

.method private pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V
    .locals 2
    .param p2, "i"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2610
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Traverser<TK;TV;>;"
    .local p1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@2
    .line 2611
    .local v0, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .line 2612
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@6
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@8
    .line 2615
    :goto_0
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a
    .line 2616
    iput p3, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    #@c
    .line 2617
    iput p2, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    #@e
    .line 2618
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@10
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@12
    .line 2619
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@14
    .line 2609
    return-void

    #@15
    .line 2614
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@17
    .end local v0    # "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap$TableStack;-><init>()V

    #@1a
    .restart local v0    # "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    goto :goto_0
.end method

.method private recoverState(I)V
    .locals 5
    .param p1, "n"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Traverser<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 2629
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@3
    .local v2, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v2, :cond_0

    #@5
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@7
    iget v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    #@9
    .local v0, "len":I
    add-int/2addr v3, v0

    #@a
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@c
    if-lt v3, p1, :cond_0

    #@e
    .line 2630
    move p1, v0

    #@f
    .line 2631
    iget v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    #@11
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@13
    .line 2632
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@15
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    .line 2633
    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@19
    .line 2634
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@1b
    .line 2635
    .local v1, "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@1d
    iput-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@1f
    .line 2636
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@21
    .line 2637
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@23
    goto :goto_0

    #@24
    .line 2639
    .end local v0    # "len":I
    .end local v1    # "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    :cond_0
    if-nez v2, :cond_1

    #@26
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@28
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    #@2a
    add-int/2addr v3, v4

    #@2b
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@2d
    if-lt v3, p1, :cond_1

    #@2f
    .line 2640
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@31
    add-int/lit8 v3, v3, 0x1

    #@33
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@35
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@37
    .line 2627
    :cond_1
    return-void
.end method


# virtual methods
.method final advance()Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Traverser<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 2578
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    #@5
    .line 2579
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@7
    .line 2582
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@9
    .line 2583
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    return-object v0

    #@c
    .line 2584
    :cond_1
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@e
    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    #@10
    if-ge v4, v5, :cond_2

    #@12
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_3

    #@16
    .line 2586
    .end local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@18
    return-object v6

    #@19
    .line 2585
    .restart local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    array-length v2, v3

    #@1a
    .local v2, "n":I
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@1c
    .local v1, "i":I
    if-le v2, v1, :cond_2

    #@1e
    if-ltz v1, :cond_2

    #@20
    .line 2587
    invoke-static {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@23
    move-result-object v0

    #@24
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_5

    #@26
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@28
    if-gez v4, :cond_5

    #@2a
    .line 2588
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@2c
    if-eqz v4, :cond_4

    #@2e
    .line 2589
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@30
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@32
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@34
    .line 2590
    const/4 v0, 0x0

    #@35
    .line 2591
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V

    #@38
    goto :goto_0

    #@39
    .line 2594
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@3b
    if-eqz v4, :cond_6

    #@3d
    .line 2595
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@3f
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@41
    .line 2599
    :cond_5
    :goto_1
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@43
    if-eqz v4, :cond_7

    #@45
    .line 2600
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->recoverState(I)V

    #@48
    goto :goto_0

    #@49
    .line 2597
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    const/4 v0, 0x0

    #@4a
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_1

    #@4b
    .line 2601
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    #@4d
    add-int/2addr v4, v1

    #@4e
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@50
    if-lt v4, v2, :cond_0

    #@52
    .line 2602
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@54
    add-int/lit8 v4, v4, 0x1

    #@56
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@58
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@5a
    goto :goto_0
.end method
