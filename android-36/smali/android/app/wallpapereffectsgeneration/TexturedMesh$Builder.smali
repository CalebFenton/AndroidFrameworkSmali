.class public final Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;
.super Ljava/lang/Object;
.source "TexturedMesh.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/TexturedMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mIndices:[I

.field private blacklist mIndicesLayoutType:I

.field private blacklist mVertices:[F

.field private blacklist mVerticesLayouttype:I


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 223
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/wallpapereffectsgeneration/TexturedMesh;
    .registers 8

    .line 269
    new-instance v0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;

    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mIndices:[I

    iget-object v3, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mVertices:[F

    iget v4, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mIndicesLayoutType:I

    iget v5, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mVerticesLayouttype:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/app/wallpapereffectsgeneration/TexturedMesh;-><init>(Landroid/graphics/Bitmap;[I[FIILandroid/app/wallpapereffectsgeneration/TexturedMesh-IA;)V

    return-object v0
.end method

.method public whitelist setIndices([I)Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;
    .registers 2
    .param p1, "indices"    # [I

    .line 232
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mIndices:[I

    .line 233
    return-object p0
.end method

.method public whitelist setIndicesLayoutType(I)Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;
    .registers 2
    .param p1, "indicesLayoutType"    # I

    .line 253
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mIndicesLayoutType:I

    .line 254
    return-object p0
.end method

.method public whitelist setVertices([F)Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;
    .registers 2
    .param p1, "vertices"    # [F

    .line 244
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mVertices:[F

    .line 245
    return-object p0
.end method

.method public whitelist setVerticesLayoutType(I)Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;
    .registers 2
    .param p1, "verticesLayoutype"    # I

    .line 262
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mVerticesLayouttype:I

    .line 263
    return-object p0
.end method
