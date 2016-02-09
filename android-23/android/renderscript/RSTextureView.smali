.class public Landroid/renderscript/RSTextureView;
.super Landroid/view/TextureView;
.source "RSTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    #@3
    .line 43
    invoke-direct {p0}, Landroid/renderscript/RSTextureView;->init()V

    #@6
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 55
    invoke-direct {p0}, Landroid/renderscript/RSTextureView;->init()V

    #@6
    .line 53
    return-void
.end method

.method private init()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-virtual {p0, p0}, Landroid/renderscript/RSTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    #@3
    .line 59
    return-void
.end method


# virtual methods
.method public createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;
    .locals 5
    .param p1, "sc"    # Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@0
    .prologue
    .line 152
    new-instance v0, Landroid/renderscript/RenderScriptGL;

    #@2
    invoke-virtual {p0}, Landroid/renderscript/RSTextureView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    #@9
    .line 153
    .local v0, "rs":Landroid/renderscript/RenderScriptGL;
    invoke-virtual {p0, v0}, Landroid/renderscript/RSTextureView;->setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V

    #@c
    .line 154
    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 155
    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@12
    iget-object v2, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@14
    invoke-virtual {p0}, Landroid/renderscript/RSTextureView;->getWidth()I

    #@17
    move-result v3

    #@18
    invoke-virtual {p0}, Landroid/renderscript/RSTextureView;->getHeight()I

    #@1b
    move-result v4

    #@1c
    invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    #@1f
    .line 157
    :cond_0
    return-object v0
.end method

.method public destroyRenderScriptGL()V
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    #@5
    .line 167
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@8
    .line 165
    return-void
.end method

.method public getRenderScriptGL()Landroid/renderscript/RenderScriptGL;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@2
    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 70
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@2
    .line 72
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 73
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@8
    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@a
    invoke-virtual {v0, v1, p2, p3}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    #@d
    .line 68
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 96
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@4
    .line 98
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 99
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@a
    invoke-virtual {v0, v2, v1, v1}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    #@d
    .line 102
    :cond_0
    const/4 v0, 0x1

    #@e
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 83
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@2
    .line 85
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 86
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@8
    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@a
    invoke-virtual {v0, v1, p2, p3}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    #@d
    .line 81
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 111
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@2
    .line 109
    return-void
.end method

.method public pause()V
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 123
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@6
    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->pause()V

    #@9
    .line 121
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 137
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@6
    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->resume()V

    #@9
    .line 135
    :cond_0
    return-void
.end method

.method public setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScriptGL;

    #@0
    .prologue
    .line 178
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@2
    .line 179
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 180
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@8
    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@a
    invoke-virtual {p0}, Landroid/renderscript/RSTextureView;->getWidth()I

    #@d
    move-result v2

    #@e
    invoke-virtual {p0}, Landroid/renderscript/RSTextureView;->getHeight()I

    #@11
    move-result v3

    #@12
    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    #@15
    .line 177
    :cond_0
    return-void
.end method
