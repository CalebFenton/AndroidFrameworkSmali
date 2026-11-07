.class Ljava/util/Collections$UnmodifiableNavigableSet;
.super Ljava/util/Collections$UnmodifiableSortedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY_NAVIGABLE_SET:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "*>;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x53a5cc34698b7d79L


# instance fields
.field private final greylist-max-o ns:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_NAVIGABLE_SET()Ljava/util/NavigableSet;
    .registers 1

    sget-object v0, Ljava/util/Collections$UnmodifiableNavigableSet;->EMPTY_NAVIGABLE_SET:Ljava/util/NavigableSet;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1462
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet;

    invoke-direct {v0}, Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet;-><init>()V

    sput-object v0, Ljava/util/Collections$UnmodifiableNavigableSet;->EMPTY_NAVIGABLE_SET:Ljava/util/NavigableSet;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/NavigableSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 1471
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    iput-object p1, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    return-void
.end method


# virtual methods
.method public whitelist test-api ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1475
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1482
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableNavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingSet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1480
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public whitelist test-api floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1474
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1490
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    .line 1491
    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    .line 1490
    return-object v0
.end method

.method public whitelist test-api higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1476
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1473
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1477
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1478
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1485
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    .line 1486
    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    .line 1485
    return-object v0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1495
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    .line 1496
    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    .line 1495
    return-object v0
.end method
