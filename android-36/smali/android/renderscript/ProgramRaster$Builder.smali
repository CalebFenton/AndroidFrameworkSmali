.class public Landroid/renderscript/ProgramRaster$Builder;
.super Ljava/lang/Object;
.source "ProgramRaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramRaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field greylist-max-o mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

.field greylist-max-o mPointSprite:Z

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    .line 134
    sget-object v0, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    iput-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 135
    return-void
.end method


# virtual methods
.method public greylist create()Landroid/renderscript/ProgramRaster;
    .registers 5

    .line 159
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 160
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v1, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    iget-object v2, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    iget v2, v2, Landroid/renderscript/ProgramRaster$CullMode;->mID:I

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nProgramRasterCreate(ZI)J

    move-result-wide v0

    .line 161
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ProgramRaster;

    iget-object v3, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/ProgramRaster;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 162
    .local v2, "programRaster":Landroid/renderscript/ProgramRaster;
    iget-boolean v3, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    .line 163
    iget-object v3, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    iput-object v3, v2, Landroid/renderscript/ProgramRaster;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 164
    return-object v2
.end method

.method public greylist-max-o setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;
    .registers 2
    .param p1, "m"    # Landroid/renderscript/ProgramRaster$CullMode;

    .line 150
    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 151
    return-object p0
.end method

.method public greylist setPointSpriteEnabled(Z)Landroid/renderscript/ProgramRaster$Builder;
    .registers 2
    .param p1, "enable"    # Z

    .line 142
    iput-boolean p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    .line 143
    return-object p0
.end method
