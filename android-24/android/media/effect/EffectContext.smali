.class public Landroid/media/effect/EffectContext;
.super Ljava/lang/Object;
.source "EffectContext.java"


# instance fields
.field private final GL_STATE_ARRAYBUFFER:I

.field private final GL_STATE_COUNT:I

.field private final GL_STATE_FBO:I

.field private final GL_STATE_PROGRAM:I

.field private mFactory:Landroid/media/effect/EffectFactory;

.field mFilterContext:Landroid/filterfw/core/FilterContext;

.field private mOldState:[I


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 37
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_FBO:I

    #@7
    .line 38
    const/4 v0, 0x1

    #@8
    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_PROGRAM:I

    #@a
    .line 39
    const/4 v0, 0x2

    #@b
    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_ARRAYBUFFER:I

    #@d
    .line 40
    iput v1, p0, Landroid/media/effect/EffectContext;->GL_STATE_COUNT:I

    #@f
    .line 46
    new-array v0, v1, [I

    #@11
    iput-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    #@13
    .line 90
    new-instance v0, Landroid/filterfw/core/FilterContext;

    #@15
    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    #@18
    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@1a
    .line 91
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@1c
    new-instance v1, Landroid/filterfw/core/CachedFrameManager;

    #@1e
    invoke-direct {v1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    #@21
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    #@24
    .line 92
    new-instance v0, Landroid/media/effect/EffectFactory;

    #@26
    invoke-direct {v0, p0}, Landroid/media/effect/EffectFactory;-><init>(Landroid/media/effect/EffectContext;)V

    #@29
    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFactory:Landroid/media/effect/EffectFactory;

    #@2b
    .line 89
    return-void
.end method

.method public static createWithCurrentGlContext()Landroid/media/effect/EffectContext;
    .locals 1

    #@0
    .prologue
    .line 57
    new-instance v0, Landroid/media/effect/EffectContext;

    #@2
    invoke-direct {v0}, Landroid/media/effect/EffectContext;-><init>()V

    #@5
    .line 58
    .local v0, "result":Landroid/media/effect/EffectContext;
    invoke-direct {v0}, Landroid/media/effect/EffectContext;->initInCurrentGlContext()V

    #@8
    .line 59
    return-object v0
.end method

.method private initInCurrentGlContext()V
    .locals 3

    #@0
    .prologue
    .line 96
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "Attempting to initialize EffectContext with no active GL context!"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 100
    :cond_0
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    #@11
    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    #@14
    .line 101
    .local v0, "glEnvironment":Landroid/filterfw/core/GLEnvironment;
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithCurrentContext()V

    #@17
    .line 102
    iget-object v1, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@19
    invoke-virtual {v1, v0}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    #@1c
    .line 95
    return-void
.end method


# virtual methods
.method final assertValidGLState()V
    .locals 3

    #@0
    .prologue
    .line 106
    iget-object v1, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@2
    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@5
    move-result-object v0

    #@6
    .line 107
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 105
    return-void

    #@f
    .line 108
    :cond_0
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    #@17
    const-string/jumbo v2, "Applying effect in wrong GL context!"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 111
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    #@20
    const-string/jumbo v2, "Attempting to apply effect without valid GL context!"

    #@23
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method

.method public getFactory()Landroid/media/effect/EffectFactory;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFactory:Landroid/media/effect/EffectFactory;

    #@2
    return-object v0
.end method

.method public release()V
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@2
    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->tearDown()V

    #@5
    .line 86
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@8
    .line 84
    return-void
.end method

.method final restoreGLState()V
    .locals 2

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    #@2
    const/4 v1, 0x0

    #@3
    aget v0, v0, v1

    #@5
    const v1, 0x8d40

    #@8
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    #@b
    .line 124
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    #@d
    const/4 v1, 0x1

    #@e
    aget v0, v0, v1

    #@10
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    #@13
    .line 125
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    #@15
    const/4 v1, 0x2

    #@16
    aget v0, v0, v1

    #@18
    const v1, 0x8892

    #@1b
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@1e
    .line 122
    return-void
.end method

.method final saveGLState()V
    .locals 3

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    #@2
    const v1, 0x8ca6

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    #@9
    .line 118
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    #@b
    const v1, 0x8b8d

    #@e
    const/4 v2, 0x1

    #@f
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    #@12
    .line 119
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    #@14
    const v1, 0x8894

    #@17
    const/4 v2, 0x2

    #@18
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    #@1b
    .line 116
    return-void
.end method
