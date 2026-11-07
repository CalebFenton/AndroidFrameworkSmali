.class final Landroid/media/internal/guava_common/collect/NaturalOrdering;
.super Landroid/media/internal/guava_common/collect/Ordering;
.source "NaturalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/Ordering<",
        "Ljava/lang/Comparable<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist INSTANCE:Landroid/media/internal/guava_common/collect/NaturalOrdering;

.field private static final whitelist serialVersionUID:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/media/internal/guava_common/collect/NaturalOrdering;

    invoke-direct {v0}, Landroid/media/internal/guava_common/collect/NaturalOrdering;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/collect/NaturalOrdering;->INSTANCE:Landroid/media/internal/guava_common/collect/NaturalOrdering;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Ordering;-><init>()V

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 1

    .line 70
    sget-object p0, Landroid/media/internal/guava_common/collect/NaturalOrdering;->INSTANCE:Landroid/media/internal/guava_common/collect/NaturalOrdering;

    return-object p0
.end method


# virtual methods
.method public blacklist compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)I"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {p2}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/NaturalOrdering;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method

.method public blacklist reverse()Landroid/media/internal/guava_common/collect/Ordering;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 65
    sget-object p0, Landroid/media/internal/guava_common/collect/ReverseNaturalOrdering;->INSTANCE:Landroid/media/internal/guava_common/collect/ReverseNaturalOrdering;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 75
    const-string p0, "Ordering.natural()"

    return-object p0
.end method
