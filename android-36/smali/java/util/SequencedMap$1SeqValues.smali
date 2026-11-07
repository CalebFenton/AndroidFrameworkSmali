.class Ljava/util/SequencedMap$1SeqValues;
.super Ljava/util/AbstractMap$ViewCollection;
.source "SequencedMap.java"

# interfaces
.implements Ljava/util/SequencedCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/SequencedMap;->sequencedValues()Ljava/util/SequencedCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeqValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap$ViewCollection<",
        "TV;>;",
        "Ljava/util/SequencedCollection<",
        "TV;>;"
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

    .line 309
    .local p0, "this":Ljava/util/SequencedMap$1SeqValues;, "Ljava/util/SequencedMap$1SeqValues;"
    iput-object p1, p0, Ljava/util/SequencedMap$1SeqValues;->this$0:Ljava/util/SequencedMap;

    invoke-direct {p0}, Ljava/util/AbstractMap$ViewCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedCollection<",
            "TV;>;"
        }
    .end annotation

    .line 314
    .local p0, "this":Ljava/util/SequencedMap$1SeqValues;, "Ljava/util/SequencedMap$1SeqValues;"
    iget-object v0, p0, Ljava/util/SequencedMap$1SeqValues;->this$0:Ljava/util/SequencedMap;

    invoke-interface {v0}, Ljava/util/SequencedMap;->reversed()Ljava/util/SequencedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedMap;->sequencedValues()Ljava/util/SequencedCollection;

    move-result-object v0

    return-object v0
.end method

.method blacklist view()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 311
    .local p0, "this":Ljava/util/SequencedMap$1SeqValues;, "Ljava/util/SequencedMap$1SeqValues;"
    iget-object v0, p0, Ljava/util/SequencedMap$1SeqValues;->this$0:Ljava/util/SequencedMap;

    invoke-interface {v0}, Ljava/util/SequencedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
