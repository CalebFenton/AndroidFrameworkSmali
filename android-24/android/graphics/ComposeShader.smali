.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "ComposeShader.java"


# static fields
.field private static final TYPE_PORTERDUFFMODE:I = 0x2

.field private static final TYPE_XFERMODE:I = 0x1


# instance fields
.field private mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

.field private final mShaderA:Landroid/graphics/Shader;

.field private final mShaderB:Landroid/graphics/Shader;

.field private mType:I

.field private mXferMode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    #@3
    .line 68
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/graphics/ComposeShader;->mType:I

    #@6
    .line 69
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    #@8
    .line 70
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    #@a
    .line 71
    iput-object p3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    .line 72
    invoke-virtual {p1}, Landroid/graphics/Shader;->getNativeInstance()J

    #@f
    move-result-wide v0

    #@10
    invoke-virtual {p2}, Landroid/graphics/Shader;->getNativeInstance()J

    #@13
    move-result-wide v2

    #@14
    .line 73
    iget v4, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    #@16
    .line 72
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/ComposeShader;->nativeCreate2(JJI)J

    #@19
    move-result-wide v0

    #@1a
    invoke-virtual {p0, v0, v1}, Landroid/graphics/ComposeShader;->init(J)V

    #@1d
    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .locals 6
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "mode"    # Landroid/graphics/Xfermode;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    #@3
    .line 52
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/graphics/ComposeShader;->mType:I

    #@6
    .line 53
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    #@8
    .line 54
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    #@a
    .line 55
    iput-object p3, p0, Landroid/graphics/ComposeShader;->mXferMode:Landroid/graphics/Xfermode;

    #@c
    .line 56
    invoke-virtual {p1}, Landroid/graphics/Shader;->getNativeInstance()J

    #@f
    move-result-wide v0

    #@10
    invoke-virtual {p2}, Landroid/graphics/Shader;->getNativeInstance()J

    #@13
    move-result-wide v2

    #@14
    .line 57
    if-eqz p3, :cond_0

    #@16
    iget-wide v4, p3, Landroid/graphics/Xfermode;->native_instance:J

    #@18
    .line 56
    :goto_0
    invoke-static/range {v0 .. v5}, Landroid/graphics/ComposeShader;->nativeCreate1(JJJ)J

    #@1b
    move-result-wide v0

    #@1c
    invoke-virtual {p0, v0, v1}, Landroid/graphics/ComposeShader;->init(J)V

    #@1f
    .line 51
    return-void

    #@20
    .line 57
    :cond_0
    const-wide/16 v4, 0x0

    #@22
    goto :goto_0
.end method

.method private static native nativeCreate1(JJJ)J
.end method

.method private static native nativeCreate2(JJI)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 4

    #@0
    .prologue
    .line 82
    iget v1, p0, Landroid/graphics/ComposeShader;->mType:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    .line 91
    const-string/jumbo v2, "ComposeShader should be created with either Xfermode or PorterDuffMode"

    #@a
    .line 90
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 84
    :pswitch_0
    new-instance v0, Landroid/graphics/ComposeShader;

    #@10
    iget-object v1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    #@12
    invoke-virtual {v1}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    #@18
    invoke-virtual {v2}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    #@1b
    move-result-object v2

    #@1c
    iget-object v3, p0, Landroid/graphics/ComposeShader;->mXferMode:Landroid/graphics/Xfermode;

    #@1e
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    #@21
    .line 93
    .local v0, "copy":Landroid/graphics/ComposeShader;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/ComposeShader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    #@24
    .line 94
    return-object v0

    #@25
    .line 87
    .end local v0    # "copy":Landroid/graphics/ComposeShader;
    :pswitch_1
    new-instance v0, Landroid/graphics/ComposeShader;

    #@27
    iget-object v1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    #@29
    invoke-virtual {v1}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    #@2f
    invoke-virtual {v2}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    #@32
    move-result-object v2

    #@33
    iget-object v3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    #@35
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    #@38
    .line 88
    .restart local v0    # "copy":Landroid/graphics/ComposeShader;
    goto :goto_0

    #@39
    .line 82
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
