.class public Landroid/renderscript/Mesh$TriangleMeshBuilder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriangleMeshBuilder"
.end annotation


# static fields
.field public static final greylist-max-o COLOR:I = 0x1

.field public static final greylist-max-o NORMAL:I = 0x2

.field public static final greylist-max-o TEXTURE_0:I = 0x100


# instance fields
.field greylist-max-o mA:F

.field greylist-max-o mB:F

.field greylist-max-o mElement:Landroid/renderscript/Element;

.field greylist-max-o mFlags:I

.field greylist-max-o mG:F

.field greylist-max-o mIndexCount:I

.field greylist-max-o mIndexData:[S

.field greylist-max-o mMaxIndex:I

.field greylist-max-o mNX:F

.field greylist-max-o mNY:F

.field greylist-max-o mNZ:F

.field greylist-max-o mR:F

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mS0:F

.field greylist-max-o mT0:F

.field greylist-max-o mVtxCount:I

.field greylist-max-o mVtxData:[F

.field greylist-max-o mVtxSize:I


# direct methods
.method public constructor greylist-max-r <init>(Landroid/renderscript/RenderScript;II)V
    .registers 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "vtxSize"    # I
    .param p3, "flags"    # I

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    .line 576
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    .line 577
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    .line 578
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    .line 579
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    .line 580
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    .line 581
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    .line 582
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    .line 583
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    .line 613
    iput-object p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 614
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 615
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    .line 616
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    .line 617
    const/16 v0, 0x80

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 618
    new-array v0, v0, [S

    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 619
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    .line 620
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 622
    const/4 v0, 0x2

    if-lt p2, v0, :cond_38

    const/4 v0, 0x3

    if-gt p2, v0, :cond_38

    .line 625
    return-void

    .line 623
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vertex size out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o latch()V
    .registers 6

    .line 636
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-eqz v0, :cond_3a

    .line 637
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 638
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    aput v3, v0, v2

    .line 639
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    aput v3, v0, v2

    .line 640
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    aput v3, v0, v2

    .line 641
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    aput v3, v0, v2

    .line 643
    :cond_3a
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    const/4 v2, 0x2

    if-eqz v0, :cond_5c

    .line 644
    invoke-direct {p0, v2}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 645
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    aput v4, v0, v3

    .line 646
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    aput v4, v0, v3

    .line 648
    :cond_5c
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_93

    .line 649
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 650
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    aput v2, v0, v1

    .line 651
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    aput v2, v0, v1

    .line 652
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    aput v2, v0, v1

    .line 653
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 655
    :cond_93
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    .line 656
    return-void
.end method

.method private greylist-max-o makeSpace(I)V
    .registers 6
    .param p1, "count"    # I

    .line 628
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1a

    .line 629
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    .line 630
    .local v0, "t":[F
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 633
    .end local v0    # "t":[F
    :cond_1a
    return-void
.end method


# virtual methods
.method public greylist-max-r addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 8
    .param p1, "idx1"    # I
    .param p2, "idx2"    # I
    .param p3, "idx3"    # I

    .line 776
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    if-ge p1, v0, :cond_4f

    if-ltz p1, :cond_4f

    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    if-ge p2, v0, :cond_4f

    if-ltz p2, :cond_4f

    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    if-ge p3, v0, :cond_4f

    if-ltz p3, :cond_4f

    .line 781
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v1, v1

    if-lt v0, v1, :cond_2d

    .line 782
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 783
    .local v0, "t":[S
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 786
    .end local v0    # "t":[S
    :cond_2d
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    .line 787
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    .line 788
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    .line 789
    return-object p0

    .line 779
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Index provided greater than vertex count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 670
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 673
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 674
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    .line 675
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    .line 676
    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    .line 677
    return-object p0

    .line 671
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o addVertex(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 692
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_37

    .line 695
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 696
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    .line 697
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    .line 698
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p3, v0, v1

    .line 699
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 700
    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    .line 701
    return-object p0

    .line 693
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r create(Z)Landroid/renderscript/Mesh;
    .registers 11
    .param p1, "uploadToBufferObject"    # Z

    .line 809
    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 810
    .local v0, "b":Landroid/renderscript/Element$Builder;
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    invoke-static {v1, v2, v3}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v1

    const-string/jumbo v2, "position"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 813
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_28

    .line 814
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v3, "color"

    invoke-virtual {v0, v1, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 816
    :cond_28
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3a

    .line 817
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string/jumbo v3, "texture0"

    invoke-virtual {v0, v1, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 819
    :cond_3a
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4c

    .line 820
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string/jumbo v3, "normal"

    invoke-virtual {v0, v1, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 822
    :cond_4c
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    .line 824
    const/4 v1, 0x1

    .line 825
    .local v1, "usage":I
    if-eqz p1, :cond_57

    .line 826
    or-int/lit8 v1, v1, 0x4

    .line 829
    :cond_57
    new-instance v3, Landroid/renderscript/Mesh$Builder;

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v3, v4, v1}, Landroid/renderscript/Mesh$Builder;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 830
    .local v3, "smb":Landroid/renderscript/Mesh$Builder;
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/Mesh$Builder;->addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;

    .line 831
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    sget-object v6, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v3, v4, v5, v6}, Landroid/renderscript/Mesh$Builder;->addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;

    .line 833
    invoke-virtual {v3}, Landroid/renderscript/Mesh$Builder;->create()Landroid/renderscript/Mesh;

    move-result-object v4

    .line 835
    .local v4, "sm":Landroid/renderscript/Mesh;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v6

    iget v7, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    iget-object v8, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    invoke-virtual {v6, v5, v7, v8}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    .line 836
    if-eqz p1, :cond_8b

    .line 837
    invoke-virtual {v4, v5}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 840
    :cond_8b
    invoke-virtual {v4, v5}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v6

    iget v7, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    iget-object v8, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    invoke-virtual {v6, v5, v7, v8}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    .line 841
    if-eqz p1, :cond_9f

    .line 842
    invoke-virtual {v4, v5}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 845
    :cond_9f
    return-object v4
.end method

.method public greylist-max-o setColor(FFFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 754
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 757
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    .line 758
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    .line 759
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    .line 760
    iput p4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    .line 761
    return-object p0

    .line 755
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setNormal(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 733
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    .line 736
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    .line 737
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    .line 738
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    .line 739
    return-object p0

    .line 734
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setTexture(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 5
    .param p1, "s"    # F
    .param p2, "t"    # F

    .line 714
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    .line 717
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    .line 718
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    .line 719
    return-object p0

    .line 715
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
