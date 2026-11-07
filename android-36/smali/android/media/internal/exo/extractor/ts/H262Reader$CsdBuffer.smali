.class final Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;
.super Ljava/lang/Object;
.source "H262Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/H262Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CsdBuffer"
.end annotation


# static fields
.field private static final blacklist START_CODE:[B


# instance fields
.field public blacklist data:[B

.field private blacklist isFilling:Z

.field public blacklist length:I

.field public blacklist sequenceExtensionPosition:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 284
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->START_CODE:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->data:[B

    return-void
.end method


# virtual methods
.method public blacklist onData([BII)V
    .registers 8

    .line 337
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sub-int/2addr p3, p2

    .line 341
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->data:[B

    array-length v1, v0

    iget v2, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_18

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 342
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->data:[B

    .line 344
    :cond_18
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->length:I

    return-void
.end method

.method public blacklist onStartCode(II)Z
    .registers 6

    .line 314
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 315
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->length:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->length:I

    .line 316
    iget p2, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    if-nez p2, :cond_16

    const/16 p2, 0xb5

    if-ne p1, p2, :cond_16

    .line 317
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    goto :goto_1f

    .line 319
    :cond_16
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    return v1

    :cond_19
    const/16 p2, 0xb3

    if-ne p1, p2, :cond_1f

    .line 323
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    .line 325
    :cond_1f
    :goto_1f
    sget-object p1, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->START_CODE:[B

    array-length p2, p1

    invoke-virtual {p0, p1, v2, p2}, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    return v2
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    .line 299
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->length:I

    .line 300
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    return-void
.end method
