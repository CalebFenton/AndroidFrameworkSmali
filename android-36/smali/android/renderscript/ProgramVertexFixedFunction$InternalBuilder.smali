.class Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramVertexFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertexFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalBuilder"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;)V
    .registers 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 55
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 56
    return-void
.end method


# virtual methods
.method public greylist-max-o addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
    .registers 5
    .param p1, "e"    # Landroid/renderscript/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 63
    iget v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1f

    .line 66
    invoke-virtual {p1}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-nez v0, :cond_17

    .line 69
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    aput-object p1, v0, v1

    .line 70
    return-object p0

    .line 67
    :cond_17
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1f
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o create()Landroid/renderscript/ProgramVertexFixedFunction;
    .registers 8

    .line 81
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 82
    iget v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    iget v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mOutputCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mConstantCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    .line 83
    .local v0, "tmp":[J
    iget v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureCount:I

    new-array v1, v1, [Ljava/lang/String;

    .line 84
    .local v1, "texNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    .local v2, "idx":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    iget v4, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    if-ge v3, v4, :cond_38

    .line 87
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx":I
    .local v4, "idx":I
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v2

    .line 88
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "idx":I
    .restart local v2    # "idx":I
    iget-object v5, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputs:[Landroid/renderscript/Element;

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v0, v4

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 90
    .end local v3    # "i":I
    :cond_38
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_39
    iget v4, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mOutputCount:I

    if-ge v3, v4, :cond_57

    .line 91
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx":I
    .restart local v4    # "idx":I
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v2

    .line 92
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "idx":I
    .restart local v2    # "idx":I
    iget-object v5, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v0, v4

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 94
    .end local v3    # "i":I
    :cond_57
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_58
    iget v4, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mConstantCount:I

    if-ge v3, v4, :cond_76

    .line 95
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx":I
    .restart local v4    # "idx":I
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v2

    .line 96
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "idx":I
    .restart local v2    # "idx":I
    iget-object v5, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mConstants:[Landroid/renderscript/Type;

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v0, v4

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 98
    .end local v3    # "i":I
    :cond_76
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_77
    iget v4, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureCount:I

    if-ge v3, v4, :cond_98

    .line 99
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx":I
    .restart local v4    # "idx":I
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v2

    .line 100
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "idx":I
    .restart local v2    # "idx":I
    iget-object v5, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/renderscript/Program$TextureType;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v4

    .line 101
    iget-object v4, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    aput-object v4, v1, v3

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 104
    .end local v3    # "i":I
    :cond_98
    iget-object v3, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mShader:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v0}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v3

    .line 105
    .local v3, "id":J
    new-instance v5, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v5, v3, v4, v6}, Landroid/renderscript/ProgramVertexFixedFunction;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 106
    .local v5, "pv":Landroid/renderscript/ProgramVertexFixedFunction;
    invoke-virtual {p0, v5}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->initProgram(Landroid/renderscript/Program;)V

    .line 107
    return-object v5
.end method
