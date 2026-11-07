.class public interface abstract Ljava/util/SequencedSet;
.super Ljava/lang/Object;
.source "SequencedSet.java"

# interfaces
.implements Ljava/util/SequencedCollection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/SequencedCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 51
    .local p0, "this":Ljava/util/SequencedSet;, "Ljava/util/SequencedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SequencedSet;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api reversed()Ljava/util/SequencedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "TE;>;"
        }
    .end annotation
.end method
