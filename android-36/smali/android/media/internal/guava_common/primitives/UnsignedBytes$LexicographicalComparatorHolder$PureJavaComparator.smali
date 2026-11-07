.class final enum Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;
.super Ljava/lang/Enum;
.source "UnsignedBytes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PureJavaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

.field public static final enum blacklist INSTANCE:Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;


# direct methods
.method private static synthetic blacklist $values()[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;
    .registers 1

    .line 417
    sget-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    filled-new-array {v0}, [Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 418
    new-instance v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    .line 417
    invoke-static {}, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->$values()[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->$VALUES:[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

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

    .line 417
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 417
    const-class v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object p0
.end method

.method public static blacklist values()[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;
    .registers 1

    .line 417
    sget-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->$VALUES:[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    invoke-virtual {v0}, [Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method


# virtual methods
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

    .line 417
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->compare([B[B)I

    move-result p0

    return p0
.end method

.method public blacklist compare([B[B)I
    .registers 6

    .line 422
    array-length p0, p1

    array-length v0, p2

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p0, :cond_17

    .line 424
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-static {v1, v2}, Landroid/media/internal/guava_common/primitives/UnsignedBytes;->compare(BB)I

    move-result v1

    if-eqz v1, :cond_14

    return v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 429
    :cond_17
    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 434
    const-string p0, "UnsignedBytes.lexicographicalComparator() (pure Java version)"

    return-object p0
.end method
