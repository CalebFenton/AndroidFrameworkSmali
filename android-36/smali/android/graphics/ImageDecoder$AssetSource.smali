.class Landroid/graphics/ImageDecoder$AssetSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssetSource"
.end annotation


# instance fields
.field private final greylist-max-o mAssets:Landroid/content/res/AssetManager;

.field private final greylist-max-o mFileName:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder-IA;)V

    .line 562
    iput-object p1, p0, Landroid/graphics/ImageDecoder$AssetSource;->mAssets:Landroid/content/res/AssetManager;

    .line 563
    iput-object p2, p0, Landroid/graphics/ImageDecoder$AssetSource;->mFileName:Ljava/lang/String;

    .line 564
    return-void
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

    .line 571
    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetSource;->mAssets:Landroid/content/res/AssetManager;

    iget-object v1, p0, Landroid/graphics/ImageDecoder$AssetSource;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 572
    .local v0, "is":Ljava/io/InputStream;
    move-object v1, v0

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-static {v1, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssetSource{file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/ImageDecoder$AssetSource;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
