.class public Landroid/renderscript/Sampler;
.super Landroid/renderscript/BaseObj;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Sampler$Builder;,
        Landroid/renderscript/Sampler$Value;
    }
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroid/renderscript/Sampler$Value;

.field mMin:Landroid/renderscript/Sampler$Value;

.field mWrapR:Landroid/renderscript/Sampler$Value;

.field mWrapS:Landroid/renderscript/Sampler$Value;

.field mWrapT:Landroid/renderscript/Sampler$Value;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 54
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    #@5
    const-string/jumbo v1, "destroy"

    #@8
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@b
    .line 52
    return-void
.end method

.method public static CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 125
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 126
    monitor-enter p0

    #@5
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 128
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@b
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@e
    .line 129
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 130
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 131
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 132
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@1f
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@22
    .line 133
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    monitor-exit p0

    #@29
    .line 137
    :cond_1
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    #@2b
    return-object v1

    #@2c
    .line 126
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method

.method public static CLAMP_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 149
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 150
    monitor-enter p0

    #@5
    .line 151
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 152
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@b
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@e
    .line 153
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 154
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 155
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 156
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@1f
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@22
    .line 157
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    monitor-exit p0

    #@29
    .line 161
    :cond_1
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@2b
    return-object v1

    #@2c
    .line 150
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method

.method public static CLAMP_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 101
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 102
    monitor-enter p0

    #@5
    .line 103
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 104
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@b
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@e
    .line 105
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 106
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 107
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 108
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@1f
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@22
    .line 109
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    monitor-exit p0

    #@29
    .line 113
    :cond_1
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    #@2b
    return-object v1

    #@2c
    .line 102
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method

.method public static MIRRORED_REPEAT_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 269
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 270
    monitor-enter p0

    #@5
    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 272
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@b
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@e
    .line 273
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 274
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 275
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 276
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@1f
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@22
    .line 277
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    monitor-exit p0

    #@29
    .line 281
    :cond_1
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    #@2b
    return-object v1

    #@2c
    .line 270
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method

.method public static MIRRORED_REPEAT_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 293
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 294
    monitor-enter p0

    #@5
    .line 295
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 296
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@b
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@e
    .line 297
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 298
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 299
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 300
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@1f
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@22
    .line 301
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    monitor-exit p0

    #@29
    .line 305
    :cond_1
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@2b
    return-object v1

    #@2c
    .line 294
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method

.method public static MIRRORED_REPEAT_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 245
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 246
    monitor-enter p0

    #@5
    .line 247
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 248
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@b
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@e
    .line 249
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 250
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 251
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 252
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@1f
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@22
    .line 253
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    monitor-exit p0

    #@29
    .line 257
    :cond_1
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    #@2b
    return-object v1

    #@2c
    .line 246
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method

.method public static WRAP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 197
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 198
    monitor-enter p0

    #@5
    .line 199
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 200
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@b
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@e
    .line 201
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 202
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 203
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 204
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@1f
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@22
    .line 205
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    monitor-exit p0

    #@29
    .line 209
    :cond_1
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    #@2b
    return-object v1

    #@2c
    .line 198
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method

.method public static WRAP_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 221
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 222
    monitor-enter p0

    #@5
    .line 223
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 224
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@b
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@e
    .line 225
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 226
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 227
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 228
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@1f
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@22
    .line 229
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    monitor-exit p0

    #@29
    .line 233
    :cond_1
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@2b
    return-object v1

    #@2c
    .line 222
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method

.method public static WRAP_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 173
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 174
    monitor-enter p0

    #@5
    .line 175
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 176
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@b
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@e
    .line 177
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 178
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 179
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 180
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@1f
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@22
    .line 181
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    monitor-exit p0

    #@29
    .line 185
    :cond_1
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    #@2b
    return-object v1

    #@2c
    .line 174
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method


# virtual methods
.method public getAnisotropy()F
    .locals 1

    #@0
    .prologue
    .line 89
    iget v0, p0, Landroid/renderscript/Sampler;->mAniso:F

    #@2
    return v0
.end method

.method public getMagnification()Landroid/renderscript/Sampler$Value;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/renderscript/Sampler;->mMag:Landroid/renderscript/Sampler$Value;

    #@2
    return-object v0
.end method

.method public getMinification()Landroid/renderscript/Sampler$Value;
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/renderscript/Sampler;->mMin:Landroid/renderscript/Sampler$Value;

    #@2
    return-object v0
.end method

.method public getWrapS()Landroid/renderscript/Sampler$Value;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/renderscript/Sampler;->mWrapS:Landroid/renderscript/Sampler$Value;

    #@2
    return-object v0
.end method

.method public getWrapT()Landroid/renderscript/Sampler$Value;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/renderscript/Sampler;->mWrapT:Landroid/renderscript/Sampler$Value;

    #@2
    return-object v0
.end method
