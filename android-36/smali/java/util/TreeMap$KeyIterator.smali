.class final Ljava/util/TreeMap$KeyIterator;
.super Ljava/util/TreeMap$PrivateEntryIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap<",
        "TK;TV;>.PrivateEntryIterator<TK;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1573
    .local p0, "this":Ljava/util/TreeMap$KeyIterator;, "Ljava/util/TreeMap<TK;TV;>.KeyIterator;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$PrivateEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1574
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

    .line 1576
    .local p0, "this":Ljava/util/TreeMap$KeyIterator;, "Ljava/util/TreeMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$KeyIterator;->nextEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
