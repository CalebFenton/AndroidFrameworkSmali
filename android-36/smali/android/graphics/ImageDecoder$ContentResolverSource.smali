.class Landroid/graphics/ImageDecoder$ContentResolverSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentResolverSource"
.end annotation


# instance fields
.field private final greylist-max-o mResolver:Landroid/content/ContentResolver;

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mUri:Landroid/net/Uri;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder-IA;)V

    .line 268
    iput-object p1, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    .line 269
    iput-object p2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    .line 270
    iput-object p3, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResources:Landroid/content/res/Resources;

    .line 271
    return-void
.end method


# virtual methods
.method public blacklist createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .registers 7
    .param p1, "preferAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "assetFd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    const-string v1, "content"

    iget-object v2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 285
    iget-object v1, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    const-string/jumbo v3, "image/*"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .local v1, "assetFd":Landroid/content/res/AssetFileDescriptor;
    goto :goto_29

    .line 288
    .end local v1    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .restart local v0    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    :cond_1d
    iget-object v1, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    const-string/jumbo v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_28} :catch_2a

    move-object v0, v1

    .line 292
    :goto_29
    goto :goto_2b

    .line 290
    :catch_2a
    move-exception v1

    .line 294
    :goto_2b
    if-nez v0, :cond_49

    .line 297
    iget-object v1, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 298
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_3d

    .line 302
    const/4 v2, 0x1

    invoke-static {v1, v2, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2

    return-object v2

    .line 299
    :cond_3d
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_49
    invoke-static {v0, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o getResources()Landroid/content/res/Resources;
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 310
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "uri":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_36

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentResolverSource{uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
