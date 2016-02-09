.class public Landroid/renderscript/Mesh;
.super Landroid/renderscript/BaseObj;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$Primitive;,
        Landroid/renderscript/Mesh$Builder;,
        Landroid/renderscript/Mesh$AllocationBuilder;,
        Landroid/renderscript/Mesh$TriangleMeshBuilder;
    }
.end annotation


# instance fields
.field mIndexBuffers:[Landroid/renderscript/Allocation;

.field mPrimitives:[Landroid/renderscript/Mesh$Primitive;

.field mVertexBuffers:[Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 92
    return-void
.end method


# virtual methods
.method public getIndexSetAllocation(I)Landroid/renderscript/Allocation;
    .locals 1
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getPrimitive(I)Landroid/renderscript/Mesh$Primitive;
    .locals 1
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getPrimitiveCount()I
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 124
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 126
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    #@8
    array-length v0, v0

    #@9
    return v0
.end method

.method public getVertexAllocation(I)Landroid/renderscript/Allocation;
    .locals 1
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getVertexAllocationCount()I
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 103
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 105
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    #@8
    array-length v0, v0

    #@9
    return v0
.end method

.method updateFromNative()V
    .locals 15

    #@0
    .prologue
    .line 151
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    #@3
    .line 152
    iget-object v1, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    #@5
    iget-object v2, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-virtual {p0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    #@a
    move-result-wide v2

    #@b
    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nMeshGetVertexBufferCount(J)I

    #@e
    move-result v13

    #@f
    .line 153
    .local v13, "vtxCount":I
    iget-object v1, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    #@11
    iget-object v2, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    #@13
    invoke-virtual {p0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    #@16
    move-result-wide v2

    #@17
    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nMeshGetIndexCount(J)I

    #@1a
    move-result v6

    #@1b
    .line 155
    .local v6, "idxCount":I
    new-array v14, v13, [J

    #@1d
    .line 156
    .local v14, "vtxIDs":[J
    new-array v4, v6, [J

    #@1f
    .line 157
    .local v4, "idxIDs":[J
    new-array v5, v6, [I

    #@21
    .line 159
    .local v5, "primitives":[I
    iget-object v1, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    #@23
    iget-object v2, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    #@25
    invoke-virtual {p0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    #@28
    move-result-wide v2

    #@29
    invoke-virtual {v1, v2, v3, v14, v13}, Landroid/renderscript/RenderScript;->nMeshGetVertices(J[JI)V

    #@2c
    .line 160
    iget-object v1, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    iget-object v2, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    #@30
    invoke-virtual {p0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    #@33
    move-result-wide v2

    #@34
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nMeshGetIndices(J[J[II)V

    #@37
    .line 162
    new-array v1, v13, [Landroid/renderscript/Allocation;

    #@39
    iput-object v1, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    #@3b
    .line 163
    new-array v1, v6, [Landroid/renderscript/Allocation;

    #@3d
    iput-object v1, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    #@3f
    .line 164
    new-array v1, v6, [Landroid/renderscript/Mesh$Primitive;

    #@41
    iput-object v1, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    #@43
    .line 166
    const/4 v0, 0x0

    #@44
    .local v0, "i":I
    :goto_0
    if-ge v0, v13, :cond_1

    #@46
    .line 167
    aget-wide v2, v14, v0

    #@48
    const-wide/16 v8, 0x0

    #@4a
    cmp-long v1, v2, v8

    #@4c
    if-eqz v1, :cond_0

    #@4e
    .line 168
    iget-object v1, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    #@50
    new-instance v7, Landroid/renderscript/Allocation;

    #@52
    aget-wide v8, v14, v0

    #@54
    iget-object v10, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    #@56
    const/4 v11, 0x0

    #@57
    const/4 v12, 0x1

    #@58
    invoke-direct/range {v7 .. v12}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    #@5b
    aput-object v7, v1, v0

    #@5d
    .line 169
    iget-object v1, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    #@5f
    aget-object v1, v1, v0

    #@61
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->updateFromNative()V

    #@64
    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@66
    goto :goto_0

    #@67
    .line 173
    :cond_1
    const/4 v0, 0x0

    #@68
    :goto_1
    if-ge v0, v6, :cond_3

    #@6a
    .line 174
    aget-wide v2, v4, v0

    #@6c
    const-wide/16 v8, 0x0

    #@6e
    cmp-long v1, v2, v8

    #@70
    if-eqz v1, :cond_2

    #@72
    .line 175
    iget-object v1, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    #@74
    new-instance v7, Landroid/renderscript/Allocation;

    #@76
    aget-wide v8, v4, v0

    #@78
    iget-object v10, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    #@7a
    const/4 v11, 0x0

    #@7b
    const/4 v12, 0x1

    #@7c
    invoke-direct/range {v7 .. v12}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    #@7f
    aput-object v7, v1, v0

    #@81
    .line 176
    iget-object v1, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    #@83
    aget-object v1, v1, v0

    #@85
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->updateFromNative()V

    #@88
    .line 178
    :cond_2
    iget-object v1, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    #@8a
    invoke-static {}, Landroid/renderscript/Mesh$Primitive;->values()[Landroid/renderscript/Mesh$Primitive;

    #@8d
    move-result-object v2

    #@8e
    aget v3, v5, v0

    #@90
    aget-object v2, v2, v3

    #@92
    aput-object v2, v1, v0

    #@94
    .line 173
    add-int/lit8 v0, v0, 0x1

    #@96
    goto :goto_1

    #@97
    .line 150
    :cond_3
    return-void
.end method
