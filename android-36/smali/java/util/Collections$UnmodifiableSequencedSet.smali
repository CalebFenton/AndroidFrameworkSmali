.class Ljava/util/Collections$UnmodifiableSequencedSet;
.super Ljava/util/Collections$UnmodifiableSequencedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/SequencedSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableSequencedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSequencedCollection<",
        "TE;>;",
        "Ljava/util/SequencedSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x1de2a9214e5604f2L


# direct methods
.method constructor blacklist <init>(Ljava/util/SequencedSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SequencedSet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1334
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedSet;, "Ljava/util/Collections$UnmodifiableSequencedSet<TE;>;"
    .local p1, "s":Ljava/util/SequencedSet;, "Ljava/util/SequencedSet<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSequencedCollection;-><init>(Ljava/util/SequencedCollection;)V

    return-void
.end method

.method private blacklist ss()Ljava/util/SequencedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1340
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedSet;, "Ljava/util/Collections$UnmodifiableSequencedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSequencedSet;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SequencedSet;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1335
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedSet;, "Ljava/util/Collections$UnmodifiableSequencedSet<TE;>;"
    if-eq p1, p0, :cond_d

    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSequencedSet;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1336
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedSet;, "Ljava/util/Collections$UnmodifiableSequencedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSequencedSet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 1329
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedSet;, "Ljava/util/Collections$UnmodifiableSequencedSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableSequencedSet;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1347
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedSet;, "Ljava/util/Collections$UnmodifiableSequencedSet<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSequencedSet;

    invoke-direct {p0}, Ljava/util/Collections$UnmodifiableSequencedSet;->ss()Ljava/util/SequencedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SequencedSet;->reversed()Ljava/util/SequencedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSequencedSet;-><init>(Ljava/util/SequencedSet;)V

    return-object v0
.end method
