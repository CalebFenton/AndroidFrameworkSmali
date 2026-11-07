.class final Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;
.super Ljava/lang/Object;
.source "H263Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/H263Reader;
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

.field private blacklist state:I

.field public blacklist volStartPosition:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 312
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

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

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->data:[B

    return-void
.end method


# virtual methods
.method public blacklist onData([BII)V
    .registers 8

    .line 406
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sub-int/2addr p3, p2

    .line 410
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->data:[B

    array-length v1, v0

    iget v2, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->length:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_18

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 411
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->data:[B

    .line 413
    :cond_18
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->length:I

    return-void
.end method

.method public blacklist onStartCode(II)Z
    .registers 11

    .line 358
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_59

    const/16 v3, 0xb5

    const/4 v4, 0x2

    const-string v5, "Unexpected start code value"

    const-string v6, "H263Reader"

    if-eq v0, v2, :cond_4d

    const/4 v7, 0x3

    if-eq v0, v4, :cond_3f

    const/4 v4, 0x4

    if-eq v0, v7, :cond_2b

    if-ne v0, v4, :cond_25

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_1d

    if-ne p1, v3, :cond_61

    .line 393
    :cond_1d
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->length:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->length:I

    .line 394
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    return v2

    .line 399
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2b
    and-int/lit16 p1, p1, 0xf0

    const/16 p2, 0x20

    if-eq p1, p2, :cond_38

    .line 383
    invoke-static {v6, v5}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_61

    .line 386
    :cond_38
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    .line 387
    iput v4, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_61

    :cond_3f
    const/16 p2, 0x1f

    if-le p1, p2, :cond_4a

    .line 375
    invoke-static {v6, v5}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_61

    .line 378
    :cond_4a
    iput v7, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_61

    :cond_4d
    if-eq p1, v3, :cond_56

    .line 367
    invoke-static {v6, v5}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_61

    .line 370
    :cond_56
    iput v4, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_61

    :cond_59
    const/16 p2, 0xb0

    if-ne p1, p2, :cond_61

    .line 361
    iput v2, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 362
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 401
    :cond_61
    :goto_61
    sget-object p1, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    return v1
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 343
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->length:I

    .line 344
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->state:I

    return-void
.end method
