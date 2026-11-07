.class Landroid/graphics/ImageDecoder$InputStreamSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamSource"
.end annotation


# instance fields
.field final greylist-max-o mInputDensity:I

.field greylist-max-o mInputStream:Ljava/io/InputStream;

.field final greylist-max-o mResources:Landroid/content/res/Resources;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "inputDensity"    # I

    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder-IA;)V

    .line 401
    if-eqz p2, :cond_d

    .line 404
    iput-object p1, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mResources:Landroid/content/res/Resources;

    .line 405
    iput-object p2, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    .line 406
    iput p3, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputDensity:I

    .line 407
    return-void

    .line 402
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .registers 4
    .param p1, "preferAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    monitor-enter p0

    .line 423
    :try_start_1
    iget-object v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_11

    .line 426
    iget-object v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    .line 427
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    .line 428
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 424
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reuse InputStreamSource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/ImageDecoder$InputStreamSource;
    .end local p1    # "preferAnimation":Z
    throw v0

    .line 429
    .restart local p0    # "this":Landroid/graphics/ImageDecoder$InputStreamSource;
    .restart local p1    # "preferAnimation":Z
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public greylist-max-o getDensity()I
    .registers 2

    .line 417
    iget v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputDensity:I

    return v0
.end method

.method public greylist-max-o getResources()Landroid/content/res/Resources;
    .registers 2

    .line 414
    iget-object v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputStream{s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
