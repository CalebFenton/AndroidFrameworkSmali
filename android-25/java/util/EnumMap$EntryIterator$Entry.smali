.class Ljava/util/EnumMap$EntryIterator$Entry;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap$EntryIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$1:Ljava/util/EnumMap$EntryIterator;


# direct methods
.method static synthetic -get0(Ljava/util/EnumMap$EntryIterator$Entry;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@2
    return v0
.end method

.method static synthetic -set0(Ljava/util/EnumMap$EntryIterator$Entry;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@2
    return p1
.end method

.method private constructor <init>(Ljava/util/EnumMap$EntryIterator;I)V
    .locals 0
    .param p2, "index"    # I

    #@0
    .prologue
    .line 585
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "this$1":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 586
    iput p2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@7
    .line 585
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap$EntryIterator;ILjava/util/EnumMap$EntryIterator$Entry;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/EnumMap$EntryIterator;
    .param p2, "index"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap$EntryIterator$Entry;-><init>(Ljava/util/EnumMap$EntryIterator;I)V

    #@3
    return-void
.end method

.method private checkIndexForEntryUse()V
    .locals 2

    #@0
    .prologue
    .line 637
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 638
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Entry was removed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 636
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 607
    iget v5, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@4
    if-gez v5, :cond_1

    #@6
    .line 608
    if-ne p1, p0, :cond_0

    #@8
    :goto_0
    return v3

    #@9
    :cond_0
    move v3, v4

    #@a
    goto :goto_0

    #@b
    .line 610
    :cond_1
    instance-of v5, p1, Ljava/util/Map$Entry;

    #@d
    if-nez v5, :cond_2

    #@f
    .line 611
    return v4

    #@10
    :cond_2
    move-object v0, p1

    #@11
    .line 613
    check-cast v0, Ljava/util/Map$Entry;

    #@13
    .line 614
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v5, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@15
    iget-object v5, v5, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@17
    iget-object v6, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@19
    iget-object v6, v6, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@1b
    invoke-static {v6}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    iget v7, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@21
    aget-object v6, v6, v7

    #@23
    invoke-static {v5, v6}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    .line 615
    .local v2, "ourValue":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    .line 616
    .local v1, "hisValue":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    iget-object v6, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@31
    iget-object v6, v6, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@33
    invoke-static {v6}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    #@36
    move-result-object v6

    #@37
    iget v7, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@39
    aget-object v6, v6, v7

    #@3b
    if-ne v5, v6, :cond_3

    #@3d
    .line 617
    if-eq v2, v1, :cond_4

    #@3f
    .line 618
    if-eqz v2, :cond_3

    #@41
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v4

    #@45
    .line 616
    :cond_3
    :goto_1
    return v4

    #@46
    :cond_4
    move v4, v3

    #@47
    .line 617
    goto :goto_1
.end method

.method public getKey()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 590
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    #@3
    .line 591
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@5
    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@7
    invoke-static {v0}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@d
    aget-object v0, v0, v1

    #@f
    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 589
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->getKey()Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 595
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    #@3
    .line 596
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@5
    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@7
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@9
    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@b
    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@11
    aget-object v1, v1, v2

    #@13
    invoke-static {v0, v1}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 622
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 623
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 625
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@b
    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@d
    iget v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@f
    invoke-static {v0, v1}, Ljava/util/EnumMap;->-wrap2(Ljava/util/EnumMap;I)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 600
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    #@3
    .line 601
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@5
    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@7
    iget-object v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@9
    iget-object v2, v2, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@b
    invoke-static {v2}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    iget v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@11
    aget-object v2, v2, v3

    #@13
    invoke-static {v1, v2}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .line 602
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@19
    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@1b
    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@21
    iget-object v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@23
    iget-object v3, v3, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@25
    invoke-static {v3, p1}, Ljava/util/EnumMap;->-wrap3(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    aput-object v3, v1, v2

    #@2b
    .line 603
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 629
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 630
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 632
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@10
    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@12
    invoke-static {v1}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    #@15
    move-result-object v1

    #@16
    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@18
    aget-object v1, v1, v2

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 633
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@27
    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@29
    iget-object v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    #@2b
    iget-object v2, v2, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@2d
    invoke-static {v2}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    iget v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    #@33
    aget-object v2, v2, v3

    #@35
    invoke-static {v1, v2}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0
.end method
