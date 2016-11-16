.class Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VectorDrawableState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;
    }
.end annotation


# static fields
.field static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x13c


# instance fields
.field private mAllocationOfAllNodes:I

.field mAutoMirrored:Z

.field mBaseHeight:F

.field mBaseWidth:F

.field mCacheDirty:Z

.field mCachedAutoMirrored:Z

.field mCachedThemeAttrs:[I

.field mCachedTint:Landroid/content/res/ColorStateList;

.field mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

.field mChangingConfigurations:I

.field mDensity:I

.field mLastHWCachePixelCount:I

.field mLastSWCachePixelCount:I

.field mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

.field mOpticalInsets:Landroid/graphics/Insets;

.field mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

.field mRootName:Ljava/lang/String;

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field final mVGTargetsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static synthetic -wrap0(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 0
    .param p1, "rootGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 871
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;

    #@2
    const-string/jumbo v1, "alpha"

    #@5
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;-><init>(Ljava/lang/String;)V

    #@8
    .line 870
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    #@a
    .line 838
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V
    .locals 4
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 897
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@6
    .line 842
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    .line 843
    sget-object v0, Landroid/graphics/drawable/VectorDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    .line 846
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@e
    .line 847
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@10
    .line 848
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@12
    .line 849
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@14
    .line 850
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@16
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@18
    .line 851
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    #@1a
    .line 853
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@1c
    .line 855
    const/16 v0, 0xa0

    #@1e
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    #@20
    .line 856
    new-instance v0, Landroid/util/ArrayMap;

    #@22
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@25
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@27
    .line 867
    iput v3, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    #@29
    .line 868
    iput v3, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    #@2b
    .line 891
    iput v3, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    #@2d
    .line 898
    if-eqz p1, :cond_1

    #@2f
    .line 899
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@31
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@33
    .line 900
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@35
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@37
    .line 901
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@39
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@3b
    .line 902
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@3d
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@3f
    .line 903
    iget-boolean v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@41
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@43
    .line 904
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@45
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@47
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@49
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    #@4c
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@4e
    .line 905
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@50
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTreeFromCopy(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    #@53
    .line 907
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@55
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@57
    .line 908
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@59
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@5b
    .line 909
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@5d
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@5f
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    #@62
    .line 910
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@64
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@66
    .line 912
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    #@68
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    #@6a
    .line 913
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    #@6c
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    #@6e
    .line 914
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    #@70
    if-eqz v0, :cond_0

    #@72
    .line 915
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@74
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    #@76
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    .line 921
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    #@7c
    .line 897
    return-void

    #@7d
    .line 918
    :cond_1
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@7f
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    #@82
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@84
    .line 919
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@86
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    #@89
    goto :goto_0
.end method

.method private applyDensityScaling(II)V
    .locals 6
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1026
    iget v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@3
    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    #@6
    move-result v4

    #@7
    iput v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@9
    .line 1027
    iget v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@b
    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    #@e
    move-result v4

    #@f
    iput v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@11
    .line 1030
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@13
    iget v4, v4, Landroid/graphics/Insets;->left:I

    #@15
    .line 1029
    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@18
    move-result v1

    #@19
    .line 1032
    .local v1, "insetLeft":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@1b
    iget v4, v4, Landroid/graphics/Insets;->top:I

    #@1d
    .line 1031
    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@20
    move-result v3

    #@21
    .line 1034
    .local v3, "insetTop":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@23
    iget v4, v4, Landroid/graphics/Insets;->right:I

    #@25
    .line 1033
    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@28
    move-result v2

    #@29
    .line 1036
    .local v2, "insetRight":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@2b
    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    #@2d
    .line 1035
    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@30
    move-result v0

    #@31
    .line 1037
    .local v0, "insetBottom":I
    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@34
    move-result-object v4

    #@35
    iput-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@37
    .line 1025
    return-void
.end method

.method private createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 4
    .param p1, "rootGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@0
    .prologue
    .line 925
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get8(Landroid/graphics/drawable/VectorDrawable$VGroup;)J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap26(J)J

    #@9
    move-result-wide v2

    #@a
    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    #@d
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@f
    .line 927
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@12
    move-result-object v0

    #@13
    const/16 v1, 0x13c

    #@15
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@18
    .line 924
    return-void
.end method

.method private createNativeTreeFromCopy(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 6
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "rootGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@0
    .prologue
    .line 933
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    .line 934
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@7
    move-result-wide v2

    #@8
    invoke-static {p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get8(Landroid/graphics/drawable/VectorDrawable$VGroup;)J

    #@b
    move-result-wide v4

    #@c
    .line 933
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->-wrap25(JJ)J

    #@f
    move-result-wide v2

    #@10
    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@15
    .line 936
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@18
    move-result-object v0

    #@19
    const/16 v1, 0x13c

    #@1b
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@1e
    .line 932
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@5
    .line 976
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 982
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@2
    if-nez v0, :cond_2

    #@4
    .line 983
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    #@d
    move-result v0

    #@e
    .line 982
    if-nez v0, :cond_2

    #@10
    .line 984
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@12
    if-eqz v0, :cond_1

    #@14
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@16
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@19
    move-result v0

    #@1a
    .line 982
    if-nez v0, :cond_2

    #@1c
    .line 985
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    #@1f
    move-result v0

    #@20
    .line 982
    :goto_0
    return v0

    #@21
    :cond_2
    const/4 v0, 0x1

    #@22
    goto :goto_0
.end method

.method public canReuseCache()Z
    .locals 2

    #@0
    .prologue
    .line 955
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 956
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 957
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 958
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    #@12
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 959
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    #@18
    iget-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@1a
    if-ne v0, v1, :cond_0

    #@1c
    .line 960
    const/4 v0, 0x1

    #@1d
    return v0

    #@1e
    .line 962
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCacheStates()V

    #@21
    .line 963
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 1046
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->finalize()V

    #@3
    .line 1047
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    #@5
    mul-int/lit8 v1, v1, 0x4

    #@7
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    #@9
    mul-int/lit8 v2, v2, 0x4

    #@b
    add-int v0, v1, v2

    #@d
    .line 1048
    .local v0, "bitmapCacheSize":I
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@10
    move-result-object v1

    #@11
    .line 1049
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    #@13
    .line 1048
    add-int/lit16 v2, v2, 0x13c

    #@15
    add-int/2addr v2, v0

    #@16
    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@19
    .line 1045
    return-void
.end method

.method public getAlpha()F
    .locals 2

    #@0
    .prologue
    .line 1062
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap6(J)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 1000
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@2
    .line 1001
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    #@b
    move-result v0

    #@c
    .line 1000
    :goto_0
    or-int/2addr v0, v1

    #@d
    return v0

    #@e
    .line 1001
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method getNativeRenderer()J
    .locals 2

    #@0
    .prologue
    .line 948
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 949
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 951
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 884
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    #@2
    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 885
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    #@e
    return-object v0

    #@f
    .line 887
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 1005
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1006
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@e
    if-eqz v0, :cond_2

    #@10
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@12
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isStateful()Z

    #@15
    move-result v0

    #@16
    .line 1005
    :goto_0
    return v0

    #@17
    :cond_1
    const/4 v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1006
    :cond_2
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 990
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 995
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V

    #@6
    return-object v0
.end method

.method public onStateChange([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 1041
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->onStateChange([I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method onTreeConstructionFinished()V
    .locals 2

    #@0
    .prologue
    .line 942
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    #@7
    .line 943
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativeSize()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    #@f
    .line 944
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    #@15
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@18
    .line 941
    return-void
.end method

.method public setAlpha(F)Z
    .locals 2
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 1057
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap2(JF)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final setDensity(I)Z
    .locals 2
    .param p1, "targetDensity"    # I

    #@0
    .prologue
    .line 1016
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    #@2
    if-eq v1, p1, :cond_0

    #@4
    .line 1017
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    #@6
    .line 1018
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    #@8
    .line 1019
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyDensityScaling(II)V

    #@b
    .line 1020
    const/4 v1, 0x1

    #@c
    return v1

    #@d
    .line 1022
    .end local v0    # "sourceDensity":I
    :cond_0
    const/4 v1, 0x0

    #@e
    return v1
.end method

.method setViewportSize(FF)V
    .locals 2
    .param p1, "viewportWidth"    # F
    .param p2, "viewportHeight"    # F

    #@0
    .prologue
    .line 1010
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@2
    .line 1011
    iput p2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@4
    .line 1012
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    #@7
    move-result-wide v0

    #@8
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->-wrap35(JFF)V

    #@b
    .line 1009
    return-void
.end method

.method public updateCacheStates()V
    .locals 1

    #@0
    .prologue
    .line 969
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@2
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    #@4
    .line 970
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    #@8
    .line 971
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    .line 972
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@e
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    #@10
    .line 973
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@13
    .line 966
    return-void
.end method
