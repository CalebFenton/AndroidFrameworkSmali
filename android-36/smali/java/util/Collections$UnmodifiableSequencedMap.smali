.class Ljava/util/Collections$UnmodifiableSequencedMap;
.super Ljava/util/Collections$UnmodifiableMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/SequencedMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableSequencedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableMap<",
        "TK;TV;>;",
        "Ljava/util/SequencedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x7167a042bc4492acL


# direct methods
.method constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2066
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedMap;, "Ljava/util/Collections$UnmodifiableSequencedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    .line 2067
    return-void
.end method

.method private blacklist sm()Ljava/util/SequencedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2071
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedMap;, "Ljava/util/Collections$UnmodifiableSequencedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSequencedMap;->m:Ljava/util/Map;

    check-cast v0, Ljava/util/SequencedMap;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2082
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedMap;, "Ljava/util/Collections$UnmodifiableSequencedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2086
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedMap;, "Ljava/util/Collections$UnmodifiableSequencedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2090
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedMap;, "Ljava/util/Collections$UnmodifiableSequencedMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putLast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2094
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedMap;, "Ljava/util/Collections$UnmodifiableSequencedMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2078
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedMap;, "Ljava/util/Collections$UnmodifiableSequencedMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSequencedMap;

    invoke-direct {p0}, Ljava/util/Collections$UnmodifiableSequencedMap;->sm()Ljava/util/SequencedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SequencedMap;->reversed()Ljava/util/SequencedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSequencedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
