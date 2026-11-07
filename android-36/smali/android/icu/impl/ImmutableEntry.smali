.class public Landroid/icu/impl/ImmutableEntry;
.super Ljava/lang/Object;
.source "ImmutableEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final blacklist k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final blacklist v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Landroid/icu/impl/ImmutableEntry;, "Landroid/icu/impl/ImmutableEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/icu/impl/ImmutableEntry;->k:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Landroid/icu/impl/ImmutableEntry;->v:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 38
    .local p0, "this":Landroid/icu/impl/ImmutableEntry;, "Landroid/icu/impl/ImmutableEntry<TK;TV;>;"
    const/4 v0, 0x0

    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    .local v1, "e":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/ImmutableEntry;->k:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/icu/impl/UnicodeMap;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/ImmutableEntry;->v:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/icu/impl/UnicodeMap;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1a} :catch_1e

    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0

    .line 40
    .end local v1    # "e":Ljava/util/Map$Entry;
    :catch_1e
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 28
    .local p0, "this":Landroid/icu/impl/ImmutableEntry;, "Landroid/icu/impl/ImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/ImmutableEntry;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 30
    .local p0, "this":Landroid/icu/impl/ImmutableEntry;, "Landroid/icu/impl/ImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/ImmutableEntry;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 46
    .local p0, "this":Landroid/icu/impl/ImmutableEntry;, "Landroid/icu/impl/ImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/ImmutableEntry;->k:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/icu/impl/ImmutableEntry;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_d
    iget-object v2, p0, Landroid/icu/impl/ImmutableEntry;->v:Ljava/lang/Object;

    if-nez v2, :cond_12

    goto :goto_18

    :cond_12
    iget-object v1, p0, Landroid/icu/impl/ImmutableEntry;->v:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_18
    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 33
    .local p0, "this":Landroid/icu/impl/ImmutableEntry;, "Landroid/icu/impl/ImmutableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 50
    .local p0, "this":Landroid/icu/impl/ImmutableEntry;, "Landroid/icu/impl/ImmutableEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/impl/ImmutableEntry;->k:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/ImmutableEntry;->v:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
