.class Ljava/util/WeakHashMap$KeyIterator;
.super Ljava/util/WeakHashMap$HashIterator;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap<",
        "TK;TV;>.HashIterator<TK;>;"
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

    .line 846
    .local p0, "this":Ljava/util/WeakHashMap$KeyIterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$KeyIterator;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 848
    .local p0, "this":Ljava/util/WeakHashMap$KeyIterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeyIterator;->nextEntry()Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
