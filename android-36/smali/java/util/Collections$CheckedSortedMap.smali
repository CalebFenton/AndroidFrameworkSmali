.class Ljava/util/Collections$CheckedSortedMap;
.super Ljava/util/Collections$CheckedMap;
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
    name = "CheckedSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x16332c973afe036eL


# instance fields
.field private final greylist-max-o sm:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 4388
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4389
    iput-object p1, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    .line 4390
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

    .line 4392
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

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

    .line 4393
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4401
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4394
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4397
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4404
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
