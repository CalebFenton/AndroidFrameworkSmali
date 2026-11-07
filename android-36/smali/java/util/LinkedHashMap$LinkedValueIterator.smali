.class final Ljava/util/LinkedHashMap$LinkedValueIterator;
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
    name = "LinkedValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>.",
        "LinkedHashIterator;",
        "Ljava/util/Iterator<",
        "TV;>;"
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

    .line 1089
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValueIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValueIterator;"
    invoke-direct {p0, p1, p2}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1090
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValueIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValueIterator;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedValueIterator;->nextNode()Ljava/util/LinkedHashMap$Entry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
