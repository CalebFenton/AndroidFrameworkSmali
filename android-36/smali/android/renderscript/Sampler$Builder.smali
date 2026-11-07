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
.field greylist-max-o mAniso:F

.field greylist-max-o mMag:Landroid/renderscript/Sampler$Value;

.field greylist-max-o mMin:Landroid/renderscript/Sampler$Value;

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mWrapR:Landroid/renderscript/Sampler$Value;

.field greylist-max-o mWrapS:Landroid/renderscript/Sampler$Value;

.field greylist-max-o mWrapT:Landroid/renderscript/Sampler$Value;


# direct methods
.method public constructor whitelist <init>(Landroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 328
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    .line 329
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    .line 330
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    .line 331
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    .line 332
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    .line 333
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    .line 334
    return-void
.end method


# virtual methods
.method public whitelist create()Landroid/renderscript/Sampler;
    .registers 9

    .line 380
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 381
    iget-object v1, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    iget v2, v0, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    iget v3, v0, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    iget v4, v0, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    iget v5, v0, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    iget v6, v0, Landroid/renderscript/Sampler$Value;->mID:I

    iget v7, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nSamplerCreate(IIIIIF)J

    move-result-wide v0

    .line 383
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/Sampler;

    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Sampler;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 384
    .local v2, "sampler":Landroid/renderscript/Sampler;
    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    iput-object v3, v2, Landroid/renderscript/Sampler;->mMin:Landroid/renderscript/Sampler$Value;

    .line 385
    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    iput-object v3, v2, Landroid/renderscript/Sampler;->mMag:Landroid/renderscript/Sampler$Value;

    .line 386
    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    iput-object v3, v2, Landroid/renderscript/Sampler;->mWrapS:Landroid/renderscript/Sampler$Value;

    .line 387
    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    iput-object v3, v2, Landroid/renderscript/Sampler;->mWrapT:Landroid/renderscript/Sampler$Value;

    .line 388
    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    iput-object v3, v2, Landroid/renderscript/Sampler;->mWrapR:Landroid/renderscript/Sampler$Value;

    .line 389
    iget v3, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    iput v3, v2, Landroid/renderscript/Sampler;->mAniso:F

    .line 390
    return-object v2
.end method

.method public whitelist setAnisotropy(F)V
    .registers 4
    .param p1, "v"    # F

    .line 372
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 373
    iput p1, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    .line 377
    return-void

    .line 375
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMagnification(Landroid/renderscript/Sampler$Value;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    .line 348
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_11

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 351
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_11
    :goto_11
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    .line 353
    return-void
.end method

.method public whitelist setMinification(Landroid/renderscript/Sampler$Value;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    .line 337
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_19

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_19

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_19

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_11

    goto :goto_19

    .line 343
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_19
    :goto_19
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    .line 345
    return-void
.end method

.method public whitelist setWrapS(Landroid/renderscript/Sampler$Value;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    .line 356
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_15

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_15

    sget-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_d

    goto :goto_15

    .line 359
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_15
    :goto_15
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    .line 361
    return-void
.end method

.method public whitelist setWrapT(Landroid/renderscript/Sampler$Value;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    .line 364
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_15

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_15

    sget-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_d

    goto :goto_15

    .line 367
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_15
    :goto_15
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    .line 369
    return-void
.end method
