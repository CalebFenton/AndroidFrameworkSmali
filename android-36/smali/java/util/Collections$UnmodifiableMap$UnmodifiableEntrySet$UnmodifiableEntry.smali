.class Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableEntry"
.end annotation

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
.field private greylist-max-o e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2003
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2012
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2013
    return v0

    .line 2021
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2022
    return v2

    .line 2023
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2024
    .local v1, "t":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    .line 2025
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 2024
    :goto_2f
    return v0
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2005
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2006
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2010
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 2008
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2027
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
