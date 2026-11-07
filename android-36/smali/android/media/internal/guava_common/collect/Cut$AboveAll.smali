.class final Landroid/media/internal/guava_common/collect/Cut$AboveAll;
.super Landroid/media/internal/guava_common/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AboveAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/Cut<",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/media/internal/guava_common/collect/Cut$AboveAll;

.field private static final whitelist serialVersionUID:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 229
    new-instance v0, Landroid/media/internal/guava_common/collect/Cut$AboveAll;

    invoke-direct {v0}, Landroid/media/internal/guava_common/collect/Cut$AboveAll;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/collect/Cut$AboveAll;->INSTANCE:Landroid/media/internal/guava_common/collect/Cut$AboveAll;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 233
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method static synthetic blacklist access$100()Landroid/media/internal/guava_common/collect/Cut$AboveAll;
    .registers 1

    .line 228
    sget-object v0, Landroid/media/internal/guava_common/collect/Cut$AboveAll;->INSTANCE:Landroid/media/internal/guava_common/collect/Cut$AboveAll;

    return-object v0
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 1

    .line 304
    sget-object p0, Landroid/media/internal/guava_common/collect/Cut$AboveAll;->INSTANCE:Landroid/media/internal/guava_common/collect/Cut$AboveAll;

    return-object p0
.end method


# virtual methods
.method public blacklist compareTo(Landroid/media/internal/guava_common/collect/Cut;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "Ljava/lang/Comparable<",
            "*>;>;)I"
        }
    .end annotation

    .line 0
    if-ne p1, p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 228
    check-cast p1, Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/Cut$AboveAll;->compareTo(Landroid/media/internal/guava_common/collect/Cut;)I

    move-result p0

    return p0
.end method

.method blacklist describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .registers 2

    .line 270
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method blacklist describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .registers 2

    .line 275
    const-string p0, "+\u221e)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method blacklist endpoint()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 238
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "range unbounded on this side"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 295
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method blacklist isLessThan(Ljava/lang/Comparable;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 300
    const-string p0, "+\u221e"

    return-object p0
.end method
