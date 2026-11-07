.class final enum Ljava/util/Comparators$NaturalOrderComparator;
.super Ljava/lang/Enum;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Comparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NaturalOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/Comparators$NaturalOrderComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/Comparators$NaturalOrderComparator;

.field public static final enum blacklist INSTANCE:Ljava/util/Comparators$NaturalOrderComparator;


# direct methods
.method private static synthetic blacklist $values()[Ljava/util/Comparators$NaturalOrderComparator;
    .registers 1

    .line 47
    sget-object v0, Ljava/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava/util/Comparators$NaturalOrderComparator;

    filled-new-array {v0}, [Ljava/util/Comparators$NaturalOrderComparator;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Ljava/util/Comparators$NaturalOrderComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Comparators$NaturalOrderComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava/util/Comparators$NaturalOrderComparator;

    .line 47
    invoke-static {}, Ljava/util/Comparators$NaturalOrderComparator;->$values()[Ljava/util/Comparators$NaturalOrderComparator;

    move-result-object v0

    sput-object v0, Ljava/util/Comparators$NaturalOrderComparator;->$VALUES:[Ljava/util/Comparators$NaturalOrderComparator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/util/Comparators$NaturalOrderComparator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    const-class v0, Ljava/util/Comparators$NaturalOrderComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Comparators$NaturalOrderComparator;

    return-object v0
.end method

.method public static blacklist values()[Ljava/util/Comparators$NaturalOrderComparator;
    .registers 1

    .line 47
    sget-object v0, Ljava/util/Comparators$NaturalOrderComparator;->$VALUES:[Ljava/util/Comparators$NaturalOrderComparator;

    invoke-virtual {v0}, [Ljava/util/Comparators$NaturalOrderComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Comparators$NaturalOrderComparator;

    return-object v0
.end method


# virtual methods
.method public blacklist compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
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

    .line 52
    .local p1, "c1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .local p2, "c2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

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

    .line 47
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Comparators$NaturalOrderComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

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

    .line 57
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
