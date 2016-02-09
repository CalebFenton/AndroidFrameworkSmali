.class public Landroid/renderscript/Program;
.super Landroid/renderscript/BaseObj;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Program$TextureType;,
        Landroid/renderscript/Program$ProgramParam;,
        Landroid/renderscript/Program$BaseProgramBuilder;
    }
.end annotation


# static fields
.field static final MAX_CONSTANT:I = 0x8

.field static final MAX_INPUT:I = 0x8

.field static final MAX_OUTPUT:I = 0x8

.field static final MAX_TEXTURE:I = 0x8


# instance fields
.field mConstants:[Landroid/renderscript/Type;

.field mInputs:[Landroid/renderscript/Element;

.field mOutputs:[Landroid/renderscript/Element;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextureNames:[Ljava/lang/String;

.field mTextures:[Landroid/renderscript/Program$TextureType;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 77
    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/Allocation;I)V
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    #@0
    .prologue
    .line 146
    if-ltz p2, :cond_0

    #@2
    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    #@4
    array-length v0, v0

    #@5
    if-lt p2, v0, :cond_1

    #@7
    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Slot ID out of range."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 149
    :cond_1
    if-eqz p1, :cond_2

    #@12
    .line 150
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@18
    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@1b
    move-result-wide v0

    #@1c
    iget-object v2, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    #@1e
    aget-object v2, v2, p2

    #@20
    iget-object v3, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@22
    invoke-virtual {v2, v3}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v2

    #@26
    cmp-long v0, v0, v2

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v1, "Allocation type does not match slot type."

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 153
    :cond_2
    if-eqz p1, :cond_3

    #@35
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@37
    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3a
    move-result-wide v4

    #@3b
    .line 154
    .local v4, "id":J
    :goto_0
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    invoke-virtual {p0, v1}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)J

    #@42
    move-result-wide v1

    #@43
    move v3, p2

    #@44
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nProgramBindConstants(JIJ)V

    #@47
    .line 145
    return-void

    #@48
    .line 153
    .end local v4    # "id":J
    :cond_3
    const-wide/16 v4, 0x0

    #@4a
    .restart local v4    # "id":J
    goto :goto_0
.end method

.method public bindSampler(Landroid/renderscript/Sampler;I)V
    .locals 6
    .param p1, "vs"    # Landroid/renderscript/Sampler;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 191
    if-ltz p2, :cond_0

    #@7
    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    #@9
    if-lt p2, v0, :cond_1

    #@b
    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Slot ID out of range."

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 195
    :cond_1
    if-eqz p1, :cond_2

    #@16
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@18
    invoke-virtual {p1, v0}, Landroid/renderscript/Sampler;->getID(Landroid/renderscript/RenderScript;)J

    #@1b
    move-result-wide v4

    #@1c
    .line 196
    .local v4, "id":J
    :goto_0
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@1e
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@20
    invoke-virtual {p0, v1}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)J

    #@23
    move-result-wide v1

    #@24
    move v3, p2

    #@25
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nProgramBindSampler(JIJ)V

    #@28
    .line 189
    return-void

    #@29
    .line 195
    .end local v4    # "id":J
    :cond_2
    const-wide/16 v4, 0x0

    #@2b
    .restart local v4    # "id":J
    goto :goto_0
.end method

.method public bindTexture(Landroid/renderscript/Allocation;I)V
    .locals 6
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 167
    if-ltz p2, :cond_0

    #@7
    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    #@9
    if-lt p2, v0, :cond_1

    #@b
    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Slot ID out of range."

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 170
    :cond_1
    if-eqz p1, :cond_2

    #@16
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 171
    iget-object v0, p0, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    #@22
    aget-object v0, v0, p2

    #@24
    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    #@26
    if-eq v0, v1, :cond_2

    #@28
    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v1, "Cannot bind cubemap to 2d texture slot"

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 175
    :cond_2
    if-eqz p1, :cond_3

    #@33
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@35
    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@38
    move-result-wide v4

    #@39
    .line 176
    .local v4, "id":J
    :goto_0
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@3b
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    invoke-virtual {p0, v1}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)J

    #@40
    move-result-wide v1

    #@41
    move v3, p2

    #@42
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nProgramBindTexture(JIJ)V

    #@45
    .line 165
    return-void

    #@46
    .line 175
    .end local v4    # "id":J
    :cond_3
    const-wide/16 v4, 0x0

    #@48
    .restart local v4    # "id":J
    goto :goto_0
.end method

.method public getConstant(I)Landroid/renderscript/Type;
    .locals 2
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 98
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Slot ID out of range."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 101
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    #@12
    aget-object v0, v0, p1

    #@14
    return-object v0
.end method

.method public getConstantCount()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    #@6
    array-length v0, v0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public getTextureCount()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    #@2
    return v0
.end method

.method public getTextureName(I)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 131
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Slot ID out of range."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 134
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    #@11
    aget-object v0, v0, p1

    #@13
    return-object v0
.end method

.method public getTextureType(I)Landroid/renderscript/Program$TextureType;
    .locals 2
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 118
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Slot ID out of range."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 121
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    #@11
    aget-object v0, v0, p1

    #@13
    return-object v0
.end method
