.class Landroid/graphics/drawable/VectorDrawable$VPath;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Landroid/util/PathParser$PathDataNode;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1411
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@6
    .line 1415
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V
    .locals 1
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VPath;

    #@0
    .prologue
    .line 1419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1411
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@6
    .line 1420
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    #@a
    .line 1421
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    #@c
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    #@e
    .line 1422
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@10
    invoke-static {v0}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@16
    .line 1419
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1440
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 1437
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPathData()[Landroid/util/PathParser$PathDataNode;
    .locals 1

    #@0
    .prologue
    .line 1450
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@2
    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1433
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isClipPath()Z
    .locals 1

    #@0
    .prologue
    .line 1444
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setPathData([Landroid/util/PathParser$PathDataNode;)V
    .locals 1
    .param p1, "nodes"    # [Landroid/util/PathParser$PathDataNode;

    #@0
    .prologue
    .line 1455
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@2
    invoke-static {v0, p1}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1457
    invoke-static {p1}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@e
    .line 1454
    :goto_0
    return-void

    #@f
    .line 1459
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@11
    invoke-static {v0, p1}, Landroid/util/PathParser;->updateNodes([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)V

    #@14
    goto :goto_0
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 1426
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    #@3
    .line 1427
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1428
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@9
    invoke-static {v0, p1}, Landroid/util/PathParser$PathDataNode;->nodesToPath([Landroid/util/PathParser$PathDataNode;Landroid/graphics/Path;)V

    #@c
    .line 1425
    :cond_0
    return-void
.end method
