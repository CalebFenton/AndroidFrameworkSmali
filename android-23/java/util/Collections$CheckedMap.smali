.class Ljava/util/Collections$CheckedMap;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedMap$CheckedEntry;,
        Ljava/util/Collections$CheckedMap$CheckedEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4fb2bcdf0d186368L


# instance fields
.field final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3098
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3099
    if-nez p1, :cond_0

    #@5
    .line 3100
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "m == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 3101
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 3102
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "keyType == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 3103
    :cond_1
    if-nez p3, :cond_2

    #@1b
    .line 3104
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    const-string/jumbo v1, "valueType == null"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 3106
    :cond_2
    iput-object p1, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@26
    .line 3107
    iput-object p2, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    #@28
    .line 3108
    iput-object p3, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    #@2a
    .line 3098
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collections$CheckedMap;)V
    .locals 0
    .param p1, "m"    # Ljava/util/Map;
    .param p2, "keyType"    # Ljava/lang/Class;
    .param p3, "valueType"    # Ljava/lang/Class;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 3160
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 3159
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3120
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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
    .line 3124
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

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
    .line 3172
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    #@d
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3176
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
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
    .line 3128
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 3180
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 3116
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
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
    .line 3164
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3132
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    #@4
    invoke-static {p1, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    #@a
    invoke-static {p2, v2}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3141
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v4

    #@4
    .line 3142
    .local v4, "size":I
    if-nez v4, :cond_0

    #@6
    .line 3143
    return-void

    #@7
    .line 3145
    :cond_0
    new-array v1, v4, [Ljava/util/Map$Entry;

    #@9
    .line 3146
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@c
    move-result-object v5

    #@d
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    .line 3148
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@14
    .line 3149
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/util/Map$Entry;

    #@1a
    .line 3150
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    iget-object v6, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    #@20
    invoke-static {v5, v6}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@23
    .line 3151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@26
    move-result-object v5

    #@27
    iget-object v6, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    #@29
    invoke-static {v5, v6}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@2c
    .line 3152
    aput-object v0, v1, v2

    #@2e
    .line 3148
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 3154
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_1
    const/4 v2, 0x0

    #@32
    :goto_1
    if-ge v2, v4, :cond_2

    #@34
    .line 3155
    iget-object v5, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@36
    aget-object v6, v1, v2

    #@38
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3b
    move-result-object v6

    #@3c
    aget-object v7, v1, v2

    #@3e
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@41
    move-result-object v7

    #@42
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 3154
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_1

    #@48
    .line 3140
    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 3136
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 3112
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3184
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    .line 3168
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
