.class Ljava/util/Collections$UnmodifiableSequencedCollection;
.super Ljava/util/Collections$UnmodifiableCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/SequencedCollection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableSequencedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableCollection<",
        "TE;>;",
        "Ljava/util/SequencedCollection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x5419ad1517f6d8deL


# direct methods
.method constructor blacklist <init>(Ljava/util/SequencedCollection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SequencedCollection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1225
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedCollection;, "Ljava/util/Collections$UnmodifiableSequencedCollection<TE;>;"
    .local p1, "c":Ljava/util/SequencedCollection;, "Ljava/util/SequencedCollection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    .line 1226
    return-void
.end method

.method private blacklist sc()Ljava/util/SequencedCollection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedCollection<",
            "TE;>;"
        }
    .end annotation

    .line 1230
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedCollection;, "Ljava/util/Collections$UnmodifiableSequencedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSequencedCollection;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SequencedCollection;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1241
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedCollection;, "Ljava/util/Collections$UnmodifiableSequencedCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1245
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedCollection;, "Ljava/util/Collections$UnmodifiableSequencedCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1249
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedCollection;, "Ljava/util/Collections$UnmodifiableSequencedCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/Collections$UnmodifiableSequencedCollection;->sc()Ljava/util/SequencedCollection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedCollection;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1253
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedCollection;, "Ljava/util/Collections$UnmodifiableSequencedCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/Collections$UnmodifiableSequencedCollection;->sc()Ljava/util/SequencedCollection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedCollection;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1257
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedCollection;, "Ljava/util/Collections$UnmodifiableSequencedCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1261
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedCollection;, "Ljava/util/Collections$UnmodifiableSequencedCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedCollection<",
            "TE;>;"
        }
    .end annotation

    .line 1237
    .local p0, "this":Ljava/util/Collections$UnmodifiableSequencedCollection;, "Ljava/util/Collections$UnmodifiableSequencedCollection<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSequencedCollection;

    invoke-direct {p0}, Ljava/util/Collections$UnmodifiableSequencedCollection;->sc()Ljava/util/SequencedCollection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SequencedCollection;->reversed()Ljava/util/SequencedCollection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSequencedCollection;-><init>(Ljava/util/SequencedCollection;)V

    return-object v0
.end method
