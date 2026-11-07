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
.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x78


# instance fields
.field private final greylist-max-o mNativePtr:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 1668
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1669
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateClipPath()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    .line 1670
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V
    .registers 4
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VClipPath;

    .line 1673
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1674
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateClipPath(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    .line 1675
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1722
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    .line 1724
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1725
    .local v0, "pathName":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 1726
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathName:Ljava/lang/String;

    .line 1727
    iget-wide v1, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetName(JLjava/lang/String;)V

    .line 1730
    :cond_19
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, "pathDataString":Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 1732
    new-instance v2, Landroid/util/PathParser$PathData;

    invoke-direct {v2, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1733
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPathString(JLjava/lang/String;I)V

    .line 1735
    :cond_30
    return-void
.end method


# virtual methods
.method public greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1698
    return-void
.end method

.method public greylist-max-o canApplyTheme()Z
    .registers 2

    .line 1692
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getNativePtr()J
    .registers 3

    .line 1679
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    return-wide v0
.end method

.method greylist-max-o getNativeSize()I
    .registers 2

    .line 1717
    const/16 v0, 0x78

    return v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .registers 2

    .line 1712
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1684
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawableClipPath:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1686
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1687
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1688
    return-void
.end method

.method public greylist-max-o isStateful()Z
    .registers 2

    .line 1707
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onStateChange([I)Z
    .registers 3
    .param p1, "stateSet"    # [I

    .line 1702
    const/4 v0, 0x0

    return v0
.end method
