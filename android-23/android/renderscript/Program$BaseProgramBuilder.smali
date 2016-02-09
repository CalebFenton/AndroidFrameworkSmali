.class public Landroid/renderscript/Program$BaseProgramBuilder;
.super Ljava/lang/Object;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseProgramBuilder"
.end annotation


# instance fields
.field mConstantCount:I

.field mConstants:[Landroid/renderscript/Type;

.field mInputCount:I

.field mInputs:[Landroid/renderscript/Element;

.field mOutputCount:I

.field mOutputs:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextureNames:[Ljava/lang/String;

.field mTextureTypes:[Landroid/renderscript/Program$TextureType;

.field mTextures:[Landroid/renderscript/Type;


# direct methods
.method protected constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v1, 0x8

    #@3
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 216
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@8
    .line 217
    new-array v0, v1, [Landroid/renderscript/Element;

    #@a
    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    #@c
    .line 218
    new-array v0, v1, [Landroid/renderscript/Element;

    #@e
    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    #@10
    .line 219
    new-array v0, v1, [Landroid/renderscript/Type;

    #@12
    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    #@14
    .line 220
    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    #@16
    .line 221
    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    #@18
    .line 222
    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    #@1a
    .line 223
    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@1c
    .line 224
    new-array v0, v1, [Landroid/renderscript/Program$TextureType;

    #@1e
    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    #@20
    .line 225
    new-array v0, v1, [Ljava/lang/String;

    #@22
    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    #@24
    .line 215
    return-void
.end method


# virtual methods
.method public addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2
    .param p1, "t"    # Landroid/renderscript/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    #@2
    const/16 v1, 0x8

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 311
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@8
    const-string/jumbo v1, "Max input count exceeded."

    #@b
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/renderscript/Element;->isComplex()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 314
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@1b
    const-string/jumbo v1, "Complex elements not allowed."

    #@1e
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 316
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    #@24
    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    #@26
    aput-object p1, v0, v1

    #@28
    .line 317
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    #@2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    #@2e
    .line 318
    return-object p0
.end method

.method public addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2
    .param p1, "texType"    # Landroid/renderscript/Program$TextureType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Tex"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p0, p1, v0}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    #@19
    .line 330
    return-object p0
.end method

.method public addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2
    .param p1, "texType"    # Landroid/renderscript/Program$TextureType;
    .param p2, "texName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@2
    const/16 v1, 0x8

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Max texture count exceeded."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 347
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    #@11
    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@13
    aput-object p1, v0, v1

    #@15
    .line 348
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    #@17
    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@19
    aput-object p2, v0, v1

    #@1b
    .line 349
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@21
    .line 350
    return-object p0
.end method

.method public getCurrentConstantIndex()I
    .locals 1

    #@0
    .prologue
    .line 290
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method

.method public getCurrentTextureIndex()I
    .locals 1

    #@0
    .prologue
    .line 298
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method

.method protected initProgram(Landroid/renderscript/Program;)V
    .locals 4
    .param p1, "p"    # Landroid/renderscript/Program;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 354
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    #@3
    new-array v0, v0, [Landroid/renderscript/Element;

    #@5
    iput-object v0, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    #@7
    .line 355
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    #@9
    iget-object v1, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    #@b
    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    #@d
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 356
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    #@12
    new-array v0, v0, [Landroid/renderscript/Element;

    #@14
    iput-object v0, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    #@16
    .line 357
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    #@18
    iget-object v1, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    #@1a
    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    #@1c
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 358
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    #@21
    new-array v0, v0, [Landroid/renderscript/Type;

    #@23
    iput-object v0, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    #@25
    .line 359
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    #@27
    iget-object v1, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    #@29
    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    #@2b
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e
    .line 360
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@30
    iput v0, p1, Landroid/renderscript/Program;->mTextureCount:I

    #@32
    .line 361
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@34
    new-array v0, v0, [Landroid/renderscript/Program$TextureType;

    #@36
    iput-object v0, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    #@38
    .line 362
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    #@3a
    iget-object v1, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    #@3c
    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@3e
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@41
    .line 363
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@43
    new-array v0, v0, [Ljava/lang/String;

    #@45
    iput-object v0, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    #@47
    .line 364
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    #@49
    iget-object v1, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    #@4b
    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    #@4d
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@50
    .line 353
    return-void
.end method

.method public setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 11
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    #@0
    .prologue
    .line 250
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@3
    move-result-object v5

    #@4
    .line 253
    .local v5, "is":Ljava/io/InputStream;
    const/16 v8, 0x400

    #@6
    :try_start_0
    new-array v6, v8, [B

    #@8
    .line 254
    .local v6, "str":[B
    const/4 v7, 0x0

    #@9
    .line 256
    .local v7, "strLength":I
    :goto_0
    array-length v8, v6

    #@a
    sub-int v1, v8, v7

    #@c
    .line 257
    .local v1, "bytesLeft":I
    if-nez v1, :cond_0

    #@e
    .line 258
    array-length v8, v6

    #@f
    mul-int/lit8 v8, v8, 0x2

    #@11
    new-array v0, v8, [B

    #@13
    .line 259
    .local v0, "buf2":[B
    array-length v8, v6

    #@14
    const/4 v9, 0x0

    #@15
    const/4 v10, 0x0

    #@16
    invoke-static {v6, v9, v0, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@19
    .line 260
    move-object v6, v0

    #@1a
    .line 261
    array-length v8, v6

    #@1b
    sub-int v1, v8, v7

    #@1d
    .line 263
    .end local v0    # "buf2":[B
    :cond_0
    invoke-virtual {v5, v6, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v2

    #@21
    .line 264
    .local v2, "bytesRead":I
    if-gtz v2, :cond_1

    #@23
    .line 270
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@26
    .line 277
    :try_start_2
    new-instance v8, Ljava/lang/String;

    #@28
    const-string/jumbo v9, "UTF-8"

    #@2b
    const/4 v10, 0x0

    #@2c
    invoke-direct {v8, v6, v10, v7, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@2f
    iput-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    #@31
    .line 282
    :goto_1
    return-object p0

    #@32
    .line 267
    :cond_1
    add-int/2addr v7, v2

    #@33
    goto :goto_0

    #@34
    .line 269
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v6    # "str":[B
    .end local v7    # "strLength":I
    :catchall_0
    move-exception v8

    #@35
    .line 270
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@38
    .line 269
    throw v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@39
    .line 272
    :catch_0
    move-exception v3

    #@3a
    .line 273
    .local v3, "e":Ljava/io/IOException;
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    #@3c
    invoke-direct {v8}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    #@3f
    throw v8

    #@40
    .line 278
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bytesLeft":I
    .restart local v2    # "bytesRead":I
    .restart local v6    # "str":[B
    .restart local v7    # "strLength":I
    :catch_1
    move-exception v4

    #@41
    .line 279
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "RenderScript shader creation"

    #@44
    const-string/jumbo v9, "Could not decode shader string"

    #@47
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_1
.end method

.method public setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 235
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    #@2
    .line 236
    return-object p0
.end method
