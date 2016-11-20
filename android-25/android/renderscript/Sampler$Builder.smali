.class public Landroid/renderscript/Sampler$Builder;
.super Ljava/lang/Object;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroid/renderscript/Sampler$Value;

.field mMin:Landroid/renderscript/Sampler$Value;

.field mRS:Landroid/renderscript/RenderScript;

.field mWrapR:Landroid/renderscript/Sampler$Value;

.field mWrapS:Landroid/renderscript/Sampler$Value;

.field mWrapT:Landroid/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 322
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@5
    .line 323
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@7
    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    #@9
    .line 324
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@b
    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    #@d
    .line 325
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@f
    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    #@11
    .line 326
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@13
    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    #@15
    .line 327
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@17
    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    #@19
    .line 328
    const/high16 v0, 0x3f800000    # 1.0f

    #@1b
    iput v0, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    #@1d
    .line 321
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Sampler;
    .locals 10

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 376
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@7
    iget-object v1, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    #@9
    iget v1, v1, Landroid/renderscript/Sampler$Value;->mID:I

    #@b
    iget-object v2, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    #@d
    iget v2, v2, Landroid/renderscript/Sampler$Value;->mID:I

    #@f
    .line 377
    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    #@11
    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    #@13
    iget-object v4, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    #@15
    iget v4, v4, Landroid/renderscript/Sampler$Value;->mID:I

    #@17
    iget-object v5, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    #@19
    iget v5, v5, Landroid/renderscript/Sampler$Value;->mID:I

    #@1b
    iget v6, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    #@1d
    .line 376
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nSamplerCreate(IIIIIF)J

    #@20
    move-result-wide v8

    #@21
    .line 378
    .local v8, "id":J
    new-instance v7, Landroid/renderscript/Sampler;

    #@23
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@25
    invoke-direct {v7, v8, v9, v0}, Landroid/renderscript/Sampler;-><init>(JLandroid/renderscript/RenderScript;)V

    #@28
    .line 379
    .local v7, "sampler":Landroid/renderscript/Sampler;
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    #@2a
    iput-object v0, v7, Landroid/renderscript/Sampler;->mMin:Landroid/renderscript/Sampler$Value;

    #@2c
    .line 380
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    #@2e
    iput-object v0, v7, Landroid/renderscript/Sampler;->mMag:Landroid/renderscript/Sampler$Value;

    #@30
    .line 381
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    #@32
    iput-object v0, v7, Landroid/renderscript/Sampler;->mWrapS:Landroid/renderscript/Sampler$Value;

    #@34
    .line 382
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    #@36
    iput-object v0, v7, Landroid/renderscript/Sampler;->mWrapT:Landroid/renderscript/Sampler$Value;

    #@38
    .line 383
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    #@3a
    iput-object v0, v7, Landroid/renderscript/Sampler;->mWrapR:Landroid/renderscript/Sampler$Value;

    #@3c
    .line 384
    iget v0, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    #@3e
    iput v0, v7, Landroid/renderscript/Sampler;->mAniso:F

    #@40
    .line 385
    return-object v7
.end method

.method public setAnisotropy(F)V
    .locals 2
    .param p1, "v"    # F

    #@0
    .prologue
    .line 367
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 368
    iput p1, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    #@7
    .line 366
    return-void

    #@8
    .line 370
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Invalid value"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
.end method

.method public setMagnification(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    #@0
    .prologue
    .line 343
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 344
    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    #@a
    .line 342
    return-void

    #@b
    .line 346
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Invalid value"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method public setMinification(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    #@0
    .prologue
    .line 332
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 333
    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 336
    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    #@a
    .line 331
    return-void

    #@b
    .line 334
    :cond_1
    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 335
    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    #@11
    if-eq p1, v0, :cond_0

    #@13
    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "Invalid value"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
.end method

.method public setWrapS(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    #@0
    .prologue
    .line 351
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 352
    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    #@a
    .line 350
    return-void

    #@b
    .line 351
    :cond_1
    sget-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Invalid value"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
.end method

.method public setWrapT(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    #@0
    .prologue
    .line 359
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 360
    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    #@a
    .line 358
    return-void

    #@b
    .line 359
    :cond_1
    sget-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Invalid value"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
.end method
