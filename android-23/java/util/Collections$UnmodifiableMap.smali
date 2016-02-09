.class Ljava/util/Collections$UnmodifiableMap;
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
    name = "UnmodifiableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
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
.field private static final serialVersionUID:J = -0xe5a57018b0af8beL


# instance fields
.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1243
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1244
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@5
    .line 1243
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1248
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
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
    .line 1252
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

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
    .line 1256
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .line 1260
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;

    #@2
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    #@b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1264
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

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
    .line 1268
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

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
    .line 1272
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

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
    .line 1276
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1280
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    #@2
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    #@b
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1284
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1288
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
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
    .line 1292
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
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
    .line 1296
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

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
    .line 1304
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1300
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    #@2
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    #@b
    return-object v0
.end method
