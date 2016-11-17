.class public Landroid/renderscript/ProgramStore$Builder;
.super Ljava/lang/Object;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 332
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@6
    .line 333
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    #@8
    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    #@a
    .line 334
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    #@d
    .line 335
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    #@f
    .line 336
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    #@11
    .line 337
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    #@13
    .line 338
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    #@15
    .line 339
    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@17
    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@19
    .line 340
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@1b
    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@1d
    .line 331
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramStore;
    .locals 13

    #@0
    .prologue
    .line 420
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 421
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@7
    iget-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    #@9
    iget-boolean v2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    #@b
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    #@d
    iget-boolean v4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    #@f
    .line 422
    iget-boolean v5, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    #@11
    iget-boolean v6, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    #@13
    .line 423
    iget-object v7, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@15
    iget v7, v7, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    #@17
    iget-object v8, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@19
    iget v8, v8, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    #@1b
    iget-object v9, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    #@1d
    iget v9, v9, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    #@1f
    .line 421
    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nProgramStoreCreate(ZZZZZZIII)J

    #@22
    move-result-wide v10

    #@23
    .line 424
    .local v10, "id":J
    new-instance v12, Landroid/renderscript/ProgramStore;

    #@25
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@27
    invoke-direct {v12, v10, v11, v0}, Landroid/renderscript/ProgramStore;-><init>(JLandroid/renderscript/RenderScript;)V

    #@2a
    .line 425
    .local v12, "programStore":Landroid/renderscript/ProgramStore;
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    #@2c
    iput-object v0, v12, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    #@2e
    .line 426
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    #@30
    iput-boolean v0, v12, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    #@32
    .line 427
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    #@34
    iput-boolean v0, v12, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    #@36
    .line 428
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    #@38
    iput-boolean v0, v12, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    #@3a
    .line 429
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    #@3c
    iput-boolean v0, v12, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    #@3e
    .line 430
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    #@40
    iput-boolean v0, v12, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    #@42
    .line 431
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@44
    iput-object v0, v12, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@46
    .line 432
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@48
    iput-object v0, v12, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@4a
    .line 433
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    #@4c
    iput-boolean v0, v12, Landroid/renderscript/ProgramStore;->mDither:Z

    #@4e
    .line 434
    return-object v12
.end method

.method public setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "src"    # Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .param p2, "dst"    # Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@0
    .prologue
    .line 398
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@2
    .line 399
    iput-object p2, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@4
    .line 400
    return-object p0
.end method

.method public setColorMaskEnabled(ZZZZ)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "r"    # Z
    .param p2, "g"    # Z
    .param p3, "b"    # Z
    .param p4, "a"    # Z

    #@0
    .prologue
    .line 379
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    #@2
    .line 380
    iput-boolean p2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    #@4
    .line 381
    iput-boolean p3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    #@6
    .line 382
    iput-boolean p4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    #@8
    .line 383
    return-object p0
.end method

.method public setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "func"    # Landroid/renderscript/ProgramStore$DepthFunc;

    #@0
    .prologue
    .line 351
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    #@2
    .line 352
    return-object p0
.end method

.method public setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 364
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    #@2
    .line 365
    return-object p0
.end method

.method public setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 412
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    #@2
    .line 413
    return-object p0
.end method
