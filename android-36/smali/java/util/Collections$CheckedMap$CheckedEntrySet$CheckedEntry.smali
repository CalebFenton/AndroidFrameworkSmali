.class Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedMap$CheckedEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 4299
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4300
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    .line 4301
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    .line 4302
    return-void
.end method

.method private greylist-max-o badValueMsg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 4316
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to insert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value into map with value type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 4321
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    if-ne p1, p0, :cond_4

    .line 4322
    const/4 v0, 0x1

    return v0

    .line 4323
    :cond_4
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_a

    .line 4324
    const/4 v0, 0x0

    return v0

    .line 4325
    :cond_a
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4304
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

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

    .line 4305
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 4306
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 4310
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_15

    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    .line 4311
    :cond_b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->badValueMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4312
    :cond_15
    :goto_15
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 4307
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
