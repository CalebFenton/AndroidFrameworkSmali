.class public Landroid/renderscript/ProgramStore;
.super Landroid/renderscript/BaseObj;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramStore$DepthFunc;,
        Landroid/renderscript/ProgramStore$BlendSrcFunc;,
        Landroid/renderscript/ProgramStore$BlendDstFunc;,
        Landroid/renderscript/ProgramStore$Builder;
    }
.end annotation


# instance fields
.field mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field mColorMaskA:Z

.field mColorMaskB:Z

.field mColorMaskG:Z

.field mColorMaskR:Z

.field mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field mDepthMask:Z

.field mDither:Z


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 146
    return-void
.end method

.method public static BLEND_ALPHA_DEPTH_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 303
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 304
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    #@7
    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@a
    .line 305
    .local v0, "builder":Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    #@c
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    #@f
    .line 306
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@11
    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    #@16
    .line 307
    invoke-virtual {v0, v3}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    #@19
    .line 308
    invoke-virtual {v0, v3}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    #@1c
    .line 309
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    #@22
    .line 311
    .end local v0    # "builder":Landroid/renderscript/ProgramStore$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    #@24
    return-object v1
.end method

.method public static BLEND_ALPHA_DEPTH_TEST(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 281
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 282
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 283
    .local v0, "builder":Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    #@e
    .line 284
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@10
    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    #@15
    .line 285
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    #@19
    .line 286
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    #@1d
    .line 287
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    #@23
    .line 289
    .end local v0    # "builder":Landroid/renderscript/ProgramStore$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    #@25
    return-object v1
.end method

.method public static BLEND_NONE_DEPTH_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 257
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 258
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    #@7
    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@a
    .line 259
    .local v0, "builder":Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    #@c
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    #@f
    .line 260
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@11
    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    #@16
    .line 261
    invoke-virtual {v0, v3}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    #@19
    .line 262
    invoke-virtual {v0, v3}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    #@1c
    .line 263
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    #@22
    .line 265
    .end local v0    # "builder":Landroid/renderscript/ProgramStore$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    #@24
    return-object v1
.end method

.method public static BLEND_NONE_DEPTH_TEST(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 236
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 237
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 238
    .local v0, "builder":Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    #@e
    .line 239
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@10
    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    #@15
    .line 240
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    #@19
    .line 241
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    #@1d
    .line 242
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    #@23
    .line 244
    .end local v0    # "builder":Landroid/renderscript/ProgramStore$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    #@25
    return-object v1
.end method


# virtual methods
.method public getBlendDstFunc()Landroid/renderscript/ProgramStore$BlendDstFunc;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@2
    return-object v0
.end method

.method public getBlendSrcFunc()Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@2
    return-object v0
.end method

.method public getDepthFunc()Landroid/renderscript/ProgramStore$DepthFunc;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    #@2
    return-object v0
.end method

.method public isColorMaskAlphaEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 196
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    #@2
    return v0
.end method

.method public isColorMaskBlueEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 188
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    #@2
    return v0
.end method

.method public isColorMaskGreenEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 180
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    #@2
    return v0
.end method

.method public isColorMaskRedEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    #@2
    return v0
.end method

.method public isDepthMaskEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    #@2
    return v0
.end method

.method public isDitherEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 221
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mDither:Z

    #@2
    return v0
.end method
