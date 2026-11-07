.class public final Landroid/media/internal/guava_common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
    }
.end annotation


# direct methods
.method public static blacklist compare(BB)I
    .registers 2

    .line 127
    invoke-static {p0}, Landroid/media/internal/guava_common/primitives/UnsignedBytes;->toInt(B)I

    move-result p0

    invoke-static {p1}, Landroid/media/internal/guava_common/primitives/UnsignedBytes;->toInt(B)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method static blacklist lexicographicalComparatorJavaImpl()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 279
    sget-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method

.method public static blacklist toInt(B)I
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0xff

    return p0
.end method
