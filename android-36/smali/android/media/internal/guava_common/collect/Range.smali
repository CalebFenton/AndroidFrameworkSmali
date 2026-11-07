.class public final Landroid/media/internal/guava_common/collect/Range;
.super Landroid/media/internal/guava_common/collect/RangeGwtSerializationDependencies;
.source "Range.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "C"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Landroid/media/internal/guava_common/collect/RangeGwtSerializationDependencies;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist ALL:Landroid/media/internal/guava_common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/Range<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J


# instance fields
.field final blacklist lowerBound:Landroid/media/internal/guava_common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;"
        }
    .end annotation
.end field

.field final blacklist upperBound:Landroid/media/internal/guava_common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 274
    new-instance v0, Landroid/media/internal/guava_common/collect/Range;

    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->belowAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object v1

    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->aboveAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/collect/Range;-><init>(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)V

    sput-object v0, Landroid/media/internal/guava_common/collect/Range;->ALL:Landroid/media/internal/guava_common/collect/Range;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;)V"
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/RangeGwtSerializationDependencies;-><init>()V

    .line 329
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/guava_common/collect/Cut;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    .line 330
    invoke-static {p2}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/guava_common/collect/Cut;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    .line 331
    invoke-virtual {p1, p2}, Landroid/media/internal/guava_common/collect/Cut;->compareTo(Landroid/media/internal/guava_common/collect/Cut;)I

    move-result p0

    if-gtz p0, :cond_26

    .line 332
    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->aboveAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object p0

    if-eq p1, p0, :cond_26

    .line 333
    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->belowAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object p0

    if-eq p2, p0, :cond_26

    return-void

    .line 334
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/media/internal/guava_common/collect/Range;->toString(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist all()Landroid/media/internal/guava_common/collect/Range;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 283
    sget-object v0, Landroid/media/internal/guava_common/collect/Range;->ALL:Landroid/media/internal/guava_common/collect/Range;

    return-object v0
.end method

.method public static blacklist atLeast(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 254
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Cut;

    move-result-object p0

    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->aboveAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/Range;->create(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist atMost(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 219
    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->belowAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object v0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Cut;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/media/internal/guava_common/collect/Range;->create(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method static blacklist compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 2

    .line 702
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static blacklist create(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)Landroid/media/internal/guava_common/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;)",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Landroid/media/internal/guava_common/collect/Range;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/Range;-><init>(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)V

    return-object v0
.end method

.method public static blacklist downTo(Ljava/lang/Comparable;Landroid/media/internal/guava_common/collect/BoundType;)Landroid/media/internal/guava_common/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Landroid/media/internal/guava_common/collect/BoundType;",
            ")",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 264
    sget-object v0, Landroid/media/internal/guava_common/collect/Range$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 268
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Range;->atLeast(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0

    .line 270
    :cond_13
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 266
    :cond_19
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Range;->greaterThan(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist greaterThan(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 245
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Cut;

    move-result-object p0

    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->aboveAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/Range;->create(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist lessThan(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 210
    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->belowAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object v0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Cut;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/media/internal/guava_common/collect/Range;->create(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist range(Ljava/lang/Comparable;Landroid/media/internal/guava_common/collect/BoundType;Ljava/lang/Comparable;Landroid/media/internal/guava_common/collect/BoundType;)Landroid/media/internal/guava_common/collect/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Landroid/media/internal/guava_common/collect/BoundType;",
            "TC;",
            "Landroid/media/internal/guava_common/collect/BoundType;",
            ")",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 194
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {p3}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Landroid/media/internal/guava_common/collect/BoundType;->OPEN:Landroid/media/internal/guava_common/collect/BoundType;

    if-ne p1, v0, :cond_f

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Cut;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Cut;

    move-result-object p0

    :goto_13
    if-ne p3, v0, :cond_1a

    .line 200
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Cut;

    move-result-object p1

    goto :goto_1e

    :cond_1a
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Cut;

    move-result-object p1

    .line 201
    :goto_1e
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Range;->create(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist toString(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "*>;",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 676
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/Cut;->describeAsLowerBound(Ljava/lang/StringBuilder;)V

    .line 677
    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {p1, v0}, Landroid/media/internal/guava_common/collect/Cut;->describeAsUpperBound(Ljava/lang/StringBuilder;)V

    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist upTo(Ljava/lang/Comparable;Landroid/media/internal/guava_common/collect/BoundType;)Landroid/media/internal/guava_common/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Landroid/media/internal/guava_common/collect/BoundType;",
            ")",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 229
    sget-object v0, Landroid/media/internal/guava_common/collect/Range$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 233
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Range;->atMost(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0

    .line 235
    :cond_13
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 231
    :cond_19
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Range;->lessThan(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist contains(Ljava/lang/Comparable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 409
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v0, p1}, Landroid/media/internal/guava_common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 652
    instance-of v0, p1, Landroid/media/internal/guava_common/collect/Range;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 653
    check-cast p1, Landroid/media/internal/guava_common/collect/Range;

    .line 654
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    iget-object v2, p1, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v0, v2}, Landroid/media/internal/guava_common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    iget-object p1, p1, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public blacklist hasLowerBound()Z
    .registers 2

    .line 340
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->belowAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object v0

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasUpperBound()Z
    .registers 2

    .line 366
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->aboveAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object v0

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 662
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/Cut;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Cut;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist intersection(Landroid/media/internal/guava_common/collect/Range;)Landroid/media/internal/guava_common/collect/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;)",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    iget-object v1, p1, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/Cut;->compareTo(Landroid/media/internal/guava_common/collect/Cut;)I

    move-result v0

    .line 526
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    iget-object v2, p1, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v1, v2}, Landroid/media/internal/guava_common/collect/Cut;->compareTo(Landroid/media/internal/guava_common/collect/Cut;)I

    move-result v1

    if-ltz v0, :cond_15

    if-gtz v1, :cond_15

    return-object p0

    :cond_15
    if-gtz v0, :cond_1a

    if-ltz v1, :cond_1a

    return-object p1

    :cond_1a
    if-ltz v0, :cond_1f

    .line 532
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    goto :goto_21

    :cond_1f
    iget-object v0, p1, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    :goto_21
    if-gtz v1, :cond_26

    .line 533
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    goto :goto_28

    :cond_26
    iget-object v1, p1, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    .line 537
    :goto_28
    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/Cut;->compareTo(Landroid/media/internal/guava_common/collect/Cut;)I

    move-result v2

    if-gtz v2, :cond_30

    const/4 v2, 0x1

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    const-string v3, "intersection is undefined for disconnected ranges %s and %s"

    .line 536
    invoke-static {v2, v3, p0, p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    invoke-static {v0, v1}, Landroid/media/internal/guava_common/collect/Range;->create(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isConnected(Landroid/media/internal/guava_common/collect/Range;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    iget-object v1, p1, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/Cut;->compareTo(Landroid/media/internal/guava_common/collect/Cut;)I

    move-result v0

    if-gtz v0, :cond_16

    iget-object p1, p1, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    .line 505
    invoke-virtual {p1, p0}, Landroid/media/internal/guava_common/collect/Cut;->compareTo(Landroid/media/internal/guava_common/collect/Cut;)I

    move-result p0

    if-gtz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist lowerEndpoint()Ljava/lang/Comparable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 350
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 693
    sget-object v0, Landroid/media/internal/guava_common/collect/Range;->ALL:Landroid/media/internal/guava_common/collect/Range;

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 694
    invoke-static {}, Landroid/media/internal/guava_common/collect/Range;->all()Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 671
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-static {v0, p0}, Landroid/media/internal/guava_common/collect/Range;->toString(Landroid/media/internal/guava_common/collect/Cut;Landroid/media/internal/guava_common/collect/Cut;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist upperEndpoint()Ljava/lang/Comparable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 376
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method
