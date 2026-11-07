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
.field greylist mConstantCount:I

.field greylist mConstants:[Landroid/renderscript/Type;

.field greylist mInputCount:I

.field greylist mInputs:[Landroid/renderscript/Element;

.field greylist mOutputCount:I

.field greylist mOutputs:[Landroid/renderscript/Element;

.field greylist mRS:Landroid/renderscript/RenderScript;

.field greylist mShader:Ljava/lang/String;

.field greylist mTextureCount:I

.field greylist-max-o mTextureNames:[Ljava/lang/String;

.field greylist-max-o mTextureTypes:[Landroid/renderscript/Program$TextureType;

.field greylist-max-o mTextures:[Landroid/renderscript/Type;


# direct methods
.method protected constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 234
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/renderscript/Element;

    iput-object v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    .line 235
    new-array v1, v0, [Landroid/renderscript/Element;

    iput-object v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    .line 236
    new-array v1, v0, [Landroid/renderscript/Type;

    iput-object v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    .line 237
    const/4 v1, 0x0

    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    .line 238
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    .line 239
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 240
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 241
    new-array v1, v0, [Landroid/renderscript/Program$TextureType;

    iput-object v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    .line 242
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    .line 243
    return-void
.end method


# virtual methods
.method public greylist-max-o addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;
    .registers 4
    .param p1, "t"    # Landroid/renderscript/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 327
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_25

    .line 330
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 333
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    aput-object p1, v0, v1

    .line 334
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 335
    return-object p0

    .line 331
    :cond_1d
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_25
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;
    .registers 4
    .param p1, "texType"    # Landroid/renderscript/Program$TextureType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 347
    return-object p0
.end method

.method public greylist-max-o addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .registers 5
    .param p1, "texType"    # Landroid/renderscript/Program$TextureType;
    .param p2, "texName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 361
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_19

    .line 364
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    aput-object p1, v0, v1

    .line 365
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    aput-object p2, v0, v1

    .line 366
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 367
    return-object p0

    .line 362
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max texture count exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getCurrentConstantIndex()I
    .registers 2

    .line 307
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public greylist-max-o getCurrentTextureIndex()I
    .registers 2

    .line 315
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected greylist-max-o initProgram(Landroid/renderscript/Program;)V
    .registers 6
    .param p1, "p"    # Landroid/renderscript/Program;

    .line 371
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    iput-object v0, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    .line 372
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    iget-object v1, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    iput-object v0, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    .line 374
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    iget-object v1, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    new-array v0, v0, [Landroid/renderscript/Type;

    iput-object v0, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    .line 376
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    iget-object v1, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    iput v0, p1, Landroid/renderscript/Program;->mTextureCount:I

    .line 378
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    new-array v0, v0, [Landroid/renderscript/Program$TextureType;

    iput-object v0, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    .line 379
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    iget-object v1, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    .line 381
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    iget-object v1, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    return-void
.end method

.method public greylist-max-o setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;
    .registers 10
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    .line 267
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 270
    .local v0, "is":Ljava/io/InputStream;
    const/16 v1, 0x400

    :try_start_6
    new-array v1, v1, [B

    .line 271
    .local v1, "str":[B
    const/4 v2, 0x0

    .line 273
    .local v2, "strLength":I
    :goto_9
    array-length v3, v1

    sub-int/2addr v3, v2

    .line 274
    .local v3, "bytesLeft":I
    const/4 v4, 0x0

    if-nez v3, :cond_1b

    .line 275
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 276
    .local v5, "buf2":[B
    array-length v6, v1

    invoke-static {v1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    move-object v1, v5

    .line 278
    array-length v6, v1

    sub-int v3, v6, v2

    .line 280
    .end local v5    # "buf2":[B
    :cond_1b
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_3c

    .line 281
    .local v5, "bytesRead":I
    if-gtz v5, :cond_3a

    .line 282
    nop

    .line 287
    .end local v3    # "bytesLeft":I
    .end local v5    # "bytesRead":I
    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_42

    .line 288
    nop

    .line 291
    nop

    .line 294
    :try_start_27
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v1, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_27 .. :try_end_30} :catch_31

    .line 297
    goto :goto_39

    .line 295
    :catch_31
    move-exception v3

    .line 296
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "RenderScript shader creation"

    const-string v5, "Could not decode shader string"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_39
    return-object p0

    .line 284
    .local v3, "bytesLeft":I
    .restart local v5    # "bytesRead":I
    :cond_3a
    add-int/2addr v2, v5

    .line 285
    .end local v3    # "bytesLeft":I
    .end local v5    # "bytesRead":I
    goto :goto_9

    .line 287
    .end local v1    # "str":[B
    .end local v2    # "strLength":I
    :catchall_3c
    move-exception v1

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 288
    nop

    .end local v0    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Landroid/renderscript/Program$BaseProgramBuilder;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "resourceID":I
    throw v1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_42

    .line 289
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/renderscript/Program$BaseProgramBuilder;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "resourceID":I
    :catch_42
    move-exception v1

    .line 290
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public greylist-max-o setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 252
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    .line 253
    return-object p0
.end method
