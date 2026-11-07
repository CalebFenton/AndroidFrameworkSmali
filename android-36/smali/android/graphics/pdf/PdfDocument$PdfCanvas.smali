.class final Landroid/graphics/pdf/PdfDocument$PdfCanvas;
.super Landroid/graphics/Canvas;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PdfCanvas"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/pdf/PdfDocument;J)V
    .registers 4
    .param p2, "nativeCanvas"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 255
    invoke-direct {p0, p2, p3}, Landroid/graphics/Canvas;-><init>(J)V

    .line 256
    return-void
.end method


# virtual methods
.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
