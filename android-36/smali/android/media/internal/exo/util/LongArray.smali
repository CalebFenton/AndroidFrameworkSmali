.class public final Landroid/media/internal/exo/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# instance fields
.field private blacklist size:I

.field private blacklist values:[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    const/16 v0, 0x20

    .line 29
    invoke-direct {p0, v0}, Landroid/media/internal/exo/util/LongArray;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array p1, p1, [J

    iput-object p1, p0, Landroid/media/internal/exo/util/LongArray;->values:[J

    return-void
.end method


# virtual methods
.method public blacklist add(J)V
    .registers 6

    .line 43
    iget v0, p0, Landroid/media/internal/exo/util/LongArray;->size:I

    iget-object v1, p0, Landroid/media/internal/exo/util/LongArray;->values:[J

    array-length v2, v1

    if-ne v0, v2, :cond_f

    mul-int/lit8 v0, v0, 0x2

    .line 44
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/util/LongArray;->values:[J

    .line 46
    :cond_f
    iget-object v0, p0, Landroid/media/internal/exo/util/LongArray;->values:[J

    iget v1, p0, Landroid/media/internal/exo/util/LongArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/LongArray;->size:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public blacklist get(I)J
    .registers 5

    if-ltz p1, :cond_b

    .line 58
    iget v0, p0, Landroid/media/internal/exo/util/LongArray;->size:I

    if-ge p1, v0, :cond_b

    .line 61
    iget-object p0, p0, Landroid/media/internal/exo/util/LongArray;->values:[J

    aget-wide p0, p0, p1

    return-wide p0

    .line 59
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/internal/exo/util/LongArray;->size:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist size()I
    .registers 1

    .line 66
    iget p0, p0, Landroid/media/internal/exo/util/LongArray;->size:I

    return p0
.end method
