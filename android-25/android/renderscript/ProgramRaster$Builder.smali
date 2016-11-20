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
.field mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

.field mPointSprite:Z

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@5
    .line 129
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    #@8
    .line 130
    sget-object v0, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    #@a
    iput-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    #@c
    .line 127
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramRaster;
    .locals 6

    #@0
    .prologue
    .line 153
    iget-object v3, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 154
    iget-object v3, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@7
    iget-boolean v4, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    #@9
    iget-object v5, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    #@b
    iget v5, v5, Landroid/renderscript/ProgramRaster$CullMode;->mID:I

    #@d
    invoke-virtual {v3, v4, v5}, Landroid/renderscript/RenderScript;->nProgramRasterCreate(ZI)J

    #@10
    move-result-wide v0

    #@11
    .line 155
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ProgramRaster;

    #@13
    iget-object v3, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@15
    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/ProgramRaster;-><init>(JLandroid/renderscript/RenderScript;)V

    #@18
    .line 156
    .local v2, "programRaster":Landroid/renderscript/ProgramRaster;
    iget-boolean v3, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    #@1a
    iput-boolean v3, v2, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    #@1c
    .line 157
    iget-object v3, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    #@1e
    iput-object v3, v2, Landroid/renderscript/ProgramRaster;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    #@20
    .line 158
    return-object v2
.end method

.method public setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;
    .locals 0
    .param p1, "m"    # Landroid/renderscript/ProgramRaster$CullMode;

    #@0
    .prologue
    .line 145
    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    #@2
    .line 146
    return-object p0
.end method

.method public setPointSpriteEnabled(Z)Landroid/renderscript/ProgramRaster$Builder;
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 137
    iput-boolean p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    #@2
    .line 138
    return-object p0
.end method
