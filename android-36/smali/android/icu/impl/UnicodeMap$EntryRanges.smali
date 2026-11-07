.class Landroid/icu/impl/UnicodeMap$EntryRanges;
.super Ljava/lang/Object;
.source "UnicodeMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UnicodeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryRanges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/impl/UnicodeMap$EntryRange<",
        "TT;>;>;",
        "Ljava/util/Iterator<",
        "Landroid/icu/impl/UnicodeMap$EntryRange<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private blacklist lastRealRange:I

.field private blacklist pos:I

.field private blacklist result:Landroid/icu/impl/UnicodeMap$EntryRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/UnicodeMap$EntryRange<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/icu/impl/UnicodeMap;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/impl/UnicodeMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1005
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntryRanges;, "Landroid/icu/impl/UnicodeMap<TT;>.EntryRanges;"
    iput-object p1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1007
    new-instance p1, Landroid/icu/impl/UnicodeMap$EntryRange;

    invoke-direct {p1}, Landroid/icu/impl/UnicodeMap$EntryRange;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->result:Landroid/icu/impl/UnicodeMap$EntryRange;

    .line 1008
    iget-object p1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    iget-object p1, p1, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    iget-object v0, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-static {v0}, Landroid/icu/impl/UnicodeMap;->-$$Nest$fgetlength(Landroid/icu/impl/UnicodeMap;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    aget-object p1, p1, v0

    if-nez p1, :cond_25

    iget-object p1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-static {p1}, Landroid/icu/impl/UnicodeMap;->-$$Nest$fgetlength(Landroid/icu/impl/UnicodeMap;)I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    goto :goto_2d

    :cond_25
    iget-object p1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-static {p1}, Landroid/icu/impl/UnicodeMap;->-$$Nest$fgetlength(Landroid/icu/impl/UnicodeMap;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2d
    iput p1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->lastRealRange:I

    .line 1009
    iget-object p1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-static {p1}, Landroid/icu/impl/UnicodeMap;->-$$Nest$fgetstringMap(Landroid/icu/impl/UnicodeMap;)Ljava/util/TreeMap;

    move-result-object p1

    if-nez p1, :cond_39

    const/4 p1, 0x0

    goto :goto_47

    :cond_39
    iget-object p1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-static {p1}, Landroid/icu/impl/UnicodeMap;->-$$Nest$fgetstringMap(Landroid/icu/impl/UnicodeMap;)Ljava/util/TreeMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    iput-object p1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->stringIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/UnicodeMap;Landroid/icu/impl/UnicodeMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/UnicodeMap$EntryRanges;-><init>(Landroid/icu/impl/UnicodeMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1015
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntryRanges;, "Landroid/icu/impl/UnicodeMap<TT;>.EntryRanges;"
    iget v0, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->pos:I

    iget v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->lastRealRange:I

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->stringIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/UnicodeMap$EntryRange<",
            "TT;>;>;"
        }
    .end annotation

    .line 1012
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntryRanges;, "Landroid/icu/impl/UnicodeMap<TT;>.EntryRanges;"
    return-object p0
.end method

.method public blacklist next()Landroid/icu/impl/UnicodeMap$EntryRange;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/UnicodeMap$EntryRange<",
            "TT;>;"
        }
    .end annotation

    .line 1019
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntryRanges;, "Landroid/icu/impl/UnicodeMap<TT;>.EntryRanges;"
    iget v0, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->pos:I

    iget v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->lastRealRange:I

    if-ge v0, v1, :cond_4c

    .line 1020
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    iget-object v0, v0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    iget v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->pos:I

    aget-object v0, v0, v1

    .line 1021
    .local v0, "temp":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1c

    .line 1022
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    iget-object v1, v1, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    iget v2, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->pos:I

    aget-object v0, v1, v2

    .line 1024
    :cond_1c
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->result:Landroid/icu/impl/UnicodeMap$EntryRange;

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-static {v2}, Landroid/icu/impl/UnicodeMap;->-$$Nest$fgettransitions(Landroid/icu/impl/UnicodeMap;)[I

    move-result-object v2

    iget v3, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->pos:I

    aget v2, v2, v3

    iput v2, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->codepoint:I

    .line 1025
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->result:Landroid/icu/impl/UnicodeMap$EntryRange;

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->this$0:Landroid/icu/impl/UnicodeMap;

    invoke-static {v2}, Landroid/icu/impl/UnicodeMap;->-$$Nest$fgettransitions(Landroid/icu/impl/UnicodeMap;)[I

    move-result-object v2

    iget v3, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->pos:I

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->codepointEnd:I

    .line 1026
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->result:Landroid/icu/impl/UnicodeMap$EntryRange;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    .line 1027
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->result:Landroid/icu/impl/UnicodeMap$EntryRange;

    iput-object v0, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->value:Ljava/lang/Object;

    .line 1028
    iget v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->pos:I

    .line 1029
    .end local v0    # "temp":Ljava/lang/Object;, "TT;"
    goto :goto_6f

    .line 1030
    :cond_4c
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1031
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->result:Landroid/icu/impl/UnicodeMap$EntryRange;

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->result:Landroid/icu/impl/UnicodeMap$EntryRange;

    const/4 v3, -0x1

    iput v3, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->codepointEnd:I

    iput v3, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->codepoint:I

    .line 1032
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->result:Landroid/icu/impl/UnicodeMap$EntryRange;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    .line 1033
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->result:Landroid/icu/impl/UnicodeMap$EntryRange;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->value:Ljava/lang/Object;

    .line 1035
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    :goto_6f
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap$EntryRanges;->result:Landroid/icu/impl/UnicodeMap$EntryRange;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1005
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntryRanges;, "Landroid/icu/impl/UnicodeMap<TT;>.EntryRanges;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap$EntryRanges;->next()Landroid/icu/impl/UnicodeMap$EntryRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1038
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntryRanges;, "Landroid/icu/impl/UnicodeMap<TT;>.EntryRanges;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
