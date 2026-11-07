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
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 429
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iput-object p1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/EnumMap$Values;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 452
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 453
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 437
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 431
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/EnumMap$ValueIterator;

    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$ValueIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 440
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v0, p1}, Ljava/util/EnumMap;->-$$Nest$mmaskNull(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 442
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 443
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 444
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 445
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetsize(Ljava/util/EnumMap;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/EnumMap;->-$$Nest$fputsize(Ljava/util/EnumMap;I)V

    .line 446
    return v3

    .line 442
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 449
    .end local v0    # "i":I
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 434
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-$$Nest$fgetsize(Ljava/util/EnumMap;)I

    move-result v0

    return v0
.end method
