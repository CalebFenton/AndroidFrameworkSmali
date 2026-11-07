.class public Landroid/filterpacks/imageproc/ImageEncoder;
.super Landroid/filterfw/core/Filter;
.source "ImageEncoder.java"


# instance fields
.field private blacklist mOutputStream:Ljava/io/OutputStream;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stream"
    .end annotation
.end field

.field private blacklist mQuality:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "quality"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Landroid/filterpacks/imageproc/ImageEncoder;->mQuality:I

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .line 54
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ImageEncoder;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 55
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Landroid/filterpacks/imageproc/ImageEncoder;->mQuality:I

    iget-object v4, p0, Landroid/filterpacks/imageproc/ImageEncoder;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 57
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 48
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ImageEncoder;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 50
    return-void
.end method
