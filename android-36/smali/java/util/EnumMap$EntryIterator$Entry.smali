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
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o index:I

.field final synthetic blacklist this$1:Ljava/util/EnumMap$EntryIterator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetindex(Ljava/util/EnumMap$EntryIterator$Entry;)I
    .registers 1

    iget p0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputindex(Ljava/util/EnumMap$EntryIterator$Entry;I)V
    .registers 2

    iput p1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/EnumMap$EntryIterator;I)V
    .registers 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 583
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iput-object p1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput p2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    .line 585
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap$EntryIterator;ILjava/util/EnumMap-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap$EntryIterator$Entry;-><init>(Ljava/util/EnumMap$EntryIterator;I)V

    return-void
.end method

.method private greylist-max-o checkIndexForEntryUse()V
    .registers 3

    .line 634
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-ltz v0, :cond_5

    .line 636
    return-void

    .line 635
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 605
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_b

    .line 606
    if-ne p1, p0, :cond_9

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    return v1

    .line 608
    :cond_b
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 611
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v3, v3, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v4, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v4, v4, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v4}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v4

    iget v5, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Ljava/util/EnumMap;->-$$Nest$munmaskNull(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 612
    .local v3, "ourValue":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 613
    .local v4, "hisValue":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v6, v6, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v6}, Ljava/util/EnumMap;->-$$Nest$fgetkeyUniverse(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v6

    iget v7, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_47

    if-eq v3, v4, :cond_46

    if-eqz v3, :cond_47

    .line 615
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    :cond_46
    goto :goto_48

    :cond_47
    move v1, v2

    .line 613
    :goto_48
    return v1

    .line 609
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "ourValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "hisValue":Ljava/lang/Object;
    :cond_49
    return v2
.end method

.method public blacklist getKey()Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 588
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 589
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-$$Nest$fgetkeyUniverse(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getKey()Ljava/lang/Object;
    .registers 2

    .line 580
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->getKey()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 593
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 594
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-$$Nest$munmaskNull(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 619
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_9

    .line 620
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 622
    :cond_9
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-$$Nest$mentryHashCode(Ljava/util/EnumMap;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 598
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 599
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-$$Nest$munmaskNull(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 600
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    iget-object v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v3, v3, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v3, p1}, Ljava/util/EnumMap;->-$$Nest$mmaskNull(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 601
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 626
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_9

    .line 627
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 629
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetkeyUniverse(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v2, v2, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v2}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    .line 630
    invoke-static {v1, v2}, Ljava/util/EnumMap;->-$$Nest$munmaskNull(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    return-object v0
.end method
