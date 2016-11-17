.class Ljava/util/ArrayList$Itr;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field protected limit:I

.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    #@0
    .prologue
    .line 812
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 818
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@7
    invoke-static {v0}, Ljava/util/ArrayList;->-get0(Ljava/util/ArrayList;)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Ljava/util/ArrayList$Itr;->limit:I

    #@d
    .line 821
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    #@10
    .line 822
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@12
    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    #@14
    iput v0, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    #@16
    .line 812
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList$Itr;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/ArrayList;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;)V

    #@3
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 862
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 863
    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@5
    invoke-static {v4}, Ljava/util/ArrayList;->-get0(Ljava/util/ArrayList;)I

    #@8
    move-result v3

    #@9
    .line 864
    .local v3, "size":I
    iget v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    #@b
    .line 865
    .local v1, "i":I
    if-lt v1, v3, :cond_0

    #@d
    .line 866
    return-void

    #@e
    .line 868
    :cond_0
    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@10
    iget-object v0, v4, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@12
    .line 869
    .local v0, "elementData":[Ljava/lang/Object;
    array-length v4, v0

    #@13
    if-lt v1, v4, :cond_1

    #@15
    .line 870
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@17
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1a
    throw v4

    #@1b
    .line 872
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-eq v2, v3, :cond_2

    #@1d
    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@1f
    iget v4, v4, Ljava/util/ArrayList;->modCount:I

    #@21
    iget v5, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    #@23
    if-ne v4, v5, :cond_2

    #@25
    .line 873
    add-int/lit8 v1, v2, 0x1

    #@27
    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v4, v0, v2

    #@29
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2c
    :cond_1
    move v2, v1

    #@2d
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@2e
    .line 876
    :cond_2
    iput v2, p0, Ljava/util/ArrayList$Itr;->cursor:I

    #@30
    .line 877
    add-int/lit8 v4, v2, -0x1

    #@32
    iput v4, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    #@34
    .line 879
    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@36
    iget v4, v4, Ljava/util/ArrayList;->modCount:I

    #@38
    iget v5, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    #@3a
    if-eq v4, v5, :cond_3

    #@3c
    .line 880
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@3e
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@41
    throw v4

    #@42
    .line 861
    :cond_3
    return-void
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 825
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget v0, p0, Ljava/util/ArrayList$Itr;->cursor:I

    #@2
    iget v1, p0, Ljava/util/ArrayList$Itr;->limit:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 830
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget-object v2, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@2
    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    #@4
    iget v3, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 831
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v2

    #@e
    .line 832
    :cond_0
    iget v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    #@10
    .line 833
    .local v1, "i":I
    iget v2, p0, Ljava/util/ArrayList$Itr;->limit:I

    #@12
    if-lt v1, v2, :cond_1

    #@14
    .line 834
    new-instance v2, Ljava/util/NoSuchElementException;

    #@16
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@19
    throw v2

    #@1a
    .line 835
    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@1c
    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@1e
    .line 836
    .local v0, "elementData":[Ljava/lang/Object;
    array-length v2, v0

    #@1f
    if-lt v1, v2, :cond_2

    #@21
    .line 837
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@23
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@26
    throw v2

    #@27
    .line 838
    :cond_2
    add-int/lit8 v2, v1, 0x1

    #@29
    iput v2, p0, Ljava/util/ArrayList$Itr;->cursor:I

    #@2b
    .line 839
    iput v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    #@2d
    aget-object v2, v0, v1

    #@2f
    return-object v2
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .line 843
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    #@2
    if-gez v1, :cond_0

    #@4
    .line 844
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v1

    #@a
    .line 845
    :cond_0
    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@c
    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    #@e
    iget v2, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    #@10
    if-eq v1, v2, :cond_1

    #@12
    .line 846
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@14
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@17
    throw v1

    #@18
    .line 849
    :cond_1
    :try_start_0
    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@1a
    iget v2, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    #@1c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    .line 850
    iget v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    #@21
    iput v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    #@23
    .line 851
    const/4 v1, -0x1

    #@24
    iput v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    #@26
    .line 852
    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    #@28
    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    #@2a
    iput v1, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    #@2c
    .line 853
    iget v1, p0, Ljava/util/ArrayList$Itr;->limit:I

    #@2e
    add-int/lit8 v1, v1, -0x1

    #@30
    iput v1, p0, Ljava/util/ArrayList$Itr;->limit:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 842
    return-void

    #@33
    .line 854
    :catch_0
    move-exception v0

    #@34
    .line 855
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@36
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@39
    throw v1
.end method
