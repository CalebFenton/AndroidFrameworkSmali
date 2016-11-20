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


# static fields
.field private static final NATIVE_ALLOCATION_SIZE:I = 0x78


# instance fields
.field private final mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 1559
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    #@3
    .line 1560
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-wrap19()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    #@9
    .line 1559
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V
    .locals 2
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@0
    .prologue
    .line 1564
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    #@3
    .line 1565
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    #@5
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap20(J)J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    #@b
    .line 1563
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 1608
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
    .line 1610
    const/4 v2, 0x0

    #@a
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1611
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@10
    .line 1612
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathName:Ljava/lang/String;

    #@12
    .line 1613
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    #@14
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathName:Ljava/lang/String;

    #@16
    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-wrap30(JLjava/lang/String;)V

    #@19
    .line 1616
    :cond_0
    const/4 v2, 0x1

    #@1a
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 1617
    .local v0, "pathDataString":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@20
    .line 1618
    new-instance v2, Landroid/util/PathParser$PathData;

    #@22
    invoke-direct {v2, v0}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    #@25
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathData:Landroid/util/PathParser$PathData;

    #@27
    .line 1619
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    #@29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2c
    move-result v4

    #@2d
    invoke-static {v2, v3, v0, v4}, Landroid/graphics/drawable/VectorDrawable;->-wrap32(JLjava/lang/String;I)V

    #@30
    .line 1606
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1587
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 1583
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getNativePtr()J
    .locals 2

    #@0
    .prologue
    .line 1570
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    #@2
    return-wide v0
.end method

.method getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 1603
    const/16 v0, 0x78

    #@2
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1576
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableClipPath:[I

    #@2
    .line 1575
    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 1577
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@9
    .line 1578
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c
    .line 1574
    return-void
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 1598
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onStateChange([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 1593
    const/4 v0, 0x0

    #@1
    return v0
.end method
