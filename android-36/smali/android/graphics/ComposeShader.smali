.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "ComposeShader.java"


# instance fields
.field private greylist-max-o mNativeInstanceShaderA:J

.field private greylist-max-o mNativeInstanceShaderB:J

.field private greylist-max-o mPorterDuffMode:I

.field greylist-max-o mShaderA:Landroid/graphics/Shader;

.field greylist-max-o mShaderB:Landroid/graphics/Shader;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V
    .registers 6
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "nativeMode"    # I

    .line 81
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 82
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 86
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 87
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 88
    iput p3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    .line 89
    return-void

    .line 83
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shader parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/BlendMode;)V
    .registers 5
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "blendMode"    # Landroid/graphics/BlendMode;

    .line 78
    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .registers 5
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 64
    iget v0, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .registers 5
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "mode"    # Landroid/graphics/Xfermode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    nop

    .line 48
    instance-of v0, p3, Landroid/graphics/PorterDuffXfermode;

    if-eqz v0, :cond_b

    move-object v0, p3

    check-cast v0, Landroid/graphics/PorterDuffXfermode;

    iget v0, v0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    goto :goto_13

    .line 49
    :cond_b
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v0}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 47
    :goto_13
    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    .line 50
    return-void
.end method

.method private static native greylist-max-o nativeCreate(JJJI)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .registers 12
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 94
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v0, p3}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderA:J

    .line 95
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v0, p3}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderB:J

    .line 96
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v3

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    .line 96
    move-wide v1, p1

    .end local p1    # "nativeMatrix":J
    .local v1, "nativeMatrix":J
    invoke-static/range {v1 .. v7}, Landroid/graphics/ComposeShader;->nativeCreate(JJJI)J

    move-result-wide p1

    return-wide p1
.end method

.method protected blacklist shouldDiscardNativeInstance(Z)Z
    .registers 6
    .param p1, "filterFromPaint"    # Z

    .line 103
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderA:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 104
    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderB:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 103
    :goto_1c
    return v0
.end method
