.class Ljava/util/Collections$ReverseComparator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final greylist-max-o REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

.field private static final whitelist serialVersionUID:J = 0x64048af0534e4ad0L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5644
    new-instance v0, Ljava/util/Collections$ReverseComparator;

    invoke-direct {v0}, Ljava/util/Collections$ReverseComparator;-><init>()V

    sput-object v0, Ljava/util/Collections$ReverseComparator;->REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 5638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 5652
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 5648
    .local p1, "c1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .local p2, "c2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
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

    .line 5638
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Collections$ReverseComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api reversed()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 5656
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
