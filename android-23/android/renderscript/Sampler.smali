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


# instance fields
.field mAniso:F

.field mMag:Landroid/renderscript/Sampler$Value;

.field mMin:Landroid/renderscript/Sampler$Value;

.field mWrapR:Landroid/renderscript/Sampler$Value;

.field mWrapS:Landroid/renderscript/Sampler$Value;

.field mWrapT:Landroid/renderscript/Sampler$Value;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 52
    return-void
.end method

.method public static CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 120
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 121
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 122
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@e
    .line 123
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 124
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 125
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 126
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    #@23
    .line 128
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    #@25
    return-object v1
.end method

.method public static CLAMP_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 140
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 141
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 142
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@e
    .line 143
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 144
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 145
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 146
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@23
    .line 148
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@25
    return-object v1
.end method

.method public static CLAMP_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 100
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 101
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 102
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@e
    .line 103
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 104
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 105
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 106
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    #@23
    .line 108
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    #@25
    return-object v1
.end method

.method public static MIRRORED_REPEAT_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 240
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 241
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 242
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@e
    .line 243
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 244
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 245
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 246
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    #@23
    .line 248
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    #@25
    return-object v1
.end method

.method public static MIRRORED_REPEAT_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 260
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 261
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 262
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@e
    .line 263
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 264
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 265
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 266
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@23
    .line 268
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@25
    return-object v1
.end method

.method public static MIRRORED_REPEAT_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 220
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 221
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 222
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@e
    .line 223
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 224
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 225
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 226
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    #@23
    .line 228
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    #@25
    return-object v1
.end method

.method public static WRAP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 180
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 181
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 182
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@e
    .line 183
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 184
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 185
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 186
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    #@23
    .line 188
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    #@25
    return-object v1
.end method

.method public static WRAP_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 200
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 201
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 202
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@e
    .line 203
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 204
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 205
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 206
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@23
    .line 208
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    #@25
    return-object v1
.end method

.method public static WRAP_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 160
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 161
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    #@6
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 162
    .local v0, "b":Landroid/renderscript/Sampler$Builder;
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@b
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    #@e
    .line 163
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    #@13
    .line 164
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@15
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    #@18
    .line 165
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    #@1a
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    #@1d
    .line 166
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    #@23
    .line 168
    .end local v0    # "b":Landroid/renderscript/Sampler$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    #@25
    return-object v1
.end method


# virtual methods
.method public getAnisotropy()F
    .locals 1

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/renderscript/Sampler;->mAniso:F

    #@2
    return v0
.end method

.method public getMagnification()Landroid/renderscript/Sampler$Value;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/renderscript/Sampler;->mMag:Landroid/renderscript/Sampler$Value;

    #@2
    return-object v0
.end method

.method public getMinification()Landroid/renderscript/Sampler$Value;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/renderscript/Sampler;->mMin:Landroid/renderscript/Sampler$Value;

    #@2
    return-object v0
.end method

.method public getWrapS()Landroid/renderscript/Sampler$Value;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/renderscript/Sampler;->mWrapS:Landroid/renderscript/Sampler$Value;

    #@2
    return-object v0
.end method

.method public getWrapT()Landroid/renderscript/Sampler$Value;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/renderscript/Sampler;->mWrapT:Landroid/renderscript/Sampler$Value;

    #@2
    return-object v0
.end method
