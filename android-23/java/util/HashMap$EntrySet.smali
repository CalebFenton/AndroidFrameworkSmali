.class final Ljava/util/HashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    #@0
    .prologue
    .line 933
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$EntrySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/HashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 956
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 955
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 938
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 939
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 940
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 941
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    invoke-static {v1, v2, v3}, Ljava/util/HashMap;->-wrap0(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    #@1
    .line 953
    iget-object v1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@3
    iget v1, v1, Ljava/util/HashMap;->size:I

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 935
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->newEntryIterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 944
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 945
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 946
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 947
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    invoke-static {v1, v2, v3}, Ljava/util/HashMap;->-wrap1(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 950
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@2
    iget v0, v0, Ljava/util/HashMap;->size:I

    #@4
    return v0
.end method
