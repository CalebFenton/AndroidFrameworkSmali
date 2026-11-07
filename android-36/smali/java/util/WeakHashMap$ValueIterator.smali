.class Ljava/util/WeakHashMap$ValueIterator;
.super Ljava/util/WeakHashMap$HashIterator;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap<",
        "TK;TV;>.HashIterator<TV;>;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/util/WeakHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 840
    .local p0, "this":Ljava/util/WeakHashMap$ValueIterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$ValueIterator;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 842
    .local p0, "this":Ljava/util/WeakHashMap$ValueIterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$ValueIterator;->nextEntry()Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
