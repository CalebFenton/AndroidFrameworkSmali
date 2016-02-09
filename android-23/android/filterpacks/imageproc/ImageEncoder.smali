.class public Landroid/filterpacks/imageproc/ImageEncoder;
.super Landroid/filterfw/core/Filter;
.source "ImageEncoder.java"


# instance fields
.field private mOutputStream:Ljava/io/OutputStream;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stream"
    .end annotation
.end field

.field private mQuality:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "quality"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 40
    const/16 v0, 0x50

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/ImageEncoder;->mQuality:I

    #@7
    .line 42
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 54
    const-string/jumbo v2, "image"

    #@3
    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ImageEncoder;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v1

    #@7
    .line 55
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getBitmap()Landroid/graphics/Bitmap;

    #@a
    move-result-object v0

    #@b
    .line 56
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@d
    iget v3, p0, Landroid/filterpacks/imageproc/ImageEncoder;->mQuality:I

    #@f
    iget-object v4, p0, Landroid/filterpacks/imageproc/ImageEncoder;->mOutputStream:Ljava/io/OutputStream;

    #@11
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@14
    .line 53
    return-void
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    .line 49
    const/4 v2, 0x0

    #@5
    .line 48
    invoke-static {v1, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageEncoder;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@c
    .line 47
    return-void
.end method
