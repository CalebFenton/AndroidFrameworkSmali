.class public Landroid/renderscript/Sampler;
.super Landroid/renderscript/BaseObj;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Sampler$Value;,
        Landroid/renderscript/Sampler$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mAniso:F

.field greylist-max-o mMag:Landroid/renderscript/Sampler$Value;

.field greylist-max-o mMin:Landroid/renderscript/Sampler$Value;

.field greylist-max-o mWrapR:Landroid/renderscript/Sampler$Value;

.field greylist-max-o mWrapS:Landroid/renderscript/Sampler$Value;

.field greylist-max-o mWrapT:Landroid/renderscript/Sampler$Value;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 59
    iget-object v0, p0, Landroid/renderscript/Sampler;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static whitelist CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 130
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_2d

    .line 131
    monitor-enter p0

    .line 132
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_28

    .line 133
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 134
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 135
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 136
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 137
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 138
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    .line 140
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_28
    monitor-exit p0

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0

    .line 142
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    return-object v0
.end method

.method public static whitelist CLAMP_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 154
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_2d

    .line 155
    monitor-enter p0

    .line 156
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_28

    .line 157
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 158
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 159
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 160
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 161
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 162
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 164
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_28
    monitor-exit p0

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0

    .line 166
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    return-object v0
.end method

.method public static whitelist CLAMP_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 106
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    if-nez v0, :cond_2d

    .line 107
    monitor-enter p0

    .line 108
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    if-nez v0, :cond_28

    .line 109
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 110
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 111
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 112
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 113
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 114
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    .line 116
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_28
    monitor-exit p0

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0

    .line 118
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    return-object v0
.end method

.method public static whitelist MIRRORED_REPEAT_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 274
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_2d

    .line 275
    monitor-enter p0

    .line 276
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_28

    .line 277
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 278
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 279
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 280
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 281
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 282
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    .line 284
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_28
    monitor-exit p0

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0

    .line 286
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    return-object v0
.end method

.method public static whitelist MIRRORED_REPEAT_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 298
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_2d

    .line 299
    monitor-enter p0

    .line 300
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_28

    .line 301
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 302
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 303
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 304
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 305
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 306
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 308
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_28
    monitor-exit p0

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0

    .line 310
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    return-object v0
.end method

.method public static whitelist MIRRORED_REPEAT_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 250
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    if-nez v0, :cond_2d

    .line 251
    monitor-enter p0

    .line 252
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    if-nez v0, :cond_28

    .line 253
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 254
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 255
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 256
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 257
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 258
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    .line 260
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_28
    monitor-exit p0

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0

    .line 262
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    return-object v0
.end method

.method public static whitelist WRAP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 202
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_2d

    .line 203
    monitor-enter p0

    .line 204
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_28

    .line 205
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 206
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 207
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 208
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 209
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 210
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    .line 212
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_28
    monitor-exit p0

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0

    .line 214
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    return-object v0
.end method

.method public static whitelist WRAP_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 226
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_2d

    .line 227
    monitor-enter p0

    .line 228
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    if-nez v0, :cond_28

    .line 229
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 230
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 231
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 232
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 233
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 234
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 236
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_28
    monitor-exit p0

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0

    .line 238
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    return-object v0
.end method

.method public static whitelist WRAP_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 178
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    if-nez v0, :cond_2d

    .line 179
    monitor-enter p0

    .line 180
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    if-nez v0, :cond_28

    .line 181
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 182
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 183
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 184
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 185
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 186
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    .line 188
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_28
    monitor-exit p0

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0

    .line 190
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    return-object v0
.end method


# virtual methods
.method public whitelist getAnisotropy()F
    .registers 2

    .line 94
    iget v0, p0, Landroid/renderscript/Sampler;->mAniso:F

    return v0
.end method

.method public whitelist getMagnification()Landroid/renderscript/Sampler$Value;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/renderscript/Sampler;->mMag:Landroid/renderscript/Sampler$Value;

    return-object v0
.end method

.method public whitelist getMinification()Landroid/renderscript/Sampler$Value;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/renderscript/Sampler;->mMin:Landroid/renderscript/Sampler$Value;

    return-object v0
.end method

.method public whitelist getWrapS()Landroid/renderscript/Sampler$Value;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/renderscript/Sampler;->mWrapS:Landroid/renderscript/Sampler$Value;

    return-object v0
.end method

.method public whitelist getWrapT()Landroid/renderscript/Sampler$Value;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/renderscript/Sampler;->mWrapT:Landroid/renderscript/Sampler$Value;

    return-object v0
.end method
