.class abstract Ljava/util/EnumMap$EnumMapIterator;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EnumMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field lastReturnedIndex:I

.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 1

    #@0
    .prologue
    .line 517
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    .local p1, "this$0":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 519
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    #@8
    .line 522
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    #@b
    .line 517
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EnumMapIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/EnumMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;)V

    #@3
    return-void
.end method

.method private checkLastReturnedIndex()V
    .locals 1

    #@0
    .prologue
    .line 541
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 542
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 540
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 525
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    :goto_0
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    #@2
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    #@4
    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_0

    #@b
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    #@d
    invoke-static {v0}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    #@13
    aget-object v0, v0, v1

    #@15
    if-nez v0, :cond_0

    #@17
    .line 526
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    #@1d
    goto :goto_0

    #@1e
    .line 527
    :cond_0
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    #@20
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    #@22
    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    array-length v1, v1

    #@27
    if-eq v0, v1, :cond_1

    #@29
    const/4 v0, 0x1

    #@2a
    :goto_1
    return v0

    #@2b
    :cond_1
    const/4 v0, 0x0

    #@2c
    goto :goto_1
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 531
    invoke-direct {p0}, Ljava/util/EnumMap$EnumMapIterator;->checkLastReturnedIndex()V

    #@4
    .line 533
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    #@6
    invoke-static {v0}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    #@c
    aget-object v0, v0, v1

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 534
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    #@12
    invoke-static {v0}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    #@18
    aput-object v2, v0, v1

    #@1a
    .line 535
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    #@1c
    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    #@1f
    move-result v1

    #@20
    add-int/lit8 v1, v1, -0x1

    #@22
    invoke-static {v0, v1}, Ljava/util/EnumMap;->-set0(Ljava/util/EnumMap;I)I

    #@25
    .line 537
    :cond_0
    const/4 v0, -0x1

    #@26
    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    #@28
    .line 530
    return-void
.end method
