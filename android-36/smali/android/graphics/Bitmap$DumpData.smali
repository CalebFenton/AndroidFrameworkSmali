.class final Landroid/graphics/Bitmap$DumpData;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DumpData"
.end annotation


# instance fields
.field private blacklist buffers:[[B

.field private blacklist count:I

.field private blacklist format:I

.field private blacklist max:I

.field private blacklist natives:[J


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .registers 4
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "max"    # I

    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    iput p2, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    .line 1559
    iget v0, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    iput v0, p0, Landroid/graphics/Bitmap$DumpData;->format:I

    .line 1560
    new-array v0, p2, [J

    iput-object v0, p0, Landroid/graphics/Bitmap$DumpData;->natives:[J

    .line 1561
    new-array v0, p2, [[B

    iput-object v0, p0, Landroid/graphics/Bitmap$DumpData;->buffers:[[B

    .line 1562
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    .line 1563
    return-void
.end method


# virtual methods
.method public blacklist add(J[B)V
    .registers 6
    .param p1, "nativePtr"    # J
    .param p3, "buffer"    # [B

    .line 1566
    iget-object v0, p0, Landroid/graphics/Bitmap$DumpData;->natives:[J

    iget v1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    aput-wide p1, v0, v1

    .line 1567
    iget-object v0, p0, Landroid/graphics/Bitmap$DumpData;->buffers:[[B

    iget v1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    aput-object p3, v0, v1

    .line 1568
    iget v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    iget v1, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    if-lt v0, v1, :cond_15

    iget v0, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    goto :goto_19

    :cond_15
    iget v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    add-int/lit8 v0, v0, 0x1

    :goto_19
    iput v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    .line 1569
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 1572
    iget v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    return v0
.end method
