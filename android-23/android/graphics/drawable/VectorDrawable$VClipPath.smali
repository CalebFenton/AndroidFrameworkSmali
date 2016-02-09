.class Landroid/graphics/drawable/VectorDrawable$VClipPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VClipPath"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1468
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V
    .locals 0
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@0
    .prologue
    .line 1473
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    #@3
    .line 1472
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 1485
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    #@2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@5
    move-result v3

    #@6
    or-int/2addr v2, v3

    #@7
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    #@9
    .line 1487
    const/4 v2, 0x0

    #@a
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1488
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@10
    .line 1489
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathName:Ljava/lang/String;

    #@12
    .line 1492
    :cond_0
    const/4 v2, 0x1

    #@13
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 1493
    .local v0, "pathData":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@19
    .line 1494
    invoke-static {v0}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@1f
    .line 1483
    :cond_1
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1478
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableClipPath:[I

    #@2
    .line 1477
    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 1479
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@9
    .line 1480
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c
    .line 1476
    return-void
.end method

.method public isClipPath()Z
    .locals 1

    #@0
    .prologue
    .line 1500
    const/4 v0, 0x1

    #@1
    return v0
.end method
