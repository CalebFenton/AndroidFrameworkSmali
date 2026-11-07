.class Ljava/util/Collections$UnmodifiableSortedSet;
.super Ljava/util/Collections$UnmodifiableSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x4467db70141310fdL


# instance fields
.field private final greylist-max-o ss:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/SortedSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 1387
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 1389
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1401
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1395
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public whitelist test-api last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1402
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1392
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1398
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method
