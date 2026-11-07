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
.field greylist-max-o mIndexTypes:Ljava/util/Vector;

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mVertexTypeCount:I

.field greylist-max-o mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;


# direct methods
.method public constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 438
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iput-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 439
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 440
    return-void
.end method


# virtual methods
.method public greylist addIndexSetAllocation(Landroid/renderscript/Allocation;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "p"    # Landroid/renderscript/Mesh$Primitive;

    .line 493
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 494
    .local v0, "indexType":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 495
    iput-object p2, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 496
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 497
    return-object p0
.end method

.method public greylist addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 4
    .param p1, "p"    # Landroid/renderscript/Mesh$Primitive;

    .line 510
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 511
    .local v0, "indexType":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 512
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 513
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 514
    return-object p0
.end method

.method public greylist addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 471
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 475
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    aput-object v2, v0, v1

    .line 476
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 477
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 478
    return-object p0

    .line 472
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Max vertex types exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist create()Landroid/renderscript/Mesh;
    .registers 12

    .line 524
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 526
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-array v0, v0, [J

    .line 527
    .local v0, "vtx":[J
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 528
    .local v1, "idx":[J
    iget-object v2, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 530
    .local v2, "prim":[I
    iget-object v3, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Landroid/renderscript/Allocation;

    .line 531
    .local v3, "indexBuffers":[Landroid/renderscript/Allocation;
    iget-object v4, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Landroid/renderscript/Mesh$Primitive;

    .line 532
    .local v4, "primitives":[Landroid/renderscript/Mesh$Primitive;
    iget v5, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-array v5, v5, [Landroid/renderscript/Allocation;

    .line 534
    .local v5, "vertexBuffers":[Landroid/renderscript/Allocation;
    const/4 v6, 0x0

    .local v6, "ct":I
    :goto_2e
    iget v7, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    if-ge v6, v7, :cond_47

    .line 535
    iget-object v7, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    aget-object v7, v7, v6

    .line 536
    .local v7, "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iget-object v8, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    aput-object v8, v5, v6

    .line 537
    iget-object v8, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    iget-object v9, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v0, v6

    .line 534
    .end local v7    # "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 540
    .end local v6    # "ct":I
    :cond_47
    const/4 v6, 0x0

    .restart local v6    # "ct":I
    :goto_48
    iget-object v7, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_7a

    .line 541
    iget-object v7, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 542
    .restart local v7    # "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iget-object v8, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    if-nez v8, :cond_5f

    const-wide/16 v8, 0x0

    goto :goto_67

    :cond_5f
    iget-object v8, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    iget-object v9, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    .line 543
    .local v8, "allocID":J
    :goto_67
    iget-object v10, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    aput-object v10, v3, v6

    .line 544
    iget-object v10, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    aput-object v10, v4, v6

    .line 546
    aput-wide v8, v1, v6

    .line 547
    iget-object v10, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget v10, v10, Landroid/renderscript/Mesh$Primitive;->mID:I

    aput v10, v2, v6

    .line 540
    .end local v7    # "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    .end local v8    # "allocID":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 550
    .end local v6    # "ct":I
    :cond_7a
    iget-object v6, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v0, v1, v2}, Landroid/renderscript/RenderScript;->nMeshCreate([J[J[I)J

    move-result-wide v6

    .line 551
    .local v6, "id":J
    new-instance v8, Landroid/renderscript/Mesh;

    iget-object v9, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v8, v6, v7, v9}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 552
    .local v8, "newMesh":Landroid/renderscript/Mesh;
    iput-object v5, v8, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 553
    iput-object v3, v8, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 554
    iput-object v4, v8, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 556
    return-object v8
.end method

.method public greylist-max-o getCurrentIndexSetIndex()I
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public greylist-max-o getCurrentVertexTypeIndex()I
    .registers 2

    .line 448
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
