.class final Ljava/util/LinkedHashMap$LinkedEntryIterator;
.super Ljava/util/LinkedHashMap$LinkedHashIterator;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>.",
        "LinkedHashIterator;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;Z)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;
    .param p2, "reversed"    # Z
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

    .line 1095
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntryIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntryIterator;"
    invoke-direct {p0, p1, p2}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1093
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntryIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntryIterator;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedEntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1096
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntryIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntryIterator;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedEntryIterator;->nextNode()Ljava/util/LinkedHashMap$Entry;

    move-result-object v0

    return-object v0
.end method
