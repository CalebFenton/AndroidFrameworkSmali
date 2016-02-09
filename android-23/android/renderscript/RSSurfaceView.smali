.class public Landroid/renderscript/RSSurfaceView;
.super Landroid/view/SurfaceView;
.source "RSSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    #@3
    .line 47
    invoke-direct {p0}, Landroid/renderscript/RSSurfaceView;->init()V

    #@6
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 59
    invoke-direct {p0}, Landroid/renderscript/RSSurfaceView;->init()V

    #@6
    .line 57
    return-void
.end method

.method private init()V
    .locals 1

    #@0
    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/renderscript/RSSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@3
    move-result-object v0

    #@4
    .line 67
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    #@7
    .line 63
    return-void
.end method


# virtual methods
.method public createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;
    .locals 2
    .param p1, "sc"    # Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@0
    .prologue
    .line 137
    new-instance v0, Landroid/renderscript/RenderScriptGL;

    #@2
    invoke-virtual {p0}, Landroid/renderscript/RSSurfaceView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    #@9
    .line 138
    .local v0, "rs":Landroid/renderscript/RenderScriptGL;
    invoke-virtual {p0, v0}, Landroid/renderscript/RSSurfaceView;->setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V

    #@c
    .line 139
    return-object v0
.end method

.method public destroyRenderScriptGL()V
    .locals 1

    #@0
    .prologue
    .line 146
    monitor-enter p0

    #@1
    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@3
    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    #@6
    .line 148
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 145
    return-void

    #@b
    .line 146
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public getRenderScriptGL()Landroid/renderscript/RenderScriptGL;
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@2
    return-object v0
.end method

.method public pause()V
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 115
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@6
    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->pause()V

    #@9
    .line 113
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 129
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@6
    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->resume()V

    #@9
    .line 127
    :cond_0
    return-void
.end method

.method public setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V
    .locals 0
    .param p1, "rs"    # Landroid/renderscript/RenderScriptGL;

    #@0
    .prologue
    .line 156
    iput-object p1, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@2
    .line 155
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    #@0
    .prologue
    .line 99
    monitor-enter p0

    #@1
    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 101
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@7
    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 98
    return-void

    #@c
    .line 99
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Landroid/renderscript/RSSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2
    .line 75
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 85
    monitor-enter p0

    #@1
    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 88
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 84
    return-void

    #@f
    .line 85
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method
