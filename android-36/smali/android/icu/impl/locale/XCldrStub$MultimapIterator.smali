.class Landroid/icu/impl/locale/XCldrStub$MultimapIterator;
.super Ljava/lang/Object;
.source "XCldrStub.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultimapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o entry:Landroid/icu/impl/locale/XCldrStub$ReusableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/locale/XCldrStub$ReusableEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o it1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o it2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$MultimapIterator;, "Landroid/icu/impl/locale/XCldrStub$MultimapIterator<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    .line 160
    new-instance v1, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;

    invoke-direct {v1, v0}, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;-><init>(Landroid/icu/impl/locale/XCldrStub-IA;)V

    iput-object v1, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->entry:Landroid/icu/impl/locale/XCldrStub$ReusableEntry;

    .line 163
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it1:Ljava/util/Iterator;

    .line 164
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 167
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$MultimapIterator;, "Landroid/icu/impl/locale/XCldrStub$MultimapIterator<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 182
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$MultimapIterator;, "Landroid/icu/impl/locale/XCldrStub$MultimapIterator<TK;TV;>;"
    return-object p0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 157
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$MultimapIterator;, "Landroid/icu/impl/locale/XCldrStub$MultimapIterator<TK;TV;>;"
    invoke-virtual {p0}, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$MultimapIterator;, "Landroid/icu/impl/locale/XCldrStub$MultimapIterator<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 172
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->entry:Landroid/icu/impl/locale/XCldrStub$ReusableEntry;

    iget-object v1, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;->value:Ljava/lang/Object;

    goto :goto_33

    .line 174
    :cond_17
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Set<TV;>;>;"
    iget-object v1, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->entry:Landroid/icu/impl/locale/XCldrStub$ReusableEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;->key:Ljava/lang/Object;

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    .line 178
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Set<TV;>;>;"
    :goto_33
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->entry:Landroid/icu/impl/locale/XCldrStub$ReusableEntry;

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 186
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$MultimapIterator;, "Landroid/icu/impl/locale/XCldrStub$MultimapIterator<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
