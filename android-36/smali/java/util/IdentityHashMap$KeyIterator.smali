.class Ljava/util/IdentityHashMap$KeyIterator;
.super Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap<",
        "TK;TV;>.IdentityHashMapIterator<TK;>;"
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

    .line 844
    .local p0, "this":Ljava/util/IdentityHashMap$KeyIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeyIterator;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$KeyIterator;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 847
    .local p0, "this":Ljava/util/IdentityHashMap$KeyIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeyIterator;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeyIterator;->traversalTable:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeyIterator;->nextIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
