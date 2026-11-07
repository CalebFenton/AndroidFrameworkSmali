.class synthetic Landroid/media/internal/guava_common/collect/Range$1;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$google$common$collect$BoundType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 229
    invoke-static {}, Landroid/media/internal/guava_common/collect/BoundType;->values()[Landroid/media/internal/guava_common/collect/BoundType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/media/internal/guava_common/collect/Range$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    :try_start_9
    sget-object v1, Landroid/media/internal/guava_common/collect/BoundType;->OPEN:Landroid/media/internal/guava_common/collect/BoundType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroid/media/internal/guava_common/collect/Range$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    sget-object v1, Landroid/media/internal/guava_common/collect/BoundType;->CLOSED:Landroid/media/internal/guava_common/collect/BoundType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
