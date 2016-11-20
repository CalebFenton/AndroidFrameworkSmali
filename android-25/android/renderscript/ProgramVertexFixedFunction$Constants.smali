.class public Landroid/renderscript/ProgramVertexFixedFunction$Constants;
.super Ljava/lang/Object;
.source "ProgramVertexFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertexFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# static fields
.field static final MODELVIEW_OFFSET:I = 0x0

.field static final PROJECTION_OFFSET:I = 0x10

.field static final TEXTURE_OFFSET:I = 0x20


# instance fields
.field mAlloc:Landroid/renderscript/Allocation;

.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field mModel:Landroid/renderscript/Matrix4f;

.field mProjection:Landroid/renderscript/Matrix4f;

.field mTexture:Landroid/renderscript/Matrix4f;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 219
    invoke-static {p1}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;

    #@6
    move-result-object v1

    #@7
    .line 220
    .local v1, "constInputType":Landroid/renderscript/Type;
    invoke-static {p1, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    #@d
    .line 221
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    #@14
    move-result v2

    #@15
    .line 222
    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    #@18
    move-result v3

    #@19
    .line 221
    mul-int v0, v2, v3

    #@1b
    .line 223
    .local v0, "bufferSize":I
    new-instance v2, Landroid/renderscript/FieldPacker;

    #@1d
    invoke-direct {v2, v0}, Landroid/renderscript/FieldPacker;-><init>(I)V

    #@20
    iput-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    #@22
    .line 224
    new-instance v2, Landroid/renderscript/Matrix4f;

    #@24
    invoke-direct {v2}, Landroid/renderscript/Matrix4f;-><init>()V

    #@27
    iput-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mModel:Landroid/renderscript/Matrix4f;

    #@29
    .line 225
    new-instance v2, Landroid/renderscript/Matrix4f;

    #@2b
    invoke-direct {v2}, Landroid/renderscript/Matrix4f;-><init>()V

    #@2e
    iput-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mProjection:Landroid/renderscript/Matrix4f;

    #@30
    .line 226
    new-instance v2, Landroid/renderscript/Matrix4f;

    #@32
    invoke-direct {v2}, Landroid/renderscript/Matrix4f;-><init>()V

    #@35
    iput-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mTexture:Landroid/renderscript/Matrix4f;

    #@37
    .line 227
    new-instance v2, Landroid/renderscript/Matrix4f;

    #@39
    invoke-direct {v2}, Landroid/renderscript/Matrix4f;-><init>()V

    #@3c
    invoke-virtual {p0, v2}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setModelview(Landroid/renderscript/Matrix4f;)V

    #@3f
    .line 228
    new-instance v2, Landroid/renderscript/Matrix4f;

    #@41
    invoke-direct {v2}, Landroid/renderscript/Matrix4f;-><init>()V

    #@44
    invoke-virtual {p0, v2}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    #@47
    .line 229
    new-instance v2, Landroid/renderscript/Matrix4f;

    #@49
    invoke-direct {v2}, Landroid/renderscript/Matrix4f;-><init>()V

    #@4c
    invoke-virtual {p0, v2}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setTexture(Landroid/renderscript/Matrix4f;)V

    #@4f
    .line 218
    return-void
.end method

.method private addToBuffer(ILandroid/renderscript/Matrix4f;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "m"    # Landroid/renderscript/Matrix4f;

    #@0
    .prologue
    .line 244
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    #@2
    invoke-virtual {v1, p1}, Landroid/renderscript/FieldPacker;->reset(I)V

    #@5
    .line 245
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 246
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    #@c
    iget-object v2, p2, Landroid/renderscript/Matrix4f;->mMat:[F

    #@e
    aget v2, v2, v0

    #@10
    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@13
    .line 245
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 250
    :cond_0
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    #@18
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    #@1a
    invoke-virtual {v2}, Landroid/renderscript/FieldPacker;->getData()[B

    #@1d
    move-result-object v2

    #@1e
    array-length v2, v2

    #@1f
    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    #@22
    .line 251
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    #@24
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    #@26
    const/4 v3, 0x0

    #@27
    invoke-virtual {v1, v3, v2}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    #@2a
    .line 243
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    #@5
    .line 240
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    #@8
    .line 238
    return-void
.end method

.method getAllocation()Landroid/renderscript/Allocation;
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    #@2
    return-object v0
.end method

.method public setModelview(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .param p1, "m"    # Landroid/renderscript/Matrix4f;

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mModel:Landroid/renderscript/Matrix4f;

    #@2
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    #@5
    .line 262
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    #@9
    .line 260
    return-void
.end method

.method public setProjection(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .param p1, "m"    # Landroid/renderscript/Matrix4f;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mProjection:Landroid/renderscript/Matrix4f;

    #@2
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    #@5
    .line 273
    const/16 v0, 0x40

    #@7
    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    #@a
    .line 271
    return-void
.end method

.method public setTexture(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .param p1, "m"    # Landroid/renderscript/Matrix4f;

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mTexture:Landroid/renderscript/Matrix4f;

    #@2
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    #@5
    .line 287
    const/16 v0, 0x80

    #@7
    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    #@a
    .line 285
    return-void
.end method
