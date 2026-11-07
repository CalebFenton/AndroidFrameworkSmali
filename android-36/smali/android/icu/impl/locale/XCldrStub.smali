.class public Landroid/icu/impl/locale/XCldrStub;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/XCldrStub$Predicate;,
        Landroid/icu/impl/locale/XCldrStub$RegexUtilities;,
        Landroid/icu/impl/locale/XCldrStub$FileUtilities;,
        Landroid/icu/impl/locale/XCldrStub$ImmutableMultimap;,
        Landroid/icu/impl/locale/XCldrStub$ImmutableMap;,
        Landroid/icu/impl/locale/XCldrStub$ImmutableSet;,
        Landroid/icu/impl/locale/XCldrStub$Splitter;,
        Landroid/icu/impl/locale/XCldrStub$Joiner;,
        Landroid/icu/impl/locale/XCldrStub$CollectionUtilities;,
        Landroid/icu/impl/locale/XCldrStub$LinkedHashMultimap;,
        Landroid/icu/impl/locale/XCldrStub$TreeMultimap;,
        Landroid/icu/impl/locale/XCldrStub$HashMultimap;,
        Landroid/icu/impl/locale/XCldrStub$ReusableEntry;,
        Landroid/icu/impl/locale/XCldrStub$MultimapIterator;,
        Landroid/icu/impl/locale/XCldrStub$Multimaps;,
        Landroid/icu/impl/locale/XCldrStub$Multimap;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 270
    .local p0, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 272
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 273
    .local v3, "item":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 274
    :cond_1a
    const/4 v1, 0x0

    .line 275
    :goto_1b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_a

    .line 277
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 261
    .local p0, "source":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 263
    if-eqz v1, :cond_e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_e
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 266
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
