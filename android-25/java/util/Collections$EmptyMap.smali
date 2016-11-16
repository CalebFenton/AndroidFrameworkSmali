.class Ljava/util/Collections$EmptyMap;
.super Ljava/util/AbstractMap;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x593614855adce7d0L


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3764
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collections$EmptyMap;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Collections$EmptyMap;-><init>()V

    #@3
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3848
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@2
    return-object v0
.end method


# virtual methods
.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3837
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3825
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3831
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3772
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3773
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3777
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3780
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Ljava/util/Map;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3794
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 3793
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3774
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3789
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    return-object p2
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 3783
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 3771
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3775
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3843
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3804
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3809
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3819
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3814
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3799
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 3798
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 3770
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3776
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
