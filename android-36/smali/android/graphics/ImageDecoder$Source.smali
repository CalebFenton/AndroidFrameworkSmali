.class public abstract Landroid/graphics/ImageDecoder$Source;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Source"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/ImageDecoder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/ImageDecoder$Source;-><init>()V

    return-void
.end method


# virtual methods
.method final greylist-max-o computeDstDensity()I
    .registers 3

    .line 206
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_b

    .line 208
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    return v1

    .line 211
    :cond_b
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1
.end method

.method abstract blacklist createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method greylist-max-o getDensity()I
    .registers 2

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getResources()Landroid/content/res/Resources;
    .registers 2

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method
