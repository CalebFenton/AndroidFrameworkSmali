.class Landroid/media/ThumbnailUtils$Resizer;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ThumbnailUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resizer"
.end annotation


# instance fields
.field private final blacklist signal:Landroid/os/CancellationSignal;

.field private final blacklist size:Landroid/util/Size;


# direct methods
.method public constructor blacklist <init>(Landroid/util/Size;Landroid/os/CancellationSignal;)V
    .registers 3
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "signal"    # Landroid/os/CancellationSignal;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/media/ThumbnailUtils$Resizer;->size:Landroid/util/Size;

    .line 89
    iput-object p2, p0, Landroid/media/ThumbnailUtils$Resizer;->signal:Landroid/os/CancellationSignal;

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 8
    .param p1, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p2, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p3, "source"    # Landroid/graphics/ImageDecoder$Source;

    .line 95
    iget-object v0, p0, Landroid/media/ThumbnailUtils$Resizer;->signal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/ThumbnailUtils$Resizer;->signal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 99
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 103
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/media/ThumbnailUtils$Resizer;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 104
    .local v1, "widthSample":I
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/media/ThumbnailUtils$Resizer;->size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    .line 105
    .local v2, "heightSample":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 106
    .local v3, "sample":I
    if-le v3, v0, :cond_34

    .line 107
    invoke-virtual {p1, v3}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 109
    :cond_34
    return-void
.end method
