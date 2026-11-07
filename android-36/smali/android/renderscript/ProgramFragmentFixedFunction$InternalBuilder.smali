.class Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalBuilder"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;)V
    .registers 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 43
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 44
    return-void
.end method


# virtual methods
.method public greylist-max-o create()Landroid/renderscript/ProgramFragmentFixedFunction;
    .registers 8

    .line 54
    iget-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 55
    iget v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mInputCount:I

    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mOutputCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mConstantCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mTextureCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    .line 56
    .local v0, "tmp":[J
    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mTextureCount:I

    new-array v1, v1, [Ljava/lang/String;

    .line 57
    .local v1, "texNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 59
    .local v2, "idx":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    iget v4, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mInputCount:I

    if-ge v3, v4, :cond_38

    .line 60
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx":I
    .local v4, "idx":I
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v2

    .line 61
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "idx":I
    .restart local v2    # "idx":I
    iget-object v5, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mInputs:[Landroid/renderscript/Element;

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v0, v4

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 63
    .end local v3    # "i":I
    :cond_38
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_39
    iget v4, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mOutputCount:I

    if-ge v3, v4, :cond_57

    .line 64
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx":I
    .restart local v4    # "idx":I
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v2

    .line 65
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "idx":I
    .restart local v2    # "idx":I
    iget-object v5, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v0, v4

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 67
    .end local v3    # "i":I
    :cond_57
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_58
    iget v4, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mConstantCount:I

    if-ge v3, v4, :cond_76

    .line 68
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx":I
    .restart local v4    # "idx":I
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v2

    .line 69
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "idx":I
    .restart local v2    # "idx":I
    iget-object v5, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mConstants:[Landroid/renderscript/Type;

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v0, v4

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 71
    .end local v3    # "i":I
    :cond_76
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_77
    iget v4, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mTextureCount:I

    if-ge v3, v4, :cond_98

    .line 72
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx":I
    .restart local v4    # "idx":I
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v2

    .line 73
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "idx":I
    .restart local v2    # "idx":I
    iget-object v5, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/renderscript/Program$TextureType;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v4

    .line 74
    iget-object v4, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mTextureNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    aput-object v4, v1, v3

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 77
    .end local v3    # "i":I
    :cond_98
    iget-object v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mShader:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v0}, Landroid/renderscript/RenderScript;->nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v3

    .line 78
    .local v3, "id":J
    new-instance v5, Landroid/renderscript/ProgramFragmentFixedFunction;

    iget-object v6, p0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v5, v3, v4, v6}, Landroid/renderscript/ProgramFragmentFixedFunction;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 79
    .local v5, "pf":Landroid/renderscript/ProgramFragmentFixedFunction;
    invoke-virtual {p0, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->initProgram(Landroid/renderscript/Program;)V

    .line 80
    return-object v5
.end method
