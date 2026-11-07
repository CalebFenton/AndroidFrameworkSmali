.class Ljava/util/IdentityHashMap$ValueIterator;
.super Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap<",
        "TK;TV;>.IdentityHashMapIterator<TV;>;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/util/IdentityHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 851
    .local p0, "this":Ljava/util/IdentityHashMap$ValueIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.ValueIterator;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$ValueIterator;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 854
    .local p0, "this":Ljava/util/IdentityHashMap$ValueIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.ValueIterator;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$ValueIterator;->traversalTable:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueIterator;->nextIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
