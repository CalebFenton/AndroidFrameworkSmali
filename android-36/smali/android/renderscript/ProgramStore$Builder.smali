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
.field greylist-max-o mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field greylist-max-o mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field greylist-max-o mColorMaskA:Z

.field greylist-max-o mColorMaskB:Z

.field greylist-max-o mColorMaskG:Z

.field greylist-max-o mColorMaskR:Z

.field greylist-max-o mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field greylist-max-o mDepthMask:Z

.field greylist-max-o mDither:Z

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 349
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 352
    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 353
    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 354
    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 355
    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 356
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 357
    return-void
.end method


# virtual methods
.method public greylist create()Landroid/renderscript/ProgramStore;
    .registers 12

    .line 441
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 442
    iget-object v1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iget-boolean v4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iget-boolean v5, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    iget-boolean v6, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iget-boolean v7, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iget v8, v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iget v9, v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iget v10, v0, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nProgramStoreCreate(ZZZZZZIII)J

    move-result-wide v0

    .line 445
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ProgramStore;

    iget-object v3, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/ProgramStore;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 446
    .local v2, "programStore":Landroid/renderscript/ProgramStore;
    iget-object v3, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v3, v2, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 447
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    .line 448
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    .line 449
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    .line 450
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    .line 451
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    .line 452
    iget-object v3, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v3, v2, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 453
    iget-object v3, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v3, v2, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 454
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mDither:Z

    .line 455
    return-object v2
.end method

.method public greylist setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;
    .registers 3
    .param p1, "src"    # Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .param p2, "dst"    # Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 417
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 418
    iput-object p2, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 419
    return-object p0
.end method

.method public greylist-max-o setColorMaskEnabled(ZZZZ)Landroid/renderscript/ProgramStore$Builder;
    .registers 5
    .param p1, "r"    # Z
    .param p2, "g"    # Z
    .param p3, "b"    # Z
    .param p4, "a"    # Z

    .line 397
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 398
    iput-boolean p2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 399
    iput-boolean p3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 400
    iput-boolean p4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 401
    return-object p0
.end method

.method public greylist setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;
    .registers 2
    .param p1, "func"    # Landroid/renderscript/ProgramStore$DepthFunc;

    .line 368
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 369
    return-object p0
.end method

.method public greylist setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .registers 2
    .param p1, "enable"    # Z

    .line 382
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 383
    return-object p0
.end method

.method public greylist setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .registers 2
    .param p1, "enable"    # Z

    .line 432
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    .line 433
    return-object p0
.end method
