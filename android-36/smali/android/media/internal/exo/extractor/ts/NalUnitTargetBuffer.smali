.class final Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;
.super Ljava/lang/Object;
.source "NalUnitTargetBuffer.java"


# instance fields
.field private blacklist isCompleted:Z

.field private blacklist isFilling:Z

.field public blacklist nalData:[B

.field public blacklist nalLength:I

.field private final blacklist targetType:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->targetType:I

    add-int/lit8 p2, p2, 0x3

    .line 39
    new-array p1, p2, [B

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 p0, 0x2

    const/4 p2, 0x1

    .line 40
    aput-byte p2, p1, p0

    return-void
.end method


# virtual methods
.method public blacklist appendToNalUnit([BII)V
    .registers 8

    .line 77
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sub-int/2addr p3, p2

    .line 81
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    array-length v1, v0

    iget v2, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_18

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 82
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 84
    :cond_18
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    return-void
.end method

.method public blacklist endNalUnit(I)Z
    .registers 4

    .line 96
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 99
    :cond_6
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 100
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return p1
.end method

.method public blacklist isCompleted()Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return p0
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 46
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return-void
.end method

.method public blacklist startNalUnit(I)V
    .registers 5

    .line 60
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    .line 61
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->targetType:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-eqz v1, :cond_17

    const/4 p1, 0x3

    .line 64
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 65
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    :cond_17
    return-void
.end method
