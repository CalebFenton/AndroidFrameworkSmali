.class Ljava/util/SequencedMap$1SeqKeySet;
.super Ljava/util/AbstractMap$ViewCollection;
.source "SequencedMap.java"

# interfaces
.implements Ljava/util/SequencedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/SequencedMap;->sequencedKeySet()Ljava/util/SequencedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeqKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap$ViewCollection<",
        "TK;>;",
        "Ljava/util/SequencedSet<",
        "TK;>;"
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

    .line 276
    .local p0, "this":Ljava/util/SequencedMap$1SeqKeySet;, "Ljava/util/SequencedMap$1SeqKeySet;"
    iput-object p1, p0, Ljava/util/SequencedMap$1SeqKeySet;->this$0:Ljava/util/SequencedMap;

    invoke-direct {p0}, Ljava/util/AbstractMap$ViewCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 284
    .local p0, "this":Ljava/util/SequencedMap$1SeqKeySet;, "Ljava/util/SequencedMap$1SeqKeySet;"
    invoke-virtual {p0}, Ljava/util/SequencedMap$1SeqKeySet;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 287
    .local p0, "this":Ljava/util/SequencedMap$1SeqKeySet;, "Ljava/util/SequencedMap$1SeqKeySet;"
    invoke-virtual {p0}, Ljava/util/SequencedMap$1SeqKeySet;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 276
    .local p0, "this":Ljava/util/SequencedMap$1SeqKeySet;, "Ljava/util/SequencedMap$1SeqKeySet;"
    invoke-virtual {p0}, Ljava/util/SequencedMap$1SeqKeySet;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "TK;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Ljava/util/SequencedMap$1SeqKeySet;, "Ljava/util/SequencedMap$1SeqKeySet;"
    iget-object v0, p0, Ljava/util/SequencedMap$1SeqKeySet;->this$0:Ljava/util/SequencedMap;

    invoke-interface {v0}, Ljava/util/SequencedMap;->reversed()Ljava/util/SequencedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedMap;->sequencedKeySet()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method blacklist view()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TK;>;"
        }
    .end annotation

    .line 278
    .local p0, "this":Ljava/util/SequencedMap$1SeqKeySet;, "Ljava/util/SequencedMap$1SeqKeySet;"
    iget-object v0, p0, Ljava/util/SequencedMap$1SeqKeySet;->this$0:Ljava/util/SequencedMap;

    invoke-interface {v0}, Ljava/util/SequencedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
