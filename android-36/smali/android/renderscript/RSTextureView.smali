.class public Landroid/renderscript/RSTextureView;
.super Landroid/view/TextureView;
.source "RSTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mRS:Landroid/renderscript/RenderScriptGL;

.field private greylist-max-o mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Landroid/renderscript/RSTextureView;->init()V

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Landroid/renderscript/RSTextureView;->init()V

    .line 58
    return-void
.end method

.method private greylist-max-o init()V
    .registers 1

    .line 61
    invoke-virtual {p0, p0}, Landroid/renderscript/RSTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public greylist-max-o createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;
    .registers 7
    .param p1, "sc"    # Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 153
    new-instance v0, Landroid/renderscript/RenderScriptGL;

    invoke-virtual {p0}, Landroid/renderscript/RSTextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    .line 154
    .local v0, "rs":Landroid/renderscript/RenderScriptGL;
    invoke-virtual {p0, v0}, Landroid/renderscript/RSTextureView;->setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V

    .line 155
    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1f

    .line 156
    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/renderscript/RSTextureView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/renderscript/RSTextureView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 158
    :cond_1f
    return-object v0
.end method

.method public greylist-max-o destroyRenderScriptGL()V
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 169
    return-void
.end method

.method public greylist-max-o getRenderScriptGL()Landroid/renderscript/RenderScriptGL;
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    return-object v0
.end method

.method public whitelist onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 71
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 73
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_d

    .line 74
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p2, p3}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 76
    :cond_d
    return-void
.end method

.method public whitelist onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 97
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 99
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_d

    .line 100
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 103
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 84
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 86
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_d

    .line 87
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p2, p3}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 89
    :cond_d
    return-void
.end method

.method public whitelist onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 112
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 113
    return-void
.end method

.method public greylist-max-o pause()V
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_9

    .line 124
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->pause()V

    .line 126
    :cond_9
    return-void
.end method

.method public greylist-max-o resume()V
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->resume()V

    .line 140
    :cond_9
    return-void
.end method

.method public greylist-max-o setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V
    .registers 6
    .param p1, "rs"    # Landroid/renderscript/RenderScriptGL;

    .line 179
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 180
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_15

    .line 181
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/renderscript/RSTextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/renderscript/RSTextureView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 183
    :cond_15
    return-void
.end method
