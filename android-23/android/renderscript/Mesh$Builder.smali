.class public Landroid/renderscript/Mesh$Builder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$Builder$Entry;
    }
.end annotation


# instance fields
.field mIndexTypes:Ljava/util/Vector;

.field mRS:Landroid/renderscript/RenderScript;

.field mUsage:I

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I

    #@0
    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 214
    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@5
    .line 215
    iput p2, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    #@7
    .line 216
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@a
    .line 217
    const/16 v0, 0x10

    #@c
    new-array v0, v0, [Landroid/renderscript/Mesh$Builder$Entry;

    #@e
    iput-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@10
    .line 218
    new-instance v0, Ljava/util/Vector;

    #@12
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@15
    iput-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@17
    .line 213
    return-void
.end method


# virtual methods
.method public addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "size"    # I
    .param p3, "p"    # Landroid/renderscript/Mesh$Primitive;

    #@0
    .prologue
    .line 329
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    #@2
    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    #@5
    .line 330
    .local v0, "indexType":Landroid/renderscript/Mesh$Builder$Entry;
    const/4 v1, 0x0

    #@6
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    #@8
    .line 331
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    #@a
    .line 332
    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    #@c
    .line 333
    iput-object p3, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    #@e
    .line 334
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@10
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@13
    .line 335
    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .param p1, "p"    # Landroid/renderscript/Mesh$Primitive;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 309
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    #@3
    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    #@6
    .line 310
    .local v0, "indexType":Landroid/renderscript/Mesh$Builder$Entry;
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    #@8
    .line 311
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    #@a
    .line 312
    const/4 v1, 0x0

    #@b
    iput v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    #@d
    .line 313
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    #@f
    .line 314
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@11
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@14
    .line 315
    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Type;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "p"    # Landroid/renderscript/Mesh$Primitive;

    #@0
    .prologue
    .line 291
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    #@2
    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    #@5
    .line 292
    .local v0, "indexType":Landroid/renderscript/Mesh$Builder$Entry;
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    #@7
    .line 293
    const/4 v1, 0x0

    #@8
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    #@a
    .line 294
    const/4 v1, 0x0

    #@b
    iput v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    #@d
    .line 295
    iput-object p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    #@f
    .line 296
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@11
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@14
    .line 297
    return-object p0
.end method

.method public addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;
    .locals 3
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@2
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Max vertex types exceeded."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 273
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@12
    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@14
    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    #@16
    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    #@19
    aput-object v2, v0, v1

    #@1b
    .line 274
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@1d
    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@1f
    aget-object v0, v0, v1

    #@21
    const/4 v1, 0x0

    #@22
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    #@24
    .line 275
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@26
    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@28
    aget-object v0, v0, v1

    #@2a
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    #@2c
    .line 276
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@2e
    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@30
    aget-object v0, v0, v1

    #@32
    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    #@34
    .line 277
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@36
    add-int/lit8 v0, v0, 0x1

    #@38
    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@3a
    .line 278
    return-object p0
.end method

.method public addVertexType(Landroid/renderscript/Type;)Landroid/renderscript/Mesh$Builder;
    .locals 3
    .param p1, "t"    # Landroid/renderscript/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@2
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Max vertex types exceeded."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 252
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@12
    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@14
    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    #@16
    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    #@19
    aput-object v2, v0, v1

    #@1b
    .line 253
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@1d
    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@1f
    aget-object v0, v0, v1

    #@21
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    #@23
    .line 254
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@25
    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@27
    aget-object v0, v0, v1

    #@29
    const/4 v1, 0x0

    #@2a
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    #@2c
    .line 255
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@32
    .line 256
    return-object p0
.end method

.method public create()Landroid/renderscript/Mesh;
    .locals 20

    #@0
    .prologue
    .line 350
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@4
    move-object/from16 v16, v0

    #@6
    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/RenderScript;->validate()V

    #@9
    .line 351
    move-object/from16 v0, p0

    #@b
    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@d
    move/from16 v16, v0

    #@f
    move/from16 v0, v16

    #@11
    new-array v15, v0, [J

    #@13
    .line 352
    .local v15, "vtx":[J
    move-object/from16 v0, p0

    #@15
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@17
    move-object/from16 v16, v0

    #@19
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    #@1c
    move-result v16

    #@1d
    move/from16 v0, v16

    #@1f
    new-array v7, v0, [J

    #@21
    .line 353
    .local v7, "idx":[J
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@25
    move-object/from16 v16, v0

    #@27
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    #@2a
    move-result v16

    #@2b
    move/from16 v0, v16

    #@2d
    new-array v12, v0, [I

    #@2f
    .line 355
    .local v12, "prim":[I
    move-object/from16 v0, p0

    #@31
    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@33
    move/from16 v16, v0

    #@35
    move/from16 v0, v16

    #@37
    new-array v14, v0, [Landroid/renderscript/Allocation;

    #@39
    .line 356
    .local v14, "vertexBuffers":[Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    #@3b
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@3d
    move-object/from16 v16, v0

    #@3f
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    #@42
    move-result v16

    #@43
    move/from16 v0, v16

    #@45
    new-array v10, v0, [Landroid/renderscript/Allocation;

    #@47
    .line 357
    .local v10, "indexBuffers":[Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@4b
    move-object/from16 v16, v0

    #@4d
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    #@50
    move-result v16

    #@51
    move/from16 v0, v16

    #@53
    new-array v13, v0, [Landroid/renderscript/Mesh$Primitive;

    #@55
    .line 359
    .local v13, "primitives":[Landroid/renderscript/Mesh$Primitive;
    const/4 v3, 0x0

    #@56
    .local v3, "ct":I
    :goto_0
    move-object/from16 v0, p0

    #@58
    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@5a
    move/from16 v16, v0

    #@5c
    move/from16 v0, v16

    #@5e
    if-ge v3, v0, :cond_2

    #@60
    .line 360
    const/4 v2, 0x0

    #@61
    .line 361
    .local v2, "alloc":Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    #@65
    move-object/from16 v16, v0

    #@67
    aget-object v6, v16, v3

    #@69
    .line 362
    .local v6, "entry":Landroid/renderscript/Mesh$Builder$Entry;
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    #@6b
    move-object/from16 v16, v0

    #@6d
    if-eqz v16, :cond_0

    #@6f
    .line 363
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@73
    move-object/from16 v16, v0

    #@75
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    #@77
    move-object/from16 v17, v0

    #@79
    move-object/from16 v0, p0

    #@7b
    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    #@7d
    move/from16 v18, v0

    #@7f
    invoke-static/range {v16 .. v18}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    #@82
    move-result-object v2

    #@83
    .line 370
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :goto_1
    aput-object v2, v14, v3

    #@85
    .line 371
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@89
    move-object/from16 v16, v0

    #@8b
    move-object/from16 v0, v16

    #@8d
    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@90
    move-result-wide v16

    #@91
    aput-wide v16, v15, v3

    #@93
    .line 359
    add-int/lit8 v3, v3, 0x1

    #@95
    goto :goto_0

    #@96
    .line 364
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :cond_0
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    #@98
    move-object/from16 v16, v0

    #@9a
    if-eqz v16, :cond_1

    #@9c
    .line 365
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@a0
    move-object/from16 v16, v0

    #@a2
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    #@a4
    move-object/from16 v17, v0

    #@a6
    iget v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    #@a8
    move/from16 v18, v0

    #@aa
    move-object/from16 v0, p0

    #@ac
    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    #@ae
    move/from16 v19, v0

    #@b0
    invoke-static/range {v16 .. v19}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    #@b3
    move-result-object v2

    #@b4
    .local v2, "alloc":Landroid/renderscript/Allocation;
    goto :goto_1

    #@b5
    .line 368
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :cond_1
    new-instance v16, Ljava/lang/IllegalStateException;

    #@b7
    const-string/jumbo v17, "Builder corrupt, no valid element in entry."

    #@ba
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v16

    #@be
    .line 374
    .end local v2    # "alloc":Landroid/renderscript/Allocation;
    .end local v6    # "entry":Landroid/renderscript/Mesh$Builder$Entry;
    :cond_2
    const/4 v3, 0x0

    #@bf
    :goto_2
    move-object/from16 v0, p0

    #@c1
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@c3
    move-object/from16 v16, v0

    #@c5
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    #@c8
    move-result v16

    #@c9
    move/from16 v0, v16

    #@cb
    if-ge v3, v0, :cond_6

    #@cd
    .line 375
    const/4 v2, 0x0

    #@ce
    .line 376
    .restart local v2    # "alloc":Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@d2
    move-object/from16 v16, v0

    #@d4
    move-object/from16 v0, v16

    #@d6
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d9
    move-result-object v6

    #@da
    check-cast v6, Landroid/renderscript/Mesh$Builder$Entry;

    #@dc
    .line 377
    .restart local v6    # "entry":Landroid/renderscript/Mesh$Builder$Entry;
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    #@de
    move-object/from16 v16, v0

    #@e0
    if-eqz v16, :cond_3

    #@e2
    .line 378
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@e6
    move-object/from16 v16, v0

    #@e8
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    #@ea
    move-object/from16 v17, v0

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    #@f0
    move/from16 v18, v0

    #@f2
    invoke-static/range {v16 .. v18}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    #@f5
    move-result-object v2

    #@f6
    .line 385
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :goto_3
    if-nez v2, :cond_5

    #@f8
    const-wide/16 v4, 0x0

    #@fa
    .line 386
    .local v4, "allocID":J
    :goto_4
    aput-object v2, v10, v3

    #@fc
    .line 387
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    #@fe
    move-object/from16 v16, v0

    #@100
    aput-object v16, v13, v3

    #@102
    .line 389
    aput-wide v4, v7, v3

    #@104
    .line 390
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    #@106
    move-object/from16 v16, v0

    #@108
    move-object/from16 v0, v16

    #@10a
    iget v0, v0, Landroid/renderscript/Mesh$Primitive;->mID:I

    #@10c
    move/from16 v16, v0

    #@10e
    aput v16, v12, v3

    #@110
    .line 374
    add-int/lit8 v3, v3, 0x1

    #@112
    goto :goto_2

    #@113
    .line 379
    .end local v4    # "allocID":J
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :cond_3
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    #@115
    move-object/from16 v16, v0

    #@117
    if-eqz v16, :cond_4

    #@119
    .line 380
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@11d
    move-object/from16 v16, v0

    #@11f
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    #@121
    move-object/from16 v17, v0

    #@123
    iget v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    #@125
    move/from16 v18, v0

    #@127
    move-object/from16 v0, p0

    #@129
    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    #@12b
    move/from16 v19, v0

    #@12d
    invoke-static/range {v16 .. v19}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    #@130
    move-result-object v2

    #@131
    .local v2, "alloc":Landroid/renderscript/Allocation;
    goto :goto_3

    #@132
    .line 383
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :cond_4
    new-instance v16, Ljava/lang/IllegalStateException;

    #@134
    const-string/jumbo v17, "Builder corrupt, no valid element in entry."

    #@137
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13a
    throw v16

    #@13b
    .line 385
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :cond_5
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@13f
    move-object/from16 v16, v0

    #@141
    move-object/from16 v0, v16

    #@143
    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@146
    move-result-wide v4

    #@147
    .restart local v4    # "allocID":J
    goto :goto_4

    #@148
    .line 393
    .end local v2    # "alloc":Landroid/renderscript/Allocation;
    .end local v4    # "allocID":J
    .end local v6    # "entry":Landroid/renderscript/Mesh$Builder$Entry;
    :cond_6
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@14c
    move-object/from16 v16, v0

    #@14e
    move-object/from16 v0, v16

    #@150
    invoke-virtual {v0, v15, v7, v12}, Landroid/renderscript/RenderScript;->nMeshCreate([J[J[I)J

    #@153
    move-result-wide v8

    #@154
    .line 394
    .local v8, "id":J
    new-instance v11, Landroid/renderscript/Mesh;

    #@156
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@15a
    move-object/from16 v16, v0

    #@15c
    move-object/from16 v0, v16

    #@15e
    invoke-direct {v11, v8, v9, v0}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    #@161
    .line 395
    .local v11, "newMesh":Landroid/renderscript/Mesh;
    iput-object v14, v11, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    #@163
    .line 396
    iput-object v10, v11, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    #@165
    .line 397
    iput-object v13, v11, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    #@167
    .line 399
    return-object v11
.end method

.method public getCurrentIndexSetIndex()I
    .locals 1

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    return v0
.end method

.method public getCurrentVertexTypeIndex()I
    .locals 1

    #@0
    .prologue
    .line 227
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method

.method newType(Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 2
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 339
    new-instance v0, Landroid/renderscript/Type$Builder;

    #@2
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-direct {v0, v1, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@7
    .line 340
    .local v0, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@a
    .line 341
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method
