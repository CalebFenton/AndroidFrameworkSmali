.class Ljava/util/Collections$SingletonMap;
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
    name = "SingletonMap"
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
.field private static final serialVersionUID:J = -0x60dcf66e8e80946fL


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    #@1
    .line 4063
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@4
    .line 4078
    iput-object v0, p0, Ljava/util/Collections$SingletonMap;->keySet:Ljava/util/Set;

    #@6
    .line 4079
    iput-object v0, p0, Ljava/util/Collections$SingletonMap;->entrySet:Ljava/util/Set;

    #@8
    .line 4080
    iput-object v0, p0, Ljava/util/Collections$SingletonMap;->values:Ljava/util/Collection;

    #@a
    .line 4064
    iput-object p1, p0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    #@c
    .line 4065
    iput-object p2, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    #@e
    .line 4063
    return-void
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
    .line 4152
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
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
    .line 4140
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
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
    .line 4146
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
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
    .line 4072
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    #@2
    invoke-static {p1, v0}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4074
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    #@2
    invoke-static {p1, v0}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
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
    .line 4089
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->entrySet:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4091
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@6
    iget-object v1, p0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    #@8
    iget-object v2, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 4090
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/util/Collections$SingletonMap;->entrySet:Ljava/util/Set;

    #@13
    .line 4092
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->entrySet:Ljava/util/Set;

    #@15
    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4109
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    #@2
    iget-object v1, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    #@4
    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@7
    .line 4108
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
    .line 4076
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    #@2
    invoke-static {p1, v0}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 4104
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    #@2
    invoke-static {p1, v0}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object p2, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    #@a
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 4070
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    const/4 v0, 0x0

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
    .line 4083
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->keySet:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4084
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    #@6
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/util/Collections$SingletonMap;->keySet:Ljava/util/Set;

    #@c
    .line 4085
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->keySet:Ljava/util/Set;

    #@e
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
    .line 4158
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
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
    .line 4119
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
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
    .line 4124
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
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
    .line 4134
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
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
    .line 4129
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4114
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 4068
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    const/4 v0, 0x1

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
    .line 4096
    .local p0, "this":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->values:Ljava/util/Collection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4097
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    #@6
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/util/Collections$SingletonMap;->values:Ljava/util/Collection;

    #@c
    .line 4098
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->values:Ljava/util/Collection;

    #@e
    return-object v0
.end method
