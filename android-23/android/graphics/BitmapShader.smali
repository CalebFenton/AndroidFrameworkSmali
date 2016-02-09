.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field private mTileX:Landroid/graphics/Shader$TileMode;

.field private mTileY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # Landroid/graphics/Shader$TileMode;
    .param p3, "tileY"    # Landroid/graphics/Shader$TileMode;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    #@5
    .line 45
    iput-object p2, p0, Landroid/graphics/BitmapShader;->mTileX:Landroid/graphics/Shader$TileMode;

    #@7
    .line 46
    iput-object p3, p0, Landroid/graphics/BitmapShader;->mTileY:Landroid/graphics/Shader$TileMode;

    #@9
    .line 47
    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    #@b
    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    #@d
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapShader;->nativeCreate(Landroid/graphics/Bitmap;II)J

    #@10
    move-result-wide v0

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/graphics/BitmapShader;->init(J)V

    #@14
    .line 43
    return-void
.end method

.method private static native nativeCreate(Landroid/graphics/Bitmap;II)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 4

    #@0
    .prologue
    .line 55
    new-instance v0, Landroid/graphics/BitmapShader;

    #@2
    iget-object v1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    #@4
    iget-object v2, p0, Landroid/graphics/BitmapShader;->mTileX:Landroid/graphics/Shader$TileMode;

    #@6
    iget-object v3, p0, Landroid/graphics/BitmapShader;->mTileY:Landroid/graphics/Shader$TileMode;

    #@8
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@b
    .line 56
    .local v0, "copy":Landroid/graphics/BitmapShader;
    invoke-virtual {p0, v0}, Landroid/graphics/BitmapShader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    #@e
    .line 57
    return-object v0
.end method
