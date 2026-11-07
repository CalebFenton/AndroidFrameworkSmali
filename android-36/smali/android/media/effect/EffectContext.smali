.class public Landroid/media/effect/EffectContext;
.super Ljava/lang/Object;
.source "EffectContext.java"


# instance fields
.field private final greylist-max-o GL_STATE_ARRAYBUFFER:I

.field private final greylist-max-o GL_STATE_COUNT:I

.field private final greylist-max-o GL_STATE_FBO:I

.field private final greylist-max-o GL_STATE_PROGRAM:I

.field private greylist-max-o mFactory:Landroid/media/effect/EffectFactory;

.field greylist-max-o mFilterContext:Landroid/filterfw/core/FilterContext;

.field private greylist-max-o mOldState:[I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_FBO:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_PROGRAM:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_ARRAYBUFFER:I

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_COUNT:I

    .line 46
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    .line 90
    new-instance v0, Landroid/filterfw/core/FilterContext;

    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 91
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    new-instance v1, Landroid/filterfw/core/CachedFrameManager;

    invoke-direct {v1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    .line 92
    new-instance v0, Landroid/media/effect/EffectFactory;

    invoke-direct {v0, p0}, Landroid/media/effect/EffectFactory;-><init>(Landroid/media/effect/EffectContext;)V

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFactory:Landroid/media/effect/EffectFactory;

    .line 93
    return-void
.end method

.method public static whitelist createWithCurrentGlContext()Landroid/media/effect/EffectContext;
    .registers 1

    .line 57
    new-instance v0, Landroid/media/effect/EffectContext;

    invoke-direct {v0}, Landroid/media/effect/EffectContext;-><init>()V

    .line 58
    .local v0, "result":Landroid/media/effect/EffectContext;
    invoke-direct {v0}, Landroid/media/effect/EffectContext;->initInCurrentGlContext()V

    .line 59
    return-object v0
.end method

.method private greylist-max-o initInCurrentGlContext()V
    .registers 3

    .line 96
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 100
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    .line 101
    .local v0, "glEnvironment":Landroid/filterfw/core/GLEnvironment;
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithCurrentContext()V

    .line 102
    iget-object v1, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    .line 103
    return-void

    .line 97
    .end local v0    # "glEnvironment":Landroid/filterfw/core/GLEnvironment;
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to initialize EffectContext with no active GL context!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final greylist-max-o assertValidGLState()V
    .registers 4

    .line 106
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 107
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    .line 114
    :cond_f
    return-void

    .line 108
    :cond_10
    :goto_10
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Applying effect in wrong GL context!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to apply effect without valid GL context!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getFactory()Landroid/media/effect/EffectFactory;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFactory:Landroid/media/effect/EffectFactory;

    return-object v0
.end method

.method public whitelist release()V
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->tearDown()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 87
    return-void
.end method

.method final greylist-max-o restoreGLState()V
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 124
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 125
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 126
    return-void
.end method

.method final greylist-max-o saveGLState()V
    .registers 4

    .line 117
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v1, 0x0

    const v2, 0x8ca6

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 118
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v1, 0x1

    const v2, 0x8b8d

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 119
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v1, 0x2

    const v2, 0x8894

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 120
    return-void
.end method
