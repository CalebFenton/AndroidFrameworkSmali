.class Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/primitives/UnsignedBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LexicographicalComparatorHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;,
        Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    }
.end annotation


# static fields
.field static final blacklist BEST_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field static final blacklist UNSAFE_COMPARATOR_NAME:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder;

    .line 292
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$UnsafeComparator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->UNSAFE_COMPARATOR_NAME:Ljava/lang/String;

    .line 294
    invoke-static {}, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->getBestComparator()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->BEST_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getBestComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 444
    :try_start_0
    sget-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->UNSAFE_COMPARATOR_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 451
    aget-object v0, v0, v1

    check-cast v0, Ljava/util/Comparator;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object v0

    .line 454
    :catchall_13
    invoke-static {}, Landroid/media/internal/guava_common/primitives/UnsignedBytes;->lexicographicalComparatorJavaImpl()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
