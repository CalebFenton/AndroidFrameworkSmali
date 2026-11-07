.class final Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
.super Landroid/media/internal/guava_common/collect/ImmutableEntry;
.source "LinkedHashMultimap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableEntry<",
        "TK;TV;>;",
        "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field blacklist nextInValueBucket:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private blacklist predecessorInMultimap:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private blacklist predecessorInValueSet:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final blacklist smearedValueHash:I

.field private blacklist successorInMultimap:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private blacklist successorInValueSet:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 5
    .param p4    # Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    iput p3, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    .line 205
    iput-object p4, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method

.method static blacklist newHeader()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 210
    new-instance v0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getPredecessorInMultimap()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 238
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->predecessorInMultimap:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public blacklist getPredecessorInValueSet()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 219
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->predecessorInValueSet:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public blacklist getSuccessorInMultimap()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 242
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public blacklist getSuccessorInValueSet()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 224
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->successorInValueSet:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method blacklist matchesValue(Ljava/lang/Object;I)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 214
    iget v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    if-ne v0, p2, :cond_10

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setPredecessorInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->predecessorInMultimap:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method

.method public blacklist setPredecessorInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->predecessorInValueSet:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    return-void
.end method

.method public blacklist setSuccessorInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method

.method public blacklist setSuccessorInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->successorInValueSet:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    return-void
.end method
