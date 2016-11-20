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
.field public static final COLOR:I = 0x1

.field public static final NORMAL:I = 0x2

.field public static final TEXTURE_0:I = 0x100


# instance fields
.field mA:F

.field mB:F

.field mElement:Landroid/renderscript/Element;

.field mFlags:I

.field mG:F

.field mIndexCount:I

.field mIndexData:[S

.field mMaxIndex:I

.field mNX:F

.field mNY:F

.field mNZ:F

.field mR:F

.field mRS:Landroid/renderscript/RenderScript;

.field mS0:F

.field mT0:F

.field mVtxCount:I

.field mVtxData:[F

.field mVtxSize:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 5
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "vtxSize"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    const/16 v4, 0x80

    #@2
    const/4 v3, 0x0

    #@3
    const/high16 v2, 0x3f800000    # 1.0f

    #@5
    const/4 v1, 0x0

    #@6
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 563
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    #@b
    .line 564
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    #@d
    .line 565
    const/high16 v0, -0x40800000    # -1.0f

    #@f
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    #@11
    .line 566
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    #@13
    .line 567
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    #@15
    .line 568
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    #@17
    .line 569
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    #@19
    .line 570
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    #@1b
    .line 571
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    #@1d
    .line 600
    iput-object p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@1f
    .line 601
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@21
    .line 602
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    #@23
    .line 603
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    #@25
    .line 604
    new-array v0, v4, [F

    #@27
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@29
    .line 605
    new-array v0, v4, [S

    #@2b
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    #@2d
    .line 606
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    #@2f
    .line 607
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    #@31
    .line 609
    const/4 v0, 0x2

    #@32
    if-lt p2, v0, :cond_0

    #@34
    const/4 v0, 0x3

    #@35
    if-le p2, v0, :cond_1

    #@37
    .line 610
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    const-string/jumbo v1, "Vertex size out of range."

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 599
    :cond_1
    return-void
.end method

.method private latch()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 623
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    #@3
    and-int/lit8 v0, v0, 0x1

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 624
    invoke-direct {p0, v3}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    #@a
    .line 625
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@c
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@e
    add-int/lit8 v2, v1, 0x1

    #@10
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@12
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    #@14
    aput v2, v0, v1

    #@16
    .line 626
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@18
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@1a
    add-int/lit8 v2, v1, 0x1

    #@1c
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@1e
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    #@20
    aput v2, v0, v1

    #@22
    .line 627
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@24
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@26
    add-int/lit8 v2, v1, 0x1

    #@28
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@2a
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    #@2c
    aput v2, v0, v1

    #@2e
    .line 628
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@30
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@32
    add-int/lit8 v2, v1, 0x1

    #@34
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@36
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    #@38
    aput v2, v0, v1

    #@3a
    .line 630
    :cond_0
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    #@3c
    and-int/lit16 v0, v0, 0x100

    #@3e
    if-eqz v0, :cond_1

    #@40
    .line 631
    const/4 v0, 0x2

    #@41
    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    #@44
    .line 632
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@46
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@48
    add-int/lit8 v2, v1, 0x1

    #@4a
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@4c
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    #@4e
    aput v2, v0, v1

    #@50
    .line 633
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@52
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@54
    add-int/lit8 v2, v1, 0x1

    #@56
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@58
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    #@5a
    aput v2, v0, v1

    #@5c
    .line 635
    :cond_1
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    #@5e
    and-int/lit8 v0, v0, 0x2

    #@60
    if-eqz v0, :cond_2

    #@62
    .line 636
    invoke-direct {p0, v3}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    #@65
    .line 637
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@67
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@69
    add-int/lit8 v2, v1, 0x1

    #@6b
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@6d
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    #@6f
    aput v2, v0, v1

    #@71
    .line 638
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@73
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@75
    add-int/lit8 v2, v1, 0x1

    #@77
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@79
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    #@7b
    aput v2, v0, v1

    #@7d
    .line 639
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@7f
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@81
    add-int/lit8 v2, v1, 0x1

    #@83
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@85
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    #@87
    aput v2, v0, v1

    #@89
    .line 640
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@8b
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@8d
    add-int/lit8 v2, v1, 0x1

    #@8f
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@91
    const/4 v2, 0x0

    #@92
    aput v2, v0, v1

    #@94
    .line 642
    :cond_2
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    #@96
    add-int/lit8 v0, v0, 0x1

    #@98
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    #@9a
    .line 622
    return-void
.end method

.method private makeSpace(I)V
    .locals 4
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 615
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@3
    add-int/2addr v1, p1

    #@4
    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@6
    array-length v2, v2

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 616
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@b
    array-length v1, v1

    #@c
    mul-int/lit8 v1, v1, 0x2

    #@e
    new-array v0, v1, [F

    #@10
    .line 617
    .local v0, "t":[F
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@12
    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@14
    array-length v2, v2

    #@15
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@18
    .line 618
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@1a
    .line 614
    .end local v0    # "t":[F
    :cond_0
    return-void
.end method


# virtual methods
.method public addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 4
    .param p1, "idx1"    # I
    .param p2, "idx2"    # I
    .param p3, "idx3"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 761
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    #@3
    if-ge p1, v1, :cond_0

    #@5
    if-gez p1, :cond_1

    #@7
    .line 764
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Index provided greater than vertex count."

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 762
    :cond_1
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    #@12
    if-ge p2, v1, :cond_0

    #@14
    if-ltz p2, :cond_0

    #@16
    .line 763
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    #@18
    if-ge p3, v1, :cond_0

    #@1a
    if-ltz p3, :cond_0

    #@1c
    .line 766
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    #@1e
    add-int/lit8 v1, v1, 0x3

    #@20
    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    #@22
    array-length v2, v2

    #@23
    if-lt v1, v2, :cond_2

    #@25
    .line 767
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    #@27
    array-length v1, v1

    #@28
    mul-int/lit8 v1, v1, 0x2

    #@2a
    new-array v0, v1, [S

    #@2c
    .line 768
    .local v0, "t":[S
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    #@2e
    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    #@30
    array-length v2, v2

    #@31
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@34
    .line 769
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    #@36
    .line 771
    .end local v0    # "t":[S
    :cond_2
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    #@38
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    #@3a
    add-int/lit8 v3, v2, 0x1

    #@3c
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    #@3e
    int-to-short v3, p1

    #@3f
    aput-short v3, v1, v2

    #@41
    .line 772
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    #@43
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    #@45
    add-int/lit8 v3, v2, 0x1

    #@47
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    #@49
    int-to-short v3, p2

    #@4a
    aput-short v3, v1, v2

    #@4c
    .line 773
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    #@4e
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    #@50
    add-int/lit8 v3, v2, 0x1

    #@52
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    #@54
    int-to-short v3, p3

    #@55
    aput-short v3, v1, v2

    #@57
    .line 774
    return-object p0
.end method

.method public addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 656
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 657
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "add mistmatch with declared components."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 659
    :cond_0
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    #@11
    .line 660
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@13
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@19
    aput p1, v0, v1

    #@1b
    .line 661
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@1d
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@1f
    add-int/lit8 v2, v1, 0x1

    #@21
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@23
    aput p2, v0, v1

    #@25
    .line 662
    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    #@28
    .line 663
    return-object p0
.end method

.method public addVertex(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 678
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 679
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "add mistmatch with declared components."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 681
    :cond_0
    const/4 v0, 0x4

    #@f
    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    #@12
    .line 682
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@14
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@16
    add-int/lit8 v2, v1, 0x1

    #@18
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@1a
    aput p1, v0, v1

    #@1c
    .line 683
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@1e
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@20
    add-int/lit8 v2, v1, 0x1

    #@22
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@24
    aput p2, v0, v1

    #@26
    .line 684
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@28
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@2a
    add-int/lit8 v2, v1, 0x1

    #@2c
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@2e
    aput p3, v0, v1

    #@30
    .line 685
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@32
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@34
    add-int/lit8 v2, v1, 0x1

    #@36
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    #@38
    const/high16 v2, 0x3f800000    # 1.0f

    #@3a
    aput v2, v0, v1

    #@3c
    .line 686
    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    #@3f
    .line 687
    return-object p0
.end method

.method public create(Z)Landroid/renderscript/Mesh;
    .locals 9
    .param p1, "uploadToBufferObject"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 793
    new-instance v0, Landroid/renderscript/Element$Builder;

    #@4
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@6
    invoke-direct {v0, v4}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@9
    .line 794
    .local v0, "b":Landroid/renderscript/Element$Builder;
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@b
    .line 795
    sget-object v5, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@d
    .line 796
    iget v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    #@f
    .line 794
    invoke-static {v4, v5, v6}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@12
    move-result-object v4

    #@13
    .line 796
    const-string/jumbo v5, "position"

    #@16
    .line 794
    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@19
    .line 797
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    #@1b
    and-int/lit8 v4, v4, 0x1

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 798
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@21
    invoke-static {v4}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@24
    move-result-object v4

    #@25
    const-string/jumbo v5, "color"

    #@28
    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@2b
    .line 800
    :cond_0
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    #@2d
    and-int/lit16 v4, v4, 0x100

    #@2f
    if-eqz v4, :cond_1

    #@31
    .line 801
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@33
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, "texture0"

    #@3a
    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@3d
    .line 803
    :cond_1
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    #@3f
    and-int/lit8 v4, v4, 0x2

    #@41
    if-eqz v4, :cond_2

    #@43
    .line 804
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@45
    invoke-static {v4}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@48
    move-result-object v4

    #@49
    const-string/jumbo v5, "normal"

    #@4c
    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@4f
    .line 806
    :cond_2
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    #@52
    move-result-object v4

    #@53
    iput-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    #@55
    .line 808
    const/4 v3, 0x1

    #@56
    .line 809
    .local v3, "usage":I
    if-eqz p1, :cond_3

    #@58
    .line 810
    const/4 v3, 0x5

    #@59
    .line 813
    :cond_3
    new-instance v2, Landroid/renderscript/Mesh$Builder;

    #@5b
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@5d
    invoke-direct {v2, v4, v3}, Landroid/renderscript/Mesh$Builder;-><init>(Landroid/renderscript/RenderScript;I)V

    #@60
    .line 814
    .local v2, "smb":Landroid/renderscript/Mesh$Builder;
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    #@62
    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    #@64
    invoke-virtual {v2, v4, v5}, Landroid/renderscript/Mesh$Builder;->addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;

    #@67
    .line 815
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    #@69
    invoke-static {v4}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@6c
    move-result-object v4

    #@6d
    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    #@6f
    sget-object v6, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    #@71
    invoke-virtual {v2, v4, v5, v6}, Landroid/renderscript/Mesh$Builder;->addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;

    #@74
    .line 817
    invoke-virtual {v2}, Landroid/renderscript/Mesh$Builder;->create()Landroid/renderscript/Mesh;

    #@77
    move-result-object v1

    #@78
    .line 819
    .local v1, "sm":Landroid/renderscript/Mesh;
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    #@7b
    move-result-object v4

    #@7c
    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    #@7e
    iget-object v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    #@80
    invoke-virtual {v4, v7, v5, v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    #@83
    .line 820
    if-eqz p1, :cond_4

    #@85
    .line 821
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4, v8}, Landroid/renderscript/Allocation;->syncAll(I)V

    #@8c
    .line 824
    :cond_4
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    #@8f
    move-result-object v4

    #@90
    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    #@92
    iget-object v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    #@94
    invoke-virtual {v4, v7, v5, v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    #@97
    .line 825
    if-eqz p1, :cond_5

    #@99
    .line 826
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    #@9c
    move-result-object v4

    #@9d
    invoke-virtual {v4, v8}, Landroid/renderscript/Allocation;->syncAll(I)V

    #@a0
    .line 829
    :cond_5
    return-object v1
.end method

.method public setColor(FFFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    #@0
    .prologue
    .line 740
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 741
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "add mistmatch with declared components."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 743
    :cond_0
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    #@11
    .line 744
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    #@13
    .line 745
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    #@15
    .line 746
    iput p4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    #@17
    .line 747
    return-object p0
.end method

.method public setNormal(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 719
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-nez v0, :cond_0

    #@6
    .line 720
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "add mistmatch with declared components."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 722
    :cond_0
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    #@11
    .line 723
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    #@13
    .line 724
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    #@15
    .line 725
    return-object p0
.end method

.method public setTexture(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 2
    .param p1, "s"    # F
    .param p2, "t"    # F

    #@0
    .prologue
    .line 700
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    #@2
    and-int/lit16 v0, v0, 0x100

    #@4
    if-nez v0, :cond_0

    #@6
    .line 701
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "add mistmatch with declared components."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 703
    :cond_0
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    #@11
    .line 704
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    #@13
    .line 705
    return-object p0
.end method
