.class public final Ljdk/internal/util/NullableKeyValueHolder;
.super Ljava/lang/Object;
.source "NullableKeyValueHolder.java"

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
.field final blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Ljdk/internal/util/NullableKeyValueHolder;->key:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Ljdk/internal/util/NullableKeyValueHolder;->value:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljdk/internal/util/NullableKeyValueHolder;->key:Ljava/lang/Object;

    .line 95
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljdk/internal/util/NullableKeyValueHolder;->value:Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private blacklist hash(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 142
    .local p0, "this":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_8
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 138
    .local p0, "this":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_21

    .line 136
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljdk/internal/util/NullableKeyValueHolder;->key:Ljava/lang/Object;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Ljdk/internal/util/NullableKeyValueHolder;->value:Ljava/lang/Object;

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_21
    const/4 v1, 0x0

    .line 136
    :goto_22
    return v1
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 105
    .local p0, "this":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    iget-object v0, p0, Ljdk/internal/util/NullableKeyValueHolder;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 115
    .local p0, "this":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    iget-object v0, p0, Ljdk/internal/util/NullableKeyValueHolder;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 151
    .local p0, "this":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    iget-object v0, p0, Ljdk/internal/util/NullableKeyValueHolder;->key:Ljava/lang/Object;

    invoke-direct {p0, v0}, Ljdk/internal/util/NullableKeyValueHolder;->hash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljdk/internal/util/NullableKeyValueHolder;->value:Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljdk/internal/util/NullableKeyValueHolder;->hash(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 126
    .local p0, "this":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 164
    .local p0, "this":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljdk/internal/util/NullableKeyValueHolder;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljdk/internal/util/NullableKeyValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
