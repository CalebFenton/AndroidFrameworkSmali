.class public Landroid/renderscript/RSSurfaceView;
.super Landroid/view/SurfaceView;
.source "RSSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mRS:Landroid/renderscript/RenderScriptGL;

.field private greylist-max-o mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0}, Landroid/renderscript/RSSurfaceView;->init()V

    .line 52
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0}, Landroid/renderscript/RSSurfaceView;->init()V

    .line 65
    return-void
.end method

.method private greylist-max-o init()V
    .registers 2

    .line 70
    invoke-virtual {p0}, Landroid/renderscript/RSSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 71
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 72
    return-void
.end method


# virtual methods
.method public greylist-max-o createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;
    .registers 4
    .param p1, "sc"    # Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 141
    new-instance v0, Landroid/renderscript/RenderScriptGL;

    invoke-virtual {p0}, Landroid/renderscript/RSSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    .line 142
    .local v0, "rs":Landroid/renderscript/RenderScriptGL;
    invoke-virtual {p0, v0}, Landroid/renderscript/RSSurfaceView;->setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V

    .line 143
    return-object v0
.end method

.method public greylist-max-o destroyRenderScriptGL()V
    .registers 2

    .line 150
    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 153
    monitor-exit p0

    .line 154
    return-void

    .line 153
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public greylist-max-o getRenderScriptGL()Landroid/renderscript/RenderScriptGL;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    return-object v0
.end method

.method public greylist-max-o pause()V
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_9

    .line 119
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->pause()V

    .line 121
    :cond_9
    return-void
.end method

.method public greylist-max-o resume()V
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->resume()V

    .line 135
    :cond_9
    return-void
.end method

.method public greylist-max-o setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V
    .registers 2
    .param p1, "rs"    # Landroid/renderscript/RenderScriptGL;

    .line 160
    iput-object p1, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 161
    return-void
.end method

.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 103
    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_a

    .line 105
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 107
    :cond_a
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 80
    iput-object p1, p0, Landroid/renderscript/RSSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 81
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 89
    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_c

    .line 92
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 94
    :cond_c
    monitor-exit p0

    .line 95
    return-void

    .line 94
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method
