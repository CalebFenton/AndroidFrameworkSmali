.class Ljava/util/SequencedMap$1SeqEntrySet;
.super Ljava/util/AbstractMap$ViewCollection;
.source "SequencedMap.java"

# interfaces
.implements Ljava/util/SequencedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/SequencedMap;->sequencedEntrySet()Ljava/util/SequencedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeqEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap$ViewCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/SequencedSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/SequencedMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/SequencedMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/SequencedMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 335
    .local p0, "this":Ljava/util/SequencedMap$1SeqEntrySet;, "Ljava/util/SequencedMap$1SeqEntrySet;"
    iput-object p1, p0, Ljava/util/SequencedMap$1SeqEntrySet;->this$0:Ljava/util/SequencedMap;

    invoke-direct {p0}, Ljava/util/AbstractMap$ViewCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 344
    .local p0, "this":Ljava/util/SequencedMap$1SeqEntrySet;, "Ljava/util/SequencedMap$1SeqEntrySet;"
    invoke-virtual {p0}, Ljava/util/SequencedMap$1SeqEntrySet;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 347
    .local p0, "this":Ljava/util/SequencedMap$1SeqEntrySet;, "Ljava/util/SequencedMap$1SeqEntrySet;"
    invoke-virtual {p0}, Ljava/util/SequencedMap$1SeqEntrySet;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 335
    .local p0, "this":Ljava/util/SequencedMap$1SeqEntrySet;, "Ljava/util/SequencedMap$1SeqEntrySet;"
    invoke-virtual {p0}, Ljava/util/SequencedMap$1SeqEntrySet;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 341
    .local p0, "this":Ljava/util/SequencedMap$1SeqEntrySet;, "Ljava/util/SequencedMap$1SeqEntrySet;"
    iget-object v0, p0, Ljava/util/SequencedMap$1SeqEntrySet;->this$0:Ljava/util/SequencedMap;

    invoke-interface {v0}, Ljava/util/SequencedMap;->reversed()Ljava/util/SequencedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedMap;->sequencedEntrySet()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method blacklist view()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 338
    .local p0, "this":Ljava/util/SequencedMap$1SeqEntrySet;, "Ljava/util/SequencedMap$1SeqEntrySet;"
    iget-object v0, p0, Ljava/util/SequencedMap$1SeqEntrySet;->this$0:Ljava/util/SequencedMap;

    invoke-interface {v0}, Ljava/util/SequencedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
