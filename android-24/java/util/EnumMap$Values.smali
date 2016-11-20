.class Ljava/util/EnumMap$Values;
.super Ljava/util/AbstractCollection;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 0

    #@0
    .prologue
    .line 427
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    .local p1, "this$0":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$Values;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/EnumMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$Values;-><init>(Ljava/util/EnumMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 450
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    #@5
    .line 449
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 435
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 429
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/EnumMap$ValueIterator;

    #@2
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$ValueIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$ValueIterator;)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 438
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-static {v1, p1}, Ljava/util/EnumMap;->-wrap3(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    .line 440
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    #@9
    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    array-length v1, v1

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 441
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    #@12
    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    aget-object v1, v1, v0

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 442
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    #@20
    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x0

    #@25
    aput-object v2, v1, v0

    #@27
    .line 443
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    #@29
    invoke-static {v1}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    #@2c
    move-result v2

    #@2d
    add-int/lit8 v2, v2, -0x1

    #@2f
    invoke-static {v1, v2}, Ljava/util/EnumMap;->-set0(Ljava/util/EnumMap;I)I

    #@32
    .line 444
    const/4 v1, 0x1

    #@33
    return v1

    #@34
    .line 440
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 447
    :cond_1
    const/4 v1, 0x0

    #@38
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 432
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
