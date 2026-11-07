.class Ljava/util/Collections$UnmodifiableSortedMap;
.super Ljava/util/Collections$UnmodifiableMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableSortedMap"
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
        "Ljava/util/SortedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x7a37d6d72c5a28f6L


# instance fields
.field private final greylist-max-o sm:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/SortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 2137
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 2138
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2145
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2142
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2146
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2140
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2144
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method
