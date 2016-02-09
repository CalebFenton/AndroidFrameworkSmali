.class public Landroid/renderscript/Mesh$AllocationBuilder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllocationBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    }
.end annotation


# instance fields
.field mIndexTypes:Ljava/util/Vector;

.field mRS:Landroid/renderscript/RenderScript;

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 427
    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@5
    .line 428
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    #@8
    .line 429
    const/16 v0, 0x10

    #@a
    new-array v0, v0, [Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    #@c
    iput-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    #@e
    .line 430
    new-instance v0, Ljava/util/Vector;

    #@10
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@13
    iput-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    #@15
    .line 426
    return-void
.end method


# virtual methods
.method public addIndexSetAllocation(Landroid/renderscript/Allocation;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "p"    # Landroid/renderscript/Mesh$Primitive;

    #@0
    .prologue
    .line 482
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    #@2
    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    #@5
    .line 483
    .local v0, "indexType":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    #@7
    .line 484
    iput-object p2, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    #@9
    .line 485
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@e
    .line 486
    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .locals 2
    .param p1, "p"    # Landroid/renderscript/Mesh$Primitive;

    #@0
    .prologue
    .line 498
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    #@2
    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    #@5
    .line 499
    .local v0, "indexType":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    const/4 v1, 0x0

    #@6
    iput-object v1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    #@8
    .line 500
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    #@a
    .line 501
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@f
    .line 502
    return-object p0
.end method

.method public addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    #@2
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 462
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Max vertex types exceeded."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 465
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    #@12
    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    #@14
    new-instance v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    #@16
    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    #@19
    aput-object v2, v0, v1

    #@1b
    .line 466
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    #@1d
    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    #@1f
    aget-object v0, v0, v1

    #@21
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    #@23
    .line 467
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    #@29
    .line 468
    return-object p0
.end method

.method public create()Landroid/renderscript/Mesh;
    .locals 18

    #@0
    .prologue
    .line 511
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {v15}, Landroid/renderscript/RenderScript;->validate()V

    #@7
    .line 513
    move-object/from16 v0, p0

    #@9
    iget v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    #@b
    new-array v14, v15, [J

    #@d
    .line 514
    .local v14, "vtx":[J
    move-object/from16 v0, p0

    #@f
    iget-object v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    #@11
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    #@14
    move-result v15

    #@15
    new-array v8, v15, [J

    #@17
    .line 515
    .local v8, "idx":[J
    move-object/from16 v0, p0

    #@19
    iget-object v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    #@1b
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    #@1e
    move-result v15

    #@1f
    new-array v11, v15, [I

    #@21
    .line 517
    .local v11, "prim":[I
    move-object/from16 v0, p0

    #@23
    iget-object v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    #@25
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    #@28
    move-result v15

    #@29
    new-array v9, v15, [Landroid/renderscript/Allocation;

    #@2b
    .line 518
    .local v9, "indexBuffers":[Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    #@2d
    iget-object v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    #@2f
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    #@32
    move-result v15

    #@33
    new-array v12, v15, [Landroid/renderscript/Mesh$Primitive;

    #@35
    .line 519
    .local v12, "primitives":[Landroid/renderscript/Mesh$Primitive;
    move-object/from16 v0, p0

    #@37
    iget v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    #@39
    new-array v13, v15, [Landroid/renderscript/Allocation;

    #@3b
    .line 521
    .local v13, "vertexBuffers":[Landroid/renderscript/Allocation;
    const/4 v4, 0x0

    #@3c
    .local v4, "ct":I
    :goto_0
    move-object/from16 v0, p0

    #@3e
    iget v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    #@40
    if-ge v4, v15, :cond_0

    #@42
    .line 522
    move-object/from16 v0, p0

    #@44
    iget-object v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    #@46
    aget-object v5, v15, v4

    #@48
    .line 523
    .local v5, "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    #@4a
    aput-object v15, v13, v4

    #@4c
    .line 524
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    #@4e
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@52
    move-object/from16 v16, v0

    #@54
    invoke-virtual/range {v15 .. v16}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@57
    move-result-wide v16

    #@58
    aput-wide v16, v14, v4

    #@5a
    .line 521
    add-int/lit8 v4, v4, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 527
    .end local v5    # "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    :cond_0
    const/4 v4, 0x0

    #@5e
    :goto_1
    move-object/from16 v0, p0

    #@60
    iget-object v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    #@62
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    #@65
    move-result v15

    #@66
    if-ge v4, v15, :cond_2

    #@68
    .line 528
    move-object/from16 v0, p0

    #@6a
    iget-object v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    #@6c
    invoke-virtual {v15, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@6f
    move-result-object v5

    #@70
    check-cast v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    #@72
    .line 529
    .restart local v5    # "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    #@74
    if-nez v15, :cond_1

    #@76
    const-wide/16 v2, 0x0

    #@78
    .line 530
    .local v2, "allocID":J
    :goto_2
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    #@7a
    aput-object v15, v9, v4

    #@7c
    .line 531
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    #@7e
    aput-object v15, v12, v4

    #@80
    .line 533
    aput-wide v2, v8, v4

    #@82
    .line 534
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    #@84
    iget v15, v15, Landroid/renderscript/Mesh$Primitive;->mID:I

    #@86
    aput v15, v11, v4

    #@88
    .line 527
    add-int/lit8 v4, v4, 0x1

    #@8a
    goto :goto_1

    #@8b
    .line 529
    .end local v2    # "allocID":J
    :cond_1
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@91
    move-object/from16 v16, v0

    #@93
    invoke-virtual/range {v15 .. v16}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@96
    move-result-wide v2

    #@97
    .restart local v2    # "allocID":J
    goto :goto_2

    #@98
    .line 537
    .end local v2    # "allocID":J
    .end local v5    # "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    :cond_2
    move-object/from16 v0, p0

    #@9a
    iget-object v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@9c
    invoke-virtual {v15, v14, v8, v11}, Landroid/renderscript/RenderScript;->nMeshCreate([J[J[I)J

    #@9f
    move-result-wide v6

    #@a0
    .line 538
    .local v6, "id":J
    new-instance v10, Landroid/renderscript/Mesh;

    #@a2
    move-object/from16 v0, p0

    #@a4
    iget-object v15, v0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@a6
    invoke-direct {v10, v6, v7, v15}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    #@a9
    .line 539
    .local v10, "newMesh":Landroid/renderscript/Mesh;
    iput-object v13, v10, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    #@ab
    .line 540
    iput-object v9, v10, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    #@ad
    .line 541
    iput-object v12, v10, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    #@af
    .line 543
    return-object v10
.end method

.method public getCurrentIndexSetIndex()I
    .locals 1

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

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
    .line 439
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method
